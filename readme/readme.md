### Pokémon Center App

A Pokémon Center has approached you to build a web application to help them manage their Pokémon and nurses. A nurse may look after many Pokémon at a time. An Pokémon is registered with only one nurse.

#### MVP

- The Center wants to be able to register / track Pokémon. Important information for the nurse to know is -
  - Name
  - Date Of Birth (use a VARCHAR initially)
  - Type of Pokémon
  - Contact details for the owner
  - Treatment notes
- Be able to assign Pokémon to nurses
- CRUD actions for nurses / Pokémon - remember the user - what would they want to see on each View? What Views should there be?

### Possible Extensions

- Add a shopping function to buy & sell items for Pokémon health - potions, elixirs
- Add a function to search for all Pokémon by type (e.g. fire, psychic, ice)
- Mark owners as being registered/unregistered with the Center. unregistered owners won't be able to add any more Pokémon.
- If an owner has multiple Pokémon we don't want to keep updating contact details separately for each Pokémon. Extend your application to reflect that an owner can have up to 6 Pokémon and to more sensibly keep track of owners' details (avoiding repetition / inconsistencies)
- Handle check-in / check-out dates
- Let the practice see all Pokémon currently in the practice (today's date is between the check-in and check-out?)
- Sometimes an owner does not know the DOB. Allow them to enter an age instead. Try and make sure this always up to date - ie if they visit again a year from now a 3 yr old  is now 4.
- Add extra functionality of your choosing - assigning treatments, a more comprehensive way of maintaining treatment notes over time. Appointments. Pricing / billing.
