//
//  Constants.swift
//  RainyShinyCloudy
//
//  Created by Bá Anh Nguyễn on 12/15/16.
//  Copyright © 2016 Ba Anh Nguyen. All rights reserved.
//

import Foundation

let BASE_URL    = "http://api.openweathermap.org/data/2.5/weather?"
let LATITUDE    = "lat="
let LONGITUDE   = "&lon="
let APP_ID      = "&appid="
let APP_KEY     = "e2ae80201ede8e7c9bd158f438059865"

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)-36\(LONGITUDE)123\(APP_ID)\(APP_KEY)"
