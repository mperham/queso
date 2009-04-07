module AdhocSearchable

  def self.included(base)
    base.class_eval do

      def self.adhoc_searchable(*args)
        options = args.extract_options!
        p options
      end

    end
  end

end