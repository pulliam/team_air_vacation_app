class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :img_url, :default => "http://www.cybersummitusa.com/site/wp-content/uploads/2014/01/avatar_blank.png"
      t.string :bio, :default => "Human is washing you why halp oh the horror flee scratch hiss bite hack up furballs. Scream at teh bath nap all day, but sleep nap yet stare at the wall, play with food and get confused by dust, cat is love, cat is life but refuse to drink water except out of someone's glass for stand in front of the computer screen. Burrow under covers. Find something else more interesting chirp at birds but under the bed mark territory. Vommit food and eat it again meowing non stop for food. Knock dish off table head butt cant eat out of my own dish. Poop in the plant pot use lap as chair stare out the window or sweet beast eat grass, throw it back up give attitude, or touch water with paw then recoil in horror. Leave hair everywhere pelt around the house and up and down stairs chasing phantoms yet scamper and make muffins poop on grasses or sit by the fire. Stare at ceiling climb a tree, wait for a fireman jump to fireman then scratch his face. Tuxedo cats always looking dapper. Knock over christmas tree purr while eating if it smells like fish eat as much as you wish but make meme, make cute face. Destroy couch eat from dog's food attack feet hide when guests come over why must they do that. Thinking longingly about tuna brine leave hair everywhere leave hair everywhere, for hack up furballs but wake up human for food at 4am you call this cat food?."
    end
  end
end
