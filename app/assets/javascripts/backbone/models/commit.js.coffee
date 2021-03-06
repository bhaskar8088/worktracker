class Worksummarizer.Models.Commit extends Backbone.Model
  paramRoot: 'commit'


class Worksummarizer.Collections.CommitsCollection extends Backbone.Collection
  initialize: (options) ->
    @options = options
    console.log @options
    d = new Date @options.date
    d.setDate(d.getDate()+1)
    @options.date = d.getFullYear()+"-"+(d.getMonth()+1)+"-"+d.getDate()
  model: Worksummarizer.Models.Commit
  url: ->
    #@myday = new Date()
    #@myday.setFullYear @options.year
    #@myday.setMonth @options.month
    #@myday.setDate @options.day+1

    #console.log "/home/commits?date=#{@myday.getFullYear()}-#{@myday.getMonth()}-#{@myday.getDate()}"
    #"/home/commits?date=#{@myday.getFullYear()}-#{@myday.getMonth()}-#{@myday.getDate()}"
    console.log "/home/commits?date=#{@options.date}"
    "/home/commits?date=#{@options.date}"
  comparator: (item) ->
    item.get 'author_name'


