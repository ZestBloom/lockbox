'reach 0.1';
'use strict';
// -----------------------------------------------
// Name: ALGO/ETH/CFX Lockbox
// Author: Nicholas Shellabarger
// Version: 0.0.1 - initial
// Requires Reach v0.1.7 (stable)
// ----------------------------------------------
export const Participants = () =>[
  Participant('Alice', {
    getParams: Fun([], Object({
      tokA: Token, // stored token
      tokB: Token, // access token
    }))
  }),
  Participant('Depositor', {}),
  Participant('Recipient', {}),
  Participant('Relay', {}),
]
export const Views = () => []
export const Api = () => []
export const App = (map) => {
  const [ {addr4}, {tok}, [Alice, Depositor, Recipient, Relay], _, _] = map
  Alice.only(() => {
    const { tokA, tokB  } = declassify(interact.getParams())
    assume(tok != tokA)
    assume(tok != tokB)
    assume(tokA != tokB)
  })
  Alice.publish(tokA, tokB)
  Relay.set(addr4)
  commit()

  Depositor.pay([0, [1, tokA]])
  require(tok != tokA)
  require(tok != tokB)
  require(tokA != tokB)
  commit()

  Recipient.publish()
    .pay([0, [1, tokB]])
  transfer(1, tokA).to(Recipient)
  commit()

  Relay.publish()
  transfer(1, tokB).to(addr4)
  commit()
  exit()
}
// ----------------------------------------------
