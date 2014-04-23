# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# for testing only... have fun reseting db as many times as needed 

User.create({:email => "sunila@gmail.com", :password => "123456789", :password_confirmation => "123456789" })
User.create({:email => "wisam@gmail.com", :password => "123456789", :password_confirmation => "123456789" })
User.create({:email => "test@gmail.com", :password => "123456789", :password_confirmation => "123456789" })
Dealer.create({:name => 'Dealer 1'})


# sections, all with heading, question and directions. 

Section.create(id:1, form:'sample1', number:'3',
heading:'Odometer Reading', 
question:'Including Actual Miles', 
directions:'') 

Section.create(id:2, form:'sample2', number:'P', 
heading:'Pictures',
question:'Take a clear picture of each panel:',
directions:'') 

Section.create(id:3, form:'sample3', number:'7_1_a', 
heading: 'Differences in Paint Color or Texture?', 
question:'', 
directions:'') 

Section.create(id:4, form:'sample3', number:'7_1_b', 
heading:'Mismatched sizes of metallic sparkle in the paint:', 
question:'', 
directions:'') 

Section.create(id:5, form:'sample3', number:'7_1_c', 
heading:'Embedded dirt or deep scratches in the top coat of the paint:', 
question:'',
directions:'') 

Section.create(id:6, form:'sample3', number:'7_1_d', 
heading:'Uneven paint thickness:', 
question:'',
directions:'') 

Section.create(id:7, form:'sample3', number:'7_2_a', 
heading:'Uneven gaps between sheet metal panels:', 
question:'',
directions:'') 

Section.create(id:8, form:'sample3', number:'7_2_b', 
heading:'Differences between the headlamps:', 
question:'',
directions:'') 

Section.create(id:9, form:'sample3', number:'7_2_c', 
heading:'Paint overspray on moldings and trim:', 
question:'',
directions:'') 

Section.create(id:10, form:'sample3', number:'7_2_d', 
heading:'Paint tape edges in the jams:', 
question:'',
directions:'') 

Section.create(id:11, form:'sample3', number:'7_2_e', 
heading:'Paint chipped off of bolt heads', 
question:'',
directions:'') 

Section.create(id:12, form:'sample3', number:'7_2_f', 
heading:'Paint missing around bolt heads or bolts not centered in the bolt hole:', 
question:'',
directions:'') 

Section.create(id:13, form:'sample3', number:'7_2_g', 
heading:'Hammer damage:', 
question:'',
directions:'') 

Section.create(id:14, form:'sample3', number:'7_2_h', 
heading:'Holes drilled and plugged in jams or shell of the motor vehicle:', 
question:'',
directions:'') 

Section.create(id:15, form:'sample3', number:'7_2_i', 
heading:'Damage inside the trunk or under the spare tire:', 
question:'',
directions:'') 

Section.create(id:16, form:'sample3', number:'7_2_j', 
heading:'Signs of corrosion or lack of corrosion protection:', 
question:'',
directions:'') 

Section.create(id:17, form:'sample3', number:'7_3_a', 
heading:'Pinched weld flange underneath the motor vehicle:', 
question:'',
directions:'') 

Section.create(id:18, form:'sample3', number:'7_3_b', 
heading:'Weld sites:', 
question:'',
directions:'') 

Section.create(id:19, form:'sample3', number:'7_3_c', 
heading:'Signs of repair to unibody structural parts:', 
question:'',
directions:'') 

Section.create(id:20, form:'sample3', number:'7_3_d', 
heading:'Signs of buckles or non-OEM welding repair to the unibody structural parts:', 
question:'',
directions:'') 

Section.create(id:21, form:'sample3', number:'7_3_e', 
heading:'Signs of corrosion or lack of corrosion protection:', 
question:'',
directions:'') 

Section.create(id:22, form:'sample3', number:'7_3_f', 
heading:'Signs of any other alteration or repair having been performed to the chassis:', 
question:'',
directions:'') 

Section.create(id:23, form:'sample3', number:'7_3_g', 
heading:'Odometer alteration or repair:', 
question:'',
directions:'') 

Section.create(id:24, form:'sample3', number:'7_4', 
heading:'Signs of differences and inconsistencies with the motor vehicle’s caulking and seam sealer:',
question:'',
directions:'') 

Section.create(id:25, form:'sample3', number:'7_5', 
heading:'Signs of tampering with motor vehicle’s identification tags:',
question:'',
directions:'') 

Section.create(id:26, form:'sample3', number:'7_6', 
heading:'Signs of motor vehicle parts labeled “R-DOT”:', 
question:'',
directions:'') 

Section.create(id:27, form:'sample3', number:'7_7', 
heading:'Signs of any type of repairs not consistent with I-CAR collision repair standards or equivalent:', 
question:'',
directions:'') 

Section.create(id:28, form:'sample4', number:'5', 
heading:'Inspection Revealed Safety Issues:', 
question:'', 
directions:'')

Section.create(id:29, form:'sample4', number:'6', 
heading:'Inspection Revealed Frame Damage:', 
question:'', 
directions:'')

Section.create(id:30, form:'sample5', number:'8', 
heading:'Estimated Total Cost for Repairs and Alterations:', 
question:'',
directions:'DIRECTIONS: Above, estimate the total cost of alterations or repairs for this vehicle to be restored to I-Car standards of equivalent industry standards using industry accepted reverse engineering protocols and original equipment manufacturer “OEM” replacement parts; OR flat rate manual costs as indicated by a nationally recognized manual commonly used in the industry of auto repair. (N.M.A.C.12.2.14.7). The total should then be entered in the box above AND the box titled ESTIMATED TOTAL COST OF REPAIR in the first section of this report.') 

Section.create(id:31, form:'sample6', number:'9', 
heading:'Inspection Information:', 
question:'Date of Inspection ', 
directions:'') 

