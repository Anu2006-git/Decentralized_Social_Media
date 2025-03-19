# Decentralized Social Media Smart Contract

## Table of Contents
1. [Introduction](#introduction)
2. [Features](#features)
3. [Prerequisites](#prerequisites)
4. [Installation](#installation)
5. [Usage](#usage)
6. [Smart Contract Structure](#smart-contract-structure)
7. [Security Considerations](#security-considerations)
8. [License](#license)

---

## Introduction
This project implements a decentralized social media platform using Move, a secure and flexible smart contract language on the Aptos blockchain. The smart contract enables users to create profiles and post messages in a trustless and transparent manner.

## Features
- **Decentralized Profiles**: Users can create profiles stored directly on the blockchain.
- **Immutable Posts**: Posts are stored in a verifiable and censorship-resistant way.
- **Transparent Storage**: Data is stored in a decentralized and publicly auditable manner.

## Prerequisites
- Aptos CLI installed
- Move compiler and Aptos development tools
- A funded Aptos testnet account

## Installation
1. Clone the repository:
   ```sh
   git clone https://github.com/your-repo/decentralized-social-media.git
   cd decentralized-social-media
   ```
2. Build the smart contract:
   ```sh
   aptos move compile
   ```
3. Deploy to the Aptos testnet:
   ```sh
   aptos move publish --profile testnet
   ```

## Usage
### Creating a Profile
Users can create a profile by calling:
```move
create_profile(&signer)
```

### Posting a Message
Users can post a message using:
```move
post_message(&signer, message: vector<u8>)
```

## Smart Contract Structure
### Module: `MyModule::DecentralizedSocialMedia`
- **Struct `Profile`**: Represents a user profile with an `owner` address and a list of `posts`.
- **Function `create_profile`**: Allows a user to initialize their profile.
- **Function `post_message`**: Allows users to post messages.

## Security Considerations
- **Access Control**: Only the profile owner can post messages.
- **Storage Limitations**: Consider limiting the size of posts to prevent excessive storage costs.
- **Spam Protection**: Future improvements may include rate-limiting or staking mechanisms to prevent spam.

## License
This project is licensed under the MIT License.

