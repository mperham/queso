module QuesoSearchable

  def self.included(base)
    base.class_eval do

      def self.queso_searchable(*args)
        Queso::Search::OPTIONS[self.name] = args.extract_options!
      end

    end
  end

end