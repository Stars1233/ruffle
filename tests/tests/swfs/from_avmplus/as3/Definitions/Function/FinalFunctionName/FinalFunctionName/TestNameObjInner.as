/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */
package FinalFunctionName {

    // due to bug 106878, the base class definition must be first
    class TestNameObjInner {

        // constructor
        function TestNameObjInner() { res = "EmptyName"; }

        // not the constructor but looks like it
        final function testNameObjInner() { return "not the constructor" }

        final function a1 () { return "a1"; }
        final function a_1 () { return "a_1"; }
        final function _a1 () { return "_a1"; }
        final function __a1 () { return "__a1"; }
        final function _a1_ () { return "_a1_"; }
        final function __a1__ () { return "__a1__"; }
        final function $a1 () { return "$a1"; }
        final function a$1 () { return "a$1"; }
        final function a1$ () { return "a1$"; }
        final function A1 () { return "A1"; }
        final function cases () { return "cases"; }
        final function Cases () { return "Cases"; }
        final function abcdefghijklmnopqrstuvwxyz0123456789$_ () { return "all"; }
    }

}

