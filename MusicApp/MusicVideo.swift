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
    private var _vRights:String
    private var _vPrice:String
    private var _vArtist:String
    private var _vImid:String
    private var _vGenre:String
    private var _vLinkToiTunes:String
    private var _vReleaseDte:String

    //This variable gets created from UI
    var vImageData:NSData?

    //Make a getter
    
    var vName: String {
        return _vName
    }
    
    var vRights: String {
        return _vRights
    }
    
    var vPrice: String {
        return _vPrice
    }
    
    var vArtist: String {
        return _vArtist
    }
    
    var vImid: String {
        return _vImid
    }
    
    var vGenre: String {
        return _vGenre
    }
    
    var vLinkToiTunes: String {
        return _vLinkToiTunes
    }
    
    var vReleaseDte: String {
        return _vReleaseDte
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
        
        
        // Rights
        
        if let rights = data["rights"] as? JSONDictionary,
            vRights = rights["label"] as? String{
                self._vRights = vRights
        }
            
        else{
            _vRights = ""
        }
        
        //Price
        if let price = data["im:price"] as? JSONDictionary,
            vPrice = price["label"] as? String{
                self._vPrice = vPrice
        }
            
        else{
            _vPrice = ""
        }
        
        // Artist
        
        
        if let Artist = data["im:artist"] as? JSONDictionary,
            vArtist = Artist["label"] as? String{
                self._vArtist = vArtist
        }
            
        else{
            _vArtist = ""
        }
        
       // Imid
 
        if let Imid = data["id"] as? JSONDictionary,
            vImid = Imid["attributes"] as? JSONDictionary,
            vImmid = vImid["im:id"] as? String{
                self._vImid = vImmid
        }
            
        else{
            _vImid = ""
        }

        //Genre
        
        if let Genre = data["category"] as? JSONDictionary,
            vGenre = Genre["attributes"] as? JSONDictionary,
            VGgenre = vGenre["term"] as? String{
                self._vGenre = VGgenre
        }
            
        else{
            _vGenre = ""
        }
        
        
        //LinkToiTunes
        
        if let LinkToiTunes = data["link"] as? JSONArrary,
            vLinkToiTunes = LinkToiTunes[0] as? JSONDictionary,
            vLlinkToiTunes = vLinkToiTunes["attributes"] as? JSONDictionary,
            VLllinkToiTunes = vLlinkToiTunes["href"] as? String{
                self._vLinkToiTunes = VLllinkToiTunes
        }
            
        else{
            _vLinkToiTunes = ""
        }
        
        //ReleaseDte
        
        if let ReleaseDte = data["im:releaseDate"] as? JSONDictionary,
            vreleaseDate = ReleaseDte["attributes"] as? JSONDictionary,
            vrreleaseDate = vreleaseDate["label"] as? String{
                self._vReleaseDte = vrreleaseDate
        }
            
        else{
            _vReleaseDte = ""
        }
        
    
    }
}

    
    
    
    
    
    
    
    
    
