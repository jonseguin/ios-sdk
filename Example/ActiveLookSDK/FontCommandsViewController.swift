/*
 
Copyright 2021 Microoled
Licensed under the Apache License, Version 2.0 (the “License”);
you may not use this file except in compliance with the License.
You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an “AS IS” BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
 
*/

import Foundation
import ActiveLookSDK

class FontCommandsViewController : CommandsTableViewController {

    let customFontData: [UInt8] = [0x00, 0x30, 0x00, 0x39, 0x00, 0x00, 0x00, 0x15, 0x00, 0x24, 0x00, 0x33, 0x00, 0x43, 0x00, 0x54, 0x00, 0x64, 0x00, 0x78, 0x00, 0x86, 0x00, 0x9A, 0x00, 0xAE, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x15, 0x07, 0xF0, 0x83, 0x31, 0x31, 0x21, 0x31, 0x21, 0x31, 0x21, 0x31, 0x21, 0x31, 0x21, 0x31, 0x21, 0x31, 0x33, 0xF0, 0x80, 0x0F, 0x07, 0xF0, 0x91, 0x52, 0x41, 0x11, 0x61, 0x61, 0x61, 0x61, 0x61, 0x61, 0xF0, 0x90, 0x0F, 0x07, 0xF0, 0x83, 0x31, 0x31, 0x61, 0x61, 0x51, 0x61, 0x51, 0x51, 0x55, 0xF0, 0x70, 0x10, 0x07, 0xF0, 0x83, 0x31, 0x31, 0x61, 0x61, 0x42, 0x71, 0x61, 0x21, 0x31, 0x33, 0xF0, 0x80, 0x11, 0x07, 0xF0, 0xA1, 0x52, 0x52, 0x41, 0x11, 0x41, 0x11, 0x31, 0x21, 0x35, 0x51, 0x61, 0xF0, 0x80, 0x10, 0x07, 0xF0, 0x84, 0x31, 0x51, 0x64, 0x31, 0x31, 0x61, 0x61, 0x21, 0x31, 0x33, 0xF0, 0x80, 0x14, 0x07, 0xF0, 0x83, 0x31, 0x31, 0x21, 0x61, 0x12, 0x32, 0x21, 0x21, 0x31, 0x21, 0x31, 0x21, 0x31, 0x33, 0xF0, 0x80, 0x0E, 0x07, 0xF0, 0x75, 0x51, 0x61, 0x51, 0x61, 0x61, 0x51, 0x61, 0x61, 0xF0, 0xA0, 0x14, 0x07, 0xF0, 0x83, 0x31, 0x31, 0x21, 0x31, 0x21, 0x31, 0x33, 0x31, 0x31, 0x21, 0x31, 0x21, 0x31, 0x33, 0xF0, 0x80, 0x14, 0x07, 0xF0, 0x83, 0x31, 0x31, 0x21, 0x31, 0x21, 0x31, 0x21, 0x22, 0x32, 0x11, 0x61, 0x21, 0x31, 0x33, 0xF0, 0x80]
    

    // MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Font commands"
        
        commandNames = [
            "List fonts",
            "Select font 1",
            "Select font 2",
            "Select font 3",
            "Save custom font",
            "Select custom font",
            "Delete custom font",
        ]
        commandActions = [
            self.fontList,
            self.selectFont1,
            self.selectFont2,
            self.selectFont3,
            self.saveCustomFont,
            self.selectCustomFont,
            self.deleteCustomFont
        ]
    }
    
    
    // MARK: - Actions
    
    func fontList() {
        // TODO Callback when working
        glasses.fontlist()
    }
    
    func selectFont1() {
        glasses.fontSelect(id: 1)
    }
    
    func selectFont2() {
        glasses.fontSelect(id: 2)
    }
    
    func selectFont3() {
        glasses.fontSelect(id: 3)
    }
    
    func saveCustomFont() {
        glasses.writeConfigID(configuration: Configuration(number: 1, id: 0))
        glasses.fontSave(id: 4, fontData: FontData(height: 14, data: customFontData))
    }
    
    func selectCustomFont() {
        glasses.fontSelect(id: 4)
    }
    
    func deleteCustomFont() {
        glasses.fontDelete(id: 4)
    }
}