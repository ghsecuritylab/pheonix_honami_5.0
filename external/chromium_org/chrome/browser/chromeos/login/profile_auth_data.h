// Copyright (c) 2012 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#ifndef CHROME_BROWSER_CHROMEOS_LOGIN_PROFILE_AUTH_DATA_H_
#define CHROME_BROWSER_CHROMEOS_LOGIN_PROFILE_AUTH_DATA_H_

#include <string>
#include "base/callback.h"

namespace content {
class BrowserContext;
}

namespace chromeos {

// Helper class for transferring authentication related data from one
// BrowserContext to another: proxy auth cache, cookies, server bound certs.
class ProfileAuthData {
 public:
  // Transfers proxy authentication cache and optionally |transfer_cookies| and
  // server bound certs from the BrowserContext that was used for
  // authentication. |completion_callback| will be called on UI thread after
  // the operation is completed.
  static void Transfer(content::BrowserContext* from_context,
                       content::BrowserContext* to_context,
                       bool transfer_cookies,
                       const base::Closure& completion_callback);

 private:
  DISALLOW_IMPLICIT_CONSTRUCTORS(ProfileAuthData);
};

}  // namespace chromeos

#endif  // CHROME_BROWSER_CHROMEOS_LOGIN_PROFILE_AUTH_DATA_H_