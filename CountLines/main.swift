//
//  main.swift
//  CountLines
//
//  Created by Milko Škofič on 08/07/23.
//

import Foundation

// List of file paths to count.
let paths = [
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/ai.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/bio01.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/bio02.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/bio03.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/bio04.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/bio05.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/bio06.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/bio07.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/bio08.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/bio09.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/bio10.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/bio11.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/bio12.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/bio13.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/bio14.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/bio15.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/bio16.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/bio17.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/bio18.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/bio19.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/cmi_max.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/cmi_mean.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/cmi_min.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/cmi_range.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/fcf.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/fgd.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/gdd0.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/gdd5.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/gdd10.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/gddlgd0.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/gddlgd5.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/gddlgd10.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/gdgfgd0.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/gdgfgd5.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/gdgfgd10.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/gsl.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/gsp.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/gst.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/hurs_max.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/hurs_mean.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/hurs_min.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/hurs_range.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/kg0.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/kg1.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/kg2.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/kg3.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/kg4.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/kg5.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/lgd.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/ngd0.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/ngd5.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/ngd10.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/npp.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/pet_penman_max.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/pet_penman_mean.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/pet_penman_min.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/pet_penman_range.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/rsds_max.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/rsds_mean.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/rsds_min.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/rsds_range.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/scd.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/sfcWind_max.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/sfcWind_mean.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/sfcWind_min.csv",
    "/Users/milko/Local/Data/Environment/CHELSA/1981-2010/CSV/bio/sfcWind_range.csv"
]

func ProcessFile(_ path: String) async throws -> String {
    
    // Get file URL.
    let filename = "file:\(path)"
    guard let url = URL(string: filename) else {
        return("Unable to open \(path).")
    }
    
    // Set local counter.
    var counter: Int64 = 0
    
    // Perform task.
    do {
        
        // Count lines.
        for try await _ in url.lines {
            counter = counter + 1
        }
        
        // Print result.
        return("\(counter) \(path)")

    } catch {
        return("Error: \(error)")
    }
    
} // ProcessFile()

for path in paths {
    
    // Perform stuff with path.
    do {
        let result = try await ProcessFile(path)
        print(result)

    } catch {
        print ("Error: \(error)")
    }
    
} // Iterating paths.
