/*
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 */

#pragma once

#include "ABI44_0_0AndroidDropdownPickerEventEmitter.h"
#include "ABI44_0_0AndroidDropdownPickerProps.h"

#include <ABI44_0_0React/ABI44_0_0renderer/components/view/ConcreteViewShadowNode.h>

namespace ABI44_0_0facebook {
namespace ABI44_0_0React {

extern const char AndroidDropdownPickerComponentName[];

/*
 * `ShadowNode` for <AndroidDropdownPicker> component.
 */
using AndroidDropdownPickerShadowNode = ConcreteViewShadowNode<
    AndroidDropdownPickerComponentName,
    AndroidDropdownPickerProps,
    AndroidDropdownPickerEventEmitter>;

} // namespace ABI44_0_0React
} // namespace ABI44_0_0facebook
