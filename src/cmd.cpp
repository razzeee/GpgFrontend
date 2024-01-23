/**
 * Copyright (C) 2021 Saturneric <eric@bktus.com>
 *
 * This file is part of GpgFrontend.
 *
 * GpgFrontend is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * GpgFrontend is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with GpgFrontend. If not, see <https://www.gnu.org/licenses/>.
 *
 * The initial version of the source code is inherited from
 * the gpg4usb project, which is under GPL-3.0-or-later.
 *
 * All the source code of GpgFrontend was modified and released by
 * Saturneric <eric@bktus.com> starting on May 12, 2021.
 *
 * SPDX-License-Identifier: GPL-3.0-or-later
 *
 */

#include "cmd.h"

#include "main.h"

// std
#include <iostream>

// GpgFrontend
#include "GpgFrontendBuildInfo.h"
#include "GpgFrontendContext.h"
#include "test/GpgFrontendTest.h"

namespace GpgFrontend {

auto PrintVersion() -> int {
  QTextStream stream(stdout);
  stream << PROJECT_NAME << " "
         << "v" << VERSION_MAJOR << "." << VERSION_MINOR << "." << VERSION_PATCH
         << '\n';
  stream << "Copyright (©) 2021 Saturneric <eric@bktus.com>" << '\n'
         << QObject::tr(
                "This is free software; see the source for copying conditions.")
         << '\n'
         << '\n';

  stream << QObject::tr("Build DateTime: ") << BUILD_TIMESTAMP << '\n'
         << QObject::tr("Build Version: ") << BUILD_VERSION << '\n'
         << QObject::tr("Source Code Version: ") << GIT_VERSION << '\n';

  stream << Qt::endl;
  return 0;
}

auto ParseLogLevel(const QString& log_level) -> spdlog::level::level_enum {
  if (log_level == "trace") {
    return spdlog::level::trace;
  }
  if (log_level == "debug") {
    return spdlog::level::debug;
  }
  if (log_level == "info") {
    return spdlog::level::info;
  }
  if (log_level == "warn") {
    return spdlog::level::warn;
  }
  if (log_level == "error") {
    return spdlog::level::err;
  }

  return spdlog::level::info;
}

auto RunTest(const GFCxtWPtr& p_ctx) -> int {
  GpgFrontend::GFCxtSPtr const ctx = p_ctx.lock();
  if (ctx == nullptr) {
    GF_MAIN_LOG_ERROR("cannot get gpgfrontend context for test running");
    return -1;
  }

  GpgFrontend::Test::GpgFrontendContext test_init_args;
  test_init_args.argc = ctx->argc;
  test_init_args.argv = ctx->argv;

  return GpgFrontend::Test::ExecuteAllTestCase(test_init_args);
}

}  // namespace GpgFrontend