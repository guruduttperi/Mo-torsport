//
//  DetailViewController.swift
//  Mötorsport
//
//  Created by Gurudutt on 09/02/18.
//  Copyright © 2018 Searde. All rights reserved.
//

import UIKit
import MapKit

class DetailViewController: UIViewController {

    var longitude: Double = 0
    var latitude: Double = 0
    
    var sentData_title: String!
    var sentData_image: String!
    var sentData_location: String!
    @IBOutlet weak var detail_ImageView: UIImageView!
    @IBOutlet weak var detail_TitleView: UILabel!
    @IBOutlet weak var detail_LocationView: UILabel!
    @IBOutlet weak var detail_DescView: UITextView!
    @IBOutlet weak var detail_MapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        detail_MapView.layer.cornerRadius = 5
        detail_ImageView.layer.cornerRadius = 5
        self.navigationItem.title = sentData_title
        detail_ImageView.image = UIImage(named: sentData_image)
        detail_TitleView.text = sentData_title
        detail_LocationView.text = sentData_location
        
        //Filling in the Values for Description and the MapKit
        
        if detail_TitleView.text == "Circuit de Monaco"
        {detail_DescView.text = "Circuit de Monaco is a street circuit laid out on the city streets of Monte Carlo and La Condamine around the harbour of the principality of Monaco. It is commonly referred to as Monte Carlo because it is largely inside the Monte Carlo neighbourhood of Monaco.The circuit is used on two weekends in the month of May of each year to host the Formula One Monaco Grand Prix and Formula E Monaco ePrix (odd years) or Historic Grand Prix of Monaco (even years).Formula One's respective feeder series over the years – Formula Two, Formula 3000 and today the GP2 Series – also visit the circuit concurrently with Formula One."
            
            latitude = 43.7345047
            longitude = 7.42139480000003
    }
        
        if detail_TitleView.text == "Interlagos"
        {detail_DescView.text = "Autódromo José Carlos Pace, also known by its former name Interlagos, is a motorsport circuit located in the city of São Paulo, in the neighborhood of Interlagos, renamed after Carlos Pace, a Brazilian Formula One driver who had died in a 1977 plane crash. It is well known for being the venue of the Formula One Brazilian Grand Prix.The Brazilian Grand Prix has always been more of a promoter event than a profit-raiser in itself. The contract was prolonged until 2022, although tobacco advertising has been banned since 2006."
            
            latitude = -23.7037893
            longitude = -46.70091880000001
        }
        
        if detail_TitleView.text == "Laguna Seca"
        {detail_DescView.text = "Mazda Raceway Laguna Seca (previously known as Laguna Seca Raceway) is a paved road racing track in central California used for both auto racing and motorcycle racing, built in 1957 near both Salinas and Monterey, California, United States.The racetrack is 2.238 miles (3.602 km) long, with a 180 feet (55 m) elevation change. Its eleven turns are highlighted by the circuit's signature turn, the downhill-plunging Corkscrew at Turns 8 and 8A. A variety of racing, exhibition, and entertainment events are held at the raceway, ranging from superkarts to sports car racing to music festivals. The name Laguna Seca is Spanish for dry lake: the area where the track now lies was once a lake, and the course was built around the dry lake bed. After the course was reconfigured, two artificial ponds were added."
           
            latitude = 36.5705407
            longitude = -121.76449639999998
        }
        
        if detail_TitleView.text == "Monza"
        {detail_DescView.text = "The Autodromo Nazionale Monza is a historic race track located near the city of Monza, north of Milan, in Italy. Built in 1922, it is the world's third purpose-built motor racing circuit after those of Brooklands and Indianapolis. The circuit's biggest event is the Formula One Italian Grand Prix. With the exception of 1980, the race has been hosted there since the series's inception."
          
            latitude = 45.61009
            longitude = 9.278250000000071
        }
        
        if detail_TitleView.text == "Nürburgring Nordschleife"
        {detail_DescView.text = "Since its construction (1925 - 1927), the Nordschleife has enjoyed a reputation as a terrifying and merciless route through the Eifel forests. An English journalist who visited the Nordschleife during the opening race on 18 June 1927 even concluded “that it seemed as if a reeling, drunken giant had been sent out to determine the route”. The Formula 1 pilot Sir John Young Jackie Stewart – after all a three-time world champion in 1969, 1971 and 1973 – was so impressed by the circuit that he gave it the name which it will probably never lose: Green Hell (Grüne Hölle). Racing and winning on the Nordschleife has always been very special for racing drivers, because the track is one of the most demanding in the world. Tricky corners, treacherous crests, steep inclines and gradients and constantly changing road surfaces demand great skill from the driver and put vehicles to a hard test.  The best-known event today is the ADAC Zurich 24-hour race, which is held on both the Nordschleife and the Grand Prix circuit and which for four days transforms the entire circuit into a huge spectacle. Up to 800 amateurs and professionals in up to 200 cars take part in this race. "
        
            latitude = 50.3403023
            longitude = 6.955696499999931
        }
        
        if detail_TitleView.text == "Silverstone"
        {detail_DescView.text = "Silverstone Circuit is a motor racing circuit in England next to the Northamptonshire villages of Silverstone and Whittlebury. The circuit straddles the Northamptonshire and Buckinghamshire border, with the current main circuit entry on the Buckinghamshire side. The Northamptonshire towns of Towcester (5 miles) and Brackley (7 miles) and Buckinghamshire town of Buckingham (6 miles) are close by, and the nearest large towns are Northampton and Milton Keynes. Silverstone is the current home of the British Grand Prix, which it first hosted in 1948 "
            
            latitude = 52.0776791
            longitude = -1.021445500000027
        }
        
        if detail_TitleView.text == "Spa-Francorchamps"
        {detail_DescView.text = "The Circuit de Spa-Francorchamps motor-racing circuit is the venue of the Formula One Belgian Grand Prix, and of the Spa 24 Hours and 1000 km Spa endurance races.  It is also home to the all-Volkswagen club event, 25 Hours of Spa, run by the Uniroyal Fun Cup. It is one of the most challenging race tracks in the world, mainly due to its fast, hilly and twisty nature. Spa is a favourite circuit of many racing drivers and fans. Despite its name, the circuit is not in Spa but lies in the vicinity of the town of Francorchamps within the boundaries of the municipality of Stavelot, with a part in the boundaries of Malmedy. "
        
            latitude = 50.4369118
            longitude = 5.972049999999967
        }
        
        if detail_TitleView.text == "Suzuka"
        {detail_DescView.text = "The Suzuka International Racing Course is a motorsport race track located in Ino, Suzuka City, Mie Prefecture, Japan and operated by Mobilityland Corporation, a subsidiary of Honda Motor Co, Ltd. It has a capacity of 155,000. Suzuka, openly touted by F1 drivers and fans as one of the most enjoyed, is also one of the oldest remaining tracks of the Formula One World Championship, and so has a long history of races as venue of the Japanese Grand Prix. Its traditional role as one of the last Grands Prix of the season means numerous world championships have been decided at the track."
        
            latitude = 34.8455935
            longitude = 136.53895220000004
        }
        
        let span = MKCoordinateSpanMake(0.005, 0.005)
        let region = MKCoordinateRegion(center: CLLocationCoordinate2DMake(latitude, longitude), span: span)
        
        detail_MapView.setRegion(region, animated: true)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
