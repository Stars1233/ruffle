/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */
package MultipleExtraArgFunction2 {

    class TestObjInner{

        public function returnRest(arr:Array,n:Number,... rest):Number {

           var count = rest.length;

           var a:int = 0;

               //print("Output from 1st test case");

              /* for( a = 0; a<count; a++ ){

                 print( rest[a] );

               }*/

             return count;

             }

    }

}

