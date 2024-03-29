//
//  ExperienceTableViewController.swift
//  khaleelLab2
//
//  Created by Khaleel Elias on 2019-12-07.
//  Copyright © 2019 Khaleel Elias. All rights reserved.
//

import UIKit

class ExperienceTableViewController: UITableViewController {

    
    var experiences: [Experience] = []
         var educations: [Experience] = []
         
         override func viewDidLoad() {
             super.viewDidLoad()
             tableView.tableFooterView = UIView()
             experiences = [
                 Experience(imageName: "Ikea", titel: "IKEA", message: "Jobbar som jagermedarbetare vid sidan av här i jönköping  tosvik"),
             ]
             educations = [
                 Experience(imageName: "JUlogo", titel: "Jönköpings University", message: "Jag pluggade på Jönköpings University"),
                 Experience(imageName: "HTS", titel: "Hässleholms Tekniska Skolan", message: "JG TOG STUDENTEN I HÄSSLEHOLM"),
                
             ]
      }
                    
                    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                        if let destination = segue.destination as? DetailViewController {
                            if let indexPath = sender as? IndexPath {
                                if(indexPath.section == 0)  {
                                    let exp = experiences[indexPath.row]
                                    destination.experience = exp
                                }   else    {
                                    let edu = educations[indexPath.row]
                                    destination.experience = edu
                                }
                            }
                        }
                    }
                    // MARK: - Table view data source

                    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
                        if(section == 0)    {
                            return experiences.count
                        }   else    {
                            return educations.count
                        }
                    }
                    
                    override func numberOfSections(in tableView: UITableView) -> Int {
                        return 2
                    }
                    
                    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                        if let cell = tableView.dequeueReusableCell(withIdentifier: "ExperienceTableViewCell", for: indexPath) as? ExperienceTableViewCell  {
                           
                            switch(indexPath.section)   {
                                case 0:
                                    let Experience = experiences[indexPath.row]
                                    cell.XPImage.image = UIImage(named: Experience.imageName)
                                    cell.XPMessage.text = Experience.message
                                    cell.XPTitel.text = Experience.titel
                                    return cell
                                case 1:
                                    let Education = educations[indexPath.row]
                                    cell.XPImage.image = UIImage(named: Education.imageName)
                                    cell.XPMessage.text = Education.message
                                    cell.XPTitel.text = Education.titel
                                    return cell
                                default:
                                    return cell
                            }
                        }   else    {
                            return UITableViewCell()
                        }
                    }
                    
                    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
                        if(section == 0)    {
                            return "Work"
                        }   else    {
                            return "Education"
                        }
                    }
                    
                    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)   {
                        performSegue(withIdentifier: "segue", sender: indexPath)
                    }
                    


                }
