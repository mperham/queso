class AddUsers < ActiveRecord::Migration
  # require 'rubygems'
  # require 'faker'
  # 100.times do
  #   time = rand(1_000_000_000)
  #   birth = Time.at(time)
  #   now = Time.now
  #   puts "users << { :firstname => '#{Faker::Name.first_name}', :lastname => '#{Faker::Name.last_name}', :email => '#{Faker::Internet.email}', :birthdate => Time.at(#{time}), :is_admin => #{time % 2 == 0}, :age => #{now.year - birth.year}, :balance => #{time / Float(1000)} }"
  # end
  def self.up
    users = []
    users << { :firstname => 'Shannon', :lastname => 'Upton', :email => 'elisabeth@roob.us', :birthdate => Time.at(13879969), :is_admin => false, :age => 39, :balance => 13879.969 }
    users << { :firstname => 'Lorena', :lastname => 'McDermott', :email => 'demarcus@murphy.biz', :birthdate => Time.at(683780336), :is_admin => true, :age => 18, :balance => 683780.336 }
    users << { :firstname => 'Jermaine', :lastname => 'Gleason', :email => 'mellie.roob@gusikowski.uk', :birthdate => Time.at(121199170), :is_admin => true, :age => 36, :balance => 121199.17 }
    users << { :firstname => 'Margaret', :lastname => 'Collins', :email => 'juston_turner@ohara.ca', :birthdate => Time.at(897901024), :is_admin => true, :age => 11, :balance => 897901.024 }
    users << { :firstname => 'Clint', :lastname => 'O\'Kon', :email => 'wallace@emmerich.co.uk', :birthdate => Time.at(573688432), :is_admin => true, :age => 21, :balance => 573688.432 }
    users << { :firstname => 'Melissa', :lastname => 'Lebsack', :email => 'bruce@brekkecormier.biz', :birthdate => Time.at(310583091), :is_admin => false, :age => 30, :balance => 310583.091 }
    users << { :firstname => 'Iva', :lastname => 'Corkery', :email => 'lucie@harber.ca', :birthdate => Time.at(479045298), :is_admin => true, :age => 24, :balance => 479045.298 }
    users << { :firstname => 'Layla', :lastname => 'Dooley', :email => 'odessa.emmerich@murazik.name', :birthdate => Time.at(246474359), :is_admin => false, :age => 32, :balance => 246474.359 }
    users << { :firstname => 'Alia', :lastname => 'Gutkowski', :email => 'myrna.block@hamill.us', :birthdate => Time.at(210294788), :is_admin => true, :age => 33, :balance => 210294.788 }
    users << { :firstname => 'Jordi', :lastname => 'Spencer', :email => 'alexandre@deckow.us', :birthdate => Time.at(477261249), :is_admin => false, :age => 24, :balance => 477261.249 }
    users << { :firstname => 'Harry', :lastname => 'Kovacek', :email => 'enoch.jenkins@stoltenberg.com', :birthdate => Time.at(406427431), :is_admin => false, :age => 27, :balance => 406427.431 }
    users << { :firstname => 'Tad', :lastname => 'Hahn', :email => 'pearline@thompsonparker.biz', :birthdate => Time.at(713660716), :is_admin => true, :age => 17, :balance => 713660.716 }
    users << { :firstname => 'Eleazar', :lastname => 'Mayert', :email => 'lucienne.bergstrom@jewess.com', :birthdate => Time.at(29879442), :is_admin => true, :age => 39, :balance => 29879.442 }
    users << { :firstname => 'Minnie', :lastname => 'Stroman', :email => 'juanita.pouros@abshire.info', :birthdate => Time.at(127485678), :is_admin => true, :age => 35, :balance => 127485.678 }
    users << { :firstname => 'Scot', :lastname => 'Pollich', :email => 'claudia.johns@schmelermonahan.co.uk', :birthdate => Time.at(613746882), :is_admin => true, :age => 20, :balance => 613746.882 }
    users << { :firstname => 'Cora', :lastname => 'Pouros', :email => 'zelda_harber@dubuque.com', :birthdate => Time.at(693367548), :is_admin => true, :age => 18, :balance => 693367.548 }
    users << { :firstname => 'Reilly', :lastname => 'Upton', :email => 'madelyn@ankunding.info', :birthdate => Time.at(898347617), :is_admin => false, :age => 11, :balance => 898347.617 }
    users << { :firstname => 'Holden', :lastname => 'Quitzon', :email => 'issac@fisher.us', :birthdate => Time.at(850546995), :is_admin => false, :age => 13, :balance => 850546.995 }
    users << { :firstname => 'Eileen', :lastname => 'Nikolaus', :email => 'ezequiel@denesik.info', :birthdate => Time.at(296771358), :is_admin => true, :age => 30, :balance => 296771.358 }
    users << { :firstname => 'Sydni', :lastname => 'Gislason', :email => 'june@bashirian.biz', :birthdate => Time.at(415398841), :is_admin => false, :age => 26, :balance => 415398.841 }
    users << { :firstname => 'Marshall', :lastname => 'Kulas', :email => 'josianne@weissnat.name', :birthdate => Time.at(872355298), :is_admin => true, :age => 12, :balance => 872355.298 }
    users << { :firstname => 'Emerald', :lastname => 'Okuneva', :email => 'roberta@baumbachhoeger.info', :birthdate => Time.at(945620695), :is_admin => false, :age => 10, :balance => 945620.695 }
    users << { :firstname => 'Reva', :lastname => 'Stokes', :email => 'pearline.wyman@orn.us', :birthdate => Time.at(763768569), :is_admin => false, :age => 15, :balance => 763768.569 }
    users << { :firstname => 'Marta', :lastname => 'White', :email => 'demario_bergnaum@kuhn.ca', :birthdate => Time.at(757176905), :is_admin => false, :age => 16, :balance => 757176.905 }
    users << { :firstname => 'Bryce', :lastname => 'Adams', :email => 'ike_von@abernathyframi.ca', :birthdate => Time.at(691584071), :is_admin => false, :age => 18, :balance => 691584.071 }
    users << { :firstname => 'Golden', :lastname => 'Williamson', :email => 'nelda@howell.biz', :birthdate => Time.at(602608140), :is_admin => true, :age => 20, :balance => 602608.14 }
    users << { :firstname => 'Alvis', :lastname => 'Cummings', :email => 'bell@weimann.info', :birthdate => Time.at(488193694), :is_admin => true, :age => 24, :balance => 488193.694 }
    users << { :firstname => 'Brigitte', :lastname => 'Skiles', :email => 'gwen.glover@blick.uk', :birthdate => Time.at(959763330), :is_admin => true, :age => 9, :balance => 959763.33 }
    users << { :firstname => 'Opal', :lastname => 'Johnston', :email => 'madie_effertz@upton.us', :birthdate => Time.at(640103055), :is_admin => false, :age => 19, :balance => 640103.055 }
    users << { :firstname => 'Toby', :lastname => 'Thiel', :email => 'joanne@armstrong.com', :birthdate => Time.at(862954512), :is_admin => true, :age => 12, :balance => 862954.512 }
    users << { :firstname => 'Skye', :lastname => 'Pfeffer', :email => 'eleanore.spinka@satterfieldschuster.us', :birthdate => Time.at(881770734), :is_admin => true, :age => 12, :balance => 881770.734 }
    users << { :firstname => 'Stone', :lastname => 'Kling', :email => 'zack.volkman@herzog.uk', :birthdate => Time.at(62992376), :is_admin => true, :age => 38, :balance => 62992.376 }
    users << { :firstname => 'Coleman', :lastname => 'Stoltenberg', :email => 'carmela@mohr.us', :birthdate => Time.at(300570646), :is_admin => true, :age => 30, :balance => 300570.646 }
    users << { :firstname => 'Billie', :lastname => 'Hauck', :email => 'annabel.douglas@lebsack.biz', :birthdate => Time.at(442741456), :is_admin => true, :age => 25, :balance => 442741.456 }
    users << { :firstname => 'Lewis', :lastname => 'Hirthe', :email => 'mazie@ankunding.co.uk', :birthdate => Time.at(213191644), :is_admin => true, :age => 33, :balance => 213191.644 }
    users << { :firstname => 'Sherwood', :lastname => 'Gleichner', :email => 'jacynthe.wisozk@zemlakdouglas.biz', :birthdate => Time.at(916557857), :is_admin => false, :age => 10, :balance => 916557.857 }
    users << { :firstname => 'Rodger', :lastname => 'Nicolas', :email => 'demond@simonis.uk', :birthdate => Time.at(43561819), :is_admin => false, :age => 38, :balance => 43561.819 }
    users << { :firstname => 'Alfredo', :lastname => 'Pouros', :email => 'river_hoppe@leffler.uk', :birthdate => Time.at(583784023), :is_admin => false, :age => 21, :balance => 583784.023 }
    users << { :firstname => 'Mayra', :lastname => 'Carter', :email => 'andres@rosenbaumkunze.com', :birthdate => Time.at(393426499), :is_admin => false, :age => 27, :balance => 393426.499 }
    users << { :firstname => 'Ashlynn', :lastname => 'Ondricka', :email => 'justen_skiles@hoppeweissnat.ca', :birthdate => Time.at(642287390), :is_admin => true, :age => 19, :balance => 642287.39 }
    users << { :firstname => 'Keyon', :lastname => 'Osinski', :email => 'jaqueline_stanton@cormier.biz', :birthdate => Time.at(209298957), :is_admin => false, :age => 33, :balance => 209298.957 }
    users << { :firstname => 'Michael', :lastname => 'Koepp', :email => 'brenda_shields@greenholt.uk', :birthdate => Time.at(825495414), :is_admin => true, :age => 13, :balance => 825495.414 }
    users << { :firstname => 'Janie', :lastname => 'Lind', :email => 'christine.king@dach.ca', :birthdate => Time.at(407123042), :is_admin => true, :age => 27, :balance => 407123.042 }
    users << { :firstname => 'Demarco', :lastname => 'Wilkinson', :email => 'carli_lowe@schmitt.us', :birthdate => Time.at(838892322), :is_admin => true, :age => 13, :balance => 838892.322 }
    users << { :firstname => 'Sim', :lastname => 'Hackett', :email => 'lenna@wunsch.biz', :birthdate => Time.at(207827063), :is_admin => false, :age => 33, :balance => 207827.063 }
    users << { :firstname => 'Efren', :lastname => 'Stoltenberg', :email => 'gust@mannnolan.us', :birthdate => Time.at(317219832), :is_admin => true, :age => 29, :balance => 317219.832 }
    users << { :firstname => 'Garfield', :lastname => 'Crona', :email => 'macey_metz@howell.name', :birthdate => Time.at(97239894), :is_admin => true, :age => 36, :balance => 97239.894 }
    users << { :firstname => 'Riley', :lastname => 'Walter', :email => 'mina@wardjewess.com', :birthdate => Time.at(890713628), :is_admin => true, :age => 11, :balance => 890713.628 }
    users << { :firstname => 'Stephon', :lastname => 'Pouros', :email => 'kaley.bayer@hoppe.co.uk', :birthdate => Time.at(714425616), :is_admin => true, :age => 17, :balance => 714425.616 }
    users << { :firstname => 'Angelita', :lastname => 'Mueller', :email => 'maida@christiansen.biz', :birthdate => Time.at(523351139), :is_admin => false, :age => 23, :balance => 523351.139 }
    users << { :firstname => 'Nolan', :lastname => 'Wehner', :email => 'kaylie.kub@upton.uk', :birthdate => Time.at(972526842), :is_admin => true, :age => 9, :balance => 972526.842 }
    users << { :firstname => 'Letha', :lastname => 'Quitzon', :email => 'katrina_powlowski@aufderhar.biz', :birthdate => Time.at(56567184), :is_admin => true, :age => 38, :balance => 56567.184 }
    users << { :firstname => 'Dion', :lastname => 'Bergstrom', :email => 'frank_simonis@halvorson.biz', :birthdate => Time.at(855467770), :is_admin => true, :age => 12, :balance => 855467.77 }
    users << { :firstname => 'Katrina', :lastname => 'Wuckert', :email => 'sheldon.johnson@crooks.info', :birthdate => Time.at(347548722), :is_admin => true, :age => 28, :balance => 347548.722 }
    users << { :firstname => 'Mylene', :lastname => 'Nitzsche', :email => 'helena@bednar.us', :birthdate => Time.at(402522790), :is_admin => true, :age => 27, :balance => 402522.79 }
    users << { :firstname => 'Herta', :lastname => 'Kiehn', :email => 'bryce@jerde.ca', :birthdate => Time.at(758652210), :is_admin => true, :age => 15, :balance => 758652.21 }
    users << { :firstname => 'Efren', :lastname => 'Abshire', :email => 'ryder@wymanrowe.biz', :birthdate => Time.at(542104030), :is_admin => true, :age => 22, :balance => 542104.03 }
    users << { :firstname => 'Jaquelin', :lastname => 'Marks', :email => 'amara@bayer.info', :birthdate => Time.at(778351299), :is_admin => false, :age => 15, :balance => 778351.299 }
    users << { :firstname => 'Gino', :lastname => 'Schaefer', :email => 'jewell.gulgowski@lehner.biz', :birthdate => Time.at(406512938), :is_admin => true, :age => 27, :balance => 406512.938 }
    users << { :firstname => 'Greta', :lastname => 'Sporer', :email => 'gabriel.schinner@cummings.name', :birthdate => Time.at(528095470), :is_admin => true, :age => 23, :balance => 528095.47 }
    users << { :firstname => 'Henriette', :lastname => 'Schamberger', :email => 'amina@osinski.co.uk', :birthdate => Time.at(655064020), :is_admin => true, :age => 19, :balance => 655064.02 }
    users << { :firstname => 'Aurelio', :lastname => 'Feeney', :email => 'alia@parisian.co.uk', :birthdate => Time.at(539116079), :is_admin => false, :age => 22, :balance => 539116.079 }
    users << { :firstname => 'Aliyah', :lastname => 'Quigley', :email => 'glennie.stokes@prosacco.com', :birthdate => Time.at(61950440), :is_admin => true, :age => 38, :balance => 61950.44 }
    users << { :firstname => 'Emmanuelle', :lastname => 'Hilpert', :email => 'catalina@lindgren.info', :birthdate => Time.at(263220089), :is_admin => false, :age => 31, :balance => 263220.089 }
    users << { :firstname => 'Lora', :lastname => 'Homenick', :email => 'anabelle.stoltenberg@cronabeier.ca', :birthdate => Time.at(471049140), :is_admin => true, :age => 25, :balance => 471049.14 }
    users << { :firstname => 'Desiree', :lastname => 'Strosin', :email => 'stephania_rosenbaum@wilderman.com', :birthdate => Time.at(708733320), :is_admin => true, :age => 17, :balance => 708733.32 }
    users << { :firstname => 'Stella', :lastname => 'Oberbrunner', :email => 'jack_herzog@nikolaus.ca', :birthdate => Time.at(967020199), :is_admin => false, :age => 9, :balance => 967020.199 }
    users << { :firstname => 'Brandt', :lastname => 'Lindgren', :email => 'verda@schumm.uk', :birthdate => Time.at(369650024), :is_admin => true, :age => 28, :balance => 369650.024 }
    users << { :firstname => 'Jennyfer', :lastname => 'Effertz', :email => 'maxie@emard.us', :birthdate => Time.at(270513467), :is_admin => false, :age => 31, :balance => 270513.467 }
    users << { :firstname => 'Chance', :lastname => 'Sporer', :email => 'stacy_schulist@dickinsongraham.biz', :birthdate => Time.at(706395762), :is_admin => true, :age => 17, :balance => 706395.762 }
    users << { :firstname => 'Hallie', :lastname => 'O\'Kon', :email => 'jayden@mann.us', :birthdate => Time.at(386988592), :is_admin => true, :age => 27, :balance => 386988.592 }
    users << { :firstname => 'Lucio', :lastname => 'McGlynn', :email => 'zander.tillman@stanton.us', :birthdate => Time.at(309090356), :is_admin => true, :age => 30, :balance => 309090.356 }
    users << { :firstname => 'Jazmin', :lastname => 'Sanford', :email => 'herbert@zulauf.com', :birthdate => Time.at(897272371), :is_admin => false, :age => 11, :balance => 897272.371 }
    users << { :firstname => 'Gilberto', :lastname => 'Schneider', :email => 'estevan_kerluke@buckridgetrantow.co.uk', :birthdate => Time.at(275624606), :is_admin => true, :age => 31, :balance => 275624.606 }
    users << { :firstname => 'Tara', :lastname => 'Blanda', :email => 'hannah@altenwerth.biz', :birthdate => Time.at(438701677), :is_admin => false, :age => 26, :balance => 438701.677 }
    users << { :firstname => 'Kianna', :lastname => 'Baumbach', :email => 'lois.price@durganfranecki.name', :birthdate => Time.at(804957465), :is_admin => false, :age => 14, :balance => 804957.465 }
    users << { :firstname => 'Dalton', :lastname => 'Gorczany', :email => 'oswald_leffler@littlewyman.name', :birthdate => Time.at(110470173), :is_admin => false, :age => 36, :balance => 110470.173 }
    users << { :firstname => 'Kade', :lastname => 'Lindgren', :email => 'roberto.jacobson@witting.biz', :birthdate => Time.at(362771153), :is_admin => false, :age => 28, :balance => 362771.153 }
    users << { :firstname => 'Patrick', :lastname => 'Goyette', :email => 'clement@morarlarkin.com', :birthdate => Time.at(717000153), :is_admin => false, :age => 17, :balance => 717000.153 }
    users << { :firstname => 'Karli', :lastname => 'Hills', :email => 'axel_keeling@ziemann.biz', :birthdate => Time.at(676308798), :is_admin => true, :age => 18, :balance => 676308.798 }
    users << { :firstname => 'Kiara', :lastname => 'Fisher', :email => 'kevon.padberg@kessler.name', :birthdate => Time.at(189491933), :is_admin => false, :age => 33, :balance => 189491.933 }
    users << { :firstname => 'Izaiah', :lastname => 'Cremin', :email => 'drew@bogisichratke.uk', :birthdate => Time.at(670436882), :is_admin => true, :age => 18, :balance => 670436.882 }
    users << { :firstname => 'Judah', :lastname => 'Bogan', :email => 'mattie@batz.biz', :birthdate => Time.at(148979083), :is_admin => false, :age => 35, :balance => 148979.083 }
    users << { :firstname => 'Olin', :lastname => 'Legros', :email => 'jerry.harris@hyatt.co.uk', :birthdate => Time.at(101024917), :is_admin => false, :age => 36, :balance => 101024.917 }
    users << { :firstname => 'Tamara', :lastname => 'Stehr', :email => 'guadalupe@gaylordmorissette.uk', :birthdate => Time.at(544889432), :is_admin => true, :age => 22, :balance => 544889.432 }
    users << { :firstname => 'Rose', :lastname => 'Kling', :email => 'lionel_gibson@dibbertlesch.biz', :birthdate => Time.at(994862238), :is_admin => true, :age => 8, :balance => 994862.238 }
    users << { :firstname => 'Michelle', :lastname => 'Larkin', :email => 'rafael@keeling.ca', :birthdate => Time.at(543309904), :is_admin => true, :age => 22, :balance => 543309.904 }
    users << { :firstname => 'Kristofer', :lastname => 'Miller', :email => 'lura.sipes@marquardt.com', :birthdate => Time.at(245836693), :is_admin => false, :age => 32, :balance => 245836.693 }
    users << { :firstname => 'Boyd', :lastname => 'Williamson', :email => 'marcella.tillman@hermankrajcik.uk', :birthdate => Time.at(567319318), :is_admin => true, :age => 22, :balance => 567319.318 }
    users << { :firstname => 'Nicklaus', :lastname => 'Kohler', :email => 'noemi@huel.name', :birthdate => Time.at(357827811), :is_admin => false, :age => 28, :balance => 357827.811 }
    users << { :firstname => 'Raegan', :lastname => 'Stamm', :email => 'dejuan@oconner.name', :birthdate => Time.at(367233787), :is_admin => false, :age => 28, :balance => 367233.787 }
    users << { :firstname => 'Tracy', :lastname => 'Gleichner', :email => 'jeremy_konopelski@nicolaskovacek.name', :birthdate => Time.at(234639446), :is_admin => true, :age => 32, :balance => 234639.446 }
    users << { :firstname => 'Edwina', :lastname => 'Stracke', :email => 'maud.casper@pagac.info', :birthdate => Time.at(653271571), :is_admin => false, :age => 19, :balance => 653271.571 }
    users << { :firstname => 'Elisa', :lastname => 'White', :email => 'santos@waters.name', :birthdate => Time.at(722288380), :is_admin => true, :age => 17, :balance => 722288.38 }
    users << { :firstname => 'Kaia', :lastname => 'Rogahn', :email => 'floy@okeefe.ca', :birthdate => Time.at(228731808), :is_admin => true, :age => 32, :balance => 228731.808 }
    users << { :firstname => 'Ricky', :lastname => 'Brown', :email => 'rhiannon_collier@keelingrolfson.co.uk', :birthdate => Time.at(566255175), :is_admin => false, :age => 22, :balance => 566255.175 }
    users << { :firstname => 'Rachael', :lastname => 'Olson', :email => 'krystel_swift@brekkereichert.uk', :birthdate => Time.at(184821418), :is_admin => true, :age => 34, :balance => 184821.418 }
    users << { :firstname => 'Otha', :lastname => 'Watsica', :email => 'geoffrey@feil.uk', :birthdate => Time.at(32981702), :is_admin => true, :age => 38, :balance => 32981.702 }
    users << { :firstname => 'Clementine', :lastname => 'Torp', :email => 'ed@jacobimosciski.us', :birthdate => Time.at(450298864), :is_admin => true, :age => 25, :balance => 450298.864 }
    users << { :firstname => 'Joy', :lastname => 'Murphy', :email => 'emmitt.hegmann@hayes.com', :birthdate => Time.at(659435798), :is_admin => true, :age => 19, :balance => 659435.798 }
    users.each { |user| User.create!(user) }
    puts "Added 100 users"
  end

  def self.down
    User.delete_all
  end
end
