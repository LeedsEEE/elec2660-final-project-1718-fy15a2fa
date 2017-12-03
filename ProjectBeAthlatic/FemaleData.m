//
//  FemaleData.m
//  ProjectBeAthlatic
//
//  Created by Ahmad Alotaibi on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "FemaleData.h"

@implementation FemaleData


//create custom init function in order to add workouts' details
- (instancetype)init
{
    self = [super init];
    if (self) {
        
        
        
        #pragma mark shoulders' workouts
        
        //set an array for shoulders' workouts by using [NSMutableArray array]
        self.ShouldersFemale = [NSMutableArray array];
        
        // All shoulder's workouts for female are taken form WomenHealth.com
        
        //create an object for a workout in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        FemaleProperties *SCAPTION = [[FemaleProperties alloc] init];
        SCAPTION.NameWorkoutFemale = @"Scaption"; //set workout name
        SCAPTION.LevelFemale = @"Beginner"; //set the level of workout
        SCAPTION.TimeFemale = @"5 minutes"; //set the time of workout
        SCAPTION.DiscriptionFemale = @"Stand with your feet shoulder-width apart, and anchor your shoulders back and downward toward your hips. Using five- to eight-pound dumbbells, bend your elbows so your forearms are parallel with the floor (A). Press your elbows outward, maintaining the angle at your elbow. Raise your arms until your upper and lower arms are parallel to the floor.  Your hands should be directly in front of your shoulders (B). Pause for two seconds, and then release back down. That's one rep. Do 15 reps."; //set the discription of workout
        
        
        //create an object for a workout in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        FemaleProperties *LATERALRAISE = [[FemaleProperties alloc] init];
        LATERALRAISE.NameWorkoutFemale = @"Lateral Raise"; //set workout name
        LATERALRAISE.LevelFemale = @"Beginner"; //set the level of workout
        LATERALRAISE.TimeFemale = @"5 minutes"; //set the time of workout
        LATERALRAISE.DiscriptionFemale = @"Stand with your feet shoulder-width apart, holding three- to five-pound dumbbells at your sides. Rotate your hands so that your palms are facing forward (A). Keeping your arms straight, press them out so that your thumbs move toward the ceiling (B). Pause at the top for two seconds. Slowly release down. That's one rep. Do 15 reps"; //set the discription of workout
        
        //create an object for a workout in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        FemaleProperties *BENTARMLATERALRAISE = [[FemaleProperties alloc] init];
        BENTARMLATERALRAISE.NameWorkoutFemale = @"Bent Arm Lateral Raise"; //set workout name
        BENTARMLATERALRAISE.LevelFemale = @"Beginner"; //set the level of workout
        BENTARMLATERALRAISE.TimeFemale = @"5 minutes"; //set the time of workout
        BENTARMLATERALRAISE.DiscriptionFemale = @"Stand with your feet shoulder-width apart, and anchor your shoulders back and downward toward your hips. Using five- to eight-pound dumbbells, bend your elbows so your forearms are parallel with the floor (A). Press your elbows outward, maintaining the angle at your elbow. Raise your arms until your upper and lower arms are parallel to the floor.  Your hands should be directly in front of your shoulders (B). Pause for two seconds, and then release back down. That's one rep. Do 10 reps."; //set the discription of workout
        
        //create an object for a workout in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        FemaleProperties *CABLEEXTERNALROTATION = [[FemaleProperties alloc] init];
        CABLEEXTERNALROTATION.NameWorkoutFemale = @"Cable External Rotation"; //set workout name
        CABLEEXTERNALROTATION.LevelFemale = @"Intermediate"; //set the level of workout
        CABLEEXTERNALROTATION.TimeFemale = @"4 minutes"; //set the time of workout
        CABLEEXTERNALROTATION.DiscriptionFemale = @"Adjust a cable column so that it's in line with your torso. Attach a D handle to the cable, and stand with it on your right side. With your hips shoulder-width distance apart, grasp the handle with your left hand. Your left elbow should be bent at 90 degrees (A). Keep your upper arm pressed to your side, and pull the handle towards the left side of your body until your palm is facing forward (B). Slowly release back to start. That is one rep. Do 10 reps on each side. "; //set the discription of workout
        
        //create an object for a workout in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        FemaleProperties *SEATEDREARLATERALRAISE = [[FemaleProperties alloc] init];
        SEATEDREARLATERALRAISE.NameWorkoutFemale = @"Seated Rear Lateral Raise"; //set workout name
        SEATEDREARLATERALRAISE.LevelFemale = @"Advanced"; //set the level of workout
        SEATEDREARLATERALRAISE.TimeFemale = @"2 minutes"; //set the time of workout
        SEATEDREARLATERALRAISE.DiscriptionFemale = @"Sit at the end of a bench with your feet shoulder-distance apart. Holding two three- to five-pound dumbbells in each hand, bend forward at your hips until your upper body is 45-degree angle to the floor (A). Hold the dumbbells with your palms facing each other and your arms totally straight. Without bending your elbow, open your arms outward until the dumbbells are in line with your shoulders (B). Pause at the top for one second, and slowly release back down. That is one rep. Do 10 reps "; //set the discription of workout
        
        #pragma mark add shoulders' workouts to the array
        
        //add the workouts into the shoulders array by using addObject function
        [self.ShouldersFemale addObject:SCAPTION]; //This workout goes into (INDEX 0)
        [self.ShouldersFemale addObject:LATERALRAISE]; //This workout goes into (INDEX 1)
        [self.ShouldersFemale addObject:BENTARMLATERALRAISE]; //This workout goes into (INDEX 2)
        [self.ShouldersFemale addObject:CABLEEXTERNALROTATION]; //This workout goes into (INDEX 3)
        [self.ShouldersFemale addObject:SEATEDREARLATERALRAISE]; //This workout goes into (INDEX 4)
        
        
        
        #pragma mark arms' workouts
        
        //set an array for arms' workouts by using [NSMutableArray array]
        self.ArmsFeamle = [NSMutableArray array];
        
        // All arm's workouts for female are taken form WomensHealthandFitness.com
        
        //create an object for a workout in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        FemaleProperties *BicepCurls = [[FemaleProperties alloc] init];
        BicepCurls.NameWorkoutFemale = @"Bicep Curls"; //set workout name
        BicepCurls.LevelFemale = @"Intermediate"; //set the level of workout
        BicepCurls.TimeFemale = @"3 minutes"; //set the time of workout
        BicepCurls.DiscriptionFemale = @"Start with your feet shoulder-width apart, knees slightly bent, shoulders back and chest high. After that, Position bar at waist height. After that, Tighten stomach muscles and curl bar towards body until you reach shoulder height. Aim for 15 reps (2-3 sets)."; //set the discription of workout
        
        //create an object for a workout in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        FemaleProperties *AdvancedPushups = [[FemaleProperties alloc] init];
        AdvancedPushups.NameWorkoutFemale = @"Advanced Push-ups"; //set workout name
        AdvancedPushups.LevelFemale = @"Advanced"; //set the level of workout
        AdvancedPushups.TimeFemale = @"2 minutes"; //set the time of workout
        AdvancedPushups.DiscriptionFemale = @"Place body in push-up position on floor with feet on fit ball, activate core by pulling navel to spine and squeezing glutes. Starting with your body in plank position, lower chest towards the floor. Upon reaching the floor press your body back up to the starting position."; //set the discription of workout
        
        //create an object for a workout in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        FemaleProperties *CableCrossover = [[FemaleProperties alloc] init];
        CableCrossover.NameWorkoutFemale = @"Cable Crossover"; //set workout name
        CableCrossover.LevelFemale = @"Advanced"; //set the level of workout
        CableCrossover.TimeFemale = @"2 minutes"; //set the time of workout
        CableCrossover.DiscriptionFemale = @"As a heads up, the cable machine will have independent arms or adjustable sides. Ensure the pulleys are sitting at the top of the machine. Select a weight that lets you perform 12 to 15 reps, max. Once you’re set to go, stand tall, lean forward slightly (maintaining a strong core) and hold both handles. Keep feet together, or you can try a split stance. With arms slightly bent, squeeze both handles together using arms and chest (pectorals) and hold for 3 seconds. Slowly bring arms back to start position."; //set the discription of workout
        
        //create an object for a workout in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        FemaleProperties *ArnoldShoulderPress = [[FemaleProperties alloc] init];
        ArnoldShoulderPress.NameWorkoutFemale = @"Arnold Shoulder Press"; //set workout name
        ArnoldShoulderPress.LevelFemale = @"Beginner"; //set the level of workout
        ArnoldShoulderPress.TimeFemale = @"5 minutes"; //set the time of workout
        ArnoldShoulderPress.DiscriptionFemale = @"Warm-up with 3 sets x 15 repetitions with light weight to get the blood flowing. Sit on an exercise bench with back support and hold two dumbbells in front of you at about upper chest level with your palms facing your body and your elbows bent. Raise the dumbbells as you rotate the palms of your hands until they are facing forward. Continue lifting the dumbbells until your arms are extended above you in straight-arm position."; //set the discription of workout
        
        //create an object for a workout in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        FemaleProperties *AlternatingPushups = [[FemaleProperties alloc] init];
        AlternatingPushups.NameWorkoutFemale = @"Alternating Push-ups"; //set workout name
        AlternatingPushups.LevelFemale = @"Advanced"; //set the level of workout
        AlternatingPushups.TimeFemale = @"5 minutes"; //set the time of workout
        AlternatingPushups.DiscriptionFemale = @"Position yourself in a push-up position placing one hand on top of the medicine ball and the other hand on floor, slightly wider than shoulder-width away. The arm that has the hand on the ball should be slightly bent. Perform a push-up by lowering your body down. As you straighten up, rapidly roll the ball under your body to the other hand, then perform another push-up again. Repeat this sequence for as many as you can in the recommended amount of work time"; //set the discription of workout
        
        
        #pragma mark add arms' workouts to the array
        
        //add the workouts into the arms array by using addObject function
        [self.ArmsFeamle addObject:ArnoldShoulderPress]; //This workout goes into (INDEX 0)
        [self.ArmsFeamle addObject:BicepCurls]; //This workout goes into (INDEX 1)
        [self.ArmsFeamle addObject:AdvancedPushups]; //This workout goes into (INDEX 2)
        [self.ArmsFeamle addObject:CableCrossover]; //This workout goes into (INDEX 3)
        [self.ArmsFeamle addObject:AlternatingPushups]; //This workout goes into (INDEX 4)
        
        
        
        #pragma mark legs' workouts
        
        //set an array for legs' workouts by using [NSMutableArray array]
        self.LegsFemale = [NSMutableArray array];
        
        // All leg's workouts for female are taken form WomenHealth.com
        
        //create an object for a workout in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        FemaleProperties *DUMBBELLSPLITJUMP = [[FemaleProperties alloc] init];
        DUMBBELLSPLITJUMP.NameWorkoutFemale = @"Dumbbell Split Jump"; //set workout name
        DUMBBELLSPLITJUMP.LevelFemale = @"Beginner"; //set the level of workout
        DUMBBELLSPLITJUMP.TimeFemale = @"5 minutes"; //set the time of workout
        DUMBBELLSPLITJUMP.DiscriptionFemale = @"Hold a pair of dumbbells at arm's length next to your sides, palms facing each other. Stand in a staggered stance, your left foot in front of your right. From a standing position, lower your body into a split squat. (A) Quickly switch directions and jump with enough force to propel both feet off the floor. (B) Repeat, alternating back and forth with each repetition. (C)"; //set the discription of workout
        
        //create an object for a workout in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        FemaleProperties *REVERSEDUMBBELL = [[FemaleProperties alloc] init];
        REVERSEDUMBBELL.NameWorkoutFemale = @"Reverse Dumbbell Box Lunge"; //set workout name
        REVERSEDUMBBELL.LevelFemale = @"Beginner"; //set the level of workout
        REVERSEDUMBBELL.TimeFemale = @"5 minutes"; //set the time of workout
        REVERSEDUMBBELL.DiscriptionFemale = @"Stand on a 6-inch box or step, holding a pair of light dumbbells at your sides. (A) Step backward into a lunge with your right leg as you lean forward at your hips and reach toward your feet. (B) Reverse the movement to return to the starting position."; //set the discription of workout
        
        //create an object for a workout in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        FemaleProperties *SINGLEARMKETTLEBELLSWING = [[FemaleProperties alloc] init];
        SINGLEARMKETTLEBELLSWING.NameWorkoutFemale = @"Single-Arm Kettlebell Swing"; //set workout name
        SINGLEARMKETTLEBELLSWING.LevelFemale = @"Advanced"; //set the level of workout
        SINGLEARMKETTLEBELLSWING.TimeFemale = @"2 minutes"; //set the time of workout
        SINGLEARMKETTLEBELLSWING.DiscriptionFemale = @"Grab a kettlebell with an overhand grip and hold it in front of your waist at arm's length. (You can also do the exercise two handed, holding the kettlebell with both hands.) Bend at your hips and knees and lower your torso until it forms a 45-degree angle to the floor. Swing the kettlebell between your legs. (A) Keeping your arm straight, thrust your hips forward, straighten your knees, and swing the kettlebell up to chest level as you rise to standing position. (B) Now squat back down as you swing the kettlebell between your legs again. Swing the weight back and forth forcefully."; //set the discription of workout
        
        //create an object for a workout in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        FemaleProperties *MARCHINGHIPRAISEWITHFEETONASWISSBALL = [[FemaleProperties alloc] init];
        MARCHINGHIPRAISEWITHFEETONASWISSBALL.NameWorkoutFemale = @"Marching Hip Raise"; //set workout name
        MARCHINGHIPRAISEWITHFEETONASWISSBALL.LevelFemale = @"Advanced"; //set the level of workout
        MARCHINGHIPRAISEWITHFEETONASWISSBALL.TimeFemale = @"3 minutes"; //set the time of workout
        MARCHINGHIPRAISEWITHFEETONASWISSBALL.DiscriptionFemale = @"Lie faceup on the floor with your knees bent and your feet flat on a Swiss Ball. Raise your hips so your body forms a straight line from your shoulders to your knees. (A) Lift one knee to your chest (B), lower back to the start, and lift your other knee to your chest. Continue to alternate back and forth."; //set the discription of workout
        
        //create an object for a workout in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        FemaleProperties *GOBLETSQUAT = [[FemaleProperties alloc] init];
        GOBLETSQUAT.NameWorkoutFemale = @"Goblet Squat"; //set workout name
        GOBLETSQUAT.LevelFemale = @"Intermediate"; //set the level of workout
        GOBLETSQUAT.TimeFemale = @"3 minutes"; //set the time of workout
        GOBLETSQUAT.DiscriptionFemale = @"Hold a dumbbell vertically next to your chest, with both hands cupping the dumbbell head. (Imagine that it's a heavy goblet.) (A) Brace your abs, and lower your body as far as you can by pushing your hips back and bending your knees. (B) Pause, then push yourself back to the starting position."; //set the discription of workout
        
        
        #pragma mark add legs' workouts to the array
        
        //add the workouts into the legs array by using addObject function
        [self.LegsFemale addObject:DUMBBELLSPLITJUMP]; //This workout goes into (INDEX 0)
        [self.LegsFemale addObject:REVERSEDUMBBELL]; //This workout goes into (INDEX 1)
        [self.LegsFemale addObject:GOBLETSQUAT]; //This workout goes into (INDEX 2)
        [self.LegsFemale addObject:SINGLEARMKETTLEBELLSWING]; //This workout goes into (INDEX 3)
        [self.LegsFemale addObject:MARCHINGHIPRAISEWITHFEETONASWISSBALL]; //This workout goes into (INDEX 4)
        
        
        
        #pragma mark chest's workouts
        
        //set an array for chest's workouts by using [NSMutableArray array]
        self.ChestFemale = [NSMutableArray array];
        
        // All chest's workouts for female are taken form WomensHealthandFitness.com
        
        //create an object for a workout in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        FemaleProperties *BenchPress = [[FemaleProperties alloc] init];
        BenchPress.NameWorkoutFemale = @"Bench Press"; //set workout name
        BenchPress.LevelFemale = @"Intermediate"; //set the level of workout
        BenchPress.TimeFemale = @"4 minutes"; //set the time of workout
        BenchPress.DiscriptionFemale = @"Lie with the middle of your  back on top of a stability ball  and make sure your shoulder blades have room to move. Your knees should be bent at a 90-degree angle. Hold dumbbells next to your arm pits with knuckles facing forward. Count to three as you push the weights up away from your chest, until your arms are almost straight above you. Slowly lower back to starting position using the same number of counts."; //set the discription of workout
        
        //create an object for a workout in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        FemaleProperties *MedicineBallSlams = [[FemaleProperties alloc] init];
        MedicineBallSlams.NameWorkoutFemale = @"Medicine Ball Slams"; //set workout name
        MedicineBallSlams.LevelFemale = @"Beginner"; //set the level of workout
        MedicineBallSlams.TimeFemale = @"5 minutes"; //set the time of workout
        MedicineBallSlams.DiscriptionFemale = @"Hold a medicine ball with both hands. Lift it above your head, keep feet hip-width apart and knees slightly bend. Now try to slam the ball onto the floor as hard as you can. Pick it up and do three sets of 20."; //set the discription of workout
        
        //create an object for a workout in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        FemaleProperties *DumbbellFlyes = [[FemaleProperties alloc] init];
        DumbbellFlyes.NameWorkoutFemale = @"Dumbbell Flyes"; //set workout name
        DumbbellFlyes.LevelFemale = @"Intermediate"; //set the level of workout
        DumbbellFlyes.TimeFemale = @"4 minutes"; //set the time of workout
        DumbbellFlyes.DiscriptionFemale = @"Lie in the same position as you would for a bench press. Instead this time, place both hands above your chest with arms straight, elbows slightly bent and knuckles facing out to the side. Open arms out wide and lower until elbows are in line with your shoulders taking three or four counts. Bring back to starting position using the same amount of counts."; //set the discription of workout
        
        //create an object for a workout in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        FemaleProperties *Burpees = [[FemaleProperties alloc] init];
        Burpees.NameWorkoutFemale = @"Burpees"; //set workout name
        Burpees.LevelFemale = @"Beginner"; //set the level of workout
        Burpees.TimeFemale = @"5 minutes"; //set the time of workout
        Burpees.DiscriptionFemale = @"Do a push-up. Once completed, keep your hands on the ground and jump your legs forward so you are standing in a bent over position. Lift hands off the ground and jump into the air as high as you can. Now bend over again, place hands flat on the floor and jump feet back into a push- up position. Repeat four sets of 20 with 30 seconds break in between each set."; //set the discription of workout
        
        //create an object for a workout in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        FemaleProperties *MedicineBallPushups = [[FemaleProperties alloc] init];
        MedicineBallPushups.NameWorkoutFemale = @"Medicine Ball Push-ups"; //set workout name
        MedicineBallPushups.LevelFemale = @"Advanced"; //set the level of workout
        MedicineBallPushups.TimeFemale = @"3 minutes"; //set the time of workout
        MedicineBallPushups.DiscriptionFemale = @"Start in a push-up position, instead this time place both hands on top of a medicine ball. Slowly lower into push-up in four counts, keep abs braced, and push back into starting position. Now remove your right hand and place it on the floor in line with the ball so hands are about half a metre apart. Do another push-up. Return your hand to the ball. Do another push up. Move left hand out to the side and do another push up. Continue this 10 to 20 times and do three to four sets."; //set the discription of workout
        
        
        #pragma mark add chest's workouts to the array
        
        //add the workouts into the chest array by using addObject function
        [self.ChestFemale addObject:MedicineBallSlams]; //This workout goes into (INDEX 0)
        [self.ChestFemale addObject:Burpees]; //This workout goes into (INDEX 1)
        [self.ChestFemale addObject:DumbbellFlyes]; //This workout goes into (INDEX 2)
        [self.ChestFemale addObject:BenchPress]; //This workout goes into (INDEX 3)
        [self.ChestFemale addObject:MedicineBallPushups]; //This workout goes into (INDEX 4)
        
        
        
        #pragma mark ABS's workouts
        
        //set an array for ABS's workouts by using [NSMutableArray array]
        self.ABSFemale = [NSMutableArray array];
        
        // All ABS's workouts for female are taken form WomensHealthandFitness.com
        
        //create an object for a workout in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        FemaleProperties *SidePlankHold = [[FemaleProperties alloc] init];
        SidePlankHold.NameWorkoutFemale = @"Side Plank Hold"; //set workout name
        SidePlankHold.LevelFemale = @"Beginner"; //set the level of workout
        SidePlankHold.TimeFemale = @"5 minutes"; //set the time of workout
        SidePlankHold.DiscriptionFemale = @"Begin in high plank position, abs engaged, keeping a straight line from your head to your heels. Keeping abs contracted, slowly transition from plank position to a right side plank. Rotate your body slowly, lifting your left arm off of the ground and placing weight through the palm of your right hand. As you rotate your body, reach straight up or over your head with your left arm, keeping your body in a straight line (your left foot stacked on top of your right to create this line), contracting your abs and pushing through the palm of the hand that is on the ground."; //set the discription of workout
        
        //create an object for a workout in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        FemaleProperties *SuspendedPlankWithKneeTuck = [[FemaleProperties alloc] init];
        SuspendedPlankWithKneeTuck.NameWorkoutFemale = @"Suspended Plank With Knee Tuck"; //set workout name
        SuspendedPlankWithKneeTuck.LevelFemale = @"Intermediate"; //set the level of workout
        SuspendedPlankWithKneeTuck.TimeFemale = @"3 minutes"; //set the time of workout
        SuspendedPlankWithKneeTuck.DiscriptionFemale = @"Extend the straps and place your feet in the foot loops. Walk your body out until it is completely extended in a plank position. Keep your hips in line with your shoulders. Go into a straight-arm plank and engage your core. Bring your knees towards your chest and return to the back – repeat this. Build up your strength by focusing on technique, not speed. Alternate these with single-knee tucks in a running motion, keeping your hips up and body straight at all times; don’t let your back sag or drop your hips."; //set the discription of workout
        
        //create an object for a workout in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        FemaleProperties *SitupToStanding = [[FemaleProperties alloc] init];
        SitupToStanding.NameWorkoutFemale = @"Sit-up to Standing"; //set workout name
        SitupToStanding.LevelFemale = @"Intermediate"; //set the level of workout
        SitupToStanding.TimeFemale = @"4 minutes"; //set the time of workout
        SitupToStanding.DiscriptionFemale = @"Lie face up with your knees bent holding the kettlebell overhead, arms extended. Forcefully bend at the waist, simultaneously bringing arms and kettlebell forward, pulling heels slightly back towards your glutes to stand up. From the standing position, carefully descend into a squat, roll your torso back to the start and rhythmically begin your next rep."; //set the discription of workout
        
        //create an object for a workout in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        FemaleProperties *RomanTwist = [[FemaleProperties alloc] init];
        RomanTwist.NameWorkoutFemale = @"Roman Twist"; //set workout name
        RomanTwist.LevelFemale = @"Beginner"; //set the level of workout
        RomanTwist.TimeFemale = @"5 minutes"; //set the time of workout
        RomanTwist.DiscriptionFemale = @"Seated on exercise mat, gently lean back until the core is activated. ADVANCED OPTION: raise feet off the ground. Gently reach around from one side of the body to the other. Ensure core is engaged at all times to avoid overuse."; //set the discription of workout
        
        //create an object for a workout in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        FemaleProperties *VerticalLegCrunch = [[FemaleProperties alloc] init];
        VerticalLegCrunch.NameWorkoutFemale = @"Vertical Leg Cruncht"; //set workout name
        VerticalLegCrunch.LevelFemale = @"Advanced"; //set the level of workout
        VerticalLegCrunch.TimeFemale = @"2 minutes"; //set the time of workout
        VerticalLegCrunch.DiscriptionFemale = @"Start with your lower back pressed to the ground. Put your hands behind your head for support. Extend your legs straight up in the air, crossed at the ankles with a slight bend in the knee. Contract your abdominal muscles by lifting your torso toward your knees. Make sure to keep your chin off your chest with each contraction. Exhale as you contract upward; inhale as you return to the starting position."; //set the discription of workout
        
        
        
        #pragma mark add ABS's workouts to the array
        
        //add the workouts into the ABS array by using addObject function
        [self.ABSFemale addObject:SidePlankHold]; //This workout goes into (INDEX 0)
        [self.ABSFemale addObject:RomanTwist]; //This workout goes into (INDEX 1)
        [self.ABSFemale addObject:SitupToStanding]; //This workout goes into (INDEX 2)
        [self.ABSFemale addObject:SuspendedPlankWithKneeTuck]; //This workout goes into (INDEX 3)
        [self.ABSFemale addObject:VerticalLegCrunch]; //This workout goes into (INDEX 4)
        
    }
    return self;
}


@end
