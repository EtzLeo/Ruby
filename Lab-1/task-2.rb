puts("Hello, #{ARGV[0]}")

puts("\n*:")
puts("Hello! " * 3) #-> Hello! Hello! Hello!

puts("\n+:")
puts("Hello " + "!") #-> Hello!

puts("\n<<:")
puts("Hello " << 33) #-> Hello!

puts("\nconcat:")
puts("Hello ".concat(33)) #-> Hello!

puts("\nSpaceship:")
puts("Hello" <=> "Hello") #-> 0
puts("Hell" <=> "Hello") #-> -1
puts("Hello" <=> "Hell") #-> 1
puts("Hello" <=> "HELLO") #-> 1
puts("Hello" <=> "world") #-> -1

puts("\ncasecmp:")
puts("Hell".casecmp("Hello")) #-> -1
puts("Hello".casecmp("Hell")) #-> 1
puts("Hello".casecmp("HELLO")) #-> 0

puts("Hell".casecmp?("Hello")) #-> false
puts("Hello".casecmp?("HELLO")) #-> true
puts("Hello".casecmp?(1)) #-> nil

puts("\n==:")
puts("Hello" == "Hello") #-> true
puts("Hello" == "world") #-> false
puts("hello" == "Hello") #-> false

puts "\n[]:"
p "hello"[0] 	#-> "h"
p "hello"[0,3] 	#-> "hel"
p "hello"[0..3] 	#-> "hell"
p "hello"[-3..-1] 	#-> "llo"
p "hello"[-1..-3] 	#-> ""
p "hello"[6] 	#-> nil
p "hello"["he"] 	#-> "he"
p "hello"["help"] 	#-> nil
p "hello"[/[ah](.)\w/] 	#-> "hel"
p "hello"[/[ah](.)\w/,0] 	#-> "hel"



puts("\nAscii:")
puts("a3{f%*~".force_encoding("UTF-8").ascii_only?) #-> true
puts('⬆'.ord.to_s(16)) #->2b06
puts("\u2b06".force_encoding("UTF-8").ascii_only?) #-> false

puts("\ncapitalize:")
puts("hello".capitalize) #-> "Hello"
puts("HELLO".capitalize) #-> "Hello"
puts("1HeLLo".capitalize) #-> "1hello"

temp = "HeLLo!"
temp.capitalize!
puts(temp) #-> "Hello!"
puts(temp.capitalize!) #-> nil

puts("\ncenter:")
puts("Hello".center(4)) #-> "center"
puts("Hello".center(10)) #-> "  center   "
puts("Hello".center(10, '13')) #-> "13Hello131"

puts("\nchars:")
p("Hello".chars) #-> ["H", "e", "l", "l", "o"]

puts("\nchomp:")
puts("Hello\n".chomp) 	#-> "Hello"
puts("Hello\r".chomp) 	#-> "Hello"
puts("Hello\r\n".chomp) 	#-> "Hello"
puts("Hello\n\n\r".chomp) 	#-> "Hello\n\n"
puts("Hello".chomp("lo")) 	#-> "Hel"

temp.replace("Hello!\n")
temp.chomp!
puts(temp) 	#-> "Hello!"
puts(temp.chomp!) 	#-> nil

puts("\nchop:")
puts("Hello\r\n".chop) 	#-> "Hello"
puts("Hello".chop) 	#-> "Hell"
puts("".chop) 	#-> ""

temp.replace("Hello!")
temp.chop!
puts(temp) 	#-> "Hello"

puts("\nchr:")
puts("Hello".chr)	#-> "H"

puts("\nclear:")
puts("Hello".clear)	#-> ""

puts("\ncount:")
puts("hello world".count("el")) 	#-> 4
puts("hello world".count("elo", "^o"))	 #-> 4
puts("hello world".count("dh-m")) 	#-> 4

puts("\ndelete:")
puts("hello world".delete("el")) 	#-> "ho word"
puts("hello world".delete("elo", "^o")) 	#-> "ho word"
puts("hello world".delete("dh-m"))	 #-> "eo wor"

puts("\ndelete!:")
temp.replace("hello")
puts(temp.delete!("lo")) 	#-> "ho"
puts(temp.delete!("lo"))	 #-> "nil"

puts("\ndelete_prefix:")
puts("hello".delete_prefix("he"))	 #-> "llo"
puts("hello".delete_prefix("llo")) 	#-> "hello"

puts("\ndelete_prefix!:")
temp.replace("hello")
puts(temp.delete_prefix!("he")) 	#-> "llo"
puts(temp.delete_prefix!("llo")) 	#-> "nil"

puts("\ndelete_suffix:")
puts("hello".delete_suffix("llo"))	 #-> "he"
puts("hello".delete_suffix("hel")) 	#-> "hello"

puts("\ndelete_suffix!:")
temp.replace("hello")
puts(temp.delete_suffix!("llo")) 	#-> "he"
puts(temp.delete_suffix!("hel"))	 #-> "nil"

puts("\ndowncase:")
puts("HeLLo".downcase) 	#-> "hello"

puts("\ndowncase!:")
temp.replace("HeLLo")
puts(temp.downcase!) 	#-> "hello"
puts(temp.downcase!) 	#-> "nil"

puts("\neach_byte:")
puts("hello".each_byte {|c| print c, ' ' })

puts("\nempty?:")
puts("hello".empty?)	#-> false
puts("".empty?)	#-> true

puts("\neql?:")
puts("hello".eql?("hello")) 	#-> true
puts("hello".eql?("Hello"))	 #-> false
puts("hello".eql?("hell")) 	#-> false

puts("\ngetbyte:")
temp.replace("hello")
puts(temp.getbyte(0)) 	#-> 104

puts("\nhash:")
puts("hello".hash) 	#-> -698491128

puts("\nhex:")
puts("a".hex) 	#-> 10
puts("0x0a".hex) 	#-> 10
puts("hello".hex) 	#-> 0

puts("\ninclude?:")
puts("hello".include? "lo")	 #-> true
puts("hello".include? "ol") 	#-> false
puts("hello".include? ?l) 	#-> true

puts("\nindex:")
puts("hello".index("e")) 	#-> 1
puts("hello".index("llo")) 	#-> 2
puts("hello".index("z")) 	#-> nil
puts("hello".index(/[gheo]/, 2)) 	#-> 4

puts("\ninsert:")
puts("hello".insert(-1, "!")) 	#-> "hello!"
puts("hello".insert(3, " ")) 	#-> "hel lo"

puts("\nintern:")
puts("hello".intern) 	#-> ":hello"

puts("\nlength:")
puts("hello".length) 	#-> 5
puts("\nsize:")
puts("hello".size) 	#-> 5

puts("\nljust:")
puts("hello".ljust 4) 	#-> "hello"
puts("hello".ljust 10) 	#-> "hello     "
puts("hello".ljust 10, "13") 	#-> "hello13131"

puts("\nlstrip:")
p("      hello ".lstrip) 	#-> "hello "
p("hello".lstrip) 	#-> "hello"

puts("\nlstrip!:")
p temp.replace "      hello "
puts(temp.lstrip!) 	#-> "hello "
puts(temp.lstrip!) 	#-> nil

puts("\nnext:")
p("hello".next) 	#-> "hellp"
p("hello3".next) 	#-> "hello4"
p("hello+*".next) 	#-> "hellp+*"
p("+*".next) 	#-> "++"
p("hello ".next) 	#-> "hellp "
p("<hello>".next) 	#-> "<hellp>"
p("19Z5ZZZ99".next) 	#-> "19Z6AAA00"

puts("\nnext!:")
temp.replace "hello"
puts(temp.next!) 	#-> "hellp"

puts("\noct:")
puts("hello".oct) 	#-> 0
puts("-10".oct) 	#-> -8
puts("010hello".oct) 	#-> 8

puts "\nprepend:"
p "hello".prepend "world"	#-> "worldhello"

puts "\nreplace:"
p a = "hello"
p a.replace "world"	#-> "world"

puts "\nreverse:"
p "hello".reverse	#-> "olleh"

puts "\nreverse!:"
p temp.replace "hello"
p temp.reverse!	#-> "olleh"

puts "\nrindex:"
p "hello".rindex("e") 	#-> 1
p "hello".rindex("llo") 	#-> 2
p "hello".rindex("z") 	#-> nil
p "hello".rindex(/[heo]/, 3) 	#-> 1

puts "\nrjust:"
p "hello".rjust 4 	#-> "hello"
p "hello".rjust 10 	#-> "     hello"
p "hello".rjust 10, "13" 	#-> "13131hello"

puts "\nrstrip:"
p " hello ".rstrip 	#-> " hello"
p "hello".rstrip 	#-> "hello"

puts "\nrstrip!:"
p temp.replace "hello "
p temp.rstrip! 	#-> "hello"
p temp.rstrip! 	#-> nil

puts "\nsetbyte:"
p temp.replace "hello"
temp.setbyte 0, 65
p temp	#-> "Aello"

puts "\nslice:"
p "hello".slice 0 	#-> "h"
p "hello".slice 0,3 	#-> "hel"
p "hello".slice 0..3 	#-> "hell"
p "hello".slice -3..-1 	#-> "llo"
p "hello".slice -1..-3 	#-> ""
p "hello".slice 6 	#-> nil
p "hello".slice "he" 	#-> "he"
p "hello".slice "help" 	#-> nil
p "hello".slice /[ah](.)\w/ 	#-> "hel"
p "hello".slice /[ah](.)\w/,0 	#-> "hel"

puts "\nslice!:"
p temp.replace "hello world"
p temp.slice 0 	#-> "h"
p temp.slice 3..4 	#-> "lo"
p temp.slice /o.\wo/ 	#-> "lo"

puts "\nsplit:"
p "hello world".split	#-> ["hello", "world"]
p "hello world".split(//)	#-> ["h", "e", "l", "l", "o", " ", "w", "o", "r", "l", "d"]
p "hello world".split(//,4)	#-> ["h", "e", "l", "lo world"]

puts "\nsqueeze:"
p "hello".squeeze	#-> "helo"
p "hhhello".squeeze "h"	#-> "hello"
p "hhheeello".squeeze "h-l"	#-> "heeelo"

puts "\nsqueeze!:"
p temp.replace "hello"
p temp.squeeze!	#-> "helo"

puts "\nstrip:"
p "  hello \n\r ".strip	#-> "hello"

puts "\nstrip!:"
p temp.replace "  hello \n\r "
p temp.strip!	#-> "hello"
p temp.strip!	#-> nil

puts("\nsucc:")
p "hello".succ 	#-> "hellp"
p "hello3".succ 	#-> "hello4"
p "hello+*".succ 	#-> "hellp+*"
p "+*".succ 	#-> "++"
p "hello ".succ 	#-> "hellp "
p "<hello>".succ 	#-> "<hellp>"
p "19Z5ZZZ99".succ 	#-> "19Z6AAA00"

puts("\nsucc!:")
p temp.replace "hello"
p temp.succ! 	#-> "hellp"

puts("\nsum:")
p "h".getbyte 0		#-> 104
p "e".getbyte 0 	#-> 101
p "he".sum 	#-> 205

puts("\nswapcase:")
p "HellO".swapcase		#-> "hELLo"

puts("\nswapcase!:")
p temp.replace "HellO"
p temp.swapcase!		#-> "hELLo"
p "1".swapcase!		#-> nil

puts("\nto_c:")
p "10".to_c		#-> (10+0i)
p "-i".to_c		#-> (0-1i)
p "3-4i".to_c		#-> (3-4i)
p "a".to_c		#-> (0+0i)

puts("\nto_f:")
p "111.1hg1".to_f		#-> 111.1
p "111".to_f		#-> 111.0
p "a".to_f		#-> 0.0

puts("\nto_i:")
p "111.1hg1".to_i		#-> 111
p "10".to_i 2		#-> 10
p "10".to_i 8		#-> 10
p "10".to_i 10		#-> 10
p "10".to_i 16		#-> 10
p "a".to_i		#-> 0

puts("\nto_r:")
p "111.1hg1".to_r		#-> 1111/10
p "3".to_r		#-> 3/1
p "10.5".to_r		#-> 21/2
p "10/5".to_r		#-> 2/1

puts("\nto_s:")
p 54.to_s		#-> "54"

puts("\nto_str:")
#p 54.to_str		#-> error
p "54".to_str		#-> "54"

puts("\nto_sym:")
p "hello".to_sym 	#-> :hello

puts("\ntr:")
p "hello".tr "aeo","-" 	#-> "h-ll-"
p "hello".tr "^aeo","-" 	#-> "-e--o"
p "hello".tr "he","a" 	#-> "aallo"
p "hello".tr "a-y","b-z" 	#-> "ifmmp"

puts("\ntr!:")
p temp.replace "hello"
p temp.tr! "aeo","-" 	#-> "h-ll-"
p temp.tr! "aeo","-" 	#-> nil

puts("\ntr_s:")
p "hello".tr_s "l","-" 	#-> "he-o"
p "hello".tr_s "hl","-" 	#-> "-e-o"
p "hello".tr_s "el","le" 	#-> "hleo"

puts("\ntr_s!:")
p temp.replace "hello"
p temp.tr_s! "l","-" 	#-> "he-o"

puts("\nupcase:")
p "hEllO".upcase    #-> "HELLO"

puts("\nupcase!:")
p temp.replace "hello"
p temp.upcase!    #-> "HELLO"
p temp.upcase!    #-> nil

puts("\nupto:")
"hello".upto("hellq") {|s| print s, ' ' }    #-> hello hellp hellq

puts("\nvalid_encoding?:")
p "a3{f%*~".force_encoding("UTF-8").valid_encoding? #-> true
p "\x80".force_encoding("UTF-8").valid_encoding? #-> false

puts("\nsub:")
p "hello".sub(/[eao]/,"-")   #-> "h-llo"
p "hello".sub(/[eao]/) {|c| c[0].to_s + " 1334 "}   #-> "he 1334 llo"

puts("\nsub!:")
p temp.replace "hello"
p temp.sub!(/[ea]/,"-")   #-> "h-llo"
p temp.sub!(/[ea]/,"-")   #-> nil

puts("\nmatch:")
p "hello".match '(.)\w'  #-> <MatchData "he" 1:"h">
p "hel3 lo".match(/\w\d\s\w/)  #-> #<MatchData "l3 l">

puts("\nmatch?:")
p "hello".match? 'h'  #-> true
p "hello".match? 'h', 1  #-> false

puts("\ndump:")
p "hello".dump  #-> "\"hello\""
p "hello\n".dump  #-> "\"hello\\n\""
p "\r\nhello\n".dump  #-> "\"\\r\\nhello\\n\""

puts("\nundump:")
p "\"hello\"".undump  #-> "hello"
p "\"\\r\\nhello\\n\"".undump  #-> "\r\nhello\n"

puts("\nlines:")
p "hello".lines  #-> ["hello"]
p "hello\nworld".lines  #-> ["hello\n", "world"]
p "hello world".lines " "  #-> ["hello ", "world"]
p "hello world".lines "l"  #-> ["hel", "l", "o worl", "d"]
p "hello world".each_line("l").to_a  #-> ["hel", "l", "o worl", "d"]

puts("\neach_byte:")
p "hello".each_byte {|a| print a, " "}  #-> 104 101 108 108 111 "hello"

puts("\neach_char:")
p "hello".each_char {|a| print a, " "}  #-> h e l l o "hello"