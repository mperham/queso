Adhoc Search
============

Adhoc Search (AS) is an engine for Rails 2.3+ which adds the ability to perform "adhoc" queries
against the database for any model.


Installation
------------

Just add AS as a gem to your Rails 2.3 application, via `config/environment.rb`:

    config.gem 'mperham-adhoc-search'

Usage
-----

First, mark the models you will want to search as searchable.  This also gives you the
ability to customize the search and results UI:

    class MyModel < ActiveRecord::Base
      adhoc_searchable

Second, add the query partial to a page in your application to display the search interface:

    <%= render :partial => 'adhoc_queries/query', :locals => { :model => MyModel } %>

Lastly, add a container for the query results in the HTML page:

    <div id="query_results">
      This div will be updated with the query results when the user submits the query.
    </div>


Current Limitations
-------------------

* AS does not support joins; you can only query on columns in the target table.
* AS relies on the Engine feature of Rails 2.3 so it will not work on 2.2 or earlier.


Thanks
------

The development of Adhoc Search is sponsored by [OneSpot](http://www.onespot.com).


Credits
-------


Written by [Mike Perham](http://mikeperham.com).  [Follow me on Twitter](http://twitter.com/mperham).

If you use and like Adhoc Search, please recommend me at [Working with Rails](http://www.workingwithrails.com/person/10797-mike-perham).