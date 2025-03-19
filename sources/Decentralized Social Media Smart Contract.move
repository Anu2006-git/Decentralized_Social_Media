module MyModule::DecentralizedSocialMedia {

    use aptos_framework::signer;
    use std::vector; // Import the vector module

    /// Struct representing a user profile.
    struct Profile has store, key {
        owner: address,
        posts: vector<vector<u8>>, // Stores posts as byte vectors
    }

    /// Function to create a new user profile.
    public fun create_profile(account: &signer) {
        let profile = Profile {
            owner: signer::address_of(account),
            posts: vector::empty<vector<u8>>(), // Now correctly references vector
        };
        move_to(account, profile);
    }

    /// Function to allow users to post a message.
    public fun post_message(account: &signer, message: vector<u8>) acquires Profile {
        let profile = borrow_global_mut<Profile>(signer::address_of(account));
        vector::push_back(&mut profile.posts, message); // Now correctly references vector
    }
}
