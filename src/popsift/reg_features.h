/*
 * Copyright 2017, Simula Research Laboratory
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 */
#pragma once

#include "features.h"

namespace popsift {

class RegFeatures : public DeviceFeatures
{
public:
    RegFeatures( );
    RegFeatures( int num_ext, int num_ori );
    virtual ~RegFeatures( );
};

} // namespace popsift
