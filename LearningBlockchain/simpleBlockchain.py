from datetime import datetime
import hashlib

# Initialize a block to place within the blockchain
 
# The created block must have:
#     data (to be stored within the decentralized chain network)
#     previous_block_hash (to be attached to to grant security)
 
class Block():
   def __init__(self, data, previous_block_hash):
      
       # reserve the time stamp when the block is required to be created
       self.timestamp = datetime.utcnow()
      
       # Store the data put inside the block
       self.data = data
      
       # Store the encoded cryptographic label from previous block
       self.prev_block_hash = previous_block_hash
      
       # Calculate the cryptography for the current block
       self.hash = hashlib.sha256(self.to_string().encode()).hexdigest()
      
       # Recalculate the cryptography to Proof-of-Work (PoW)
       self.calculate_valid_hash()
      
   def to_string(self):
      
       # Return the block specificity:string containing data + timestamp +
       # prev. encryptation
       return "{}\t{}\t{}".format(self.data,
                                  self.timestamp,
                                  self.prev_block_hash)
  
   def is_hash_valid(self, _hash):
      
       # Return if the recalculated encryptation is valid (PoW)
       return (_hash.startswith('0'*3))
  
   def calculate_valid_hash(self):
      
       # Initialize a empty string as a encrypted label
       _hash = ''
      
       # Initialize a bit-like disturbance over the created cryptography
       nonce = 0
      
       while (not self.is_hash_valid(_hash)):
          
           # Store a temporary variable with the block specific string
           # (data + timestamp + prev. encryptation)
           # and add the bit-like disturbance
           temp = self.to_string() + str(nonce)
           #print(temp)
          
           # Recalculate the cryptography considering the bit-like disturbance
           _hash = hashlib.sha256(temp.encode()).hexdigest()
          
           # Increment bit-like the disturbance
           nonce += 1
          
       # Once done, store the current block's cryptographic label
       self.hash = _hash
      
       # Store the nonce as static to be easily accessed
       self.nonce = nonce

 
 
 
# Create a blockchain. The network enlacing the uploaded blocks
# For each block, the blockchain stores:
#     data, timestamp, cryptographic label
 
class Blockchain():
   def __init__(self):
      
       # Initialize the blockchain as a array
       self.blocks = []
      
       # Place the first block inside the blockchain
       self.set_genesis_block()
      
   def set_genesis_block(self):
      
       # Generate the data from the first block
       data = 'Genesis'
      
       # Generate the first cryptogtaphic label (trivial)
       prev_hash = '0'*64
      
       # Generate a block container with: data + prev. encryptation
       genesis_block = Block(data, prev_hash)
      
       # Add the block to the blockchain
       self.blocks.append(genesis_block)
      
   def get_last_hash(self):
      
       # Get the last block placed in the blockchain
       last_block = self.blocks[-1]
      
       # Get the last encryption label
       last_hash = last_block.hash
      
       # Return the last encrpytion label
       return (last_hash)
  
   def add_new_block(self, data):
      
       # Get the last encryption label (from the last block added to the
       # blockchain)
       prev_hash = self.get_last_hash()
      
       # Generate the block with the provided date
       new_block = Block(data, prev_hash)
      
       # Add the new block to the blockchain
       self.blocks.append(new_block)
