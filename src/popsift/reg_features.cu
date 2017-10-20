/*
 * Copyright 2016-2017, Simula Research Laboratory
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/.
 */

#include "reg_features.h"

using namespace std;

namespace popsift {

/*************************************************************
 * RegFeatures
 *************************************************************/

RegFeatures::RegFeatures( )
{ }

RegFeatures::RegFeatures( int num_ext, int num_ori )
    : DeviceFeatures( num_ext, num_ori )
{ }

RegFeatures::~RegFeatures( )
{ }

} // namespace popsift
