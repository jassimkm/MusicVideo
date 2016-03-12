//
//  MusicVideo.swift
//  MusicApp
//
//  Created by Jassim Mukthar on 12/03/16.
//  Copyright © 2016 Jassim Mukthar. All rights reserved.
//

import Foundation
class Videos {
    //data encapsulation
    
    private var _vName:String
    private var _vImageUrl:String
    private var _vVideoUrl:String
    
    //Make a getter
    
    var vName: String {
        return _vName
    }
    
    var vImageUrl: String{
        return _vImageUrl
    }
    
    var vVideoUrl: String{
        return _vVideoUrl
    }
    
    init(data: JSONDictionary) {
        
        //if we donot iniatialize all properties we ll get an error messge
        //Return from initializer without iniatializing all stored properties 
        
        //Video Name
        if let name = data["im:name"] as? JSONDictionary,
            vName = name["label"] as? String {
                self._vName = vName
        }
        else{
            // you always not get from json what you want
            //element in json is expected
            _vName = ""
            
        }
        
        //Image URL
        
        if let img = data["im:image"] as? JSONArrary,
        image = img[2] as? JSONDictionary,
            immage = image["label"] as? String {_vImageUrl = immage.stringByReplacingOccurrencesOfString("100X100", withString: "600X600")
                
        }
        else{
            _vImageUrl = ""
        }
        
        // Video URL
        
        if let video = data["link"] as? JSONArrary,
            vUrl = video[1] as? JSONDictionary,
            vHref = vUrl["attributes"] as? JSONDictionary,
            vVideoUrl = vHref["href"] as? String {
                self._vVideoUrl = vVideoUrl
        }
        
        else{
            _vVideoUrl = ""
        }
    }
    
    
    
    
    
    
    
    
    
    
    
}