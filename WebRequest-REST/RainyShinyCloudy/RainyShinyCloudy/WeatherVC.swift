//
//  WeatherVC.swift
//  RainyShinyCloudy
//
//  Created by Bá Anh Nguyễn on 12/13/16.
//  Copyright © 2016 Ba Anh Nguyen. All rights reserved.
//

import UIKit

class WeatherVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var currentTempLabel: UILabel!
    @IBOutlet weak var weatherTypeLabel: UILabel!
    @IBOutlet weak var weatherImage: UIImageView!
    @IBOutlet weak var currentLocationLabel: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
    var currentWeather = CurrentWeather()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        currentWeather.downloadWeatherDetails {
            //setup UI to load downloaded data
            self.updateMainUI()
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "weatherCell", for: indexPath)
        return cell
    }

    func updateMainUI() {
        currentLocationLabel.text = currentWeather.cityName
        
        currentTempLabel.text = "\(currentWeather.currentTemp)"
        
        dateLabel.text = currentWeather.date
        
        weatherTypeLabel.text = currentWeather.weatherType
        
        weatherImage.image = UIImage(named: currentWeather.weatherType)
    }
}

