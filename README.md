# FabricMuch

This project is built with Rails API.

### Description:
Fabric Much is an app built for crafters to track their fabric inventory to help avoid purchasing duplicates. User can input the fabric bolt's information: barcode, fabric name, price, quantity, type and store. This will help prevent multiple purchases and let users know their current inventory and how much they have. Essentially it could be used for any craft hobby or supplies.

### Prerequisites
- Node v6.11.0
- NPM >= v5.3.0
- Gemfile

### Spin up
```bash
bundle install
rails db:migrate
rails db:seed
```
### Staging

You'll need to run rails server to run FabricMuch in your browser by opening a new terminal tab and running:

```bash
rails s
```

This app also needs the [FabricMuch App](https://github.com/jasmineq/fabric-much-app)in order for it to run.
