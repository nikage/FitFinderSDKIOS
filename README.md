# FitFinderSDKIOS

A simple SDK to recommend clothing sizes based on height and weight using BMI (Body Mass Index).

## Features
- Calculates BMI from height and weight.
- Recommends size categories (`S`, `M`, `L`, `XL`) based on BMI ranges.

## Installation

### Swift Package Manager (SPM)

1. Open your Xcode project.
2. Go to **File > Add Packages**.
3. Add the following URL for the FitFinderSDK:
   ```
   git@github.com:nikage/FitFinderSDKIOS.git
   ```
4. Select the appropriate version or branch.
5. Add the package to your target.

## Usage

### Importing the SDK

```swift
import FitFinderSDK
```

### Example Usage

Below is an example of integrating the FitFinderSDK into a SwiftUI app:

```swift

import SwiftUI
import FitFinderSDK

struct ContentView: View {
    @State private var height: String = ""
    @State private var weight: String = ""
    @State private var recommendedSize: String?

    var body: some View {
        VStack {
            Text("FitFinder Size Recommendation")
                .font(.title)
                .padding()

            TextField("Enter height (cm)", text: $height)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.decimalPad)
                .padding()

            TextField("Enter weight (kg)", text: $weight)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.decimalPad)
                .padding()

            Button("Get Recommended Size") {
                if let height = Double(height), let weight = Double(weight) {
                    recommendedSize = FitFinder.recommendSize(height: height, weight: weight)
                } else {
                    recommendedSize = "Invalid input"
                }
            }
            .padding()
            .buttonStyle(.borderedProminent)

            if let recommendedSize = recommendedSize {
                Text("Recommended Size: \(recommendedSize)")
                    .font(.headline)
                    .padding()
            }
        }
        .padding()
    }
}
```

### Output Example

1. Input height and weight:
   - **Height:** 170 cm
   - **Weight:** 65 kg
2. Tap "Get Recommended Size."
3. The output will display:
   ```
   Recommended Size: M
   ```

## BMI-Based Size Recommendation Logic

| BMI Range        | Size |
|-------------------|------|
| `< 18.5`         | S    |
| `18.5 - 24.9`    | M    |
| `25.0 - 29.9`    | L    |
| `>= 30.0`        | XL   |

## See Also 

https://github.com/nikage/FitFinderSDKAndroid 
