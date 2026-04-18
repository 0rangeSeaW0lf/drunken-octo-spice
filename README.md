# drunken-octo-spice

A multi-model Ruby on Rails car-sharing application, built in late 2014 as part of a web-development learning arc.

## Stack

- Ruby on Rails 4
- Devise for authentication
- Nested-form waypoints (routes with legs and waypoints associations)
- SASS / SCSS, CoffeeScript

## Domain

Rides, waypoints, legs, accounts, and users. Drivers publish rides, riders join, the model captures multi-waypoint routes rather than point-to-point trips. Five ActiveRecord models with nested associations. Controllers organized under `driver/` and public namespaces.

## Context

Written while I was working on SAP-side systems at British American Tobacco. This was my after-hours vehicle for learning idiomatic Rails and practicing domain modeling with nested routes. Not maintained since 2015.
