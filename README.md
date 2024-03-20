
# Fortnite API for iOS

This repository contains an iOS library for interacting with the Fortnite API. It's designed to help iOS developers easily integrate Fortnite game data into their applications.

## Features

- Fetch player statistics
- Retrieve game data and metadata
- Access Fortnite news and updates

## Installation

To use this library in your project, follow these steps:

1. **Clone the repository:**
   ```bash
   git clone https://github.com/ajgreen1987/fortnite-api-ios.git
   ```

2. **Integrate into your project:**
   - If you are using Xcode, you can add the project as a dependency in your project settings.
   - Alternatively, you can manually copy the source files into your project directory.
   - SPM*TODO*

## Usage

Import the library into your Swift file:

```swift
import FortniteAPI
```

Initialize the API client with your API key:

```swift
let fortniteAPI = FortniteAPI(apiKey: "your_api_key_here")
```

Fetch player statistics:

```swift
fortniteAPI.fetchPlayerStats(playerName: "player_name_here") { stats, error in
    if let stats = stats {
        print("Player stats: \(stats)")
    } else if let error = error {
        print("Error fetching player stats: \(error)")
    }
}
```

## Documentation

For more detailed documentation, refer to the [Docs](https://fortniteapi.io/docs/) or the `docs` directory in the repository.

## Contributing

Contributions to the `fortnite-api-ios` project are welcome. Please refer to the CONTRIBUTING.md file for guidelines on how to contribute to this project.

Certainly! Here's the updated license section with the specified year and copyright owner:

## License

This project is licensed under the MIT License. Below is the full license text:

```
MIT License

Copyright (c) 2024 AJ Green

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
