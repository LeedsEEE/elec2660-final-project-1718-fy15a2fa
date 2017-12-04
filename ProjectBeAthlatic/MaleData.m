//
//  MaleData.m
//  ProjectBeAthlatic
//
//  Created by Ahmad Alotaibi on 21/11/2017.
//  Copyright © 2017 University of Leeds. All rights reserved.
//

#import "MaleData.h"

@implementation MaleData


//create custom init function in order to add workouts' details
- (instancetype)init
{
    self = [super init];
    if (self) {
        
        
        
        #pragma mark shoulders' workouts
        
        //set an array for shoulders' workouts by using [NSMutableArray array]
        self.ShouldersMale = [NSMutableArray array];
        
        // All shoulfer's workouts for male are taken from mensfitness.com
        //https://www.mensfitness.com/training/workout-routines/30-best-shoulder-exercises-all-time/slideshow
        
        //create an object for a workout in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        MaleProperties *FacePull = [[MaleProperties alloc] init];
        FacePull.NameWorkoutMale = @"Face Pull"; //set workout name
        FacePull.LevelMale = @"Intermediate"; //set the level of workout
        FacePull.TimeMale = @"2 minutes"; //set the time of workout
        FacePull.DiscriptionMale = @"Attach a rope handle to the top pulley of a cable station. Grasp an end in each hand with palms facing each other. Step back to place tension on the cable. Pull the handles to your forehead so your palms face your ears and your upper back is fully contracted."; //set the discription of workout
        
        //create an object for a workout in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        MaleProperties *StandingDumbbellFly = [[MaleProperties alloc] init];
        StandingDumbbellFly.NameWorkoutMale = @"Standing Dumbbell Fly"; //set workout name
        StandingDumbbellFly.LevelMale = @"Beginner"; //set the level of workout
        StandingDumbbellFly.TimeMale = @"4 minutes"; //set the time of workout
        StandingDumbbellFly.DiscriptionMale = @"Hold a dumbbell in each hand by your sides. Without shrugging, use your upper body to swing the weights up a few inches. Your arms and torso will form an upside down V shape. Think of it as a lateral raise with momentum but without full range of motion."; //set the discription of workout
        
        //create an object for a workout in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        MaleProperties *HighPull = [[MaleProperties alloc] init];
        HighPull.NameWorkoutMale = @"High Pull"; //set workout name
        HighPull.LevelMale = @"Advanced"; //set the level of workout
        HighPull.TimeMale = @"2 minutes"; //set the time of workout
        HighPull.DiscriptionMale = @"Grasp the bar with hands about double shoulder width and hold it in front of your thighs. Bend your knees and hips so the bar hangs just above your knees. Explosively extend your hips as if jumping and pull the bar up to shoulder level with elbows wide apart, as in an upright row."; //set the discription of workout
        
        //create an object for a workout in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        MaleProperties *Dip = [[MaleProperties alloc] init];
        Dip.NameWorkoutMale = @"Dip"; //set workout name
        Dip.LevelMale = @"Beginner    "; //set the level of workout
        Dip.TimeMale = @"4 minutes"; //set the time of workout
        Dip.DiscriptionMale = @"Rest the palms of your hands on a bench or chair, and, if available, place your heels on another elevated object in front of you so your legs are suspended. Lower your body until your upper arms are parallel to the floor."; //set the discription of workout
        
        //create an object for a workout in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        MaleProperties *TrapRaise = [[MaleProperties alloc] init];
        TrapRaise.NameWorkoutMale = @"Trap Raise"; //set workout name
        TrapRaise.LevelMale = @"Intermediate"; //set the level of workout
        TrapRaise.TimeMale = @"5 minutes"; //set the time of workout
        TrapRaise.DiscriptionMale = @"Set a bench to a low incline and lie chest-down with a dumbbell in each hand and your palms facing. Retract your shoulder blades, then raise the weights straight out so your arms are parallel to the floor."; //set the discription of workout
        
        #pragma mark add shoulders' workouts to the array
        
        //add the workouts into the shoulders array by using addObject function
        [self.ShouldersMale addObject:StandingDumbbellFly]; //This workout goes to (INDEX 0)
        [self.ShouldersMale addObject:Dip]; //This workout goes to (INDEX 1)
        [self.ShouldersMale addObject:TrapRaise]; //This workout goes to (INDEX 2)
        [self.ShouldersMale addObject:FacePull]; //This workout goes to (INDEX 3)
        [self.ShouldersMale addObject:HighPull]; //This workout goes to (INDEX 4)
        
        
        
        #pragma mark arms' workouts
        
        //set an array for arms' workouts by using [NSMutableArray array]
        self.ArmsMale = [NSMutableArray array];
        
        // All arms' workouts for male are taken from mensfitness.com
        //https://www.mensfitness.com/training/workout-routines/30-best-arms-exercises-all-time
        
        //create an object for a workout in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        MaleProperties *CloseGripPushup = [[MaleProperties alloc] init];
        CloseGripPushup.NameWorkoutMale = @"Close-Grip Pushup"; //set workout name
        CloseGripPushup.LevelMale = @"Beginner"; //set the level of workout
        CloseGripPushup.TimeMale = @"4 minutes"; //set the time of workout
        CloseGripPushup.DiscriptionMale = @"Place your hands inside shoulder width and lower your body until your chest is about an inch above the floor. To increase the difficulty, elevate your feet on a bench or box."; //set the discription of workout
        
        //create an object for a workout in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        MaleProperties *PoundstoneCurl = [[MaleProperties alloc] init];
        PoundstoneCurl.NameWorkoutMale = @"Poundstone Curl"; //set workout name
        PoundstoneCurl.LevelMale = @"Beginner"; //set the level of workout
        PoundstoneCurl.TimeMale = @"5 minutes"; //set the time of workout
        PoundstoneCurl.DiscriptionMale = @"Grasp the barbell at shoulder width. Keeping your upper arms at your sides, curl the bar."; //set the discription of workout
        
        //create an object for a workout in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        MaleProperties *ReverseCurl = [[MaleProperties alloc] init];
        ReverseCurl.NameWorkoutMale = @"Reverse Curl"; //set workout name
        ReverseCurl.LevelMale = @"Intermediate"; //set the level of workout
        ReverseCurl.TimeMale = @"3 minutes"; //set the time of workout
        ReverseCurl.DiscriptionMale = @"Grasp the bar overhand at whatever width is comfortable. Keeping your upper arms against your sides, curl the bar."; //set the discription of workout
        
        //create an object for a workout in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        MaleProperties *WideGripCurl = [[MaleProperties alloc] init];
        WideGripCurl.NameWorkoutMale = @"Wide-Grip Curl"; //set workout name
        WideGripCurl.LevelMale = @"Intermediate"; //set the level of workout
        WideGripCurl.TimeMale = @"3 minutes"; //set the time of workout
        WideGripCurl.DiscriptionMale = @"Grasp the bar with hands wider than shoulder width—if you’re using an Olympic bar, your pinkies should be on the outside knurling. Perform curls."; //set the discription of workout
        
        //create an object for a workout in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        MaleProperties *Chinup = [[MaleProperties alloc] init];
        Chinup.NameWorkoutMale = @"Chinup"; //set workout name
        Chinup.LevelMale = @"Advanced"; //set the level of workout
        Chinup.TimeMale = @"2 minutes"; //set the time of workout
        Chinup.DiscriptionMale = @"Grab the bar at (or slightly inside) shoulder width, with a supinated grip. While keeping core tight, pull yourself up until your chin is over the bar. Try not to use momentum to get your chin over the bar."; //set the discription of workout
        
        #pragma mark add arms' workouts to the array
        
        //add the workouts into the arms array by using addObject function
        [self.ArmsMale addObject:CloseGripPushup]; //This workout goes into (INDEX 0)
        [self.ArmsMale addObject:PoundstoneCurl]; //This workout goes into (INDEX 1)
        [self.ArmsMale addObject:ReverseCurl]; //This workout goes into (INDEX 2)
        [self.ArmsMale addObject:WideGripCurl]; //This workout goes into (INDEX 3)
        [self.ArmsMale addObject:Chinup]; //This workout goes into (INDEX 4)
        
        
        
        #pragma mark legs' workouts
        
        //set an array for legs' workouts by using [NSMutableArray array]
        self.LegsMale = [NSMutableArray array];
        
        // All legs' workouts for male are taken from mensfitness.com
        // https://www.mensfitness.com/training/workout-routines/30-best-legs-exercises-all-time
        
        //create an object for a workout in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        MaleProperties *BulgarianSplitSquat = [[MaleProperties alloc] init];
        BulgarianSplitSquat.NameWorkoutMale = @"Bulgarian Split Squat"; //set workout name
        BulgarianSplitSquat.LevelMale = @"Beginner"; //set the level of workout
        BulgarianSplitSquat.TimeMale = @"5 minutes"; //set the time of workout
        BulgarianSplitSquat.DiscriptionMale = @"Stand lunge-length in front of a bench. Hold a dumbbell in each hand and rest the top of your left foot on the bench behind you. Lower your body until your rear knee nearly touches the floor and your front thigh is parallel to the floor."; //set the discription of workout
        
        //create an object for a workout in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        MaleProperties *DumbbellStepup = [[MaleProperties alloc] init];
        DumbbellStepup.NameWorkoutMale = @"Dumbbell Stepup"; //set workout name
        DumbbellStepup.LevelMale = @"Beginner"; //set the level of workout
        DumbbellStepup.TimeMale = @"5 minutes"; //set the time of workout
        DumbbellStepup.DiscriptionMale = @"Stand behind a bench or another elevated surface that will put your thigh at parallel to the floor when you step your foot onto it. Hold a dumbbell in each hand and step onto the bench, but leave your trailing leg hanging off."; //set the discription of workout
        
        //create an object for a workout in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        MaleProperties *SingleLegRomanian = [[MaleProperties alloc] init];
        SingleLegRomanian.NameWorkoutMale = @"Single-Leg Romanian"; //set workout name
        SingleLegRomanian.LevelMale = @"Intermediate"; //set the level of workout
        SingleLegRomanian.TimeMale = @"4 minutes"; //set the time of workout
        SingleLegRomanian.DiscriptionMale = @"Hold a dumbbell in one hand and stand on the opposite leg. Bend your hips back and lower your torso until you feel your lower back is about to lose its arch. Squeeze your glutes and extend your hips to come up."; //set the discription of workout
        
        //create an object for a workout in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        MaleProperties *DumbbellSquat = [[MaleProperties alloc] init];
        DumbbellSquat.NameWorkoutMale = @"Dumbbell Squat"; //set workout name
        DumbbellSquat.LevelMale = @"Intermediate"; //set the level of workout
        DumbbellSquat.TimeMale = @"3 minutes"; //set the time of workout
        DumbbellSquat.DiscriptionMale = @"Hold the weights at shoulder level and stand with feet shoulder-width apart and toes turned slightly out. Squat down as low as you can without losing the arch in your lower back."; //set the discription of workout
        
        //create an object for a workout in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        MaleProperties *BarbellCalfRaise = [[MaleProperties alloc] init];
        BarbellCalfRaise.NameWorkoutMale = @"Barbell Calf Raise"; //set workout name
        BarbellCalfRaise.LevelMale = @"Advanced"; //set the level of workout
        BarbellCalfRaise.TimeMale = @"1 minutes"; //set the time of workout
        BarbellCalfRaise.DiscriptionMale = @"Place a block, step, or weight plate on the floor. Grasp a barbell and hold it on the backs of your shoulders, as in a squat. Place your toes on the block so your calves are stretched, but make sure you can maintain balance. Raise your heels to come up onto the balls of your feet."; //set the discription of workout
        
        
        #pragma mark add legs' workouts to the array
        
        //add the workouts into the legs array by using addObject function
        [self.LegsMale addObject:BulgarianSplitSquat]; //This workout goes into (INDEX 0)
        [self.LegsMale addObject:DumbbellStepup]; //This workout goes into (INDEX 1)
        [self.LegsMale addObject:SingleLegRomanian]; //This workout goes into (INDEX 2)
        [self.LegsMale addObject:DumbbellSquat]; //This workout goes into (INDEX 3)
        [self.LegsMale addObject:BarbellCalfRaise]; //This workout goes into (INDEX 4)
        
        
        
        #pragma mark chest's workouts
        
        //set an array for chest's workouts by using [NSMutableArray array]
        self.ChestMale = [NSMutableArray array];
        
        // All chest's workouts for male are taken from mensfitness.com
        // https://www.mensfitness.com/training/build-muscle/30-minute-chest-workout
        
        //create an object for a workout in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        MaleProperties *DumbbellOverHead = [[MaleProperties alloc] init];
        DumbbellOverHead.NameWorkoutMale = @"Dumbbell Overhead Press"; //set workout name
        DumbbellOverHead.LevelMale = @"Intermediate"; //set the level of workout
        DumbbellOverHead.TimeMale = @"3 minutes"; //set the time of workout
        DumbbellOverHead.DiscriptionMale = @"Hold a dumbbell in each hand at shoulder level with palms facing in front of you. After that, Brace your abs and press the weights overhead."; //set the discription of workout
        
        //create an object for a workout in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        MaleProperties *DumbbellRow = [[MaleProperties alloc] init];
        DumbbellRow.NameWorkoutMale = @"Dumbbell Row"; //set workout name
        DumbbellRow.LevelMale = @"Beginner"; //set the level of workout
        DumbbellRow.TimeMale = @"5 minutes"; //set the time of workout
        DumbbellRow.DiscriptionMale = @"Hold a dumbbell or kettlebell in one hand and stand with feet staggered. Bend your hips back to lower your torso until it’s parallel to the floor. After that, Keeping your shoulders level to the floor, row the weight to your hip, squeezing your shoulder blades together at the top. Complete your reps and repeat on the other side immediately."; //set the discription of workout
        
        //create an object for a workout in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        MaleProperties *DumbbellCurl = [[MaleProperties alloc] init];
        DumbbellCurl.NameWorkoutMale = @"Dumbbell Curl"; //set workout name
        DumbbellCurl.LevelMale = @"Beginner"; //set the level of workout
        DumbbellCurl.TimeMale = @"5 minutes"; //set the time of workout
        DumbbellCurl.DiscriptionMale = @"Stand holding a dumbbell in each hand with palms facing your sides. After that, Without letting your upper arms drift forward, curl the weights, rotating your wrists outward so that your palms face you in the top position. Hold for a moment and squeeze your biceps."; //set the discription of workout
        
        //create an object for a workout in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        MaleProperties *StandingCalfRaise = [[MaleProperties alloc] init];
        StandingCalfRaise.NameWorkoutMale = @"Standing Calf Raise"; //set workout name
        StandingCalfRaise.LevelMale = @"Intermediate"; //set the level of workout
        StandingCalfRaise.TimeMale = @"3 minutes"; //set the time of workout
        StandingCalfRaise.DiscriptionMale = @"Use a standing calf raise machine, or hold onto a sturdy object and stand on a block as shown. Lower your heels toward the floor until you feel a stretch in your calves. Drive the balls of your feet into the foot plate and contract your calves, raising your heels as high as possible. Control the descent on each rep."; //set the discription of workout
        
        //create an object for a workout in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        MaleProperties *InclineDumbbellPress = [[MaleProperties alloc] init];
        InclineDumbbellPress.NameWorkoutMale = @"Incline Dumbbell Press"; //set workout name
        InclineDumbbellPress.LevelMale = @"Advanced"; //set the level of workout
        InclineDumbbellPress.TimeMale = @"3 minutes"; //set the time of workout
        InclineDumbbellPress.DiscriptionMale = @"Lie back on the incline bench holding a dumbbell in each hand at shoulder level. Press the weights over your chest."; //set the discription of workout
        
        
        #pragma mark add chest's workouts to the array

        //add the workouts into the chest array by using addObject function
        [self.ChestMale addObject:DumbbellRow]; //This workout goes into (INDEX 0)
        [self.ChestMale addObject:DumbbellCurl]; //This workout goes into (INDEX 1)
        [self.ChestMale addObject:DumbbellOverHead]; //This workout goes into (INDEX 2)
        [self.ChestMale addObject:StandingCalfRaise]; //This workout goes into (INDEX 3)
        [self.ChestMale addObject:InclineDumbbellPress]; //This workout goes into (INDEX 4)
        
        
        
        #pragma mark ABS's workouts
        
        //set an array for ABS's workouts by using [NSMutableArray array]
        self.ABSMale = [NSMutableArray array];
        
        // All ABS's workouts for male are taken from mensfitness.com
        // https://www.mensfitness.com/training/workout-routines/30-best-abs-exercises-all-time
        
        //create an object for a workout in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        MaleProperties *FlutterKick = [[MaleProperties alloc] init];
        FlutterKick.NameWorkoutMale = @"Flutter Kick"; //set workout name
        FlutterKick.LevelMale = @"Beginner"; //set the level of workout
        FlutterKick.TimeMale = @"5 minutes"; //set the time of workout
        FlutterKick.DiscriptionMale = @"fie on your back with legs straight and arms extend out at your sides. Lift your heels about 6 inches off the floor and rapidly kick your feet up and down in a quick, scissor-like motion."; //set the discription of workout
        
        //create an object for a workout in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        MaleProperties *Plank = [[MaleProperties alloc] init];
        Plank.NameWorkoutMale = @"Plank"; //set workout name
        Plank.LevelMale = @"Beginner"; //set the level of workout
        Plank.TimeMale = @"5 minutes"; //set the time of workout
        Plank.DiscriptionMale = @"Get into pushup position and bend your elbows to lower your forearms to the floor. Hold the position with abs braced."; //set the discription of workout
        
        //create an object for a workout in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        MaleProperties *SidePlank = [[MaleProperties alloc] init];
        SidePlank.NameWorkoutMale = @"Side Plank"; //set workout name
        SidePlank.LevelMale = @"Intermediate"; //set the level of workout
        SidePlank.TimeMale = @"3 minutes"; //set the time of workout
        SidePlank.DiscriptionMale = @"Lie on your left side resting your left forearm on the floor for support. Raise your hips up so your body forms a straight line and brace your abs—your weight should be on your left forearm and the edge of your left foot. Hold the position with abs braced."; //set the discription of workout
        
        //create an object for a workout in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        MaleProperties *WeightedSitup = [[MaleProperties alloc] init];
        WeightedSitup.NameWorkoutMale = @"Weighted Situp"; //set workout name
        WeightedSitup.LevelMale = @"Intermediate"; //set the level of workout
        WeightedSitup.TimeMale = @"3 minutes"; //set the time of workout
        WeightedSitup.DiscriptionMale = @"Lie on the floor holding a weight plate at your chest. Bend your knees 90 degrees with feet on the floor. Tuck your chin to your chest and sit up all the way."; //set the discription of workout
        
        //create an object for a workout in order to some properties to it such as level, time , discription and photo
        //in addition, allocate memory for the workout
        MaleProperties *PullupToKneeRaise = [[MaleProperties alloc] init];
        PullupToKneeRaise.NameWorkoutMale = @"Pullup to Knee Raise"; //set workout name
        PullupToKneeRaise.LevelMale = @"Advanced"; //set the level of workout
        PullupToKneeRaise.TimeMale = @"2 minutes"; //set the time of workout
        PullupToKneeRaise.DiscriptionMale = @"Hang from a pullup bar with hands outside shoulder width and palms facing away from you. Pull yourself up until your chin is over the bar and then raise your knees to your chest in the top position."; //set the discription of workout
        
        
        #pragma mark add ABS's workouts to the array
        
        //add the workouts into the ABS array by using addObject function
        [self.ABSMale addObject:FlutterKick]; //This workout goes into (INDEX 0)
        [self.ABSMale addObject:Plank]; //This workout goes into (INDEX 1)
        [self.ABSMale addObject:SidePlank]; //This workout goes into (INDEX 2)
        [self.ABSMale addObject:WeightedSitup]; //This workout goes into (INDEX 3)
        [self.ABSMale addObject:PullupToKneeRaise]; //This workout goes into (INDEX 4)
        
    }
    return self;
}


@end
