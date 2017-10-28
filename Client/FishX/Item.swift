//
//  Item.swift
//  FishX
//
//  Created by fang tairan on 2017/10/28.
//  Copyright © 2017年 Tayron. All rights reserved.
//

import UIKit

struct Item {
     let KeyId = "KeyId"
     let KeyIsbn10 = "isbn10"
     let KeyIsbn13 = "isbn13"
     let KeyTitle = "title"
     let KeyOrigin_title = "orgin_title"
     let KeyAlt_title = "alt_title"
     let KeySub_title = "subtitle"
     let KeyUrl = "url"
     let KeyAlt = "alt"
     let KeyImage = "image"
     let KeyImages = "images"
     let KeyAuthor = "author"
     let KeyTranslator = "translator"
     let KeyPublisher = "publisher"
     let KeyPubdate = "pubdate"
     let KeyRating = "rating"
     let KeyTags = "rating"
     let KeyPrice = "rating"
     let KeyBinding = "binding"
     let KeySeries = "series"
     let KeyPages = "pages"
     let KeyAuthorInfo = "author_info"
     let KeySummary = "summary"
     let KeyCatalog = "catalog"
     let KeyEbookUrl = "ebook_url"
     let KeyEbookPrice = "ebook_price"
 
    
    
    var id = ""
    var isbn10 = ""
    var isbn13 = ""
    var title = ""
    var origin_title = ""
    var alt_title = ""
    var subtitle = ""
    var url = ""
    var alt = ""
    var image = ""
    var images = [String:String]()
    var author = [String]()
    var translator = [String]()
    var publisher = ""
    var pubdate = ""
    var rating = ""
    var tags = [[String:NSObject]]()
    var binding = ""
    var price = ""
    var series = [String:String]()
    var pages = ""
    var author_info = ""
    var summary = ""
    var catalog = ""
    var ebook_url = ""
    var ebook_price = ""
    
    init(dict:[String:NSObject]){
        id = dict[KeyId] as? String ?? ""
        isbn10 = dict[KeyIsbn10] as? String ?? ""
        isbn13 = dict[KeyIsbn13] as? String ?? ""
        title = dict[KeyTitle] as? String ?? ""
        origin_title = dict[KeyOrigin_title] as? String ?? ""
        alt_title = dict[KeyAlt_title] as? String ?? ""
        subtitle = dict[KeySub_title] as? String ?? ""
        url = dict[KeyUrl] as? String ?? ""
        alt = dict[KeyAlt] as? String ?? ""
        image = dict[KeyImage] as? String ?? ""
        images = dict[KeyImages] as? [String:String] ?? [:]
        author = dict[KeyAuthor] as? [String] ?? []
        translator = dict[KeyTranslator] as? [String] ?? []
        publisher = dict[KeyPublisher] as? String ?? ""
        pubdate = dict[KeyPubdate] as? String ?? ""
        rating = dict[KeyRating] as? String ?? ""
        tags = dict[KeyTags] as? [[String:NSObject]] ?? []
        binding = dict[KeyBinding] as? String ?? ""
        price = dict[KeyPrice] as? String ?? ""
        series = dict[KeySeries] as? [String:String] ?? [:]
        pages = dict[KeyPages] as? String ?? ""
        author_info = dict[KeyAuthorInfo] as? String ?? ""
        summary = dict[KeySummary] as? String ?? ""
        catalog = dict[KeyCatalog] as? String ?? ""
        ebook_url = dict[KeyEbookUrl] as? String ?? ""
        ebook_price = dict[KeyEbookPrice] as? String ?? ""

    }

}
