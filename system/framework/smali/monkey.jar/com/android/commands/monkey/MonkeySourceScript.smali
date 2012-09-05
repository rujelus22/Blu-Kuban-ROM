.class public Lcom/android/commands/monkey/MonkeySourceScript;
.super Ljava/lang/Object;
.source "MonkeySourceScript.java"

# interfaces
.implements Lcom/android/commands/monkey/MonkeyEventSource;


# static fields
.field private static final EVENT_KEYWORD_ACTIVITY:Ljava/lang/String; = "LaunchActivity"

.field private static final EVENT_KEYWORD_DEVICE_WAKEUP:Ljava/lang/String; = "DeviceWakeUp"

.field private static final EVENT_KEYWORD_DRAG:Ljava/lang/String; = "Drag"

.field private static final EVENT_KEYWORD_END_FRAMERATE_CAPTURE:Ljava/lang/String; = "EndCaptureFramerate"

.field private static final EVENT_KEYWORD_FLIP:Ljava/lang/String; = "DispatchFlip"

.field private static final EVENT_KEYWORD_INPUT_STRING:Ljava/lang/String; = "DispatchString"

.field private static final EVENT_KEYWORD_INSTRUMENTATION:Ljava/lang/String; = "LaunchInstrumentation"

.field private static final EVENT_KEYWORD_KEY:Ljava/lang/String; = "DispatchKey"

.field private static final EVENT_KEYWORD_KEYPRESS:Ljava/lang/String; = "DispatchPress"

.field private static final EVENT_KEYWORD_LONGPRESS:Ljava/lang/String; = "LongPress"

.field private static final EVENT_KEYWORD_PINCH_ZOOM:Ljava/lang/String; = "PinchZoom"

.field private static final EVENT_KEYWORD_POINTER:Ljava/lang/String; = "DispatchPointer"

.field private static final EVENT_KEYWORD_POWERLOG:Ljava/lang/String; = "PowerLog"

.field private static final EVENT_KEYWORD_PRESSANDHOLD:Ljava/lang/String; = "PressAndHold"

.field private static final EVENT_KEYWORD_PROFILE_WAIT:Ljava/lang/String; = "ProfileWait"

.field private static final EVENT_KEYWORD_RUNCMD:Ljava/lang/String; = "RunCmd"

.field private static final EVENT_KEYWORD_START_FRAMERATE_CAPTURE:Ljava/lang/String; = "StartCaptureFramerate"

.field private static final EVENT_KEYWORD_TAP:Ljava/lang/String; = "Tap"

.field private static final EVENT_KEYWORD_TRACKBALL:Ljava/lang/String; = "DispatchTrackball"

.field private static final EVENT_KEYWORD_WAIT:Ljava/lang/String; = "UserWait"

.field private static final EVENT_KEYWORD_WRITEPOWERLOG:Ljava/lang/String; = "WriteLog"

.field private static final HEADER_COUNT:Ljava/lang/String; = "count="

.field private static final HEADER_SPEED:Ljava/lang/String; = "speed="

.field private static LONGPRESS_WAIT_TIME:I = 0x0

.field private static final MAX_ONE_TIME_READS:I = 0x64

.field private static final SLEEP_COMPENSATE_DIFF:J = 0x10L

.field private static final STARTING_DATA_LINE:Ljava/lang/String; = "start data >>"

.field private static final THIS_DEBUG:Z


# instance fields
.field mBufferedReader:Ljava/io/BufferedReader;

.field private mDeviceSleepTime:J

.field private mEventCountInScript:I

.field mFStream:Ljava/io/FileInputStream;

.field private mFileOpened:Z

.field mInputStream:Ljava/io/DataInputStream;

.field private mLastExportDownTimeKey:J

.field private mLastExportDownTimeMotion:J

.field private mLastExportEventTime:J

.field private mLastRecordedDownTimeKey:J

.field private mLastRecordedDownTimeMotion:J

.field private mLastRecordedEventTime:J

.field private mProfileWaitTime:J

.field private mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

.field private mScriptFileName:Ljava/lang/String;

.field private mSpeed:D

.field private mVerbose:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 131
    const/16 v0, 0x7d0

    sput v0, Lcom/android/commands/monkey/MonkeySourceScript;->LONGPRESS_WAIT_TIME:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Random;Ljava/lang/String;JZJJ)V
    .registers 12
    .parameter "random"
    .parameter "filename"
    .parameter "throttle"
    .parameter "randomizeThrottle"
    .parameter "profileWaitTime"
    .parameter "deviceSleepTime"

    .prologue
    .line 150
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mEventCountInScript:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mVerbose:I

    .line 52
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mSpeed:D

    .line 62
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeKey:J

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeMotion:J

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeKey:J

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeMotion:J

    .line 70
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportEventTime:J

    .line 72
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedEventTime:J

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFileOpened:Z

    .line 133
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mProfileWaitTime:J

    .line 135
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mDeviceSleepTime:J

    .line 151
    iput-object p2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mScriptFileName:Ljava/lang/String;

    .line 152
    new-instance v0, Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-direct {v0, p1, p3, p4, p5}, Lcom/android/commands/monkey/MonkeyEventQueue;-><init>(Ljava/util/Random;JZ)V

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    .line 153
    iput-wide p6, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mProfileWaitTime:J

    .line 154
    iput-wide p8, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mDeviceSleepTime:J

    .line 155
    return-void
.end method

.method private adjustKeyEventTime(Lcom/android/commands/monkey/MonkeyKeyEvent;)V
    .registers 12
    .parameter "e"

    .prologue
    const-wide/16 v8, 0x0

    .line 735
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getEventTime()J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-gez v6, :cond_b

    .line 763
    :goto_a
    return-void

    .line 738
    :cond_b
    const-wide/16 v2, 0x0

    .line 739
    .local v2, thisDownTime:J
    const-wide/16 v4, 0x0

    .line 740
    .local v4, thisEventTime:J
    const-wide/16 v0, 0x0

    .line 742
    .local v0, expectedDelay:J
    iget-wide v6, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedEventTime:J

    cmp-long v6, v6, v8

    if-gtz v6, :cond_33

    .line 744
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 745
    move-wide v4, v2

    .line 757
    :goto_1c
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeKey:J

    .line 758
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getEventTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedEventTime:J

    .line 759
    invoke-virtual {p1, v2, v3}, Lcom/android/commands/monkey/MonkeyKeyEvent;->setDownTime(J)V

    .line 760
    invoke-virtual {p1, v4, v5}, Lcom/android/commands/monkey/MonkeyKeyEvent;->setEventTime(J)V

    .line 761
    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeKey:J

    .line 762
    iput-wide v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportEventTime:J

    goto :goto_a

    .line 747
    :cond_33
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getDownTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeKey:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_59

    .line 748
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getDownTime()J

    move-result-wide v2

    .line 752
    :goto_41
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getEventTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedEventTime:J

    sub-long/2addr v6, v8

    long-to-double v6, v6

    iget-wide v8, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mSpeed:D

    mul-double/2addr v6, v8

    double-to-long v0, v6

    .line 753
    iget-wide v6, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportEventTime:J

    add-long v4, v6, v0

    .line 755
    const-wide/16 v6, 0x10

    sub-long v6, v0, v6

    invoke-direct {p0, v6, v7}, Lcom/android/commands/monkey/MonkeySourceScript;->needSleep(J)V

    goto :goto_1c

    .line 750
    :cond_59
    iget-wide v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeKey:J

    goto :goto_41
.end method

.method private adjustMotionEventTime(Lcom/android/commands/monkey/MonkeyMotionEvent;)V
    .registers 8
    .parameter "e"

    .prologue
    .line 771
    const-wide/16 v0, 0x0

    .line 773
    .local v0, updatedDownTime:J
    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyMotionEvent;->getEventTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_d

    .line 779
    :goto_c
    return-void

    .line 776
    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 777
    invoke-virtual {p1, v0, v1}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    .line 778
    invoke-virtual {p1, v0, v1}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    goto :goto_c
.end method

.method private closeFile()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 651
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFileOpened:Z

    .line 654
    :try_start_3
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFStream:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 655
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_d} :catch_e

    .line 659
    :goto_d
    return-void

    .line 656
    :catch_e
    move-exception v0

    goto :goto_d
.end method

.method private handleEvent(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 82
    .parameter "s"
    .parameter "args"

    .prologue
    .line 242
    const-string v14, "DispatchKey"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_86

    move-object/from16 v0, p2

    array-length v14, v0

    const/16 v15, 0x8

    if-ne v14, v15, :cond_86

    .line 244
    :try_start_11
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v15, " old key\n"

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 245
    const/4 v14, 0x0

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 246
    .local v4, downTime:J
    const/4 v14, 0x1

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 247
    .local v6, eventTime:J
    const/4 v14, 0x2

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 248
    .local v8, action:I
    const/4 v14, 0x3

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 249
    .local v9, code:I
    const/4 v14, 0x4

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 250
    .local v10, repeat:I
    const/4 v14, 0x5

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 251
    .local v11, metaState:I
    const/4 v14, 0x6

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 252
    .local v12, device:I
    const/4 v14, 0x7

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 254
    .local v13, scancode:I
    new-instance v3, Lcom/android/commands/monkey/MonkeyKeyEvent;

    invoke-direct/range {v3 .. v13}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(JJIIIIII)V

    .line 256
    .local v3, e:Lcom/android/commands/monkey/MonkeyKeyEvent;
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " Key code "

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v20, "\n"

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 259
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v15, "Added key up \n"

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_85
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_85} :catch_7ea

    .line 620
    .end local v3           #e:Lcom/android/commands/monkey/MonkeyKeyEvent;
    .end local v4           #downTime:J
    .end local v6           #eventTime:J
    .end local v8           #action:I
    .end local v9           #code:I
    .end local v10           #repeat:I
    .end local v11           #metaState:I
    .end local v12           #device:I
    .end local v13           #scancode:I
    :cond_85
    :goto_85
    return-void

    .line 266
    :cond_86
    const-string v14, "DispatchPointer"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-gez v14, :cond_9a

    const-string v14, "DispatchTrackball"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_13c

    :cond_9a
    move-object/from16 v0, p2

    array-length v14, v0

    const/16 v15, 0xc

    if-ne v14, v15, :cond_13c

    .line 269
    const/4 v14, 0x0

    :try_start_a2
    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 270
    .restart local v4       #downTime:J
    const/4 v14, 0x1

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 271
    .restart local v6       #eventTime:J
    const/4 v14, 0x2

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 272
    .restart local v8       #action:I
    const/4 v14, 0x3

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v16

    .line 273
    .local v16, x:F
    const/4 v14, 0x4

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v17

    .line 274
    .local v17, y:F
    const/4 v14, 0x5

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v18

    .line 275
    .local v18, pressure:F
    const/4 v14, 0x6

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    .line 276
    .local v19, size:F
    const/4 v14, 0x7

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 277
    .restart local v11       #metaState:I
    const/16 v14, 0x8

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v72

    .line 278
    .local v72, xPrecision:F
    const/16 v14, 0x9

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v76

    .line 279
    .local v76, yPrecision:F
    const/16 v14, 0xa

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 280
    .restart local v12       #device:I
    const/16 v14, 0xb

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v39

    .line 283
    .local v39, edgeFlags:I
    const-string v14, "Pointer"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-lez v14, :cond_136

    .line 284
    new-instance v3, Lcom/android/commands/monkey/MonkeyTouchEvent;

    invoke-direct {v3, v8}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    .line 289
    .local v3, e:Lcom/android/commands/monkey/MonkeyMotionEvent;
    :goto_108
    invoke-virtual {v3, v4, v5}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v14

    invoke-virtual {v14, v11}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setMetaState(I)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v14

    move/from16 v0, v72

    move/from16 v1, v76

    invoke-virtual {v14, v0, v1}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setPrecision(FF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v14

    invoke-virtual {v14, v12}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setDeviceId(I)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v14

    move/from16 v0, v39

    invoke-virtual {v14, v0}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEdgeFlags(I)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual/range {v14 .. v19}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    .line 296
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_85

    .line 297
    .end local v3           #e:Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v4           #downTime:J
    .end local v6           #eventTime:J
    .end local v8           #action:I
    .end local v11           #metaState:I
    .end local v12           #device:I
    .end local v16           #x:F
    .end local v17           #y:F
    .end local v18           #pressure:F
    .end local v19           #size:F
    .end local v39           #edgeFlags:I
    .end local v72           #xPrecision:F
    .end local v76           #yPrecision:F
    :catch_133
    move-exception v14

    goto/16 :goto_85

    .line 286
    .restart local v4       #downTime:J
    .restart local v6       #eventTime:J
    .restart local v8       #action:I
    .restart local v11       #metaState:I
    .restart local v12       #device:I
    .restart local v16       #x:F
    .restart local v17       #y:F
    .restart local v18       #pressure:F
    .restart local v19       #size:F
    .restart local v39       #edgeFlags:I
    .restart local v72       #xPrecision:F
    .restart local v76       #yPrecision:F
    :cond_136
    new-instance v3, Lcom/android/commands/monkey/MonkeyTrackballEvent;

    invoke-direct {v3, v8}, Lcom/android/commands/monkey/MonkeyTrackballEvent;-><init>(I)V
    :try_end_13b
    .catch Ljava/lang/NumberFormatException; {:try_start_a2 .. :try_end_13b} :catch_133

    .restart local v3       #e:Lcom/android/commands/monkey/MonkeyMotionEvent;
    goto :goto_108

    .line 303
    .end local v3           #e:Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v4           #downTime:J
    .end local v6           #eventTime:J
    .end local v8           #action:I
    .end local v11           #metaState:I
    .end local v12           #device:I
    .end local v16           #x:F
    .end local v17           #y:F
    .end local v18           #pressure:F
    .end local v19           #size:F
    .end local v39           #edgeFlags:I
    .end local v72           #xPrecision:F
    .end local v76           #yPrecision:F
    :cond_13c
    const-string v14, "Tap"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_1f0

    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v15, 0x2

    if-lt v14, v15, :cond_1f0

    .line 305
    const/4 v14, 0x0

    :try_start_14d
    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v16

    .line 306
    .restart local v16       #x:F
    const/4 v14, 0x1

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v17

    .line 307
    .restart local v17       #y:F
    const-wide/16 v66, 0x0

    .line 308
    .local v66, tapDuration:J
    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v15, 0x3

    if-ne v14, v15, :cond_169

    .line 309
    const/4 v14, 0x2

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v66

    .line 313
    :cond_169
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 314
    .restart local v4       #downTime:J
    new-instance v14, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v14, v4, v5}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v14

    invoke-virtual {v14, v4, v5}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v20

    const/16 v21, 0x0

    const/high16 v24, 0x3f80

    const/high16 v25, 0x40a0

    move/from16 v22, v16

    move/from16 v23, v17

    invoke-virtual/range {v20 .. v25}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v36

    .line 318
    .local v36, e1:Lcom/android/commands/monkey/MonkeyMotionEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v0, v36

    invoke-virtual {v14, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 319
    const-wide/16 v14, 0x0

    cmp-long v14, v66, v14

    if-lez v14, :cond_1a6

    .line 320
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v15, Lcom/android/commands/monkey/MonkeyWaitEvent;

    move-wide/from16 v0, v66

    invoke-direct {v15, v0, v1}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    invoke-virtual {v14, v15}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 322
    :cond_1a6
    new-instance v14, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v14, v4, v5}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v14

    invoke-virtual {v14, v4, v5}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v20

    const/16 v21, 0x0

    const/high16 v24, 0x3f80

    const/high16 v25, 0x40a0

    move/from16 v22, v16

    move/from16 v23, v17

    invoke-virtual/range {v20 .. v25}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v37

    .line 326
    .local v37, e2:Lcom/android/commands/monkey/MonkeyMotionEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v0, v37

    invoke-virtual {v14, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V
    :try_end_1cb
    .catch Ljava/lang/NumberFormatException; {:try_start_14d .. :try_end_1cb} :catch_1cd

    goto/16 :goto_85

    .line 327
    .end local v4           #downTime:J
    .end local v16           #x:F
    .end local v17           #y:F
    .end local v36           #e1:Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v37           #e2:Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v66           #tapDuration:J
    :catch_1cd
    move-exception v3

    .line 328
    .local v3, e:Ljava/lang/NumberFormatException;
    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "// "

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_85

    .line 334
    .end local v3           #e:Ljava/lang/NumberFormatException;
    :cond_1f0
    const-string v14, "PressAndHold"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_2a2

    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v15, 0x3

    if-ne v14, v15, :cond_2a2

    .line 336
    const/4 v14, 0x0

    :try_start_201
    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v16

    .line 337
    .restart local v16       #x:F
    const/4 v14, 0x1

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v17

    .line 338
    .restart local v17       #y:F
    const/4 v14, 0x2

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v48

    .line 341
    .local v48, pressDuration:J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 343
    .restart local v4       #downTime:J
    new-instance v14, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v14, v4, v5}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v14

    invoke-virtual {v14, v4, v5}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v20

    const/16 v21, 0x0

    const/high16 v24, 0x3f80

    const/high16 v25, 0x40a0

    move/from16 v22, v16

    move/from16 v23, v17

    invoke-virtual/range {v20 .. v25}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v36

    .line 347
    .restart local v36       #e1:Lcom/android/commands/monkey/MonkeyMotionEvent;
    new-instance v37, Lcom/android/commands/monkey/MonkeyWaitEvent;

    move-object/from16 v0, v37

    move-wide/from16 v1, v48

    invoke-direct {v0, v1, v2}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    .line 348
    .local v37, e2:Lcom/android/commands/monkey/MonkeyWaitEvent;
    new-instance v14, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    add-long v20, v4, v48

    move-wide/from16 v0, v20

    invoke-virtual {v14, v0, v1}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v14

    add-long v20, v4, v48

    move-wide/from16 v0, v20

    invoke-virtual {v14, v0, v1}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v20

    const/16 v21, 0x0

    const/high16 v24, 0x3f80

    const/high16 v25, 0x40a0

    move/from16 v22, v16

    move/from16 v23, v17

    invoke-virtual/range {v20 .. v25}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v38

    .line 352
    .local v38, e3:Lcom/android/commands/monkey/MonkeyMotionEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v0, v36

    invoke-virtual {v14, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 353
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v0, v37

    invoke-virtual {v14, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 354
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v0, v37

    invoke-virtual {v14, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V
    :try_end_27d
    .catch Ljava/lang/NumberFormatException; {:try_start_201 .. :try_end_27d} :catch_27f

    goto/16 :goto_85

    .line 356
    .end local v4           #downTime:J
    .end local v16           #x:F
    .end local v17           #y:F
    .end local v36           #e1:Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v37           #e2:Lcom/android/commands/monkey/MonkeyWaitEvent;
    .end local v38           #e3:Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v48           #pressDuration:J
    :catch_27f
    move-exception v3

    .line 357
    .restart local v3       #e:Ljava/lang/NumberFormatException;
    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "// "

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_85

    .line 363
    .end local v3           #e:Ljava/lang/NumberFormatException;
    :cond_2a2
    const-string v14, "Drag"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_371

    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v15, 0x5

    if-ne v14, v15, :cond_371

    .line 364
    const/4 v14, 0x0

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v73

    .line 365
    .local v73, xStart:F
    const/4 v14, 0x1

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v77

    .line 366
    .local v77, yStart:F
    const/4 v14, 0x2

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v71

    .line 367
    .local v71, xEnd:F
    const/4 v14, 0x3

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v75

    .line 368
    .local v75, yEnd:F
    const/4 v14, 0x4

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v65

    .line 370
    .local v65, stepCount:I
    move/from16 v16, v73

    .line 371
    .restart local v16       #x:F
    move/from16 v17, v77

    .line 372
    .restart local v17       #y:F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 373
    .restart local v4       #downTime:J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 375
    .restart local v6       #eventTime:J
    if-lez v65, :cond_371

    .line 376
    sub-float v14, v71, v73

    move/from16 v0, v65

    int-to-float v15, v0

    div-float v74, v14, v15

    .line 377
    .local v74, xStep:F
    sub-float v14, v75, v77

    move/from16 v0, v65

    int-to-float v15, v0

    div-float v78, v14, v15

    .line 379
    .local v78, yStep:F
    new-instance v14, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v14, v4, v5}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v20

    const/16 v21, 0x0

    const/high16 v24, 0x3f80

    const/high16 v25, 0x40a0

    move/from16 v22, v16

    move/from16 v23, v17

    invoke-virtual/range {v20 .. v25}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v3

    .line 382
    .local v3, e:Lcom/android/commands/monkey/MonkeyMotionEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 384
    const/16 v40, 0x0

    .local v40, i:I
    :goto_316
    move/from16 v0, v40

    move/from16 v1, v65

    if-ge v0, v1, :cond_34a

    .line 385
    add-float v16, v16, v74

    .line 386
    add-float v17, v17, v78

    .line 387
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 388
    new-instance v14, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/4 v15, 0x2

    invoke-direct {v14, v15}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v14, v4, v5}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v20

    const/16 v21, 0x0

    const/high16 v24, 0x3f80

    const/high16 v25, 0x40a0

    move/from16 v22, v16

    move/from16 v23, v17

    invoke-virtual/range {v20 .. v25}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v3

    .line 390
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 384
    add-int/lit8 v40, v40, 0x1

    goto :goto_316

    .line 393
    :cond_34a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 394
    new-instance v14, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v14, v4, v5}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v14

    invoke-virtual {v14, v6, v7}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v20

    const/16 v21, 0x0

    const/high16 v24, 0x3f80

    const/high16 v25, 0x40a0

    move/from16 v22, v16

    move/from16 v23, v17

    invoke-virtual/range {v20 .. v25}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v3

    .line 396
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 401
    .end local v3           #e:Lcom/android/commands/monkey/MonkeyMotionEvent;
    .end local v4           #downTime:J
    .end local v6           #eventTime:J
    .end local v16           #x:F
    .end local v17           #y:F
    .end local v40           #i:I
    .end local v65           #stepCount:I
    .end local v71           #xEnd:F
    .end local v73           #xStart:F
    .end local v74           #xStep:F
    .end local v75           #yEnd:F
    .end local v77           #yStart:F
    .end local v78           #yStep:F
    :cond_371
    const-string v14, "PinchZoom"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_4bd

    move-object/from16 v0, p2

    array-length v14, v0

    const/16 v15, 0x9

    if-ne v14, v15, :cond_4bd

    .line 403
    const/4 v14, 0x0

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v51

    .line 404
    .local v51, pt1xStart:F
    const/4 v14, 0x1

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v54

    .line 405
    .local v54, pt1yStart:F
    const/4 v14, 0x2

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v50

    .line 406
    .local v50, pt1xEnd:F
    const/4 v14, 0x3

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v53

    .line 408
    .local v53, pt1yEnd:F
    const/4 v14, 0x4

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v57

    .line 409
    .local v57, pt2xStart:F
    const/4 v14, 0x5

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v60

    .line 410
    .local v60, pt2yStart:F
    const/4 v14, 0x6

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v56

    .line 411
    .local v56, pt2xEnd:F
    const/4 v14, 0x7

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v59

    .line 413
    .local v59, pt2yEnd:F
    const/16 v14, 0x8

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v65

    .line 415
    .restart local v65       #stepCount:I
    move/from16 v22, v51

    .line 416
    .local v22, x1:F
    move/from16 v23, v54

    .line 417
    .local v23, y1:F
    move/from16 v26, v57

    .line 418
    .local v26, x2:F
    move/from16 v27, v60

    .line 420
    .local v27, y2:F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 421
    .restart local v4       #downTime:J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 423
    .restart local v6       #eventTime:J
    if-lez v65, :cond_4bd

    .line 424
    sub-float v14, v50, v51

    move/from16 v0, v65

    int-to-float v15, v0

    div-float v52, v14, v15

    .line 425
    .local v52, pt1xStep:F
    sub-float v14, v53, v54

    move/from16 v0, v65

    int-to-float v15, v0

    div-float v55, v14, v15

    .line 427
    .local v55, pt1yStep:F
    sub-float v14, v56, v57

    move/from16 v0, v65

    int-to-float v15, v0

    div-float v58, v14, v15

    .line 428
    .local v58, pt2xStep:F
    sub-float v14, v59, v60

    move/from16 v0, v65

    int-to-float v15, v0

    div-float v61, v14, v15

    .line 430
    .local v61, pt2yStep:F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v15, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-direct {v15, v0}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v15, v4, v5}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    invoke-virtual {v15, v6, v7}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v20

    const/16 v21, 0x0

    const/high16 v24, 0x3f80

    const/high16 v25, 0x40a0

    invoke-virtual/range {v20 .. v25}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 433
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v15, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/16 v20, 0x105

    move/from16 v0, v20

    invoke-direct {v15, v0}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v15, v4, v5}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    const/16 v20, 0x0

    move/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    const/16 v20, 0x1

    move/from16 v0, v20

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setIntermediateNote(Z)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 437
    const/16 v40, 0x0

    .restart local v40       #i:I
    :goto_448
    move/from16 v0, v40

    move/from16 v1, v65

    if-ge v0, v1, :cond_489

    .line 438
    add-float v22, v22, v52

    .line 439
    add-float v23, v23, v55

    .line 440
    add-float v26, v26, v58

    .line 441
    add-float v27, v27, v61

    .line 443
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 444
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v15, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-direct {v15, v0}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v15, v4, v5}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    invoke-virtual {v15, v6, v7}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v20

    const/16 v21, 0x0

    const/high16 v24, 0x3f80

    const/high16 v25, 0x40a0

    invoke-virtual/range {v20 .. v25}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v24

    const/16 v25, 0x1

    const/high16 v28, 0x3f80

    const/high16 v29, 0x40a0

    invoke-virtual/range {v24 .. v29}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFFFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 437
    add-int/lit8 v40, v40, 0x1

    goto :goto_448

    .line 448
    :cond_489
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 449
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v15, Lcom/android/commands/monkey/MonkeyTouchEvent;

    const/16 v20, 0x6

    move/from16 v0, v20

    invoke-direct {v15, v0}, Lcom/android/commands/monkey/MonkeyTouchEvent;-><init>(I)V

    invoke-virtual {v15, v4, v5}, Lcom/android/commands/monkey/MonkeyTouchEvent;->setDownTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    invoke-virtual {v15, v6, v7}, Lcom/android/commands/monkey/MonkeyMotionEvent;->setEventTime(J)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    const/16 v20, 0x0

    move/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    const/16 v20, 0x1

    move/from16 v0, v20

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/commands/monkey/MonkeyMotionEvent;->addPointer(IFF)Lcom/android/commands/monkey/MonkeyMotionEvent;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 456
    .end local v4           #downTime:J
    .end local v6           #eventTime:J
    .end local v22           #x1:F
    .end local v23           #y1:F
    .end local v26           #x2:F
    .end local v27           #y2:F
    .end local v40           #i:I
    .end local v50           #pt1xEnd:F
    .end local v51           #pt1xStart:F
    .end local v52           #pt1xStep:F
    .end local v53           #pt1yEnd:F
    .end local v54           #pt1yStart:F
    .end local v55           #pt1yStep:F
    .end local v56           #pt2xEnd:F
    .end local v57           #pt2xStart:F
    .end local v58           #pt2xStep:F
    .end local v59           #pt2yEnd:F
    .end local v60           #pt2yStart:F
    .end local v61           #pt2yStep:F
    .end local v65           #stepCount:I
    :cond_4bd
    const-string v14, "DispatchFlip"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_4e2

    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v15, 0x1

    if-ne v14, v15, :cond_4e2

    .line 457
    const/4 v14, 0x0

    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v44

    .line 458
    .local v44, keyboardOpen:Z
    new-instance v3, Lcom/android/commands/monkey/MonkeyFlipEvent;

    move/from16 v0, v44

    invoke-direct {v3, v0}, Lcom/android/commands/monkey/MonkeyFlipEvent;-><init>(Z)V

    .line 459
    .local v3, e:Lcom/android/commands/monkey/MonkeyFlipEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 463
    .end local v3           #e:Lcom/android/commands/monkey/MonkeyFlipEvent;
    .end local v44           #keyboardOpen:Z
    :cond_4e2
    const-string v14, "LaunchActivity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_55d

    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v15, 0x2

    if-lt v14, v15, :cond_55d

    .line 464
    const/4 v14, 0x0

    aget-object v46, p2, v14

    .line 465
    .local v46, pkg_name:Ljava/lang/String;
    const/4 v14, 0x1

    aget-object v32, p2, v14

    .line 466
    .local v32, cl_name:Ljava/lang/String;
    const-wide/16 v30, 0x0

    .line 468
    .local v30, alarmTime:J
    new-instance v45, Landroid/content/ComponentName;

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    .local v45, mApp:Landroid/content/ComponentName;
    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v15, 0x2

    if-le v14, v15, :cond_512

    .line 472
    const/4 v14, 0x2

    :try_start_50c
    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_511
    .catch Ljava/lang/NumberFormatException; {:try_start_50c .. :try_end_511} :catch_528

    move-result-wide v30

    .line 479
    :cond_512
    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v15, 0x2

    if-ne v14, v15, :cond_54b

    .line 480
    new-instance v3, Lcom/android/commands/monkey/MonkeyActivityEvent;

    move-object/from16 v0, v45

    invoke-direct {v3, v0}, Lcom/android/commands/monkey/MonkeyActivityEvent;-><init>(Landroid/content/ComponentName;)V

    .line 481
    .local v3, e:Lcom/android/commands/monkey/MonkeyActivityEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_85

    .line 473
    .end local v3           #e:Lcom/android/commands/monkey/MonkeyActivityEvent;
    :catch_528
    move-exception v3

    .line 474
    .local v3, e:Ljava/lang/NumberFormatException;
    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "// "

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_85

    .line 483
    .end local v3           #e:Ljava/lang/NumberFormatException;
    :cond_54b
    new-instance v3, Lcom/android/commands/monkey/MonkeyActivityEvent;

    move-object/from16 v0, v45

    move-wide/from16 v1, v30

    invoke-direct {v3, v0, v1, v2}, Lcom/android/commands/monkey/MonkeyActivityEvent;-><init>(Landroid/content/ComponentName;J)V

    .line 484
    .local v3, e:Lcom/android/commands/monkey/MonkeyActivityEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_85

    .line 490
    .end local v3           #e:Lcom/android/commands/monkey/MonkeyActivityEvent;
    .end local v30           #alarmTime:J
    .end local v32           #cl_name:Ljava/lang/String;
    .end local v45           #mApp:Landroid/content/ComponentName;
    .end local v46           #pkg_name:Ljava/lang/String;
    :cond_55d
    const-string v14, "DeviceWakeUp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_618

    .line 491
    const-string v46, "com.google.android.powerutil"

    .line 492
    .restart local v46       #pkg_name:Ljava/lang/String;
    const-string v32, "com.google.android.powerutil.WakeUpScreen"

    .line 493
    .restart local v32       #cl_name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mDeviceSleepTime:J

    move-wide/from16 v34, v0

    .line 496
    .local v34, deviceSleepTime:J
    new-instance v45, Landroid/content/ComponentName;

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    .restart local v45       #mApp:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v15, Lcom/android/commands/monkey/MonkeyActivityEvent;

    move-object/from16 v0, v45

    move-wide/from16 v1, v34

    invoke-direct {v15, v0, v1, v2}, Lcom/android/commands/monkey/MonkeyActivityEvent;-><init>(Landroid/content/ComponentName;J)V

    invoke-virtual {v14, v15}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 500
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v15, Lcom/android/commands/monkey/MonkeyKeyEvent;

    const/16 v20, 0x0

    const/16 v21, 0x7

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v15, v0, v1}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    invoke-virtual {v14, v15}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 501
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v15, Lcom/android/commands/monkey/MonkeyKeyEvent;

    const/16 v20, 0x1

    const/16 v21, 0x7

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v15, v0, v1}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    invoke-virtual {v14, v15}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 505
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v15, Lcom/android/commands/monkey/MonkeyWaitEvent;

    const-wide/16 v20, 0xbb8

    add-long v20, v20, v34

    move-wide/from16 v0, v20

    invoke-direct {v15, v0, v1}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    invoke-virtual {v14, v15}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 508
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v15, Lcom/android/commands/monkey/MonkeyKeyEvent;

    const/16 v20, 0x0

    const/16 v21, 0x52

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v15, v0, v1}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    invoke-virtual {v14, v15}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 509
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v15, Lcom/android/commands/monkey/MonkeyKeyEvent;

    const/16 v20, 0x1

    const/16 v21, 0x52

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v15, v0, v1}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    invoke-virtual {v14, v15}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 512
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v15, Lcom/android/commands/monkey/MonkeyKeyEvent;

    const/16 v20, 0x0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v15, v0, v1}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    invoke-virtual {v14, v15}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 513
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    new-instance v15, Lcom/android/commands/monkey/MonkeyKeyEvent;

    const/16 v20, 0x1

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v15, v0, v1}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    invoke-virtual {v14, v15}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_85

    .line 519
    .end local v32           #cl_name:Ljava/lang/String;
    .end local v34           #deviceSleepTime:J
    .end local v45           #mApp:Landroid/content/ComponentName;
    .end local v46           #pkg_name:Ljava/lang/String;
    :cond_618
    const-string v14, "LaunchInstrumentation"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_640

    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v15, 0x2

    if-ne v14, v15, :cond_640

    .line 520
    const/4 v14, 0x0

    aget-object v69, p2, v14

    .line 521
    .local v69, test_name:Ljava/lang/String;
    const/4 v14, 0x1

    aget-object v62, p2, v14

    .line 522
    .local v62, runner_name:Ljava/lang/String;
    new-instance v3, Lcom/android/commands/monkey/MonkeyInstrumentationEvent;

    move-object/from16 v0, v69

    move-object/from16 v1, v62

    invoke-direct {v3, v0, v1}, Lcom/android/commands/monkey/MonkeyInstrumentationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    .local v3, e:Lcom/android/commands/monkey/MonkeyInstrumentationEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_85

    .line 528
    .end local v3           #e:Lcom/android/commands/monkey/MonkeyInstrumentationEvent;
    .end local v62           #runner_name:Ljava/lang/String;
    .end local v69           #test_name:Ljava/lang/String;
    :cond_640
    const-string v14, "UserWait"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_66d

    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v15, 0x1

    if-ne v14, v15, :cond_66d

    .line 530
    const/4 v14, 0x0

    :try_start_651
    aget-object v14, p2, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    int-to-long v0, v14

    move-wide/from16 v63, v0

    .line 531
    .local v63, sleeptime:J
    new-instance v3, Lcom/android/commands/monkey/MonkeyWaitEvent;

    move-wide/from16 v0, v63

    invoke-direct {v3, v0, v1}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    .line 532
    .local v3, e:Lcom/android/commands/monkey/MonkeyWaitEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V
    :try_end_668
    .catch Ljava/lang/NumberFormatException; {:try_start_651 .. :try_end_668} :catch_66a

    goto/16 :goto_85

    .line 533
    .end local v3           #e:Lcom/android/commands/monkey/MonkeyWaitEvent;
    .end local v63           #sleeptime:J
    :catch_66a
    move-exception v14

    goto/16 :goto_85

    .line 540
    :cond_66d
    const-string v14, "ProfileWait"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_689

    .line 541
    new-instance v3, Lcom/android/commands/monkey/MonkeyWaitEvent;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mProfileWaitTime:J

    invoke-direct {v3, v14, v15}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    .line 542
    .restart local v3       #e:Lcom/android/commands/monkey/MonkeyWaitEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_85

    .line 547
    .end local v3           #e:Lcom/android/commands/monkey/MonkeyWaitEvent;
    :cond_689
    const-string v14, "DispatchPress"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_6c0

    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v15, 0x1

    if-ne v14, v15, :cond_6c0

    .line 548
    const/4 v14, 0x0

    aget-object v43, p2, v14

    .line 549
    .local v43, key_name:Ljava/lang/String;
    invoke-static/range {v43 .. v43}, Lcom/android/commands/monkey/MonkeySourceRandom;->getKeyCode(Ljava/lang/String;)I

    move-result v42

    .line 550
    .local v42, keyCode:I
    new-instance v3, Lcom/android/commands/monkey/MonkeyKeyEvent;

    const/4 v14, 0x0

    move/from16 v0, v42

    invoke-direct {v3, v14, v0}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    .line 551
    .local v3, e:Lcom/android/commands/monkey/MonkeyKeyEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 552
    new-instance v3, Lcom/android/commands/monkey/MonkeyKeyEvent;

    .end local v3           #e:Lcom/android/commands/monkey/MonkeyKeyEvent;
    const/4 v14, 0x1

    move/from16 v0, v42

    invoke-direct {v3, v14, v0}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    .line 553
    .restart local v3       #e:Lcom/android/commands/monkey/MonkeyKeyEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_85

    .line 558
    .end local v3           #e:Lcom/android/commands/monkey/MonkeyKeyEvent;
    .end local v42           #keyCode:I
    .end local v43           #key_name:Ljava/lang/String;
    :cond_6c0
    const-string v14, "LongPress"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_6fb

    .line 560
    new-instance v3, Lcom/android/commands/monkey/MonkeyKeyEvent;

    const/4 v14, 0x0

    const/16 v15, 0x17

    invoke-direct {v3, v14, v15}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    .line 561
    .restart local v3       #e:Lcom/android/commands/monkey/MonkeyKeyEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 562
    new-instance v70, Lcom/android/commands/monkey/MonkeyWaitEvent;

    sget v14, Lcom/android/commands/monkey/MonkeySourceScript;->LONGPRESS_WAIT_TIME:I

    int-to-long v14, v14

    move-object/from16 v0, v70

    invoke-direct {v0, v14, v15}, Lcom/android/commands/monkey/MonkeyWaitEvent;-><init>(J)V

    .line 563
    .local v70, we:Lcom/android/commands/monkey/MonkeyWaitEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    move-object/from16 v0, v70

    invoke-virtual {v14, v0}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 564
    new-instance v3, Lcom/android/commands/monkey/MonkeyKeyEvent;

    .end local v3           #e:Lcom/android/commands/monkey/MonkeyKeyEvent;
    const/4 v14, 0x1

    const/16 v15, 0x17

    invoke-direct {v3, v14, v15}, Lcom/android/commands/monkey/MonkeyKeyEvent;-><init>(II)V

    .line 565
    .restart local v3       #e:Lcom/android/commands/monkey/MonkeyKeyEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 569
    .end local v3           #e:Lcom/android/commands/monkey/MonkeyKeyEvent;
    .end local v70           #we:Lcom/android/commands/monkey/MonkeyWaitEvent;
    :cond_6fb
    const-string v14, "PowerLog"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_721

    move-object/from16 v0, p2

    array-length v14, v0

    if-lez v14, :cond_721

    .line 570
    const/4 v14, 0x0

    aget-object v47, p2, v14

    .line 573
    .local v47, power_log_type:Ljava/lang/String;
    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v15, 0x1

    if-ne v14, v15, :cond_790

    .line 574
    new-instance v3, Lcom/android/commands/monkey/MonkeyPowerEvent;

    move-object/from16 v0, v47

    invoke-direct {v3, v0}, Lcom/android/commands/monkey/MonkeyPowerEvent;-><init>(Ljava/lang/String;)V

    .line 575
    .local v3, e:Lcom/android/commands/monkey/MonkeyPowerEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 584
    .end local v3           #e:Lcom/android/commands/monkey/MonkeyPowerEvent;
    .end local v47           #power_log_type:Ljava/lang/String;
    :cond_721
    :goto_721
    const-string v14, "WriteLog"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_737

    .line 585
    new-instance v3, Lcom/android/commands/monkey/MonkeyPowerEvent;

    invoke-direct {v3}, Lcom/android/commands/monkey/MonkeyPowerEvent;-><init>()V

    .line 586
    .restart local v3       #e:Lcom/android/commands/monkey/MonkeyPowerEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 590
    .end local v3           #e:Lcom/android/commands/monkey/MonkeyPowerEvent;
    :cond_737
    const-string v14, "RunCmd"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_758

    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v15, 0x1

    if-ne v14, v15, :cond_758

    .line 591
    const/4 v14, 0x0

    aget-object v33, p2, v14

    .line 592
    .local v33, cmd:Ljava/lang/String;
    new-instance v3, Lcom/android/commands/monkey/MonkeyCommandEvent;

    move-object/from16 v0, v33

    invoke-direct {v3, v0}, Lcom/android/commands/monkey/MonkeyCommandEvent;-><init>(Ljava/lang/String;)V

    .line 593
    .local v3, e:Lcom/android/commands/monkey/MonkeyCommandEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    .line 597
    .end local v3           #e:Lcom/android/commands/monkey/MonkeyCommandEvent;
    .end local v33           #cmd:Ljava/lang/String;
    :cond_758
    const-string v14, "DispatchString"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_7ab

    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v15, 0x1

    if-ne v14, v15, :cond_7ab

    .line 598
    const/4 v14, 0x0

    aget-object v41, p2, v14

    .line 599
    .local v41, input:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "input text "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, v41

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 600
    .restart local v33       #cmd:Ljava/lang/String;
    new-instance v3, Lcom/android/commands/monkey/MonkeyCommandEvent;

    move-object/from16 v0, v33

    invoke-direct {v3, v0}, Lcom/android/commands/monkey/MonkeyCommandEvent;-><init>(Ljava/lang/String;)V

    .line 601
    .restart local v3       #e:Lcom/android/commands/monkey/MonkeyCommandEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_85

    .line 576
    .end local v3           #e:Lcom/android/commands/monkey/MonkeyCommandEvent;
    .end local v33           #cmd:Ljava/lang/String;
    .end local v41           #input:Ljava/lang/String;
    .restart local v47       #power_log_type:Ljava/lang/String;
    :cond_790
    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v15, 0x2

    if-ne v14, v15, :cond_721

    .line 577
    const/4 v14, 0x1

    aget-object v68, p2, v14

    .line 578
    .local v68, test_case_status:Ljava/lang/String;
    new-instance v3, Lcom/android/commands/monkey/MonkeyPowerEvent;

    move-object/from16 v0, v47

    move-object/from16 v1, v68

    invoke-direct {v3, v0, v1}, Lcom/android/commands/monkey/MonkeyPowerEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    .local v3, e:Lcom/android/commands/monkey/MonkeyPowerEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_721

    .line 605
    .end local v3           #e:Lcom/android/commands/monkey/MonkeyPowerEvent;
    .end local v47           #power_log_type:Ljava/lang/String;
    .end local v68           #test_case_status:Ljava/lang/String;
    :cond_7ab
    const-string v14, "StartCaptureFramerate"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_7c5

    .line 606
    new-instance v3, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;

    const-string v14, "start"

    invoke-direct {v3, v14}, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;-><init>(Ljava/lang/String;)V

    .line 607
    .local v3, e:Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_85

    .line 611
    .end local v3           #e:Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;
    :cond_7c5
    const-string v14, "EndCaptureFramerate"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_85

    move-object/from16 v0, p2

    array-length v14, v0

    const/4 v15, 0x1

    if-ne v14, v15, :cond_85

    .line 612
    const/4 v14, 0x0

    aget-object v41, p2, v14

    .line 613
    .restart local v41       #input:Ljava/lang/String;
    new-instance v3, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;

    const-string v14, "end"

    move-object/from16 v0, v41

    invoke-direct {v3, v14, v0}, Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    .restart local v3       #e:Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v14, v3}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    goto/16 :goto_85

    .line 260
    .end local v3           #e:Lcom/android/commands/monkey/MonkeyGetFrameRateEvent;
    .end local v41           #input:Ljava/lang/String;
    :catch_7ea
    move-exception v14

    goto/16 :goto_85
.end method

.method private needSleep(J)V
    .registers 5
    .parameter "time"

    .prologue
    .line 695
    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_7

    .line 702
    :goto_6
    return-void

    .line 699
    :cond_7
    :try_start_7
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_6

    .line 700
    :catch_b
    move-exception v0

    goto :goto_6
.end method

.method private processLine(Ljava/lang/String;)V
    .registers 8
    .parameter "line"

    .prologue
    .line 629
    const/16 v4, 0x28

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 630
    .local v2, index1:I
    const/16 v4, 0x29

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 632
    .local v3, index2:I
    if-ltz v2, :cond_10

    if-gez v3, :cond_11

    .line 643
    :cond_10
    :goto_10
    return-void

    .line 636
    :cond_11
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 638
    .local v0, args:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1e
    array-length v4, v0

    if-ge v1, v4, :cond_2c

    .line 639
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 638
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 642
    :cond_2c
    invoke-direct {p0, p1, v0}, Lcom/android/commands/monkey/MonkeySourceScript;->handleEvent(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_10
.end method

.method private readHeader()Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 176
    iput-boolean v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFileOpened:Z

    .line 178
    new-instance v5, Ljava/io/FileInputStream;

    iget-object v6, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mScriptFileName:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFStream:Ljava/io/FileInputStream;

    .line 179
    new-instance v5, Ljava/io/DataInputStream;

    iget-object v6, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFStream:Ljava/io/FileInputStream;

    invoke-direct {v5, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v5, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mInputStream:Ljava/io/DataInputStream;

    .line 180
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    iget-object v7, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mInputStream:Ljava/io/DataInputStream;

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v5, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mBufferedReader:Ljava/io/BufferedReader;

    .line 184
    :cond_24
    :goto_24
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mBufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, line:Ljava/lang/String;
    if-eqz v1, :cond_55

    .line 185
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 187
    const-string v5, "count="

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_56

    .line 189
    :try_start_38
    const-string v5, "count="

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, value:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mEventCountInScript:I
    :try_end_4e
    .catch Ljava/lang/NumberFormatException; {:try_start_38 .. :try_end_4e} :catch_4f

    goto :goto_24

    .line 191
    .end local v2           #value:Ljava/lang/String;
    :catch_4f
    move-exception v0

    .line 192
    .local v0, e:Ljava/lang/NumberFormatException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 208
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_55
    :goto_55
    return v3

    .line 195
    :cond_56
    const-string v5, "speed="

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_7c

    .line 197
    :try_start_5e
    const-string v5, "count="

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 198
    .restart local v2       #value:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mSpeed:D
    :try_end_74
    .catch Ljava/lang/NumberFormatException; {:try_start_5e .. :try_end_74} :catch_75

    goto :goto_24

    .line 199
    .end local v2           #value:Ljava/lang/String;
    :catch_75
    move-exception v0

    .line 200
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_55

    .line 203
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_7c
    const-string v5, "start data >>"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_24

    move v3, v4

    .line 204
    goto :goto_55
.end method

.method private readLines()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x64

    .line 219
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    if-ge v0, v2, :cond_17

    .line 220
    iget-object v3, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mBufferedReader:Ljava/io/BufferedReader;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_e

    .line 227
    .end local v0           #i:I
    .end local v1           #line:Ljava/lang/String;
    :goto_d
    return v0

    .line 224
    .restart local v0       #i:I
    .restart local v1       #line:Ljava/lang/String;
    :cond_e
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 225
    invoke-direct {p0, v1}, Lcom/android/commands/monkey/MonkeySourceScript;->processLine(Ljava/lang/String;)V

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .end local v1           #line:Ljava/lang/String;
    :cond_17
    move v0, v2

    .line 227
    goto :goto_d
.end method

.method private readNextBatch()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 670
    const/4 v0, 0x0

    .line 676
    .local v0, linesRead:I
    iget-boolean v1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mFileOpened:Z

    if-nez v1, :cond_b

    .line 677
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->resetValue()V

    .line 678
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->readHeader()Z

    .line 681
    :cond_b
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->readLines()I

    move-result v0

    .line 683
    if-nez v0, :cond_14

    .line 684
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->closeFile()V

    .line 686
    :cond_14
    return-void
.end method

.method private resetValue()V
    .registers 5

    .prologue
    const-wide/16 v2, -0x1

    const-wide/16 v0, 0x0

    .line 161
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeKey:J

    .line 162
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedDownTimeMotion:J

    .line 163
    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastRecordedEventTime:J

    .line 164
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeKey:J

    .line 165
    iput-wide v0, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportDownTimeMotion:J

    .line 166
    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mLastExportEventTime:J

    .line 167
    return-void
.end method


# virtual methods
.method public getNextEvent()Lcom/android/commands/monkey/MonkeyEvent;
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 792
    const-wide/16 v2, -0x1

    .line 795
    .local v2, recordedEventTime:J
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 797
    :try_start_b
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->readNextBatch()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_28

    .line 804
    :cond_e
    :try_start_e
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/commands/monkey/MonkeyEvent;

    .line 805
    .local v1, ev:Lcom/android/commands/monkey/MonkeyEvent;
    iget-object v5, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mQ:Lcom/android/commands/monkey/MonkeyEventQueue;

    invoke-virtual {v5}, Lcom/android/commands/monkey/MonkeyEventQueue;->removeFirst()Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/util/NoSuchElementException; {:try_start_e .. :try_end_1b} :catch_2b

    .line 810
    invoke-virtual {v1}, Lcom/android/commands/monkey/MonkeyEvent;->getEventType()I

    move-result v4

    if-nez v4, :cond_2e

    move-object v4, v1

    .line 811
    check-cast v4, Lcom/android/commands/monkey/MonkeyKeyEvent;

    invoke-direct {p0, v4}, Lcom/android/commands/monkey/MonkeySourceScript;->adjustKeyEventTime(Lcom/android/commands/monkey/MonkeyKeyEvent;)V

    .line 816
    .end local v1           #ev:Lcom/android/commands/monkey/MonkeyEvent;
    :cond_27
    :goto_27
    return-object v1

    .line 798
    :catch_28
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    move-object v1, v4

    .line 799
    goto :goto_27

    .line 806
    .end local v0           #e:Ljava/io/IOException;
    :catch_2b
    move-exception v0

    .local v0, e:Ljava/util/NoSuchElementException;
    move-object v1, v4

    .line 807
    goto :goto_27

    .line 812
    .end local v0           #e:Ljava/util/NoSuchElementException;
    .restart local v1       #ev:Lcom/android/commands/monkey/MonkeyEvent;
    :cond_2e
    invoke-virtual {v1}, Lcom/android/commands/monkey/MonkeyEvent;->getEventType()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3c

    invoke-virtual {v1}, Lcom/android/commands/monkey/MonkeyEvent;->getEventType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_27

    :cond_3c
    move-object v4, v1

    .line 814
    check-cast v4, Lcom/android/commands/monkey/MonkeyMotionEvent;

    invoke-direct {p0, v4}, Lcom/android/commands/monkey/MonkeySourceScript;->adjustMotionEventTime(Lcom/android/commands/monkey/MonkeyMotionEvent;)V

    goto :goto_27
.end method

.method public setVerbose(I)V
    .registers 2
    .parameter "verbose"

    .prologue
    .line 725
    iput p1, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mVerbose:I

    .line 726
    return-void
.end method

.method public validate()Z
    .registers 7

    .prologue
    .line 712
    :try_start_0
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->readHeader()Z

    move-result v1

    .line 713
    .local v1, validHeader:Z
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeySourceScript;->closeFile()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_32

    .line 718
    iget v2, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mVerbose:I

    if-lez v2, :cond_31

    .line 719
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Replaying "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mEventCountInScript:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " events with speed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/commands/monkey/MonkeySourceScript;->mSpeed:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 721
    .end local v1           #validHeader:Z
    :cond_31
    :goto_31
    return v1

    .line 714
    :catch_32
    move-exception v0

    .line 715
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_31
.end method
