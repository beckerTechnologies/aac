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

Section.create(id:1, has_checkbox:false, number:'3_1',
heading:'3. Odometer Reading (N.M.A.C. 12.2.14.11(G)):', 
question:'Including Actual Miles', 
directions:'') 

Section.create(id:2, has_checkbox:false, number:'3_2', 
heading:'3. Odometer Reading (N.M.A.C. 12.2.14.11(G)):', 
question:'Not Including Actual Miles', 
directions:'') 

Section.create(id:3, has_checkbox:false, number:'4', 
heading:'8. Estimated Total Cost of Repair (N.M.A.C. 12.2.14.11(H)):', 
question:'', 
directions:'DIRECTIONS: Skip until step 8. See below.') 

Section.create(id:4, has_checkbox:true, number:'5', 
heading:'5. Inspection Revealed Safety Issues:', 
question:'', 
directions:'DIRECTIONS: For the following, a “yes” and “no” box should be checked for each item. If “yes” is checked, identify the safety issues with particularity (N.M.A.C. 12.2.14.11(I))') 

Section.create(id:5, has_checkbox:true, number:'6', 
heading:'6. Inspection Revealed Frame Damage:', 
question:'', 
directions:'DIRECTIONS: For the following, a “yes” and “no” box should be checked for each item. If “yes” is checked, identify the frame damage with particularity (N.M.A.C. 12.2.14.11(J))') 

Section.create(id:6, has_checkbox:true, number:'7_1_a', 
heading:'AGE AND CONDITION OF MOTOR VEHICLE CERTIFICATION 
</br></br>
7. For the following paragraphs and subparagraphs, a “yes” and “no” box should be checked for each item. If “yes” is checked, identify the alteration or repair with particularity and where on the vehicle the alteration or repair is located.
</br></br>
(1) inspection of the motor vehicle for evidence of repainting (N.M.A.C. 12.2.14.11(L)(1))
',
question:'(a) differences in paint color or texture', 
directions:'') 

Section.create(id:7, has_checkbox:true, number:'7_1_b', 
heading:'AGE AND CONDITION OF MOTOR VEHICLE CERTIFICATION 
</br></br>
7. For the following paragraphs and subparagraphs, a “yes” and “no” box should be checked for each item. If “yes” is checked, identify the alteration or repair with particularity and where on the vehicle the alteration or repair is located.
</br></br>
(1) inspection of the motor vehicle for evidence of repainting (N.M.A.C. 12.2.14.11(L)(1))
',
question:'(b) mismatched sizes of metallic sparkle in the paint', 
directions:'') 

Section.create(id:8, has_checkbox:true, number:'7_1_c', 
heading:'AGE AND CONDITION OF MOTOR VEHICLE CERTIFICATION 
</br></br>
7. For the following paragraphs and subparagraphs, a “yes” and “no” box should be checked for each item. If “yes” is checked, identify the alteration or repair with particularity and where on the vehicle the alteration or repair is located.
</br></br>
(1) inspection of the motor vehicle for evidence of repainting (N.M.A.C. 12.2.14.11(L)(1))
',
question:'(c) embedded dirt or deep scratches in the top coat of the paint', 
directions:'') 

Section.create(id:9, has_checkbox:true, number:'7_1_d', 
heading:'AGE AND CONDITION OF MOTOR VEHICLE CERTIFICATION 
</br></br>
7. For the following paragraphs and subparagraphs, a “yes” and “no” box should be checked for each item. If “yes” is checked, identify the alteration or repair with particularity and where on the vehicle the alteration or repair is located.
</br></br>
(1) inspection of the motor vehicle for evidence of repainting (N.M.A.C. 12.2.14.11(L)(1))
',
question:'(d) uneven paint thickness', 
directions:'') 

Section.create(id:10, has_checkbox:true, number:'7_2_a', 
heading:'AGE AND CONDITION OF MOTOR VEHICLE CERTIFICATION 
</br></br>
7. For the following paragraphs and subparagraphs, a “yes” and “no” box should be checked for each item. If “yes” is checked, identify the alteration or repair with particularity and where on the vehicle the alteration or repair is located.
</br></br>
(2) inspection of the motor vehicle body and cab (N.M.A.C. 12.2.14.11(L)(2))
',
question:'(a) uneven gaps between sheet metal panels', 
directions:'') 

Section.create(id:11, has_checkbox:true, number:'7_2_b', 
heading:'AGE AND CONDITION OF MOTOR VEHICLE CERTIFICATION 
</br></br>
7. For the following paragraphs and subparagraphs, a “yes” and “no” box should be checked for each item. If “yes” is checked, identify the alteration or repair with particularity and where on the vehicle the alteration or repair is located.
</br></br>
(2) inspection of the motor vehicle body and cab (N.M.A.C. 12.2.14.11(L)(2))
',
question:'(b) differences between the headlamps', 
directions:'') 

Section.create(id:12, has_checkbox:true, number:'7_2_c', 
heading:'AGE AND CONDITION OF MOTOR VEHICLE CERTIFICATION 
</br></br>
7. For the following paragraphs and subparagraphs, a “yes” and “no” box should be checked for each item. If “yes” is checked, identify the alteration or repair with particularity and where on the vehicle the alteration or repair is located.
</br></br>
(2) inspection of the motor vehicle body and cab (N.M.A.C. 12.2.14.11(L)(2))
',
question:'(c) paint overspray on moldings and trim', 
directions:'') 

Section.create(id:13, has_checkbox:true, number:'7_2_d', 
heading:'AGE AND CONDITION OF MOTOR VEHICLE CERTIFICATION 
</br></br>
7. For the following paragraphs and subparagraphs, a “yes” and “no” box should be checked for each item. If “yes” is checked, identify the alteration or repair with particularity and where on the vehicle the alteration or repair is located.
</br></br>
(2) inspection of the motor vehicle body and cab (N.M.A.C. 12.2.14.11(L)(2))
',
question:'(d) paint tape edges in the jams', 
directions:'') 

Section.create(id:14, has_checkbox:true, number:'7_2_e', 
heading:'AGE AND CONDITION OF MOTOR VEHICLE CERTIFICATION 
</br></br>
7. For the following paragraphs and subparagraphs, a “yes” and “no” box should be checked for each item. If “yes” is checked, identify the alteration or repair with particularity and where on the vehicle the alteration or repair is located.
</br></br>
(2) inspection of the motor vehicle body and cab (N.M.A.C. 12.2.14.11(L)(2))
',
question:'(e) paint chipped off of bolt heads', 
directions:'') 

Section.create(id:15, has_checkbox:true, number:'7_2_f', 
heading:'AGE AND CONDITION OF MOTOR VEHICLE CERTIFICATION 
</br></br>
7. For the following paragraphs and subparagraphs, a “yes” and “no” box should be checked for each item. If “yes” is checked, identify the alteration or repair with particularity and where on the vehicle the alteration or repair is located.
</br></br>
(2) inspection of the motor vehicle body and cab (N.M.A.C. 12.2.14.11(L)(2))
',
question:'(f) paint missing around bolt heads or bolts not centered in the bolt hole', 
directions:'') 

Section.create(id:16, has_checkbox:true, number:'7_2_g', 
heading:'AGE AND CONDITION OF MOTOR VEHICLE CERTIFICATION 
</br></br>
7. For the following paragraphs and subparagraphs, a “yes” and “no” box should be checked for each item. If “yes” is checked, identify the alteration or repair with particularity and where on the vehicle the alteration or repair is located.
</br></br>
(2) inspection of the motor vehicle body and cab (N.M.A.C. 12.2.14.11(L)(2))
',
question:'(g) hammer damage', 
directions:'') 

Section.create(id:17, has_checkbox:true, number:'7_2_h', 
heading:'AGE AND CONDITION OF MOTOR VEHICLE CERTIFICATION 
</br></br>
7. For the following paragraphs and subparagraphs, a “yes” and “no” box should be checked for each item. If “yes” is checked, identify the alteration or repair with particularity and where on the vehicle the alteration or repair is located.
</br></br>
(2) inspection of the motor vehicle body and cab (N.M.A.C. 12.2.14.11(L)(2))
',
question:'(h) holes drilled and plugged in jams or shell of the motor vehicle', 
directions:'') 

Section.create(id:18, has_checkbox:true, number:'7_2_i', 
heading:'AGE AND CONDITION OF MOTOR VEHICLE CERTIFICATION 
</br></br>
7. For the following paragraphs and subparagraphs, a “yes” and “no” box should be checked for each item. If “yes” is checked, identify the alteration or repair with particularity and where on the vehicle the alteration or repair is located.
</br></br>
(2) inspection of the motor vehicle body and cab (N.M.A.C. 12.2.14.11(L)(2))
',
question:'(i) damage inside the trunk or under the spare tire', 
directions:'') 

Section.create(id:19, has_checkbox:true, number:'7_2_j', 
heading:'AGE AND CONDITION OF MOTOR VEHICLE CERTIFICATION 
</br></br>
7. For the following paragraphs and subparagraphs, a “yes” and “no” box should be checked for each item. If “yes” is checked, identify the alteration or repair with particularity and where on the vehicle the alteration or repair is located.
</br></br>
(2) inspection of the motor vehicle body and cab (N.M.A.C. 12.2.14.11(L)(2))
',
question:'(j) signs of corrosion or lack of corrosion protection', 
directions:'') 

Section.create(id:20, has_checkbox:true, number:'7_3_a', 
heading:'AGE AND CONDITION OF MOTOR VEHICLE CERTIFICATION 
</br></br>
7. For the following paragraphs and subparagraphs, a “yes” and “no” box should be checked for each item. If “yes” is checked, identify the alteration or repair with particularity and where on the vehicle the alteration or repair is located.
</br></br>
(3) inspection of the motor vehicle chassis (N.M.A.C. 12.2.14.11(L)(3))
',
question:'(a) pinched weld flange underneath the motor vehicle', 
directions:'') 

Section.create(id:21, has_checkbox:true, number:'7_3_b', 
heading:'AGE AND CONDITION OF MOTOR VEHICLE CERTIFICATION 
</br></br>
7. For the following paragraphs and subparagraphs, a “yes” and “no” box should be checked for each item. If “yes” is checked, identify the alteration or repair with particularity and where on the vehicle the alteration or repair is located.
</br></br>
(3) inspection of the motor vehicle chassis (N.M.A.C. 12.2.14.11(L)(3))
',
question:'(b) weld sites', 
directions:'') 

Section.create(id:22, has_checkbox:true, number:'7_3_c', 
heading:'AGE AND CONDITION OF MOTOR VEHICLE CERTIFICATION 
</br></br>
7. For the following paragraphs and subparagraphs, a “yes” and “no” box should be checked for each item. If “yes” is checked, identify the alteration or repair with particularity and where on the vehicle the alteration or repair is located.
</br></br>
(3) inspection of the motor vehicle chassis (N.M.A.C. 12.2.14.11(L)(3))
',
question:'(c) signs of repair to unibody structural parts', 
directions:'') 

Section.create(id:23, has_checkbox:true, number:'7_3_d', 
heading:'AGE AND CONDITION OF MOTOR VEHICLE CERTIFICATION 
</br></br>
7. For the following paragraphs and subparagraphs, a “yes” and “no” box should be checked for each item. If “yes” is checked, identify the alteration or repair with particularity and where on the vehicle the alteration or repair is located.
</br></br>
(3) inspection of the motor vehicle chassis (N.M.A.C. 12.2.14.11(L)(3))
',
question:'(d) signs of buckles or non-OEM welding repair to the unibody structural parts', 
directions:'') 

Section.create(id:24, has_checkbox:true, number:'7_3_e', 
heading:'AGE AND CONDITION OF MOTOR VEHICLE CERTIFICATION 
</br></br>
7. For the following paragraphs and subparagraphs, a “yes” and “no” box should be checked for each item. If “yes” is checked, identify the alteration or repair with particularity and where on the vehicle the alteration or repair is located.
</br></br>
(3) inspection of the motor vehicle chassis (N.M.A.C. 12.2.14.11(L)(3))
',
question:'(e) signs of corrosion or lack of corrosion protection', 
directions:'') 

Section.create(id:25, has_checkbox:true, number:'7_3_f', 
heading:'AGE AND CONDITION OF MOTOR VEHICLE CERTIFICATION 
</br></br>
7. For the following paragraphs and subparagraphs, a “yes” and “no” box should be checked for each item. If “yes” is checked, identify the alteration or repair with particularity and where on the vehicle the alteration or repair is located.
</br></br>
(3) inspection of the motor vehicle chassis (N.M.A.C. 12.2.14.11(L)(3))
',
question:'(f) signs of any other alteration or repair having been performed to the chassis', 
directions:'') 

Section.create(id:26, has_checkbox:true, number:'7_3_g', 
heading:'AGE AND CONDITION OF MOTOR VEHICLE CERTIFICATION 
</br></br>
7. For the following paragraphs and subparagraphs, a “yes” and “no” box should be checked for each item. If “yes” is checked, identify the alteration or repair with particularity and where on the vehicle the alteration or repair is located.
</br></br>
(3) inspection of the motor vehicle chassis (N.M.A.C. 12.2.14.11(L)(3))
',
question:'(g) odometer alteration or repair', 
directions:'') 

Section.create(id:27, has_checkbox:true, number:'7_4', 
heading:'AGE AND CONDITION OF MOTOR VEHICLE CERTIFICATION 
</br></br>
7. For the following paragraphs and subparagraphs, a “yes” and “no” box should be checked for each item. If “yes” is checked, identify the alteration or repair with particularity and where on the vehicle the alteration or repair is located.
',
question:'(4) signs of differences and inconsistencies with the motor vehicle’s caulking and seam sealer (N.M.A.C. 12.2.14.11(L)(4))', 
directions:'') 

Section.create(id:28, has_checkbox:true, number:'7_5', 
heading:'AGE AND CONDITION OF MOTOR VEHICLE CERTIFICATION 
</br></br>
7. For the following paragraphs and subparagraphs, a “yes” and “no” box should be checked for each item. If “yes” is checked, identify the alteration or repair with particularity and where on the vehicle the alteration or repair is located.
',
question:'(5) signs of tampering with motor vehicle’s identification tags (N.M.A.C. 12.2.14.11(L)(5))', 
directions:'') 

Section.create(id:29, has_checkbox:true, number:'7_6', 
heading:'AGE AND CONDITION OF MOTOR VEHICLE CERTIFICATION 
</br></br>
7. For the following paragraphs and subparagraphs, a “yes” and “no” box should be checked for each item. If “yes” is checked, identify the alteration or repair with particularity and where on the vehicle the alteration or repair is located.
',
question:'(6) signs of motor vehicle parts labeled “R-DOT” (N.M.A.C. 12.2.14.11(L)(6))', 
directions:'') 

Section.create(id:30, has_checkbox:true, number:'7_7', 
heading:'AGE AND CONDITION OF MOTOR VEHICLE CERTIFICATION 
</br></br>
7. For the following paragraphs and subparagraphs, a “yes” and “no” box should be checked for each item. If “yes” is checked, identify the alteration or repair with particularity and where on the vehicle the alteration or repair is located.
',
question:'(7) signs of any type of repairs not consistent with I-CAR collision repair standards or equivalent (N.M.A.C.12.2.14.11(L)(7))', 
directions:'') 

Section.create(id:31, has_checkbox:false, number:'8', 
heading:'8. Estimated Total Cost for Repairs and Alterations:', 
question:'',
directions:'DIRECTIONS: Above, estimate the total cost of alterations or repairs for this vehicle to be restored to I-Car standards of equivalent industry standards using industry accepted reverse engineering protocols and original equipment manufacturer “OEM” replacement parts; OR flat rate manual costs as indicated by a nationally recognized manual commonly used in the industry of auto repair. (N.M.A.C.12.2.14.7). The total should then be entered in the box above AND the box titled ESTIMATED TOTAL COST OF REPAIR in the first section of this report.') 

Section.create(id:32, has_checkbox:false, number:'9_1', 
heading:'9. Inspection Information (N.M.A.C. 12.2.14.11(M-N)):', 
question:'Date of Inspection ', 
directions:'') 

Section.create(id:33, has_checkbox:false, number:'9_2', 
heading:'9. Inspection Information (N.M.A.C. 12.2.14.11(M-N)):', 
question:'Calculation and total cost for inspection', 
directions:'') 

Section.create(id:34, has_checkbox:false, number:'9_3', 
heading:'9. Inspection Information (N.M.A.C. 12.2.14.11(M-N)):', 
question:'Total Cost:', 
directions:'') 
