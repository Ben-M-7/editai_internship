module Jekyll
  module BoldNamesFilter
    def bold_names(input)
      raw_names = [
        "Zarif Azher",
        "Michael Fatemi",
        "Ramya Reddy",
        "Cyril Sharma",
        "Tarushii Goel",
        "Anish Suvarna",
        "Ram Reddy",
        "Neha Shaik",
        "Aruesha Srivastava",
        "Adam Gilbert Diamond",
        "Eric Feng",
        "Jack Greenburg",
        "Leah Zhang",
        "Edward Zhang",
        "Abhinav Angirekula",
        "Irfan Nafi",
        "Akash Pamal",
        "Gnan Suchir Gupta Paruchuri",
        "Catherine Jeon",
        "Nishitha Vattikonda",
        "Lindsay Hwang",
        "Aditya Sengar",
        "Sameeksha Garg",
        "Ram Vempati",
        "Sameer Gabbita",
        "Vismay Ravikumar",
        "Hrishikesh Deosthali (Rishy)",
        "Nishita Paruchuri",
        "Naina Kumar",
        "Sophie Chen",
        "Neha Reddy"
      ]

      name_patterns = raw_names.flat_map do |full_name|
        parts = full_name.split
        next [] if parts.length < 2  # skip if incomplete

        last = parts.last
        first_middle = parts[0..-2].join(" ")

        [
          full_name,                      # "First Middle Last"
          "#{last}, #{first_middle}"      # "Last, First Middle"
        ]
      end

      name_patterns.each do |pattern|
        escaped = Regexp.escape(pattern)
        input.gsub!(/(#{escaped})/i, '<strong>\1</strong>')
      end

      input
    end
  end
end

Liquid::Template.register_filter(Jekyll::BoldNamesFilter)
