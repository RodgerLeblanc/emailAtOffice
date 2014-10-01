/*
 * Copyright (c) 2011-2014 BlackBerry Limited.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/*
 * 
 * Add this line to your PRO file :
 *     LIBS += -lbbsystem
 * 
 */ 
       
import bb.cascades 1.3

Page {
    Container {
        topPadding: ui.du(5)
        leftPadding: topPadding
        rightPadding: topPadding
        TextField {
            id: textField
            hintText: "Text to send"
        }
        Button {
            text: "Send email"
            onClicked: {
                _app.sendEmail(textField.text)
            }
        }
    }
}
