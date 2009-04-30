module QuesoSearchable

  def self.included(base)
    base.class_eval do

      def self.queso_searchable(*args)
        Queso::Search::OPTIONS[self.name] = Queso::Search::DEFAULT_OPTIONS.merge(args.extract_options!).dup
      end

    end
  end

end