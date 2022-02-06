# Lockbox

Lockbox is a reach app that locks a token inside a smart contract until another is provided to unlock the locked token.

## Activation

0.35 ALGO

## Participants
### Auctioneer
Alice sets the lockbox params.
### Depositor
Depositor is whomever locks up the token.
### Recipient
Recipient is whomever uses the access token to redeem the contents of the lockbox.
### Relay
Relay is responsible for closing the app and making sure the key remains lock inside the box.
## Views
None
## API
None

## Steps

1. Alice comes along
1. Depositor comes along
1. Recipient comes along
1. Relay comes along

## quickstart

commands
```bash
git clone git@github.com:nash-protocol/starter-kit.git 
cd starter-kit 
source np.sh 
np
```

output
```json
{"info":66944916}
```

## how does it work

NP provides a nonintrusive wrapper allowing apps to be configurable before deployment and created on the fly without incurring global storage.   
Connect to the constructor and receive an app id.   
Activate the app by paying for deployment and storage cost. 
After activation, your RApp takes control.

## how to activate my app

In your the frontend of your NPR included Contractee participation. Currently, a placeholder fee is required for activation. Later an appropriate fee amount will be used.

```js
ctc = acc.contract(backend, id)
backend.Contractee(ctc, {})
```

## terms

- NP - Nash Protocol
- RAap - Reach App
- NPR - NP Reach App
- Activation - Hand off between constructor and contractee require fee to pay for deployment and storage cost incurred by constructor

## dependencies

- Reach development environment (reach compiler)
- sed - stream editor
- grep - pattern matching
- curl - request remote resource


