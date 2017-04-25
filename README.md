# voyage
## Rails 4 + Polymer 2 component.
Built in scope of MDLive's "one hour per work day" program.
Current project is an example of Reusable Component and Functional Programming.

## Demo
[Working example here](https://rocky-castle-48449.herokuapp.com/earth)
Deployer to [Heroku](http://heroku.com) hosting (free plan).

## Notes for sounce code
- 2 components actually used: [turn-screen](https://github.com/ivanko763/turn-screen), orbit-satellite
- Polymer 2 uses it's own loader, so I don't use assets for the framework. Polymer 2 load from public folder.
- All componet code should be placed in one file in assets/components/<component-name> folder
- Component code must be included in layout using html_import_tag helper
