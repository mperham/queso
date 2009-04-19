Queso
============

Queso is an engine for Rails 2.3+ which adds a generic search interface for building queries on any
model.  See, for example, Trac's [generic query interface for tickets](http://trac.edgewall.org/query).

It's also a delicious cheese-based foodstuff which pairs excellently with chips and Dos XX beer.

Installation
------------

Just add Queso as a gem to your Rails 2.3 application, via `config/environment.rb`:

    config.gem 'mperham-queso', :source => 'http://gems.github.com'

Usage
-----

First, mark the models you will want to search as searchable.  This also gives you the
ability to customize the search and results UI:

    class MyModel < ActiveRecord::Base
      queso_searchable

Second, add the query partial to a page in your application to display the search interface:

    <%= render :partial => 'queso/query', :locals => { :model => MyModel } %>

Lastly, add a container for the query results in the HTML page:

    <div id="queso_results">
      This div will be updated with the query results when the user submits the query.
    </div>


Current Limitations
-------------------

* does not support joins; you can only query on columns in the target table.
* relies on the Engine feature of Rails 2.3 so it will not work on 2.2 or earlier.


Thanks
------

The development of Queso is sponsored by [OneSpot](http://www.onespot.com).


Credits
-------


Written by [Mike Perham](http://mikeperham.com).  [Follow me on Twitter](http://twitter.com/mperham).

If you use and like Queso, please recommend me at [Working with Rails](http://www.workingwithrails.com/person/10797-mike-perham).
