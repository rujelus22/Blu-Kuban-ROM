.class public Lcom/samsung/InputEventApp/InputEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InputEventReceiver.java"


# static fields
.field private static Call_Flag:I


# instance fields
.field private mDisplay:Landroid/view/Display;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 80
    const/4 v0, 0x0

    sput v0, Lcom/samsung/InputEventApp/InputEventReceiver;->Call_Flag:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 88
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 62
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 96
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.INPUT_KEY_EVENT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b4

    .line 100
    const-string v5, "InputEventReceiver"

    const-string v6, "onReceive Key"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const-string v5, "KEYCODE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 106
    .local v31, host:Ljava/lang/String;
    const-string v5, "KEYHOLD"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 112
    .local v43, state:Ljava/lang/String;
    const-string v5, "InputEventReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "keycode is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v5, "InputEventReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "keyhold is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v43

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/16 v5, 0x10

    move-object/from16 v0, v31

    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    .line 120
    .local v8, eventCode:I
    const/16 v5, 0x10

    move-object/from16 v0, v43

    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v28

    .line 138
    .local v28, eventState:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 144
    .local v3, now:J
    const/4 v5, 0x6

    if-ne v8, v5, :cond_73

    const/4 v5, 0x1

    move/from16 v0, v28

    if-eq v0, v5, :cond_7c

    :cond_73
    const/16 v5, 0x1a

    if-ne v8, v5, :cond_2f9

    const/4 v5, 0x1

    move/from16 v0, v28

    if-ne v0, v5, :cond_2f9

    .line 146
    :cond_7c
    const-string v5, "SendKeyEvent"

    const-string v6, "power off Action"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-string v5, "shutdownlogger"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IShutdownLogger$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IShutdownLogger;

    move-result-object v41

    .line 160
    .local v41, service:Landroid/app/IShutdownLogger;
    new-instance v42, Landroid/app/ShutdownLoggerManager;

    move-object/from16 v0, v42

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Landroid/app/ShutdownLoggerManager;-><init>(Landroid/app/IShutdownLogger;)V

    .line 161
    .local v42, slm:Landroid/app/ShutdownLoggerManager;
    const-string v5, "InputEventReceiver.onReceive, sending Intent-ACTION_REQUEST_SHUTDOWN"

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Landroid/app/ShutdownLoggerManager;->appendLog(Ljava/lang/String;)V

    .line 163
    new-instance v32, Landroid/content/Intent;

    const-string v5, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    move-object/from16 v0, v32

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    .local v32, i:Landroid/content/Intent;
    const/high16 v5, 0x1000

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 167
    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 447
    .end local v3           #now:J
    .end local v8           #eventCode:I
    .end local v28           #eventState:I
    .end local v31           #host:Ljava/lang/String;
    .end local v32           #i:Landroid/content/Intent;
    .end local v41           #service:Landroid/app/IShutdownLogger;
    .end local v42           #slm:Landroid/app/ShutdownLoggerManager;
    .end local v43           #state:Ljava/lang/String;
    :cond_b4
    :goto_b4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.INPUT_TOUCH_EVENT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f8

    .line 451
    const-string v5, "InputEventReceiver"

    const-string v6, "onReceive Touch"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const-string v5, "TOUCHSTATUS"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 457
    .local v52, touchstatus:Ljava/lang/String;
    const-string v5, "X1"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 459
    .local v53, x1_value:Ljava/lang/String;
    const-string v5, "Y1"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .line 461
    .local v56, y1_value:Ljava/lang/String;
    const-string v5, "X2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v55

    .line 463
    .local v55, x2_value:Ljava/lang/String;
    const-string v5, "Y2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    .line 465
    .local v58, y2_value:Ljava/lang/String;
    const-string v5, "InputEventReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "touchstatus :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v52

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x1="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "y1="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v56

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x2="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v55

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "y2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v58

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const-string v5, "window"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/samsung/InputEventApp/InputEventReceiver;->mDisplay:Landroid/view/Display;

    .line 481
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/InputEventApp/InputEventReceiver;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_194

    .line 485
    move-object/from16 v44, v53

    .line 487
    .local v44, temp_X1:Ljava/lang/String;
    move-object/from16 v45, v55

    .line 489
    .local v45, temp_X2:Ljava/lang/String;
    move-object/from16 v46, v56

    .line 491
    .local v46, temp_Y1:Ljava/lang/String;
    move-object/from16 v47, v58

    .line 493
    .local v47, temp_Y2:Ljava/lang/String;
    invoke-static/range {v46 .. v46}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v48

    .line 495
    .local v48, temp_x1:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/InputEventApp/InputEventReceiver;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-static/range {v44 .. v44}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    sub-float v50, v5, v6

    .line 499
    .local v50, temp_y1:F
    invoke-static/range {v48 .. v48}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v53

    .line 501
    invoke-static/range {v50 .. v50}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v56

    .line 507
    :try_start_179
    invoke-static/range {v47 .. v47}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v49

    .line 509
    .local v49, temp_x2:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/InputEventApp/InputEventReceiver;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-static/range {v45 .. v45}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    sub-float v51, v5, v6

    .line 513
    .local v51, temp_y2:F
    invoke-static/range {v49 .. v49}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v55

    .line 515
    invoke-static/range {v51 .. v51}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    :try_end_193
    .catch Ljava/lang/NumberFormatException; {:try_start_179 .. :try_end_193} :catch_481

    move-result-object v58

    .line 529
    .end local v44           #temp_X1:Ljava/lang/String;
    .end local v45           #temp_X2:Ljava/lang/String;
    .end local v46           #temp_Y1:Ljava/lang/String;
    .end local v47           #temp_Y2:Ljava/lang/String;
    .end local v48           #temp_x1:F
    .end local v49           #temp_x2:F
    .end local v50           #temp_y1:F
    .end local v51           #temp_y2:F
    :cond_194
    :goto_194
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/InputEventApp/InputEventReceiver;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1dd

    .line 533
    move-object/from16 v44, v53

    .line 535
    .restart local v44       #temp_X1:Ljava/lang/String;
    move-object/from16 v45, v55

    .line 537
    .restart local v45       #temp_X2:Ljava/lang/String;
    move-object/from16 v46, v56

    .line 539
    .restart local v46       #temp_Y1:Ljava/lang/String;
    move-object/from16 v47, v58

    .line 543
    .restart local v47       #temp_Y2:Ljava/lang/String;
    invoke-static/range {v46 .. v46}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v48

    .line 545
    .restart local v48       #temp_x1:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/InputEventApp/InputEventReceiver;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static/range {v44 .. v44}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    sub-float v50, v5, v6

    .line 549
    .restart local v50       #temp_y1:F
    invoke-static/range {v48 .. v48}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v53

    .line 551
    invoke-static/range {v50 .. v50}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v56

    .line 557
    :try_start_1c2
    invoke-static/range {v47 .. v47}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v49

    .line 559
    .restart local v49       #temp_x2:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/InputEventApp/InputEventReceiver;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static/range {v45 .. v45}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    sub-float v51, v5, v6

    .line 561
    .restart local v51       #temp_y2:F
    invoke-static/range {v49 .. v49}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v55

    .line 563
    invoke-static/range {v51 .. v51}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    :try_end_1dc
    .catch Ljava/lang/NumberFormatException; {:try_start_1c2 .. :try_end_1dc} :catch_488

    move-result-object v58

    .line 575
    .end local v44           #temp_X1:Ljava/lang/String;
    .end local v45           #temp_X2:Ljava/lang/String;
    .end local v46           #temp_Y1:Ljava/lang/String;
    .end local v47           #temp_Y2:Ljava/lang/String;
    .end local v48           #temp_x1:F
    .end local v49           #temp_x2:F
    .end local v50           #temp_y1:F
    .end local v51           #temp_y2:F
    :cond_1dd
    :goto_1dd
    const/16 v5, 0x10

    move-object/from16 v0, v52

    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v26

    .line 583
    .local v26, action_type:I
    invoke-static/range {v53 .. v53}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v15

    .line 585
    .local v15, x1:F
    invoke-static/range {v56 .. v56}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v16

    .line 587
    .local v16, y1:F
    invoke-static/range {v55 .. v55}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v54

    .line 589
    .local v54, x2:F
    invoke-static/range {v58 .. v58}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v57

    .line 593
    .local v57, y2:F
    const-string v5, "InputEventReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "touchstatus :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v52

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x1="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "y1="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v56

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x2="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v55

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "y2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v58

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const-string v5, "InputEventReceiver"

    const-string v6, "SendKeyEvent"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 609
    .local v10, eventTime:J
    const-string v5, "InputEventReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "action_type : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const-string v5, "InputEventReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "X1 : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    const-string v5, "InputEventReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Y1 : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const-string v5, "InputEventReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "X2 : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v54

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    const-string v5, "InputEventReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Y2 : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v57

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const/4 v14, 0x0

    const/16 v17, 0x0

    move-wide v12, v10

    :try_start_2ce
    invoke-static/range {v10 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 627
    .local v2, down:Landroid/view/MotionEvent;
    if-nez v26, :cond_48f

    .line 631
    const/4 v14, 0x1

    const/16 v17, 0x0

    move-wide v12, v10

    invoke-static/range {v10 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 633
    .local v9, up:Landroid/view/MotionEvent;
    const-string v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v2, v6}, Landroid/view/IWindowManager;->injectPointerEvent(Landroid/view/MotionEvent;Z)Z

    .line 635
    const-string v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v9, v6}, Landroid/view/IWindowManager;->injectPointerEvent(Landroid/view/MotionEvent;Z)Z
    :try_end_2f8
    .catch Landroid/os/RemoteException; {:try_start_2ce .. :try_end_2f8} :catch_4bd

    .line 744
    .end local v2           #down:Landroid/view/MotionEvent;
    .end local v9           #up:Landroid/view/MotionEvent;
    .end local v10           #eventTime:J
    .end local v15           #x1:F
    .end local v16           #y1:F
    .end local v26           #action_type:I
    .end local v52           #touchstatus:Ljava/lang/String;
    .end local v53           #x1_value:Ljava/lang/String;
    .end local v54           #x2:F
    .end local v55           #x2_value:Ljava/lang/String;
    .end local v56           #y1_value:Ljava/lang/String;
    .end local v57           #y2:F
    .end local v58           #y2_value:Ljava/lang/String;
    :cond_2f8
    :goto_2f8
    return-void

    .line 171
    .restart local v3       #now:J
    .restart local v8       #eventCode:I
    .restart local v28       #eventState:I
    .restart local v31       #host:Ljava/lang/String;
    .restart local v43       #state:Ljava/lang/String;
    :cond_2f9
    const/16 v5, 0x1b

    if-ne v8, v5, :cond_322

    const/4 v5, 0x1

    move/from16 v0, v28

    if-ne v0, v5, :cond_322

    .line 175
    new-instance v25, Landroid/content/Intent;

    const-string v5, "android.media.action.IMAGE_CAPTURE"

    move-object/from16 v0, v25

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    .local v25, Cam_Start:Landroid/content/Intent;
    const/high16 v5, 0x1000

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 179
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 183
    const-string v5, "InputEventReceiver"

    const-string v6, "Camera Key"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b4

    .line 191
    .end local v25           #Cam_Start:Landroid/content/Intent;
    :cond_322
    const/4 v5, 0x5

    if-ne v8, v5, :cond_399

    if-nez v28, :cond_399

    .line 199
    :try_start_327
    const-string v5, "SendKeyEvent_ex"

    move-object/from16 v0, v31

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-wide v5, v3

    invoke-direct/range {v2 .. v9}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 203
    .local v2, down:Landroid/view/KeyEvent;
    new-instance v9, Landroid/view/KeyEvent;

    const/4 v14, 0x1

    const/16 v16, 0x0

    move-wide v10, v3

    move-wide v12, v3

    move v15, v8

    invoke-direct/range {v9 .. v16}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 205
    .local v9, up:Landroid/view/KeyEvent;
    const-string v5, "InputEventReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "keycode DOWN is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const-string v5, "InputEventReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "keycode UP is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const-string v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v2, v6}, Landroid/view/IWindowManager;->injectKeyEvent(Landroid/view/KeyEvent;Z)Z

    .line 215
    const-string v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v9, v6}, Landroid/view/IWindowManager;->injectKeyEvent(Landroid/view/KeyEvent;Z)Z
    :try_end_38d
    .catch Landroid/os/RemoteException; {:try_start_327 .. :try_end_38d} :catch_38f

    goto/16 :goto_b4

    .line 221
    .end local v2           #down:Landroid/view/KeyEvent;
    .end local v9           #up:Landroid/view/KeyEvent;
    :catch_38f
    move-exception v27

    .line 223
    .local v27, e:Landroid/os/RemoteException;
    const-string v5, "Input"

    const-string v6, "DeadOjbectException"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b4

    .line 233
    .end local v27           #e:Landroid/os/RemoteException;
    :cond_399
    const/4 v5, 0x6

    if-ne v8, v5, :cond_3d6

    if-nez v28, :cond_3d6

    .line 235
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v40

    .line 237
    .local v40, phoneServ:Lcom/android/internal/telephony/ITelephony;
    const/16 v30, 0x0

    .line 239
    .local v30, handled:Z
    const-string v5, "Input"

    const-string v6, "SendKeyEvent_ex<endcall>"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    if-eqz v40, :cond_b4

    .line 245
    :try_start_3b3
    invoke-interface/range {v40 .. v40}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_3b6
    .catch Landroid/os/RemoteException; {:try_start_3b3 .. :try_end_3b6} :catch_3b9

    move-result v30

    goto/16 :goto_b4

    .line 247
    :catch_3b9
    move-exception v29

    .line 249
    .local v29, ex:Landroid/os/RemoteException;
    const-string v5, "Input"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ITelephony threw RemoteException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b4

    .line 301
    .end local v29           #ex:Landroid/os/RemoteException;
    .end local v30           #handled:Z
    .end local v40           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :cond_3d6
    :try_start_3d6
    const-string v5, "eventState"

    move-object/from16 v0, v43

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    if-nez v28, :cond_426

    .line 305
    const-string v5, "eventState-1"

    move-object/from16 v0, v43

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object v10, v2

    move-wide v11, v3

    move-wide v13, v3

    move/from16 v16, v8

    invoke-direct/range {v10 .. v17}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 309
    .restart local v2       #down:Landroid/view/KeyEvent;
    new-instance v9, Landroid/view/KeyEvent;

    const/4 v14, 0x1

    const/16 v16, 0x0

    move-wide v10, v3

    move-wide v12, v3

    move v15, v8

    invoke-direct/range {v9 .. v16}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 311
    .restart local v9       #up:Landroid/view/KeyEvent;
    const-string v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v2, v6}, Landroid/view/IWindowManager;->injectKeyEvent(Landroid/view/KeyEvent;Z)Z

    .line 317
    const-string v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v9, v6}, Landroid/view/IWindowManager;->injectKeyEvent(Landroid/view/KeyEvent;Z)Z
    :try_end_41a
    .catch Landroid/os/RemoteException; {:try_start_3d6 .. :try_end_41a} :catch_41c

    goto/16 :goto_b4

    .line 355
    .end local v2           #down:Landroid/view/KeyEvent;
    .end local v9           #up:Landroid/view/KeyEvent;
    :catch_41c
    move-exception v27

    .line 357
    .restart local v27       #e:Landroid/os/RemoteException;
    const-string v5, "Input"

    const-string v6, "DeadOjbectException"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b4

    .line 325
    .end local v27           #e:Landroid/os/RemoteException;
    :cond_426
    :try_start_426
    const-string v5, "eventState-2"

    move-object/from16 v0, v43

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object v10, v2

    move-wide v11, v3

    move-wide v13, v3

    move/from16 v16, v8

    invoke-direct/range {v10 .. v17}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 329
    .restart local v2       #down:Landroid/view/KeyEvent;
    new-instance v9, Landroid/view/KeyEvent;

    const/4 v14, 0x1

    const/16 v16, 0x0

    move-wide v10, v3

    move-wide v12, v3

    move v15, v8

    invoke-direct/range {v9 .. v16}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 331
    .restart local v9       #up:Landroid/view/KeyEvent;
    const-wide/16 v5, 0xa

    add-long/2addr v5, v3

    const/4 v7, 0x1

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v12

    or-int/lit16 v12, v12, 0x80

    invoke-static {v2, v5, v6, v7, v12}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    move-result-object v33

    .line 333
    .local v33, longPress:Landroid/view/KeyEvent;
    const-string v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v2, v6}, Landroid/view/IWindowManager;->injectKeyEvent(Landroid/view/KeyEvent;Z)Z

    .line 339
    const-string v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v9, v6}, Landroid/view/IWindowManager;->injectKeyEvent(Landroid/view/KeyEvent;Z)Z

    .line 345
    const-string v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, v33

    invoke-interface {v5, v0, v6}, Landroid/view/IWindowManager;->injectKeyEvent(Landroid/view/KeyEvent;Z)Z
    :try_end_47f
    .catch Landroid/os/RemoteException; {:try_start_426 .. :try_end_47f} :catch_41c

    goto/16 :goto_b4

    .line 517
    .end local v2           #down:Landroid/view/KeyEvent;
    .end local v3           #now:J
    .end local v8           #eventCode:I
    .end local v9           #up:Landroid/view/KeyEvent;
    .end local v28           #eventState:I
    .end local v31           #host:Ljava/lang/String;
    .end local v33           #longPress:Landroid/view/KeyEvent;
    .end local v43           #state:Ljava/lang/String;
    .restart local v44       #temp_X1:Ljava/lang/String;
    .restart local v45       #temp_X2:Ljava/lang/String;
    .restart local v46       #temp_Y1:Ljava/lang/String;
    .restart local v47       #temp_Y2:Ljava/lang/String;
    .restart local v48       #temp_x1:F
    .restart local v50       #temp_y1:F
    .restart local v52       #touchstatus:Ljava/lang/String;
    .restart local v53       #x1_value:Ljava/lang/String;
    .restart local v55       #x2_value:Ljava/lang/String;
    .restart local v56       #y1_value:Ljava/lang/String;
    .restart local v58       #y2_value:Ljava/lang/String;
    :catch_481
    move-exception v39

    .line 519
    .local v39, nfe:Ljava/lang/NumberFormatException;
    const-string v55, "0000"

    .line 521
    const-string v58, "0000"

    goto/16 :goto_194

    .line 565
    .end local v39           #nfe:Ljava/lang/NumberFormatException;
    :catch_488
    move-exception v39

    .line 567
    .restart local v39       #nfe:Ljava/lang/NumberFormatException;
    const-string v55, "0000"

    .line 569
    const-string v58, "0000"

    goto/16 :goto_1dd

    .line 639
    .end local v39           #nfe:Ljava/lang/NumberFormatException;
    .end local v44           #temp_X1:Ljava/lang/String;
    .end local v45           #temp_X2:Ljava/lang/String;
    .end local v46           #temp_Y1:Ljava/lang/String;
    .end local v47           #temp_Y2:Ljava/lang/String;
    .end local v48           #temp_x1:F
    .end local v50           #temp_y1:F
    .local v2, down:Landroid/view/MotionEvent;
    .restart local v10       #eventTime:J
    .restart local v15       #x1:F
    .restart local v16       #y1:F
    .restart local v26       #action_type:I
    .restart local v54       #x2:F
    .restart local v57       #y2:F
    :cond_48f
    const/4 v5, 0x1

    move/from16 v0, v26

    if-ne v0, v5, :cond_4c7

    .line 643
    const-wide/16 v5, 0x7d0

    add-long v12, v10, v5

    const/4 v14, 0x1

    const/16 v17, 0x0

    :try_start_49b
    invoke-static/range {v10 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 645
    .local v9, up:Landroid/view/MotionEvent;
    const-string v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v2, v6}, Landroid/view/IWindowManager;->injectPointerEvent(Landroid/view/MotionEvent;Z)Z

    .line 647
    const-string v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v9, v6}, Landroid/view/IWindowManager;->injectPointerEvent(Landroid/view/MotionEvent;Z)Z
    :try_end_4bb
    .catch Landroid/os/RemoteException; {:try_start_49b .. :try_end_4bb} :catch_4bd

    goto/16 :goto_2f8

    .line 732
    .end local v2           #down:Landroid/view/MotionEvent;
    .end local v9           #up:Landroid/view/MotionEvent;
    :catch_4bd
    move-exception v27

    .line 734
    .restart local v27       #e:Landroid/os/RemoteException;
    const-string v5, "Input"

    const-string v6, "DeadOjbectException"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2f8

    .line 651
    .end local v27           #e:Landroid/os/RemoteException;
    .restart local v2       #down:Landroid/view/MotionEvent;
    :cond_4c7
    const/4 v5, 0x2

    move/from16 v0, v26

    if-ne v0, v5, :cond_2f8

    .line 654
    const/4 v14, 0x0

    const/16 v17, 0x0

    move-wide v12, v10

    :try_start_4d0
    invoke-static/range {v10 .. v17}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 658
    const-wide/16 v5, 0x2

    add-long v17, v10, v5

    const-wide/16 v5, 0x2

    add-long v19, v10, v5

    const/16 v21, 0x2

    sub-float v5, v54, v15

    const/high16 v6, 0x40a0

    div-float/2addr v5, v6

    add-float/2addr v5, v15

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v22

    sub-float v5, v57, v16

    const/high16 v6, 0x40a0

    div-float/2addr v5, v6

    add-float v5, v5, v16

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v23

    const/16 v24, 0x0

    invoke-static/range {v17 .. v24}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v34

    .line 662
    .local v34, move1:Landroid/view/MotionEvent;
    const-string v5, "InputEventReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Move1 X: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-float v7, v54, v15

    const/high16 v12, 0x40a0

    div-float/2addr v7, v12

    add-float/2addr v7, v15

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Move1 Y: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-float v7, v57, v16

    const/high16 v12, 0x40a0

    div-float/2addr v7, v12

    add-float v7, v7, v16

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    const-wide/16 v5, 0x3

    add-long v17, v10, v5

    const-wide/16 v5, 0x4

    add-long v19, v10, v5

    const/16 v21, 0x2

    const/high16 v5, 0x4000

    sub-float v6, v54, v15

    mul-float/2addr v5, v6

    const/high16 v6, 0x40a0

    div-float/2addr v5, v6

    add-float/2addr v5, v15

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v22

    const/high16 v5, 0x4000

    sub-float v6, v57, v16

    mul-float/2addr v5, v6

    const/high16 v6, 0x40a0

    div-float/2addr v5, v6

    add-float v5, v5, v16

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v23

    const/16 v24, 0x0

    invoke-static/range {v17 .. v24}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v35

    .line 670
    .local v35, move2:Landroid/view/MotionEvent;
    const-string v5, "InputEventReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Move2 X: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/high16 v7, 0x4000

    sub-float v12, v54, v15

    mul-float/2addr v7, v12

    const/high16 v12, 0x40a0

    div-float/2addr v7, v12

    add-float/2addr v7, v15

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Move1 Y: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/high16 v7, 0x4000

    sub-float v12, v57, v16

    mul-float/2addr v7, v12

    const/high16 v12, 0x40a0

    div-float/2addr v7, v12

    add-float v7, v7, v16

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    const-wide/16 v5, 0x5

    add-long v17, v10, v5

    const-wide/16 v5, 0x6

    add-long v19, v10, v5

    const/16 v21, 0x2

    const/high16 v5, 0x4040

    sub-float v6, v54, v15

    mul-float/2addr v5, v6

    const/high16 v6, 0x40a0

    div-float/2addr v5, v6

    add-float/2addr v5, v15

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v22

    const/high16 v5, 0x4040

    sub-float v6, v57, v16

    mul-float/2addr v5, v6

    const/high16 v6, 0x40a0

    div-float/2addr v5, v6

    add-float v5, v5, v16

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v23

    const/16 v24, 0x0

    invoke-static/range {v17 .. v24}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v36

    .line 678
    .local v36, move3:Landroid/view/MotionEvent;
    const-string v5, "InputEventReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Move3 X: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/high16 v7, 0x4040

    sub-float v12, v54, v15

    mul-float/2addr v7, v12

    const/high16 v12, 0x40a0

    div-float/2addr v7, v12

    add-float/2addr v7, v15

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Move1 Y: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/high16 v7, 0x4040

    sub-float v12, v57, v16

    mul-float/2addr v7, v12

    const/high16 v12, 0x40a0

    div-float/2addr v7, v12

    add-float v7, v7, v16

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const-wide/16 v5, 0x7

    add-long v17, v10, v5

    const-wide/16 v5, 0x8

    add-long v19, v10, v5

    const/16 v21, 0x2

    const/high16 v5, 0x4080

    sub-float v6, v54, v15

    mul-float/2addr v5, v6

    const/high16 v6, 0x40a0

    div-float/2addr v5, v6

    add-float/2addr v5, v15

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v22

    const/high16 v5, 0x4080

    sub-float v6, v57, v16

    mul-float/2addr v5, v6

    const/high16 v6, 0x40a0

    div-float/2addr v5, v6

    add-float v5, v5, v16

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v23

    const/16 v24, 0x0

    invoke-static/range {v17 .. v24}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v37

    .line 688
    .local v37, move4:Landroid/view/MotionEvent;
    const-string v5, "InputEventReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Move4 X: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/high16 v7, 0x4080

    sub-float v12, v54, v15

    mul-float/2addr v7, v12

    const/high16 v12, 0x40a0

    div-float/2addr v7, v12

    add-float/2addr v7, v15

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Move1 Y: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/high16 v7, 0x4080

    sub-float v12, v57, v16

    mul-float/2addr v7, v12

    const/high16 v12, 0x40a0

    div-float/2addr v7, v12

    add-float v7, v7, v16

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    const-wide/16 v5, 0x9

    add-long v17, v10, v5

    const-wide/16 v5, 0xa

    add-long v19, v10, v5

    const/16 v21, 0x2

    const/16 v24, 0x0

    move/from16 v22, v54

    move/from16 v23, v57

    invoke-static/range {v17 .. v24}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v38

    .line 712
    .local v38, move5:Landroid/view/MotionEvent;
    const-wide/16 v5, 0xb

    add-long v19, v10, v5

    const/16 v21, 0x1

    const/16 v24, 0x0

    move-wide/from16 v17, v10

    move/from16 v22, v54

    move/from16 v23, v57

    invoke-static/range {v17 .. v24}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 714
    .restart local v9       #up:Landroid/view/MotionEvent;
    const-string v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v2, v6}, Landroid/view/IWindowManager;->injectPointerEvent(Landroid/view/MotionEvent;Z)Z

    .line 716
    const-string v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, v34

    invoke-interface {v5, v0, v6}, Landroid/view/IWindowManager;->injectPointerEvent(Landroid/view/MotionEvent;Z)Z

    .line 718
    const-string v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, v35

    invoke-interface {v5, v0, v6}, Landroid/view/IWindowManager;->injectPointerEvent(Landroid/view/MotionEvent;Z)Z

    .line 720
    const-string v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, v36

    invoke-interface {v5, v0, v6}, Landroid/view/IWindowManager;->injectPointerEvent(Landroid/view/MotionEvent;Z)Z

    .line 722
    const-string v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, v37

    invoke-interface {v5, v0, v6}, Landroid/view/IWindowManager;->injectPointerEvent(Landroid/view/MotionEvent;Z)Z

    .line 724
    const-string v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, v38

    invoke-interface {v5, v0, v6}, Landroid/view/IWindowManager;->injectPointerEvent(Landroid/view/MotionEvent;Z)Z

    .line 728
    const-string v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v9, v6}, Landroid/view/IWindowManager;->injectPointerEvent(Landroid/view/MotionEvent;Z)Z
    :try_end_6fa
    .catch Landroid/os/RemoteException; {:try_start_4d0 .. :try_end_6fa} :catch_4bd

    goto/16 :goto_2f8
.end method
