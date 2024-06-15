# 3rd-module
#MyToken
So, in this project what we have done is firstly we have imported openzeppelin library from both “ERC20”token and “Ownable” Contract.
After this we have our Contract as MyToken inherits from both “ERC20”and “Ownable” .
Then we are having a constructor which is initialling “ERC20” token name as “MyToken” and symbol “MTK”. 
Ownable’s constructor is automatically called, setting the deployer  as the initial owner.
 After this we have a mint function wich will create new token and “onlyOwner” modifier will insure that only the owner can call this function.
Now, we have burn function which will burn the tokens according to specified value, this can be done by any user.
After this we have transfer function, having two parameters (recipient and amount), we override this function and it will return a bool value.
In this we have two require statements to check if the recipient address is not equal to zero then it will execute further otherwise it will display a message “transfer to the zero address”.
And in second require statement we check if the balance of message sender is greater than or equal to the amount need to be transferred if this is true it will execute further otherwise it will display a message as “transfer amount is more then your balance” and if the transfer of amount occur it will return “true” as value.
