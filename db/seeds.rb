dict = File.open(File.join(File.dirname(__FILE__), 'words.txt'))


dict.each do |word|
  word = word.chomp!
  slug = word.downcase.split('').sort.join
  Word.create(:name => word, :slug => slug)
end
