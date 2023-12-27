/// 1.1.1: Issuing Commands
/// noob

moveForward()
moveForward()
moveForward()
collectGem()

/// premature complexity

func move(dist: Int) {
    for i in 1...dist{
        moveForward()
    }
}

move(dist:3)
collectGem()


/// final 

while !isBlocked{
    moveForward()
    collectGem()
}

///////////////////////
///////////////////////

// 1.1.2 Adding a new command
/// noob:

moveForward()
moveForward()
turnLeft()
moveForward()
moveForward()
collectGem()

/// loopy noob:

func mov(dist: Int){
    for i in 1...dist{
        moveForward()
    }
}
mov(dist: 2)
turnLeft()
mov(dist:2)
collectGem()

/// if-siblings to while family:

var gem = 0
while gem == 0 {
    moveForward()
    if isBlocked {
        turnLeft()
    }
    if isOnGem {
        collectGem()
        gem += 1
    }
}

/// separation of concerns

func keepMoving(){
    moveForward()
    if isBlocked{
        turnLeft()
    }
}

while true {
    keepMoving()
    if isOnGem{
         collectGem() 
        break
    }
}

/// a readable while

while true{
    moveForward()
    if isBlocked{
        turnLeft()
    }
    else {
        if isOnGem{
            collectGem()
            break
        }
    }
}

/// final

while !isOnGem {
    isBlocked ? turnLeft() : moveForward()
}

collectGem()

///////////////////////
///////////////////////

// 1.1.3 Toggling a switch
/// noob:

moveForward()
moveForward()
turnLeft()
moveForward()
collectGem()
moveForward()
turnLeft()
moveForward()
moveForward()
toggleSwitch()

/// loopy:

for _ in 0..<6 {  
    moveForward()
    if isBlocked {   turnLeft()   }  
    if isOnGem   {   collectGem() } 
}
toggleSwitch()


///////////////////////
///////////////////////

/// 1.1.4 Portal practice
/// noob:

var steps = 0
while steps < 3 {
    moveForward()
    steps += 1
}
turnLeft()
moveForward()
moveForward()
toggleSwitch()
moveForward()
moveForward()
turnLeft()
moveForward()
moveForward()
collectGem()

/// premature complexity:

func turnRight(){
    turnLeft()
    turnLeft()
    turnLeft()
}

var steps = 0

while true{
    moveForward()
    steps += 1
    if isBlockedRight && !isBlockedLeft {
        turnLeft()    
    }
    if steps == 5{
        toggleSwitch()
    }
    if isBlocked && isBlockedLeft {
       turnRight()
    }
    if isBlocked{
        turnLeft()
        moveForward()        
        collectGem()
        break
    }
   
}

/// Easy does it:

var steps = 0
while true {
    moveForward()
    steps += 1
    if steps == 3 || steps == 7 {
        turnLeft()
    }
    if steps == 5{
        toggleSwitch()
    }
    if isOnGem{
        collectGem()
        break
    }
}

///////////////////////
///////////////////////

/// 1.1.5 Finding & fixing bugs
/// noob:

moveForward()
moveForward()
turnLeft()
moveForward()
collectGem()
moveForward()
toggleSwitch


/// advanced noob:

var steps = 0

for i in 1...4{
    moveForward()
    steps += 1 
    if steps == 2 {
        turnLeft()
    }
    if isOnGem{
        collectGem()
    }
    if steps == 4 {
        toggleSwitch()
    }
}


/// final

for i in 1...4{
    moveForward()
    switch i {
    case 2: 
        turnLeft()
    case 3: 
        collectGem()
    case 4:
        toggleSwitch()
    default:
        break
    }
}

/// 1.1.6 Bug squash practice
/// noob:

moveForward()
turnLeft()
moveForward()
moveForward()
toggleSwitch()
moveForward()
moveForward()
moveForward()
moveForward()
collectGem()


/// a case study:

for i in 1...7{
    moveForward()
    switch i {
    case 1:
        turnLeft()
    case 3: 
        toggleSwitch()
    case 7:
        collectGem()
    default:
        break
}
}

/// 1.1.7 The shortest route
/// noob:

moveForward()
moveForward()
moveForward()
collectGem()
moveForward()
moveForward()
moveForward()
moveForward()
toggleSwitch()


 
/// enlightened:


while !isOnClosedSwitch{
    moveForward()
    if isOnGem{
        collectGem()
    }
    if isOnClosedSwitch{
        toggleSwitch()
        break
    }
}

/// Hej-level:
// making use of empty tuples for else part of ternary to 'do nothing'. 

while !isOnClosedSwitch {
    moveForward()
    isOnGem ? collectGem() : ()
}
    isOnClosedSwitch ? toggleSwitch() : ()




