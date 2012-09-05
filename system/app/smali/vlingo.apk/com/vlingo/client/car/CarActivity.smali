.class public Lcom/vlingo/client/car/CarActivity;
.super Lcom/vlingo/client/ui/VLActivityGroup;
.source "CarActivity.java"

# interfaces
.implements Lcom/vlingo/client/car/asr/CarRecognizerListener;
.implements Lcom/vlingo/client/car/CarActivityDelegate;
.implements Lcom/vlingo/client/car/tts/CarTTSManager$CarTTSListener;
.implements Lcom/vlingo/client/car/asr/RecoResponder;
.implements Lcom/vlingo/client/scroller/ScrollableItemChangeListener;
.implements Lcom/vlingo/client/car/CarRecoButton$CarRecoButtonListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/car/CarActivity$10;,
        Lcom/vlingo/client/car/CarActivity$MyPhoneStateListener;,
        Lcom/vlingo/client/car/CarActivity$CarDockBroadcastReceiver;,
        Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;,
        Lcom/vlingo/client/car/CarActivity$DataObjectHandle;,
        Lcom/vlingo/client/car/CarActivity$NewIntentAction;,
        Lcom/vlingo/client/car/CarActivity$RecoState;
    }
.end annotation


# static fields
.field private static final AUTO_LISTEN_EXTRA:Ljava/lang/String; = "AUTO_LISTEN"

.field private static final CHECK_SCHEDULE_ENABLED_EXTRA:Ljava/lang/String; = "CHECK_SCHEDULE_ENABLED"

.field private static final ERROR_RETRY_COUNT_MAX:I = 0x2

.field private static final HOME_ITEM_LAST_INDEX:I = 0x0

.field private static final HOME_ITEM_START_INDEX:I = 0x0

.field private static final LISTEN_AFTER_PLAY_EXTRA:Ljava/lang/String; = "LISTEN_AFTER_EVENT_PLAY"

.field private static final MENU_CLOSE:I = 0x4

.field private static final MENU_SETTINGS:I = 0x2

.field private static final MENU_TIPS:I = 0x3

.field private static final MENU_VOICE_COMMAND:I = 0x5

.field public static final MOTION_RECOGNITION_SERVICE:Ljava/lang/String; = "motion_recognition"

.field private static final MSG_ENABLE_ORIENTATION_CHANGE:I = 0x2

.field private static final MSG_START_PHRASE_SPOTTED_RECOGNITION:I = 0x1

.field private static final MSG_START_PHRASE_SPOTTING:I

.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;


# instance fields
.field private volatile backgroundDemand:Lcom/vlingo/client/core/tts/TTSDemand;

.field private bottomContainer:Landroid/widget/FrameLayout;

.field private cancelling:Z

.field private carAppButtons:Lcom/vlingo/client/car/CarAppButtonsItem;

.field private carControlButtons:Lcom/vlingo/client/car/CarControlButtonsItem;

.field private carDockBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private creatingNewTask:Z

.field private volatile curContext:Lcom/vlingo/client/core/recognizer/SRContext;

.field private volatile currentPromptContent:Lcom/vlingo/client/car/PromptContent;

.field private volatile currentShownPrompt:Ljava/lang/String;

.field private dispatcher:Lcom/vlingo/client/car/vvs/CarVVSDispatcher;

.field private dots:[Landroid/widget/ImageView;

.field private volatile errorRetryCount:I

.field private headerView:Lcom/vlingo/client/car/CarHeaderView;

.field private initialStateChecked:Z

.field private volatile isVeryEarlyState:Z

.field public language:Ljava/lang/String;

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mPackageName:Ljava/lang/String;

.field private messageHandler:Landroid/os/Handler;

.field private myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

.field private newIntentAction:Lcom/vlingo/client/car/CarActivity$NewIntentAction;

.field private orientationLocked:Z

.field private orientationWhenLocked:I

.field private overloadedBottomView:Landroid/view/View;

.field private popupContainer:Lcom/vlingo/client/car/CarPopup;

.field private psl:Lcom/vlingo/client/car/CarActivity$MyPhoneStateListener;

.field private readyToFinishByVoice:Z

.field private recoButton:Lcom/vlingo/client/car/CarRecoButton;

.field private recoShowingStatus:Z

.field private volatile recoState:Lcom/vlingo/client/car/CarActivity$RecoState;

.field private volatile recoTTSPrompt:Lcom/vlingo/client/core/tts/TTSDemand;

.field private recognizer:Lcom/vlingo/client/car/asr/CarRecognizer;

.field private scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

.field private volatile spokeBluetoothCheckSchedule:Z

.field private startPhraseSpotDelay:I

.field private volatile startedWithCarDock:Z

.field private volatile startedWithVoiceAction:Z

.field private volatile synthesizingEvents:Z

.field private systemEventManager:Lcom/vlingo/client/car/CarSystemEventManager;

.field private tm:Landroid/telephony/TelephonyManager;

.field private wasSafeReaderOnBeforeStart:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 209
    const/4 v0, 0x0

    sput-object v0, Lcom/vlingo/client/car/CarActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Lcom/vlingo/client/ui/VLActivityGroup;-><init>()V

    .line 110
    iput v1, p0, Lcom/vlingo/client/car/CarActivity;->errorRetryCount:I

    .line 137
    iput-object v2, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/car/CarActivity;->isVeryEarlyState:Z

    .line 144
    sget-object v0, Lcom/vlingo/client/car/CarActivity$RecoState;->UNINITIALIZED:Lcom/vlingo/client/car/CarActivity$RecoState;

    iput-object v0, p0, Lcom/vlingo/client/car/CarActivity;->recoState:Lcom/vlingo/client/car/CarActivity$RecoState;

    .line 145
    iput-boolean v1, p0, Lcom/vlingo/client/car/CarActivity;->startedWithVoiceAction:Z

    .line 146
    iput-boolean v1, p0, Lcom/vlingo/client/car/CarActivity;->startedWithCarDock:Z

    .line 147
    iput-boolean v1, p0, Lcom/vlingo/client/car/CarActivity;->synthesizingEvents:Z

    .line 155
    iput-boolean v1, p0, Lcom/vlingo/client/car/CarActivity;->spokeBluetoothCheckSchedule:Z

    .line 156
    iput-boolean v1, p0, Lcom/vlingo/client/car/CarActivity;->initialStateChecked:Z

    .line 157
    iput-boolean v1, p0, Lcom/vlingo/client/car/CarActivity;->wasSafeReaderOnBeforeStart:Z

    .line 160
    iput-boolean v1, p0, Lcom/vlingo/client/car/CarActivity;->cancelling:Z

    .line 161
    iput-boolean v1, p0, Lcom/vlingo/client/car/CarActivity;->recoShowingStatus:Z

    .line 162
    iput-boolean v1, p0, Lcom/vlingo/client/car/CarActivity;->creatingNewTask:Z

    .line 200
    new-instance v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    invoke-direct {v0, p0, v2}, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;-><init>(Lcom/vlingo/client/car/CarActivity;Lcom/vlingo/client/car/CarActivity$1;)V

    iput-object v0, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    .line 202
    iput-boolean v1, p0, Lcom/vlingo/client/car/CarActivity;->orientationLocked:Z

    .line 204
    const/4 v0, -0x1

    iput v0, p0, Lcom/vlingo/client/car/CarActivity;->orientationWhenLocked:I

    .line 205
    iput v1, p0, Lcom/vlingo/client/car/CarActivity;->startPhraseSpotDelay:I

    .line 206
    iput-object v2, p0, Lcom/vlingo/client/car/CarActivity;->backgroundDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 210
    iput-object v2, p0, Lcom/vlingo/client/car/CarActivity;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 94
    return-void
.end method

.method static synthetic access$100(Lcom/vlingo/client/car/CarActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/vlingo/client/car/CarActivity;->showCarHelp()V

    return-void
.end method

.method static synthetic access$1000(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/scroller/ScrollableContainer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/car/CarActivity$RecoState;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->recoState:Lcom/vlingo/client/car/CarActivity$RecoState;

    return-object v0
.end method

.method static synthetic access$1200()Landroid/hardware/motion/MotionRecognitionManager;
    .registers 1

    .prologue
    .line 94
    sget-object v0, Lcom/vlingo/client/car/CarActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-object v0
.end method

.method static synthetic access$1202(Landroid/hardware/motion/MotionRecognitionManager;)Landroid/hardware/motion/MotionRecognitionManager;
    .registers 1
    .parameter "x0"

    .prologue
    .line 94
    sput-object p0, Lcom/vlingo/client/car/CarActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/vlingo/client/car/CarActivity;)Landroid/hardware/motion/MRListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->mMotionListener:Landroid/hardware/motion/MRListener;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/vlingo/client/car/CarActivity;Landroid/hardware/motion/MRListener;)Landroid/hardware/motion/MRListener;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/vlingo/client/car/CarActivity;->mMotionListener:Landroid/hardware/motion/MRListener;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/vlingo/client/car/CarActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/vlingo/client/car/CarActivity;->stopDoubleTapMonitor()V

    return-void
.end method

.method static synthetic access$1500(Lcom/vlingo/client/car/CarActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/vlingo/client/car/CarActivity;->startDoubleTapMonitor()V

    return-void
.end method

.method static synthetic access$1600(Lcom/vlingo/client/car/CarActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/vlingo/client/car/CarActivity;->disableOrientationChange()V

    return-void
.end method

.method static synthetic access$1700(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/car/CarHeaderView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->headerView:Lcom/vlingo/client/car/CarHeaderView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/car/CarRecoButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->recoButton:Lcom/vlingo/client/car/CarRecoButton;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/vlingo/client/car/CarActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/vlingo/client/car/CarActivity;->isCurrentApp()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/vlingo/client/car/CarActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/vlingo/client/car/CarActivity;->onRecognitionStartRequested()V

    return-void
.end method

.method static synthetic access$2100(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/core/tts/TTSDemand;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->recoTTSPrompt:Lcom/vlingo/client/core/tts/TTSDemand;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/vlingo/client/car/CarActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->currentShownPrompt:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/car/PromptContent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->currentPromptContent:Lcom/vlingo/client/car/PromptContent;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/vlingo/client/car/CarActivity;ZLjava/lang/String;Lcom/vlingo/client/car/PromptContent;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/vlingo/client/car/CarActivity;->onShowListeningStarting(ZLjava/lang/String;Lcom/vlingo/client/car/PromptContent;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/core/recognizer/SRContext;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->curContext:Lcom/vlingo/client/core/recognizer/SRContext;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/vlingo/client/car/CarActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/vlingo/client/car/CarActivity;->cancelRecognition()V

    return-void
.end method

.method static synthetic access$2700(Lcom/vlingo/client/car/CarActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/vlingo/client/car/CarActivity;->enableOrientationChange()V

    return-void
.end method

.method static synthetic access$400(Lcom/vlingo/client/car/CarActivity;Landroid/content/Intent;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/vlingo/client/car/CarActivity;->checkForBluetoothAction(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/vlingo/client/car/CarActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/vlingo/client/car/CarActivity;->handleAnyNewIntent()V

    return-void
.end method

.method static synthetic access$600(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/car/CarActivity$DataObjectHandle;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vlingo/client/car/CarActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget v0, p0, Lcom/vlingo/client/car/CarActivity;->startPhraseSpotDelay:I

    return v0
.end method

.method static synthetic access$702(Lcom/vlingo/client/car/CarActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 94
    iput p1, p0, Lcom/vlingo/client/car/CarActivity;->startPhraseSpotDelay:I

    return p1
.end method

.method static synthetic access$800(Lcom/vlingo/client/car/CarActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->messageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/vlingo/client/car/CarActivity;)Lcom/vlingo/client/car/asr/CarRecognizer;
    .registers 2
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->recognizer:Lcom/vlingo/client/car/asr/CarRecognizer;

    return-object v0
.end method

.method private declared-synchronized cancelRecognition()V
    .registers 2

    .prologue
    .line 762
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v0, v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->ttsManager:Lcom/vlingo/client/car/tts/CarTTSManager;

    invoke-virtual {v0}, Lcom/vlingo/client/car/tts/CarTTSManager;->cancel()V

    .line 763
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->recognizer:Lcom/vlingo/client/car/asr/CarRecognizer;

    invoke-virtual {v0}, Lcom/vlingo/client/car/asr/CarRecognizer;->cancel()V

    .line 766
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v0, v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->phraseSpotterHandler:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    invoke-virtual {v0}, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->startPhraseSpottingDelayed()V

    .line 768
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vlingo/client/car/CarActivity;->onShowReady(Z)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 769
    monitor-exit p0

    return-void

    .line 762
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private checkForBluetoothAction(Landroid/content/Intent;)Z
    .registers 12
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    .line 383
    const-string v7, "android.intent.action.VOICE_COMMAND"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 385
    .local v5, voiceCommandIntent:Z
    const-string v7, "AUTO_LISTEN"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 386
    .local v0, autoListenExtra:Z
    const-string v7, "CHECK_SCHEDULE_ENABLED"

    invoke-virtual {p1, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 388
    .local v1, checkScheduleEnabled:Z
    if-nez v5, :cond_1e

    if-nez v0, :cond_1e

    if-eqz v1, :cond_3e

    .line 390
    :cond_1e
    const-string v7, "listen_over_bluetooth"

    invoke-static {v7, v6}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 391
    .local v4, useBluetoothForAudio:Z
    if-eqz v4, :cond_3e

    invoke-static {}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->isHeadsetConnected()Z

    move-result v7

    if-eqz v7, :cond_3e

    invoke-static {}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->isBluetoothAudioOn()Z

    move-result v7

    if-nez v7, :cond_3e

    .line 392
    new-instance v7, Lcom/vlingo/client/car/CarActivity$2;

    invoke-direct {v7, p0, p1}, Lcom/vlingo/client/car/CarActivity$2;-><init>(Lcom/vlingo/client/car/CarActivity;Landroid/content/Intent;)V

    const-wide/16 v8, 0x7d0

    invoke-static {v7, v8, v9}, Lcom/vlingo/client/android/core/bluetooth/BluetoothManager;->runTaskOnBluetoothAudioOn(Ljava/lang/Runnable;J)V

    move v3, v6

    .line 423
    .end local v4           #useBluetoothForAudio:Z
    :cond_3d
    :goto_3d
    return v3

    .line 403
    :cond_3e
    if-eqz v5, :cond_52

    if-eqz v1, :cond_52

    .line 404
    invoke-static {p0}, Lcom/vlingo/client/car/util/CheckPhoneEvents;->getInstance(Lcom/vlingo/client/car/CarActivityDelegate;)Lcom/vlingo/client/car/util/CheckPhoneEvents;

    move-result-object v7

    invoke-virtual {v7}, Lcom/vlingo/client/car/util/CheckPhoneEvents;->check()Z

    move-result v7

    iput-boolean v7, p0, Lcom/vlingo/client/car/CarActivity;->synthesizingEvents:Z

    .line 405
    iget-boolean v7, p0, Lcom/vlingo/client/car/CarActivity;->synthesizingEvents:Z

    if-eqz v7, :cond_52

    move v3, v6

    .line 406
    goto :goto_3d

    .line 409
    :cond_52
    const/4 v3, 0x0

    .line 410
    .local v3, toReturn:Z
    if-nez v5, :cond_57

    if-eqz v0, :cond_3d

    .line 411
    :cond_57
    iget-object v7, p0, Lcom/vlingo/client/car/CarActivity;->recognizer:Lcom/vlingo/client/car/asr/CarRecognizer;

    invoke-virtual {v7}, Lcom/vlingo/client/car/asr/CarRecognizer;->isRunning()Z

    move-result v7

    if-nez v7, :cond_3d

    .line 412
    iget-object v7, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v7}, Lcom/vlingo/client/scroller/ScrollableContainer;->getCurrentItem()Lcom/vlingo/client/scroller/ScrollableItem;

    move-result-object v2

    check-cast v2, Lcom/vlingo/client/car/CarScrollableItem;

    .line 415
    .local v2, curItem:Lcom/vlingo/client/car/CarScrollableItem;
    invoke-virtual {v2}, Lcom/vlingo/client/car/CarScrollableItem;->isOverloadingBottomContainer()Z

    move-result v7

    if-nez v7, :cond_3d

    iget-object v7, p0, Lcom/vlingo/client/car/CarActivity;->overloadedBottomView:Landroid/view/View;

    if-nez v7, :cond_3d

    .line 418
    sget-object v7, Lcom/vlingo/client/car/CarActivity$NewIntentAction;->StartListening:Lcom/vlingo/client/car/CarActivity$NewIntentAction;

    iput-object v7, p0, Lcom/vlingo/client/car/CarActivity;->newIntentAction:Lcom/vlingo/client/car/CarActivity$NewIntentAction;

    move v3, v6

    .line 419
    goto :goto_3d
.end method

.method private createMessageHandler()V
    .registers 2

    .prologue
    .line 1932
    new-instance v0, Lcom/vlingo/client/car/CarActivity$9;

    invoke-direct {v0, p0}, Lcom/vlingo/client/car/CarActivity$9;-><init>(Lcom/vlingo/client/car/CarActivity;)V

    iput-object v0, p0, Lcom/vlingo/client/car/CarActivity;->messageHandler:Landroid/os/Handler;

    .line 1973
    return-void
.end method

.method private disableOrientationChange()V
    .registers 3

    .prologue
    .line 892
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarActivity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/vlingo/client/car/CarActivity;->orientationWhenLocked:I

    .line 901
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->messageHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 902
    invoke-direct {p0}, Lcom/vlingo/client/car/CarActivity;->getOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/CarActivity;->setRequestedOrientation(I)V

    .line 903
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/car/CarActivity;->orientationLocked:Z

    .line 904
    return-void
.end method

.method private enableOrientationChange()V
    .registers 2

    .prologue
    .line 1113
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/CarActivity;->setRequestedOrientation(I)V

    .line 1114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/car/CarActivity;->orientationLocked:Z

    .line 1115
    return-void
.end method

.method private enableOrientationChangeDelayed()V
    .registers 5

    .prologue
    const/4 v2, 0x2

    .line 1120
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->messageHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1121
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->messageHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity;->messageHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1125
    return-void
.end method

.method private getOrientation()I
    .registers 4

    .prologue
    .line 1128
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 1129
    .local v1, rotation:I
    const/4 v0, 0x1

    .line 1130
    .local v0, orientation:I
    packed-switch v1, :pswitch_data_1e

    .line 1141
    :goto_14
    return v0

    .line 1132
    :pswitch_15
    const/4 v0, 0x0

    .line 1133
    goto :goto_14

    .line 1135
    :pswitch_17
    const/16 v0, 0x9

    .line 1136
    goto :goto_14

    .line 1138
    :pswitch_1a
    const/16 v0, 0x8

    goto :goto_14

    .line 1130
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_15
        :pswitch_17
        :pswitch_1a
    .end packed-switch
.end method

.method private handleAnyNewIntent()V
    .registers 3

    .prologue
    .line 427
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->newIntentAction:Lcom/vlingo/client/car/CarActivity$NewIntentAction;

    if-eqz v0, :cond_14

    .line 430
    sget-object v0, Lcom/vlingo/client/car/CarActivity$10;->$SwitchMap$com$vlingo$client$car$CarActivity$NewIntentAction:[I

    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity;->newIntentAction:Lcom/vlingo/client/car/CarActivity$NewIntentAction;

    invoke-virtual {v1}, Lcom/vlingo/client/car/CarActivity$NewIntentAction;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2a

    .line 443
    :cond_11
    :goto_11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/car/CarActivity;->newIntentAction:Lcom/vlingo/client/car/CarActivity$NewIntentAction;

    .line 445
    :cond_14
    return-void

    .line 432
    :pswitch_15
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->recognizer:Lcom/vlingo/client/car/asr/CarRecognizer;

    invoke-virtual {v0}, Lcom/vlingo/client/car/asr/CarRecognizer;->isRunning()Z

    move-result v0

    if-nez v0, :cond_11

    .line 433
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarActivity;->onReadyButtonClicked()V

    goto :goto_11

    .line 437
    :pswitch_21
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarActivity;->onDoneListeningButtonClicked()V

    goto :goto_11

    .line 440
    :pswitch_25
    invoke-direct {p0}, Lcom/vlingo/client/car/CarActivity;->cancelRecognition()V

    goto :goto_11

    .line 430
    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_15
        :pswitch_21
        :pswitch_25
    .end packed-switch
.end method

.method private declared-synchronized initTaskItem(Lcom/vlingo/client/car/CarScrollableItem;Lcom/vlingo/client/car/TaskController;)V
    .registers 4
    .parameter "item"
    .parameter "controller"

    .prologue
    .line 1976
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1, p2}, Lcom/vlingo/client/car/CarScrollableItem;->setTaskController(Lcom/vlingo/client/car/TaskController;)V

    .line 1977
    invoke-virtual {p1, p0}, Lcom/vlingo/client/car/CarScrollableItem;->setCarActivityDelegate(Lcom/vlingo/client/car/CarActivityDelegate;)V

    .line 1978
    invoke-virtual {p1}, Lcom/vlingo/client/car/CarScrollableItem;->supportsAutoListen()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1979
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/vlingo/client/car/CarScrollableItem;->setAutoListenShouldTrigger(Z)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 1981
    :cond_11
    monitor-exit p0

    return-void

    .line 1976
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isCurrentApp()Z
    .registers 6

    .prologue
    .line 1249
    iget-object v3, p0, Lcom/vlingo/client/car/CarActivity;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v3, :cond_e

    .line 1250
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Lcom/vlingo/client/car/CarActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    iput-object v3, p0, Lcom/vlingo/client/car/CarActivity;->mActivityManager:Landroid/app/ActivityManager;

    .line 1251
    :cond_e
    iget-object v3, p0, Lcom/vlingo/client/car/CarActivity;->mPackageName:Ljava/lang/String;

    if-nez v3, :cond_18

    .line 1252
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vlingo/client/car/CarActivity;->mPackageName:Ljava/lang/String;

    .line 1254
    :cond_18
    iget-object v3, p0, Lcom/vlingo/client/car/CarActivity;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 1255
    .local v1, appProcesses:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1256
    .local v0, appProcess:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_22

    .line 1257
    iget-object v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v4, p0, Lcom/vlingo/client/car/CarActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_22

    .line 1258
    const/4 v3, 0x1

    .line 1261
    .end local v0           #appProcess:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_3f
    return v3

    :cond_40
    const/4 v3, 0x0

    goto :goto_3f
.end method

.method private declared-synchronized maybeEnableOrientationChange(Z)V
    .registers 4
    .parameter "delayed"

    .prologue
    .line 875
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->recoState:Lcom/vlingo/client/car/CarActivity$RecoState;

    sget-object v1, Lcom/vlingo/client/car/CarActivity$RecoState;->UNINITIALIZED:Lcom/vlingo/client/car/CarActivity$RecoState;

    if-eq v0, v1, :cond_d

    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->recoState:Lcom/vlingo/client/car/CarActivity$RecoState;

    sget-object v1, Lcom/vlingo/client/car/CarActivity$RecoState;->READY:Lcom/vlingo/client/car/CarActivity$RecoState;

    if-ne v0, v1, :cond_1e

    :cond_d
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getCurrentScreenIndex()I

    move-result v0

    if-gtz v0, :cond_1e

    iget-boolean v0, p0, Lcom/vlingo/client/car/CarActivity;->creatingNewTask:Z

    if-nez v0, :cond_1e

    .line 878
    if-eqz p1, :cond_20

    .line 879
    invoke-direct {p0}, Lcom/vlingo/client/car/CarActivity;->enableOrientationChangeDelayed()V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_24

    .line 887
    :cond_1e
    :goto_1e
    monitor-exit p0

    return-void

    .line 881
    :cond_20
    :try_start_20
    invoke-direct {p0}, Lcom/vlingo/client/car/CarActivity;->enableOrientationChange()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_24

    goto :goto_1e

    .line 875
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private onRecognitionStartRequested()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 952
    sget-object v3, Lcom/vlingo/client/car/CarActivity$10;->$SwitchMap$com$vlingo$client$core$deviceinfo$PhoneInfo$ConnectState:[I

    invoke-static {}, Lcom/vlingo/client/core/deviceinfo/PhoneInfo;->getInstance()Lcom/vlingo/client/core/deviceinfo/PhoneInfo;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/vlingo/client/core/deviceinfo/PhoneInfo;->isReadyToConnect(Z)Lcom/vlingo/client/core/deviceinfo/PhoneInfo$ConnectState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vlingo/client/core/deviceinfo/PhoneInfo$ConnectState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_7a

    .line 981
    :goto_15
    return-void

    .line 954
    :pswitch_16
    iget-object v3, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v3, v3, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->recoResponderChain:Lcom/vlingo/client/car/asr/RecoResponderChain;

    invoke-virtual {v3}, Lcom/vlingo/client/car/asr/RecoResponderChain;->getTopResponder()Lcom/vlingo/client/car/asr/RecoResponder;

    move-result-object v3

    invoke-interface {v3}, Lcom/vlingo/client/car/asr/RecoResponder;->getSRContext()Lcom/vlingo/client/core/recognizer/SRContext;

    move-result-object v0

    .line 958
    .local v0, context:Lcom/vlingo/client/core/recognizer/SRContext;
    iget-object v3, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v3, v3, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->recoResponderChain:Lcom/vlingo/client/car/asr/RecoResponderChain;

    invoke-virtual {v3}, Lcom/vlingo/client/car/asr/RecoResponderChain;->getTopResponder()Lcom/vlingo/client/car/asr/RecoResponder;

    move-result-object v3

    invoke-interface {v3}, Lcom/vlingo/client/car/asr/RecoResponder;->getSpokenPrompt()Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v2

    .line 960
    .local v2, spokenPrompt:Lcom/vlingo/client/core/tts/TTSDemand;
    if-nez v2, :cond_30

    .line 966
    :cond_30
    iget-object v3, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v3, v3, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->recoResponderChain:Lcom/vlingo/client/car/asr/RecoResponderChain;

    invoke-virtual {v3}, Lcom/vlingo/client/car/asr/RecoResponderChain;->getTopResponder()Lcom/vlingo/client/car/asr/RecoResponder;

    move-result-object v3

    invoke-interface {v3}, Lcom/vlingo/client/car/asr/RecoResponder;->getShownPrompt()Ljava/lang/String;

    move-result-object v1

    .line 967
    .local v1, shownPrompt:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/vlingo/client/core/recognizer/SRContext;->getFieldID()Ljava/lang/String;

    move-result-object v3

    const-string v4, "vp_car_main_generic"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 968
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->updateCurrentLocale()V

    .line 969
    iget-object v3, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v3, v3, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->carActivityRef:Lcom/vlingo/client/car/CarActivity;

    invoke-virtual {p0}, Lcom/vlingo/client/car/CarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lcom/vlingo/client/car/PromptContent;->getGenericPrompt(Landroid/content/res/Resources;)Lcom/vlingo/client/car/PromptContent;

    move-result-object v4

    invoke-virtual {v3, v0, v2, v1, v4}, Lcom/vlingo/client/car/CarActivity;->startRecognition(Lcom/vlingo/client/core/recognizer/SRContext;Lcom/vlingo/client/core/tts/TTSDemand;Ljava/lang/String;Lcom/vlingo/client/car/PromptContent;)V

    goto :goto_15

    .line 972
    :cond_5b
    iget-object v3, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v3, v3, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->carActivityRef:Lcom/vlingo/client/car/CarActivity;

    invoke-virtual {v3, v0, v2, v1}, Lcom/vlingo/client/car/CarActivity;->startRecognition(Lcom/vlingo/client/core/recognizer/SRContext;Lcom/vlingo/client/core/tts/TTSDemand;Ljava/lang/String;)V

    goto :goto_15

    .line 976
    .end local v0           #context:Lcom/vlingo/client/core/recognizer/SRContext;
    .end local v1           #shownPrompt:Ljava/lang/String;
    .end local v2           #spokenPrompt:Lcom/vlingo/client/core/tts/TTSDemand;
    :pswitch_63
    const v3, 0x7f09033e

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_15

    .line 979
    :pswitch_6e
    const v3, 0x7f09031f

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_15

    .line 952
    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_16
        :pswitch_63
        :pswitch_6e
    .end packed-switch
.end method

.method private declared-synchronized onShowListeningStarted()V
    .registers 3

    .prologue
    .line 832
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->recoState:Lcom/vlingo/client/car/CarActivity$RecoState;

    sget-object v1, Lcom/vlingo/client/car/CarActivity$RecoState;->LISTENING_STARTING:Lcom/vlingo/client/car/CarActivity$RecoState;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_21

    if-eq v0, v1, :cond_9

    .line 845
    :goto_7
    monitor-exit p0

    return-void

    .line 838
    :cond_9
    :try_start_9
    sget-object v0, Lcom/vlingo/client/car/CarActivity$RecoState;->LISTENING_STARTED:Lcom/vlingo/client/car/CarActivity$RecoState;

    iput-object v0, p0, Lcom/vlingo/client/car/CarActivity;->recoState:Lcom/vlingo/client/car/CarActivity$RecoState;

    .line 839
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->popupContainer:Lcom/vlingo/client/car/CarPopup;

    invoke-virtual {v0}, Lcom/vlingo/client/car/CarPopup;->showListeningStarted()V

    .line 840
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->recoButton:Lcom/vlingo/client/car/CarRecoButton;

    invoke-virtual {v0}, Lcom/vlingo/client/car/CarRecoButton;->showListeningStarted()V

    .line 841
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->headerView:Lcom/vlingo/client/car/CarHeaderView;

    invoke-virtual {v0}, Lcom/vlingo/client/car/CarHeaderView;->showListeningStatus()V

    .line 844
    sget-object v0, Lcom/vlingo/client/car/CarActivity$RecoState;->LISTENING_STARTED:Lcom/vlingo/client/car/CarActivity$RecoState;

    iput-object v0, p0, Lcom/vlingo/client/car/CarActivity;->recoState:Lcom/vlingo/client/car/CarActivity$RecoState;
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_21

    goto :goto_7

    .line 832
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onShowListeningStarting(ZLjava/lang/String;Lcom/vlingo/client/car/PromptContent;)V
    .registers 8
    .parameter "animated"
    .parameter "prompt"
    .parameter "content"

    .prologue
    .line 803
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/vlingo/client/car/CarActivity;->recoState:Lcom/vlingo/client/car/CarActivity$RecoState;

    sget-object v3, Lcom/vlingo/client/car/CarActivity$RecoState;->READY:Lcom/vlingo/client/car/CarActivity$RecoState;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_5d

    if-eq v2, v3, :cond_9

    .line 826
    :goto_7
    monitor-exit p0

    return-void

    .line 806
    :cond_9
    :try_start_9
    sget-object v2, Lcom/vlingo/client/car/CarActivity$RecoState;->LISTENING_STARTING:Lcom/vlingo/client/car/CarActivity$RecoState;

    iput-object v2, p0, Lcom/vlingo/client/car/CarActivity;->recoState:Lcom/vlingo/client/car/CarActivity$RecoState;

    .line 808
    iget-object v2, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v2}, Lcom/vlingo/client/scroller/ScrollableContainer;->getCurrentItem()Lcom/vlingo/client/scroller/ScrollableItem;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/car/CarScrollableItem;

    .line 809
    .local v0, curItem:Lcom/vlingo/client/car/CarScrollableItem;
    invoke-virtual {v0}, Lcom/vlingo/client/car/CarScrollableItem;->lockScreenOnStartListen()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 810
    iget-object v2, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v2}, Lcom/vlingo/client/scroller/ScrollableContainer;->lock()V

    .line 812
    :cond_20
    if-eqz p2, :cond_29

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_29

    .line 813
    const/4 p2, 0x0

    .line 815
    :cond_29
    if-eqz p2, :cond_60

    const/4 v2, 0x1

    :goto_2c
    iput-boolean v2, p0, Lcom/vlingo/client/car/CarActivity;->recoShowingStatus:Z

    .line 817
    const/4 v1, 0x0

    .line 818
    .local v1, promptExamples:[Lcom/vlingo/client/car/Hints$PromptExample;
    iget-boolean v2, p0, Lcom/vlingo/client/car/CarActivity;->recoShowingStatus:Z

    if-eqz v2, :cond_4d

    iget-object v2, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v2}, Lcom/vlingo/client/scroller/ScrollableContainer;->getCurrentScreenIndex()I

    move-result v2

    if-nez v2, :cond_4d

    iget-object v2, p0, Lcom/vlingo/client/car/CarActivity;->curContext:Lcom/vlingo/client/core/recognizer/SRContext;

    invoke-virtual {v2}, Lcom/vlingo/client/core/recognizer/SRContext;->getFieldID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "vp_car_main_generic"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 819
    invoke-static {}, Lcom/vlingo/client/car/Hints;->getRandomPromptExamples()[Lcom/vlingo/client/car/Hints$PromptExample;

    move-result-object v1

    .line 822
    :cond_4d
    iget-object v2, p0, Lcom/vlingo/client/car/CarActivity;->popupContainer:Lcom/vlingo/client/car/CarPopup;

    invoke-virtual {v2, p2, v1, p1, p3}, Lcom/vlingo/client/car/CarPopup;->showListeningStartingWithPromptPopup(Ljava/lang/String;[Lcom/vlingo/client/car/Hints$PromptExample;ZLcom/vlingo/client/car/PromptContent;)V

    .line 824
    iget-object v2, p0, Lcom/vlingo/client/car/CarActivity;->recoButton:Lcom/vlingo/client/car/CarRecoButton;

    invoke-virtual {v2, p1}, Lcom/vlingo/client/car/CarRecoButton;->showListeningStarting(Z)V

    .line 825
    iget-object v2, p0, Lcom/vlingo/client/car/CarActivity;->headerView:Lcom/vlingo/client/car/CarHeaderView;

    invoke-virtual {v2}, Lcom/vlingo/client/car/CarHeaderView;->showWait()V
    :try_end_5c
    .catchall {:try_start_9 .. :try_end_5c} :catchall_5d

    goto :goto_7

    .line 803
    .end local v0           #curItem:Lcom/vlingo/client/car/CarScrollableItem;
    .end local v1           #promptExamples:[Lcom/vlingo/client/car/Hints$PromptExample;
    :catchall_5d
    move-exception v2

    monitor-exit p0

    throw v2

    .line 815
    .restart local v0       #curItem:Lcom/vlingo/client/car/CarScrollableItem;
    :cond_60
    const/4 v2, 0x0

    goto :goto_2c
.end method

.method private declared-synchronized onShowReady(Z)V
    .registers 4
    .parameter "animated"

    .prologue
    .line 775
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->recoState:Lcom/vlingo/client/car/CarActivity$RecoState;

    sget-object v1, Lcom/vlingo/client/car/CarActivity$RecoState;->READY:Lcom/vlingo/client/car/CarActivity$RecoState;

    if-ne v0, v1, :cond_d

    .line 776
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vlingo/client/car/CarActivity;->updateRecoButtonReadyState(Z)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_26

    .line 792
    :goto_b
    monitor-exit p0

    return-void

    .line 780
    :cond_d
    :try_start_d
    sget-object v0, Lcom/vlingo/client/car/CarActivity$RecoState;->READY:Lcom/vlingo/client/car/CarActivity$RecoState;

    iput-object v0, p0, Lcom/vlingo/client/car/CarActivity;->recoState:Lcom/vlingo/client/car/CarActivity$RecoState;

    .line 782
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vlingo/client/car/CarActivity;->maybeEnableOrientationChange(Z)V

    .line 783
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v0}, Lcom/vlingo/client/scroller/ScrollableContainer;->unlock()V

    .line 785
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->popupContainer:Lcom/vlingo/client/car/CarPopup;

    invoke-virtual {v0, p1}, Lcom/vlingo/client/car/CarPopup;->hide(Z)V

    .line 786
    invoke-direct {p0, p1}, Lcom/vlingo/client/car/CarActivity;->updateRecoButtonReadyState(Z)V

    .line 787
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarActivity;->setHeaderBasedOnCurrentItem()V
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_26

    goto :goto_b

    .line 775
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onShowThinking(Z)V
    .registers 4
    .parameter "animated"

    .prologue
    .line 851
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->recoState:Lcom/vlingo/client/car/CarActivity$RecoState;

    sget-object v1, Lcom/vlingo/client/car/CarActivity$RecoState;->LISTENING_STARTED:Lcom/vlingo/client/car/CarActivity$RecoState;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_1d

    if-eq v0, v1, :cond_9

    .line 860
    :goto_7
    monitor-exit p0

    return-void

    .line 854
    :cond_9
    :try_start_9
    sget-object v0, Lcom/vlingo/client/car/CarActivity$RecoState;->THINKING:Lcom/vlingo/client/car/CarActivity$RecoState;

    iput-object v0, p0, Lcom/vlingo/client/car/CarActivity;->recoState:Lcom/vlingo/client/car/CarActivity$RecoState;

    .line 855
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->popupContainer:Lcom/vlingo/client/car/CarPopup;

    invoke-virtual {v0}, Lcom/vlingo/client/car/CarPopup;->showThinking()V

    .line 856
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->recoButton:Lcom/vlingo/client/car/CarRecoButton;

    invoke-virtual {v0, p1}, Lcom/vlingo/client/car/CarRecoButton;->showThinking(Z)V

    .line 857
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->headerView:Lcom/vlingo/client/car/CarHeaderView;

    invoke-virtual {v0}, Lcom/vlingo/client/car/CarHeaderView;->showThinkingStatus()V
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_1d

    goto :goto_7

    .line 851
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private showCarHelp()V
    .registers 3

    .prologue
    .line 2111
    invoke-direct {p0}, Lcom/vlingo/client/car/CarActivity;->cancelRecognition()V

    .line 2112
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vlingo/client/car/CarHelpScreen;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2113
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/CarActivity;->startActivity(Landroid/content/Intent;)V

    .line 2114
    return-void
.end method

.method private showCarSettings()V
    .registers 3

    .prologue
    .line 2104
    invoke-direct {p0}, Lcom/vlingo/client/car/CarActivity;->cancelRecognition()V

    .line 2105
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vlingo/client/car/CarSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2107
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/CarActivity;->startActivity(Landroid/content/Intent;)V

    .line 2108
    return-void
.end method

.method private startDoubleTapMonitor()V
    .registers 5

    .prologue
    .line 1265
    sget-object v1, Lcom/vlingo/client/car/CarActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v1, :cond_e

    .line 1266
    const-string v1, "motion_recognition"

    invoke-virtual {p0, v1}, Lcom/vlingo/client/car/CarActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v1, Lcom/vlingo/client/car/CarActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 1268
    :cond_e
    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity;->mMotionListener:Landroid/hardware/motion/MRListener;

    if-nez v1, :cond_25

    .line 1269
    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v1, v1, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->recoResponderChain:Lcom/vlingo/client/car/asr/RecoResponderChain;

    invoke-virtual {v1}, Lcom/vlingo/client/car/asr/RecoResponderChain;->getTopResponder()Lcom/vlingo/client/car/asr/RecoResponder;

    move-result-object v1

    invoke-interface {v1}, Lcom/vlingo/client/car/asr/RecoResponder;->getSRContext()Lcom/vlingo/client/core/recognizer/SRContext;

    move-result-object v0

    .line 1272
    .local v0, debugContext:Lcom/vlingo/client/core/recognizer/SRContext;
    new-instance v1, Lcom/vlingo/client/car/CarActivity$4;

    invoke-direct {v1, p0}, Lcom/vlingo/client/car/CarActivity$4;-><init>(Lcom/vlingo/client/car/CarActivity;)V

    iput-object v1, p0, Lcom/vlingo/client/car/CarActivity;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 1288
    .end local v0           #debugContext:Lcom/vlingo/client/core/recognizer/SRContext;
    :cond_25
    sget-object v1, Lcom/vlingo/client/car/CarActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity;->mMotionListener:Landroid/hardware/motion/MRListener;

    if-eqz v1, :cond_35

    .line 1289
    sget-object v1, Lcom/vlingo/client/car/CarActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v2, p0, Lcom/vlingo/client/car/CarActivity;->mMotionListener:Landroid/hardware/motion/MRListener;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;I)V

    .line 1293
    :cond_35
    return-void
.end method

.method private stopDoubleTapMonitor()V
    .registers 3

    .prologue
    .line 1296
    sget-object v0, Lcom/vlingo/client/car/CarActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->mMotionListener:Landroid/hardware/motion/MRListener;

    if-eqz v0, :cond_f

    .line 1297
    sget-object v0, Lcom/vlingo/client/car/CarActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 1299
    :cond_f
    return-void
.end method

.method private unpackSavedInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x0

    .line 461
    if-eqz p1, :cond_23

    .line 462
    const-string v0, "initialStateChecked"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vlingo/client/car/CarActivity;->initialStateChecked:Z

    .line 463
    const-string v0, "wasSafeReaderOnBeforeStart"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vlingo/client/car/CarActivity;->wasSafeReaderOnBeforeStart:Z

    .line 464
    const-string v0, "spokeBluetoothCheckSchedule"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vlingo/client/car/CarActivity;->spokeBluetoothCheckSchedule:Z

    .line 465
    const-string v0, "startedWithCarDock"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vlingo/client/car/CarActivity;->startedWithCarDock:Z

    .line 467
    :cond_23
    return-void
.end method

.method private updateRecoButtonReadyState(Z)V
    .registers 7
    .parameter "animated"

    .prologue
    .line 795
    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v1}, Lcom/vlingo/client/scroller/ScrollableContainer;->getCurrentItem()Lcom/vlingo/client/scroller/ScrollableItem;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/car/CarScrollableItem;

    .line 796
    .local v0, curItem:Lcom/vlingo/client/car/CarScrollableItem;
    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity;->recoButton:Lcom/vlingo/client/car/CarRecoButton;

    invoke-virtual {v0}, Lcom/vlingo/client/car/CarScrollableItem;->displayTryAgain()Z

    move-result v2

    invoke-virtual {v0}, Lcom/vlingo/client/car/CarScrollableItem;->displayLabel()Z

    move-result v3

    invoke-virtual {v0}, Lcom/vlingo/client/car/CarScrollableItem;->getRecoButtonDisplayLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/vlingo/client/car/CarRecoButton;->showReady(ZZZLjava/lang/String;)V

    .line 797
    return-void
.end method


# virtual methods
.method public executeActionList(Lcom/vlingo/client/core/vlservice/response/ActionList;)V
    .registers 4
    .parameter "actionList"

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->dispatcher:Lcom/vlingo/client/car/vvs/CarVVSDispatcher;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/vlingo/client/car/vvs/CarVVSDispatcher;->processActionList(Lcom/vlingo/client/core/vlservice/response/ActionList;Z)V

    .line 1375
    return-void
.end method

.method public finishAndExecuteActionList(Lcom/vlingo/client/core/vlservice/response/ActionList;)V
    .registers 4
    .parameter "actionList"

    .prologue
    .line 1369
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarActivity;->finish()V

    .line 1370
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->dispatcher:Lcom/vlingo/client/car/vvs/CarVVSDispatcher;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/vlingo/client/car/vvs/CarVVSDispatcher;->processActionList(Lcom/vlingo/client/core/vlservice/response/ActionList;Z)V

    .line 1371
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .registers 1

    .prologue
    .line 1378
    return-object p0
.end method

.method public getCurrentTaskController()Lcom/vlingo/client/car/TaskController;
    .registers 3

    .prologue
    .line 1531
    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v1}, Lcom/vlingo/client/scroller/ScrollableContainer;->getCurrentItem()Lcom/vlingo/client/scroller/ScrollableItem;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/car/CarScrollableItem;

    .line 1532
    .local v0, curItem:Lcom/vlingo/client/car/CarScrollableItem;
    invoke-virtual {v0}, Lcom/vlingo/client/car/CarScrollableItem;->getTaskController()Lcom/vlingo/client/car/TaskController;

    move-result-object v1

    return-object v1
.end method

.method public getCurrentTaskItem()Lcom/vlingo/client/car/CarScrollableItem;
    .registers 2

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    if-eqz v0, :cond_d

    .line 1510
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getCurrentItem()Lcom/vlingo/client/scroller/ScrollableItem;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/car/CarScrollableItem;

    .line 1512
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getLastResults()Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;
    .registers 2

    .prologue
    .line 2117
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->dispatcher:Lcom/vlingo/client/car/vvs/CarVVSDispatcher;

    invoke-virtual {v0}, Lcom/vlingo/client/car/vvs/CarVVSDispatcher;->getLastResults()Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;

    move-result-object v0

    return-object v0
.end method

.method public getPhraseSpotterHandler()Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v0, v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->phraseSpotterHandler:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    return-object v0
.end method

.method public getSRContext()Lcom/vlingo/client/core/recognizer/SRContext;
    .registers 3

    .prologue
    .line 1823
    new-instance v0, Lcom/vlingo/client/asr/AndroidSRContext;

    const-string v1, "vp_car_main_generic"

    invoke-direct {v0, v1}, Lcom/vlingo/client/asr/AndroidSRContext;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getShownPrompt()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1827
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpokenPrompt()Lcom/vlingo/client/core/tts/TTSDemand;
    .registers 2

    .prologue
    .line 1831
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTTSManager()Lcom/vlingo/client/car/tts/CarTTSManager;
    .registers 2

    .prologue
    .line 1626
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v0, v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->ttsManager:Lcom/vlingo/client/car/tts/CarTTSManager;

    return-object v0
.end method

.method public getTaskItems()[Lcom/vlingo/client/car/CarScrollableItem;
    .registers 8

    .prologue
    .line 1516
    iget-object v5, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v5}, Lcom/vlingo/client/scroller/ScrollableContainer;->getAllScrollableItems()[Lcom/vlingo/client/scroller/ScrollableItem;

    move-result-object v5

    check-cast v5, [Lcom/vlingo/client/car/CarScrollableItem;

    move-object v1, v5

    check-cast v1, [Lcom/vlingo/client/car/CarScrollableItem;

    .line 1517
    .local v1, items:[Lcom/vlingo/client/car/CarScrollableItem;
    array-length v5, v1

    const/4 v6, 0x1

    if-le v5, v6, :cond_25

    .line 1518
    array-length v5, v1

    add-int/lit8 v5, v5, 0x0

    add-int/lit8 v5, v5, 0x1

    new-array v4, v5, [Lcom/vlingo/client/car/CarScrollableItem;

    .line 1519
    .local v4, taskItems:[Lcom/vlingo/client/car/CarScrollableItem;
    const/4 v2, 0x0

    .line 1520
    .local v2, j:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_18
    array-length v5, v1

    if-ge v0, v5, :cond_28

    .line 1521
    add-int/lit8 v3, v2, 0x1

    .end local v2           #j:I
    .local v3, j:I
    aget-object v5, v1, v0

    aput-object v5, v4, v2

    .line 1520
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    .end local v3           #j:I
    .restart local v2       #j:I
    goto :goto_18

    .line 1525
    .end local v0           #i:I
    .end local v2           #j:I
    .end local v4           #taskItems:[Lcom/vlingo/client/car/CarScrollableItem;
    :cond_25
    const/4 v5, 0x0

    new-array v1, v5, [Lcom/vlingo/client/car/CarScrollableItem;

    .line 1527
    .end local v1           #items:[Lcom/vlingo/client/car/CarScrollableItem;
    :cond_28
    return-object v1
.end method

.method public getWakeupPhraseSpotter()Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v0, v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->wakeupPhraseSpotter:Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;

    return-object v0
.end method

.method public handleLPAction(Ljava/lang/String;)Z
    .registers 4
    .parameter "action"

    .prologue
    const/4 v0, 0x1

    .line 1803
    if-eqz p1, :cond_33

    .line 1804
    const-string v1, "cancel"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "safereader:cancel"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1805
    :cond_13
    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v1, v1, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->carActivityRef:Lcom/vlingo/client/car/CarActivity;

    invoke-virtual {v1}, Lcom/vlingo/client/car/CarActivity;->taskFinished()V

    .line 1806
    new-instance v1, Lcom/vlingo/client/car/CarActivity$7;

    invoke-direct {v1, p0}, Lcom/vlingo/client/car/CarActivity$7;-><init>(Lcom/vlingo/client/car/CarActivity;)V

    invoke-static {v1}, Lcom/vlingo/client/util/ActivityUtil;->scheduleOnMainThread(Ljava/lang/Runnable;)V

    .line 1815
    :goto_22
    return v0

    .line 1810
    :cond_23
    const-string v1, "exit"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1811
    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v1, v1, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->carActivityRef:Lcom/vlingo/client/car/CarActivity;

    invoke-virtual {v1}, Lcom/vlingo/client/car/CarActivity;->finish()V

    goto :goto_22

    .line 1815
    :cond_33
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public handleUnsupportedActionList(Lcom/vlingo/client/core/vlservice/response/ActionList;)V
    .registers 4
    .parameter "actionList"

    .prologue
    .line 1365
    const v0, 0x7f09023b

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/CarActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vlingo/client/car/CarActivity;->onError(Ljava/lang/String;Z)V

    .line 1366
    return-void
.end method

.method public handleUpdatePage(Lcom/vlingo/client/core/vlservice/response/Action;)Z
    .registers 3
    .parameter "action"

    .prologue
    .line 1819
    const/4 v0, 0x0

    return v0
.end method

.method protected declared-synchronized initializeCarActivity()V
    .registers 19

    .prologue
    .line 574
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-boolean v15, v15, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->initialized:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_157

    if-eqz v15, :cond_b

    .line 704
    :cond_9
    :goto_9
    monitor-exit p0

    return-void

    .line 576
    :cond_b
    :try_start_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    const/16 v16, 0x1

    move/from16 v0, v16

    iput-boolean v0, v15, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->initialized:Z

    .line 578
    new-instance v1, Landroid/content/Intent;

    const-string v15, "com.vlingo.client.zeroclickr.state"

    invoke-direct {v1, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 579
    .local v1, broadcastIntent:Landroid/content/Intent;
    const-string v15, "running"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 580
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/CarActivity;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 582
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v15

    invoke-virtual {v15}, Lcom/vlingo/client/safereader/SafeReaderAPI;->reloadOnboardTTS()V

    .line 584
    invoke-static {}, Lcom/vlingo/client/tos/TermsOfServiceManager;->isTOSRequired()Z

    move-result v15

    if-nez v15, :cond_9

    .line 594
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/vlingo/client/car/CarActivity;->initialStateChecked:Z

    if-nez v15, :cond_a3

    .line 595
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v15

    const-string v16, "car-home"

    invoke-virtual/range {v15 .. v16}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->landingPageViewed(Ljava/lang/String;)V

    .line 596
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/vlingo/client/car/CarActivity;->initialStateChecked:Z

    .line 600
    invoke-virtual/range {p0 .. p0}, Lcom/vlingo/client/car/CarActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 601
    .local v9, intent:Landroid/content/Intent;
    if-eqz v9, :cond_76

    .line 602
    invoke-virtual {v9}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    .line 603
    .local v3, categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v3, :cond_76

    .line 604
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 605
    .local v10, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_5b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_76

    .line 606
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 607
    .local v4, category:Ljava/lang/String;
    if-eqz v4, :cond_5b

    const-string v15, "android.intent.category.CAR_DOCK"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5b

    .line 608
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/vlingo/client/car/CarActivity;->startedWithCarDock:Z

    .line 615
    .end local v3           #categories:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4           #category:Ljava/lang/String;
    .end local v10           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_76
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isSafeReaderEnabled()Z

    move-result v15

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/vlingo/client/car/CarActivity;->wasSafeReaderOnBeforeStart:Z

    .line 617
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v15, v15, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v15}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v15

    if-nez v15, :cond_a3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v15, v15, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v15}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v15

    if-nez v15, :cond_a3

    .line 622
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v15, v15, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->audioManager:Landroid/media/AudioManager;

    const/16 v16, 0x3

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 626
    .end local v9           #intent:Landroid/content/Intent;
    :cond_a3
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/vlingo/client/car/CarActivity;->startedWithCarDock:Z

    if-eqz v15, :cond_109

    .line 630
    new-instance v6, Landroid/content/IntentFilter;

    const-string v15, "android.intent.action.DOCK_EVENT"

    invoke-direct {v6, v15}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 631
    .local v6, filter:Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vlingo/client/car/CarActivity;->carDockBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v6}, Lcom/vlingo/client/car/CarActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_b9
    .catchall {:try_start_b .. :try_end_b9} :catchall_157

    .line 633
    const/4 v11, 0x1

    .line 636
    .local v11, locked:Z
    :try_start_ba
    const-string v15, "com.android.internal.widget.LockPatternUtils"

    invoke-static {v15}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 637
    .local v2, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    const-class v17, Landroid/content/Context;

    aput-object v17, v15, v16

    invoke-virtual {v2, v15}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 638
    .local v5, con:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/vlingo/client/car/CarActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v5, v15}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 639
    .local v8, instance:Ljava/lang/Object;
    const-string v16, "isSecure"

    const/4 v15, 0x0

    check-cast v15, [Ljava/lang/Class;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 640
    .local v7, get:Ljava/lang/reflect/Method;
    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v7, v8, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 643
    .local v12, result:Ljava/lang/Object;
    check-cast v12, Ljava/lang/Boolean;

    .end local v12           #result:Ljava/lang/Object;
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_f3
    .catchall {:try_start_ba .. :try_end_f3} :catchall_157
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_f3} :catch_15a

    move-result v11

    .line 650
    .end local v2           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v5           #con:Ljava/lang/reflect/Constructor;,"Ljava/lang/reflect/Constructor<*>;"
    .end local v7           #get:Ljava/lang/reflect/Method;
    .end local v8           #instance:Ljava/lang/Object;
    :goto_f4
    if-nez v11, :cond_109

    .line 652
    :try_start_f6
    invoke-virtual/range {p0 .. p0}, Lcom/vlingo/client/car/CarActivity;->getWindow()Landroid/view/Window;

    move-result-object v13

    .line 653
    .local v13, win:Landroid/view/Window;
    invoke-virtual {v13}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v14

    .line 654
    .local v14, winParams:Landroid/view/WindowManager$LayoutParams;
    iget v15, v14, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v16, 0x48

    or-int v15, v15, v16

    iput v15, v14, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 656
    invoke-virtual {v13, v14}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 666
    .end local v6           #filter:Landroid/content/IntentFilter;
    .end local v11           #locked:Z
    .end local v13           #win:Landroid/view/Window;
    .end local v14           #winParams:Landroid/view/WindowManager$LayoutParams;
    :cond_109
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v15, v15, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->ttsManager:Lcom/vlingo/client/car/tts/CarTTSManager;

    invoke-virtual {v15}, Lcom/vlingo/client/car/tts/CarTTSManager;->attach()V

    .line 668
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v15, v15, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->wakeupPhraseSpotter:Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;

    invoke-virtual/range {p0 .. p0}, Lcom/vlingo/client/car/CarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;->ensureModelsOnFilesystem(Landroid/content/res/Resources;)Z

    .line 670
    const/4 v15, 0x1

    invoke-static {v15}, Lcom/vlingo/client/settings/Settings;->setInCarMode(Z)V

    .line 672
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vlingo/client/car/CarActivity;->systemEventManager:Lcom/vlingo/client/car/CarSystemEventManager;

    invoke-virtual {v15}, Lcom/vlingo/client/car/CarSystemEventManager;->handleResume()V

    .line 676
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v15, v15, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->phraseSpotterHandler:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    invoke-virtual {v15}, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->startPhraseSpottingDelayed()V

    .line 677
    invoke-virtual/range {p0 .. p0}, Lcom/vlingo/client/car/CarActivity;->setHeaderBasedOnCurrentItem()V

    .line 679
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/vlingo/client/car/CarActivity;->onShowReady(Z)V

    .line 683
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/vlingo/client/car/CarActivity;->spokeBluetoothCheckSchedule:Z

    if-nez v15, :cond_9

    .line 684
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/vlingo/client/car/CarActivity;->spokeBluetoothCheckSchedule:Z

    .line 685
    invoke-virtual/range {p0 .. p0}, Lcom/vlingo/client/car/CarActivity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/vlingo/client/car/CarActivity;->checkForBluetoothAction(Landroid/content/Intent;)Z

    move-result v15

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/vlingo/client/car/CarActivity;->startedWithVoiceAction:Z
    :try_end_155
    .catchall {:try_start_f6 .. :try_end_155} :catchall_157

    goto/16 :goto_9

    .line 574
    .end local v1           #broadcastIntent:Landroid/content/Intent;
    :catchall_157
    move-exception v15

    monitor-exit p0

    throw v15

    .line 646
    .restart local v1       #broadcastIntent:Landroid/content/Intent;
    .restart local v6       #filter:Landroid/content/IntentFilter;
    .restart local v11       #locked:Z
    :catch_15a
    move-exception v15

    goto :goto_f4
.end method

.method public isOnHomeScreen()Z
    .registers 2

    .prologue
    .line 907
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getCurrentScreenIndex()I

    move-result v0

    if-gtz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public declared-synchronized isRecoActive()Z
    .registers 3

    .prologue
    .line 1553
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->recoState:Lcom/vlingo/client/car/CarActivity$RecoState;

    sget-object v1, Lcom/vlingo/client/car/CarActivity$RecoState;->READY:Lcom/vlingo/client/car/CarActivity$RecoState;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_c

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit p0

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onBackPressed()V
    .registers 4

    .prologue
    .line 911
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v1}, Lcom/vlingo/client/scroller/ScrollableContainer;->getCurrentItem()Lcom/vlingo/client/scroller/ScrollableItem;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/car/CarScrollableItem;

    .line 912
    .local v0, curItem:Lcom/vlingo/client/car/CarScrollableItem;
    invoke-virtual {v0}, Lcom/vlingo/client/car/CarScrollableItem;->ignoreBackKey()Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_2c

    move-result v1

    if-eqz v1, :cond_11

    .line 924
    :goto_f
    monitor-exit p0

    return-void

    .line 915
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarActivity;->isOnHomeScreen()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 916
    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    iget-object v2, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v2}, Lcom/vlingo/client/scroller/ScrollableContainer;->getCurrentScreenIndex()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/vlingo/client/scroller/ScrollableContainer;->scrollToScreenAtIndex(I)V

    .line 917
    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v1, v1, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->carActivityRef:Lcom/vlingo/client/car/CarActivity;

    invoke-direct {v1}, Lcom/vlingo/client/car/CarActivity;->cancelRecognition()V
    :try_end_2b
    .catchall {:try_start_11 .. :try_end_2b} :catchall_2c

    goto :goto_f

    .line 911
    .end local v0           #curItem:Lcom/vlingo/client/car/CarScrollableItem;
    :catchall_2c
    move-exception v1

    monitor-exit p0

    throw v1

    .line 919
    .restart local v0       #curItem:Lcom/vlingo/client/car/CarScrollableItem;
    :cond_2f
    :try_start_2f
    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity;->recoState:Lcom/vlingo/client/car/CarActivity$RecoState;

    sget-object v2, Lcom/vlingo/client/car/CarActivity$RecoState;->READY:Lcom/vlingo/client/car/CarActivity$RecoState;

    if-eq v1, v2, :cond_3d

    .line 920
    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v1, v1, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->carActivityRef:Lcom/vlingo/client/car/CarActivity;

    invoke-direct {v1}, Lcom/vlingo/client/car/CarActivity;->cancelRecognition()V

    goto :goto_f

    .line 923
    :cond_3d
    invoke-super {p0}, Lcom/vlingo/client/ui/VLActivityGroup;->onBackPressed()V
    :try_end_40
    .catchall {:try_start_2f .. :try_end_40} :catchall_2c

    goto :goto_f
.end method

.method public onBeginningOfSpeech()V
    .registers 1

    .prologue
    .line 1006
    return-void
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 4
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 2030
    if-nez p1, :cond_3

    .line 2059
    :cond_2
    :goto_2
    return-void

    .line 2035
    :cond_3
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    .line 2039
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    goto :goto_2
.end method

.method public onCancelButtonClicked()V
    .registers 2

    .prologue
    .line 942
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v0, v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->carActivityRef:Lcom/vlingo/client/car/CarActivity;

    invoke-direct {v0}, Lcom/vlingo/client/car/CarActivity;->cancelRecognition()V

    .line 943
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 15
    .parameter "savedInstanceState"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x3

    const/4 v10, 0x0

    .line 223
    invoke-super {p0, p1}, Lcom/vlingo/client/ui/VLActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 238
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isSamsungDisclaimerAccepted()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isTOSAccepted()Z

    move-result v5

    if-nez v5, :cond_27

    .line 243
    :cond_12
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/vlingo/client/tos/DisclaimerActivity;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 244
    .local v1, i:Landroid/content/Intent;
    const-string v5, "Activity"

    const-string v6, "CarActivity"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    invoke-virtual {p0, v1}, Lcom/vlingo/client/car/CarActivity;->startActivity(Landroid/content/Intent;)V

    .line 248
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarActivity;->finish()V

    .line 351
    .end local v1           #i:Landroid/content/Intent;
    :goto_26
    return-void

    .line 253
    :cond_27
    invoke-static {}, Lcom/vlingo/client/car/iux/CarIUXManager;->requiresIUX()Z

    move-result v5

    if-eqz v5, :cond_31

    .line 256
    invoke-static {p0}, Lcom/vlingo/client/car/iux/CarIUXManager;->processIUX(Landroid/app/Activity;)V

    goto :goto_26

    .line 260
    :cond_31
    iput-boolean v10, p0, Lcom/vlingo/client/car/CarActivity;->isVeryEarlyState:Z

    .line 262
    invoke-static {}, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->reinit()V

    .line 264
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->getVlingoLanguage()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vlingo/client/car/CarActivity;->language:Ljava/lang/String;

    .line 268
    invoke-direct {p0, p1}, Lcom/vlingo/client/car/CarActivity;->unpackSavedInstanceState(Landroid/os/Bundle;)V

    .line 270
    const v5, 0x7f03003a

    invoke-virtual {p0, v5}, Lcom/vlingo/client/car/CarActivity;->setContentView(I)V

    .line 271
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020153

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/vlingo/client/ui/UIUtils;->setActivityBackgroundToDrawable(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;)V

    .line 273
    const/4 v5, 0x5

    new-array v5, v5, [Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/vlingo/client/car/CarActivity;->dots:[Landroid/widget/ImageView;

    .line 274
    iget-object v6, p0, Lcom/vlingo/client/car/CarActivity;->dots:[Landroid/widget/ImageView;

    const v5, 0x7f0f004b

    invoke-virtual {p0, v5}, Lcom/vlingo/client/car/CarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    aput-object v5, v6, v10

    .line 275
    iget-object v6, p0, Lcom/vlingo/client/car/CarActivity;->dots:[Landroid/widget/ImageView;

    const/4 v7, 0x1

    const v5, 0x7f0f004a

    invoke-virtual {p0, v5}, Lcom/vlingo/client/car/CarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    aput-object v5, v6, v7

    .line 276
    iget-object v6, p0, Lcom/vlingo/client/car/CarActivity;->dots:[Landroid/widget/ImageView;

    const/4 v7, 0x2

    const v5, 0x7f0f004c

    invoke-virtual {p0, v5}, Lcom/vlingo/client/car/CarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    aput-object v5, v6, v7

    .line 277
    iget-object v6, p0, Lcom/vlingo/client/car/CarActivity;->dots:[Landroid/widget/ImageView;

    const v5, 0x7f0f00f0

    invoke-virtual {p0, v5}, Lcom/vlingo/client/car/CarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    aput-object v5, v6, v11

    .line 278
    iget-object v6, p0, Lcom/vlingo/client/car/CarActivity;->dots:[Landroid/widget/ImageView;

    const/4 v7, 0x4

    const v5, 0x7f0f00fb

    invoke-virtual {p0, v5}, Lcom/vlingo/client/car/CarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    aput-object v5, v6, v7

    .line 281
    const v5, 0x7f0f00fd

    invoke-virtual {p0, v5}, Lcom/vlingo/client/car/CarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/vlingo/client/car/CarAppButtonsItem;

    iput-object v5, p0, Lcom/vlingo/client/car/CarActivity;->carAppButtons:Lcom/vlingo/client/car/CarAppButtonsItem;

    .line 284
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 285
    .local v0, handle:Ljava/lang/Object;
    if-eqz v0, :cond_18b

    move-object v5, v0

    .line 286
    check-cast v5, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iput-object v5, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    .line 287
    iget-object v5, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v5, v5, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->ttsManager:Lcom/vlingo/client/car/tts/CarTTSManager;

    iget-object v6, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v6, v6, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->carActivityRef:Lcom/vlingo/client/car/CarActivity;

    invoke-virtual {v5, v6}, Lcom/vlingo/client/car/tts/CarTTSManager;->removeListener(Lcom/vlingo/client/car/tts/CarTTSManager$CarTTSListener;)V

    .line 288
    iget-object v5, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iput-object p0, v5, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->carActivityRef:Lcom/vlingo/client/car/CarActivity;

    .line 290
    iget-object v5, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v5, v5, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->ttsManager:Lcom/vlingo/client/car/tts/CarTTSManager;

    iget-object v6, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v6, v6, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->carActivityRef:Lcom/vlingo/client/car/CarActivity;

    invoke-virtual {v5, v6}, Lcom/vlingo/client/car/tts/CarTTSManager;->addListener(Lcom/vlingo/client/car/tts/CarTTSManager$CarTTSListener;)V

    .line 297
    :goto_cc
    iget-object v5, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v5, v5, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->recoResponderChain:Lcom/vlingo/client/car/asr/RecoResponderChain;

    invoke-virtual {v5}, Lcom/vlingo/client/car/asr/RecoResponderChain;->removeAllResponders()V

    .line 298
    iget-object v5, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v5, v5, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->recoResponderChain:Lcom/vlingo/client/car/asr/RecoResponderChain;

    iget-object v6, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v6, v6, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->carActivityRef:Lcom/vlingo/client/car/CarActivity;

    invoke-virtual {v5, v6}, Lcom/vlingo/client/car/asr/RecoResponderChain;->pushResponderOnToChain(Lcom/vlingo/client/car/asr/RecoResponder;)V

    .line 299
    new-instance v5, Lcom/vlingo/client/car/asr/CarRecognizer;

    invoke-direct {v5}, Lcom/vlingo/client/car/asr/CarRecognizer;-><init>()V

    iput-object v5, p0, Lcom/vlingo/client/car/CarActivity;->recognizer:Lcom/vlingo/client/car/asr/CarRecognizer;

    .line 300
    new-instance v5, Lcom/vlingo/client/car/vvs/CarVVSDispatcher;

    iget-object v6, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v6, v6, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->recoResponderChain:Lcom/vlingo/client/car/asr/RecoResponderChain;

    iget-object v7, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v7, v7, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->carActivityRef:Lcom/vlingo/client/car/CarActivity;

    invoke-direct {v5, v6, v7}, Lcom/vlingo/client/car/vvs/CarVVSDispatcher;-><init>(Lcom/vlingo/client/car/asr/RecoResponderChain;Lcom/vlingo/client/car/CarActivityDelegate;)V

    iput-object v5, p0, Lcom/vlingo/client/car/CarActivity;->dispatcher:Lcom/vlingo/client/car/vvs/CarVVSDispatcher;

    .line 302
    const v5, 0x7f0f0020

    invoke-virtual {p0, v5}, Lcom/vlingo/client/car/CarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/vlingo/client/car/CarActivity;->bottomContainer:Landroid/widget/FrameLayout;

    .line 303
    const v5, 0x7f0f004d

    invoke-virtual {p0, v5}, Lcom/vlingo/client/car/CarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/vlingo/client/scroller/ScrollableContainer;

    iput-object v5, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    .line 304
    const v5, 0x7f0f00f9

    invoke-virtual {p0, v5}, Lcom/vlingo/client/car/CarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/vlingo/client/car/CarHeaderView;

    iput-object v5, p0, Lcom/vlingo/client/car/CarActivity;->headerView:Lcom/vlingo/client/car/CarHeaderView;

    .line 305
    iget-object v5, p0, Lcom/vlingo/client/car/CarActivity;->headerView:Lcom/vlingo/client/car/CarHeaderView;

    new-instance v6, Lcom/vlingo/client/car/CarActivity$1;

    invoke-direct {v6, p0}, Lcom/vlingo/client/car/CarActivity$1;-><init>(Lcom/vlingo/client/car/CarActivity;)V

    invoke-virtual {v5, v6}, Lcom/vlingo/client/car/CarHeaderView;->setCallback(Lcom/vlingo/client/car/CarHeaderView$CarHeaderCallback;)V

    .line 310
    const v5, 0x7f0f00ff

    invoke-virtual {p0, v5}, Lcom/vlingo/client/car/CarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/vlingo/client/car/CarRecoButton;

    iput-object v5, p0, Lcom/vlingo/client/car/CarActivity;->recoButton:Lcom/vlingo/client/car/CarRecoButton;

    .line 311
    iget-object v5, p0, Lcom/vlingo/client/car/CarActivity;->recoButton:Lcom/vlingo/client/car/CarRecoButton;

    invoke-virtual {v5, p0, p0}, Lcom/vlingo/client/car/CarRecoButton;->init(Lcom/vlingo/client/car/CarActivityDelegate;Lcom/vlingo/client/car/CarRecoButton$CarRecoButtonListener;)V

    .line 313
    const v5, 0x7f0f00fe

    invoke-virtual {p0, v5}, Lcom/vlingo/client/car/CarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/vlingo/client/car/CarPopup;

    iput-object v5, p0, Lcom/vlingo/client/car/CarActivity;->popupContainer:Lcom/vlingo/client/car/CarPopup;

    .line 314
    iget-object v5, p0, Lcom/vlingo/client/car/CarActivity;->popupContainer:Lcom/vlingo/client/car/CarPopup;

    iget-object v6, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v6, v6, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->carActivityRef:Lcom/vlingo/client/car/CarActivity;

    invoke-virtual {v5, v6}, Lcom/vlingo/client/car/CarPopup;->init(Lcom/vlingo/client/car/CarActivityDelegate;)V

    .line 316
    invoke-direct {p0}, Lcom/vlingo/client/car/CarActivity;->createMessageHandler()V

    .line 317
    if-nez v0, :cond_168

    .line 318
    iget-object v5, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    new-instance v6, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    invoke-direct {v6, p0}, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;-><init>(Lcom/vlingo/client/car/CarActivity;)V

    iput-object v6, v5, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->phraseSpotterHandler:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    .line 319
    iget-object v5, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    new-instance v6, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;

    invoke-virtual {p0}, Lcom/vlingo/client/car/CarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/vlingo/client/car/CarActivity;->recognizer:Lcom/vlingo/client/car/asr/CarRecognizer;

    invoke-virtual {v8}, Lcom/vlingo/client/car/asr/CarRecognizer;->getTonePlayer()Lcom/vlingo/client/android/core/audio/TonePlayer;

    move-result-object v8

    iget-object v9, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v9, v9, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->phraseSpotterHandler:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    invoke-direct {v6, v7, v8, v9}, Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;-><init>(Landroid/content/res/Resources;Lcom/vlingo/client/android/core/audio/TonePlayer;Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotterHandler;)V

    iput-object v6, v5, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->wakeupPhraseSpotter:Lcom/vlingo/client/phrasespotter/WakeupPhraseSpotter;

    .line 321
    :cond_168
    new-instance v5, Lcom/vlingo/client/car/CarSystemEventManager;

    invoke-direct {v5, p0}, Lcom/vlingo/client/car/CarSystemEventManager;-><init>(Lcom/vlingo/client/car/CarActivity;)V

    iput-object v5, p0, Lcom/vlingo/client/car/CarActivity;->systemEventManager:Lcom/vlingo/client/car/CarSystemEventManager;

    .line 324
    iget-object v5, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v5}, Lcom/vlingo/client/scroller/ScrollableContainer;->getScreenStack()Ljava/util/Stack;

    move-result-object v4

    .line 325
    .local v4, itemStack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/vlingo/client/scroller/ScrollableItem;>;"
    invoke-virtual {v4}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_179
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vlingo/client/scroller/ScrollableItem;

    .line 326
    .local v3, item:Lcom/vlingo/client/scroller/ScrollableItem;
    check-cast v3, Lcom/vlingo/client/car/CarScrollableItem;

    .end local v3           #item:Lcom/vlingo/client/scroller/ScrollableItem;
    invoke-virtual {v3, p0}, Lcom/vlingo/client/car/CarScrollableItem;->setCarActivityDelegate(Lcom/vlingo/client/car/CarActivityDelegate;)V

    goto :goto_179

    .line 292
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #itemStack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/vlingo/client/scroller/ScrollableItem;>;"
    :cond_18b
    iget-object v5, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iput-object p0, v5, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->carActivityRef:Lcom/vlingo/client/car/CarActivity;

    .line 293
    iget-object v5, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    new-instance v6, Lcom/vlingo/client/car/asr/RecoResponderChain;

    invoke-direct {v6}, Lcom/vlingo/client/car/asr/RecoResponderChain;-><init>()V

    iput-object v6, v5, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->recoResponderChain:Lcom/vlingo/client/car/asr/RecoResponderChain;

    .line 295
    iget-object v5, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    new-instance v6, Lcom/vlingo/client/car/tts/CarTTSManager;

    iget-object v7, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v7, v7, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->carActivityRef:Lcom/vlingo/client/car/CarActivity;

    invoke-direct {v6, v7}, Lcom/vlingo/client/car/tts/CarTTSManager;-><init>(Lcom/vlingo/client/car/tts/CarTTSManager$CarTTSListener;)V

    iput-object v6, v5, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->ttsManager:Lcom/vlingo/client/car/tts/CarTTSManager;

    goto/16 :goto_cc

    .line 328
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #itemStack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/vlingo/client/scroller/ScrollableItem;>;"
    :cond_1a7
    iget-object v5, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v5, p0}, Lcom/vlingo/client/scroller/ScrollableContainer;->setChangeListener(Lcom/vlingo/client/scroller/ScrollableItemChangeListener;)V

    .line 329
    iget-object v5, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v5}, Lcom/vlingo/client/scroller/ScrollableContainer;->init()V

    .line 330
    iget-object v5, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v5, v10}, Lcom/vlingo/client/scroller/ScrollableContainer;->setCurrentScreenIndex(I)V

    .line 332
    if-nez v0, :cond_1c4

    .line 333
    iget-object v6, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    const-string v5, "audio"

    invoke-virtual {p0, v5}, Lcom/vlingo/client/car/CarActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, v6, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->audioManager:Landroid/media/AudioManager;

    .line 335
    :cond_1c4
    invoke-virtual {p0, v11}, Lcom/vlingo/client/car/CarActivity;->setVolumeControlStream(I)V

    .line 337
    new-instance v5, Lcom/vlingo/client/car/CarActivity$CarDockBroadcastReceiver;

    invoke-direct {v5, p0, v12}, Lcom/vlingo/client/car/CarActivity$CarDockBroadcastReceiver;-><init>(Lcom/vlingo/client/car/CarActivity;Lcom/vlingo/client/car/CarActivity$1;)V

    iput-object v5, p0, Lcom/vlingo/client/car/CarActivity;->carDockBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 346
    new-instance v5, Lcom/vlingo/client/car/CarActivity$MyPhoneStateListener;

    invoke-direct {v5, p0, v12}, Lcom/vlingo/client/car/CarActivity$MyPhoneStateListener;-><init>(Lcom/vlingo/client/car/CarActivity;Lcom/vlingo/client/car/CarActivity$1;)V

    iput-object v5, p0, Lcom/vlingo/client/car/CarActivity;->psl:Lcom/vlingo/client/car/CarActivity$MyPhoneStateListener;

    .line 347
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Lcom/vlingo/client/car/CarActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iput-object v5, p0, Lcom/vlingo/client/car/CarActivity;->tm:Landroid/telephony/TelephonyManager;

    .line 348
    iget-object v5, p0, Lcom/vlingo/client/car/CarActivity;->tm:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/vlingo/client/car/CarActivity;->psl:Lcom/vlingo/client/car/CarActivity$MyPhoneStateListener;

    const/16 v7, 0x100

    invoke-virtual {v5, v6, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto/16 :goto_26
.end method

.method public onDemandCancelled(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 4
    .parameter "demand"

    .prologue
    .line 1783
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-boolean v0, v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->paused:Z

    if-nez v0, :cond_22

    .line 1784
    invoke-virtual {p1}, Lcom/vlingo/client/core/tts/TTSDemand;->isInChain()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/vlingo/client/core/tts/TTSDemand;->isLastInChain()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1785
    :cond_12
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v0, v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->phraseSpotterHandler:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->setStartPhraseDelay(I)V

    .line 1786
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v0, v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->phraseSpotterHandler:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    invoke-virtual {v0}, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->startPhraseSpottingDelayed()V

    .line 1789
    :cond_22
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->backgroundDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->backgroundDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {v0, p1}, Lcom/vlingo/client/core/tts/TTSDemand;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1790
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/car/CarActivity;->backgroundDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 1792
    :cond_31
    invoke-virtual {p1}, Lcom/vlingo/client/core/tts/TTSDemand;->getType()Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    move-result-object v0

    sget-object v1, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->CAR_CANCELABLE:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    if-ne v0, v1, :cond_49

    .line 1793
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarActivity;->isOnHomeScreen()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-virtual {p0}, Lcom/vlingo/client/car/CarActivity;->isRecoActive()Z

    move-result v0

    if-nez v0, :cond_49

    .line 1794
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vlingo/client/car/CarActivity;->onShowReady(Z)V

    .line 1796
    :cond_49
    return-void
.end method

.method public onDemandDidPlay(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 13
    .parameter "demand"

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1660
    iget-object v8, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-boolean v8, v8, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->paused:Z

    if-nez v8, :cond_78

    move v5, v6

    .line 1665
    .local v5, reenablePhraseSpotting:Z
    :goto_a
    invoke-virtual {p1}, Lcom/vlingo/client/core/tts/TTSDemand;->getType()Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    move-result-object v8

    sget-object v9, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->CAR_ERROR:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    if-eq v8, v9, :cond_14

    .line 1666
    iput v7, p0, Lcom/vlingo/client/car/CarActivity;->errorRetryCount:I

    .line 1669
    :cond_14
    const/4 v2, 0x0

    .line 1670
    .local v2, handledDemandType:Z
    invoke-virtual {p1}, Lcom/vlingo/client/core/tts/TTSDemand;->getType()Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    move-result-object v1

    .line 1671
    .local v1, demandType:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;
    sget-object v8, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->CAR_ERROR:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    if-ne v1, v8, :cond_ac

    .line 1672
    iget v8, p0, Lcom/vlingo/client/car/CarActivity;->errorRetryCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/vlingo/client/car/CarActivity;->errorRetryCount:I

    .line 1673
    invoke-static {}, Lcom/vlingo/client/core/deviceinfo/PhoneInfo;->getInstance()Lcom/vlingo/client/core/deviceinfo/PhoneInfo;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/vlingo/client/core/deviceinfo/PhoneInfo;->isReadyToConnect(Z)Lcom/vlingo/client/core/deviceinfo/PhoneInfo$ConnectState;

    move-result-object v8

    sget-object v9, Lcom/vlingo/client/core/deviceinfo/PhoneInfo$ConnectState;->SUCCESS:Lcom/vlingo/client/core/deviceinfo/PhoneInfo$ConnectState;

    if-ne v8, v9, :cond_7a

    .line 1674
    const/4 v5, 0x0

    .line 1675
    iget-object v6, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v6, v6, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->carActivityRef:Lcom/vlingo/client/car/CarActivity;

    iget-object v7, p0, Lcom/vlingo/client/car/CarActivity;->curContext:Lcom/vlingo/client/core/recognizer/SRContext;

    iget-object v8, p0, Lcom/vlingo/client/car/CarActivity;->currentShownPrompt:Ljava/lang/String;

    iget-object v9, p0, Lcom/vlingo/client/car/CarActivity;->currentPromptContent:Lcom/vlingo/client/car/PromptContent;

    invoke-virtual {v6, v7, v10, v8, v9}, Lcom/vlingo/client/car/CarActivity;->startRecognition(Lcom/vlingo/client/core/recognizer/SRContext;Lcom/vlingo/client/core/tts/TTSDemand;Ljava/lang/String;Lcom/vlingo/client/car/PromptContent;)V

    .line 1689
    :goto_3d
    const/4 v2, 0x1

    .line 1729
    :cond_3e
    :goto_3e
    if-nez v2, :cond_40

    .line 1733
    :cond_40
    if-eqz v5, :cond_5e

    .line 1734
    invoke-virtual {p1}, Lcom/vlingo/client/core/tts/TTSDemand;->isInChain()Z

    move-result v6

    if-eqz v6, :cond_4e

    invoke-virtual {p1}, Lcom/vlingo/client/core/tts/TTSDemand;->isLastInChain()Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 1735
    :cond_4e
    iget-object v6, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v6, v6, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->phraseSpotterHandler:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    const/16 v7, 0x1f4

    invoke-virtual {v6, v7}, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->setStartPhraseDelay(I)V

    .line 1736
    iget-object v6, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v6, v6, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->phraseSpotterHandler:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    invoke-virtual {v6}, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->startPhraseSpottingDelayed()V

    .line 1739
    :cond_5e
    iget-object v6, p0, Lcom/vlingo/client/car/CarActivity;->backgroundDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    if-eqz v6, :cond_6c

    iget-object v6, p0, Lcom/vlingo/client/car/CarActivity;->backgroundDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {v6, p1}, Lcom/vlingo/client/core/tts/TTSDemand;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6c

    .line 1740
    iput-object v10, p0, Lcom/vlingo/client/car/CarActivity;->backgroundDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 1746
    :cond_6c
    iget-boolean v6, p0, Lcom/vlingo/client/car/CarActivity;->readyToFinishByVoice:Z

    if-eqz v6, :cond_77

    sget-object v6, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->CAR_CONFIRM_CANCEL:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    if-ne v1, v6, :cond_77

    .line 1747
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarActivity;->finish()V

    .line 1749
    :cond_77
    return-void

    .end local v1           #demandType:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;
    .end local v2           #handledDemandType:Z
    .end local v5           #reenablePhraseSpotting:Z
    :cond_78
    move v5, v7

    .line 1660
    goto :goto_a

    .line 1678
    .restart local v1       #demandType:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;
    .restart local v2       #handledDemandType:Z
    .restart local v5       #reenablePhraseSpotting:Z
    :cond_7a
    sget-object v8, Lcom/vlingo/client/car/CarActivity$10;->$SwitchMap$com$vlingo$client$core$deviceinfo$PhoneInfo$ConnectState:[I

    invoke-static {}, Lcom/vlingo/client/core/deviceinfo/PhoneInfo;->getInstance()Lcom/vlingo/client/core/deviceinfo/PhoneInfo;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/vlingo/client/core/deviceinfo/PhoneInfo;->isReadyToConnect(Z)Lcom/vlingo/client/core/deviceinfo/PhoneInfo$ConnectState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/vlingo/client/core/deviceinfo/PhoneInfo$ConnectState;->ordinal()I

    move-result v6

    aget v6, v8, v6

    packed-switch v6, :pswitch_data_140

    .line 1685
    :goto_8d
    iput v7, p0, Lcom/vlingo/client/car/CarActivity;->errorRetryCount:I

    .line 1686
    invoke-direct {p0, v7}, Lcom/vlingo/client/car/CarActivity;->onShowReady(Z)V

    .line 1687
    invoke-direct {p0, v7}, Lcom/vlingo/client/car/CarActivity;->maybeEnableOrientationChange(Z)V

    goto :goto_3d

    .line 1680
    :pswitch_96
    const v6, 0x7f09033e

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_8d

    .line 1683
    :pswitch_a1
    const v6, 0x7f09031f

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_8d

    .line 1691
    :cond_ac
    invoke-virtual {p1}, Lcom/vlingo/client/core/tts/TTSDemand;->getType()Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    move-result-object v8

    sget-object v9, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->CAR_PROMPT:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    if-ne v8, v9, :cond_cf

    .line 1692
    iget-object v7, p0, Lcom/vlingo/client/car/CarActivity;->curContext:Lcom/vlingo/client/core/recognizer/SRContext;

    if-eqz v7, :cond_cc

    iget-object v7, p0, Lcom/vlingo/client/car/CarActivity;->recoTTSPrompt:Lcom/vlingo/client/core/tts/TTSDemand;

    if-eqz v7, :cond_cc

    .line 1693
    iput-object v10, p0, Lcom/vlingo/client/car/CarActivity;->recoTTSPrompt:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 1695
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/vlingo/client/safereader/SafeReaderAPI;->cancel(Z)V

    .line 1696
    iget-object v6, p0, Lcom/vlingo/client/car/CarActivity;->recognizer:Lcom/vlingo/client/car/asr/CarRecognizer;

    iget-object v7, p0, Lcom/vlingo/client/car/CarActivity;->curContext:Lcom/vlingo/client/core/recognizer/SRContext;

    invoke-virtual {v6, v7, p0, p0}, Lcom/vlingo/client/car/asr/CarRecognizer;->startListening(Lcom/vlingo/client/core/recognizer/SRContext;Landroid/content/Context;Lcom/vlingo/client/car/asr/CarRecognizerListener;)V

    .line 1698
    :cond_cc
    const/4 v2, 0x1

    goto/16 :goto_3e

    .line 1700
    :cond_cf
    sget-object v8, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->CAR_CONFIRM:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    if-eq v1, v8, :cond_d7

    sget-object v8, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->CAR_CONFIRM_CANCEL:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    if-ne v1, v8, :cond_110

    .line 1701
    :cond_d7
    const/4 v0, 0x1

    .line 1703
    .local v0, autoListenEnabled:Z
    if-eqz v0, :cond_10d

    .line 1704
    iget-object v6, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v6}, Lcom/vlingo/client/scroller/ScrollableContainer;->getCurrentItem()Lcom/vlingo/client/scroller/ScrollableItem;

    move-result-object v4

    check-cast v4, Lcom/vlingo/client/car/CarScrollableItem;

    .line 1705
    .local v4, item:Lcom/vlingo/client/car/CarScrollableItem;
    invoke-virtual {v4}, Lcom/vlingo/client/car/CarScrollableItem;->supportsAutoListen()Z

    move-result v6

    if-eqz v6, :cond_10d

    invoke-virtual {v4}, Lcom/vlingo/client/car/CarScrollableItem;->getAutoListenDemand()Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v6

    if-eqz v6, :cond_10d

    invoke-virtual {v4}, Lcom/vlingo/client/car/CarScrollableItem;->getAutoListenDemand()Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/vlingo/client/core/tts/TTSDemand;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10d

    .line 1706
    invoke-virtual {v4}, Lcom/vlingo/client/car/CarScrollableItem;->shouldAutoListenTrigger()Z

    move-result v6

    if-eqz v6, :cond_10a

    .line 1707
    const/4 v5, 0x0

    .line 1708
    iget-object v6, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v6, v6, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->carActivityRef:Lcom/vlingo/client/car/CarActivity;

    invoke-virtual {v4}, Lcom/vlingo/client/car/CarScrollableItem;->getSRContext()Lcom/vlingo/client/core/recognizer/SRContext;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/vlingo/client/car/CarActivity;->startRecognition(Lcom/vlingo/client/core/recognizer/SRContext;)V

    .line 1710
    :cond_10a
    invoke-virtual {v4, v7}, Lcom/vlingo/client/car/CarScrollableItem;->setAutoListenShouldTrigger(Z)V

    .line 1713
    .end local v4           #item:Lcom/vlingo/client/car/CarScrollableItem;
    :cond_10d
    const/4 v2, 0x1

    .line 1714
    goto/16 :goto_3e

    .line 1715
    .end local v0           #autoListenEnabled:Z
    :cond_110
    sget-object v8, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->CAR_CANCELABLE:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    if-ne v1, v8, :cond_3e

    .line 1716
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarActivity;->isOnHomeScreen()Z

    move-result v8

    if-eqz v8, :cond_123

    invoke-virtual {p0}, Lcom/vlingo/client/car/CarActivity;->isRecoActive()Z

    move-result v8

    if-nez v8, :cond_123

    .line 1717
    invoke-direct {p0, v7}, Lcom/vlingo/client/car/CarActivity;->onShowReady(Z)V

    .line 1719
    :cond_123
    iget-boolean v8, p0, Lcom/vlingo/client/car/CarActivity;->synthesizingEvents:Z

    if-eqz v8, :cond_13d

    .line 1720
    iput-boolean v7, p0, Lcom/vlingo/client/car/CarActivity;->synthesizingEvents:Z

    .line 1721
    new-instance v3, Landroid/content/Intent;

    const-class v7, Lcom/vlingo/client/car/CarActivity;

    invoke-direct {v3, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1722
    .local v3, i:Landroid/content/Intent;
    const-string v7, "LISTEN_AFTER_EVENT_PLAY"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1723
    const-string v7, "AUTO_LISTEN"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1724
    invoke-virtual {p0, v3}, Lcom/vlingo/client/car/CarActivity;->startActivity(Landroid/content/Intent;)V

    .line 1726
    .end local v3           #i:Landroid/content/Intent;
    :cond_13d
    const/4 v2, 0x1

    goto/16 :goto_3e

    .line 1678
    :pswitch_data_140
    .packed-switch 0x2
        :pswitch_96
        :pswitch_a1
    .end packed-switch
.end method

.method public onDemandIgnored(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 5
    .parameter "demand"

    .prologue
    const/4 v2, 0x0

    .line 1755
    invoke-virtual {p1}, Lcom/vlingo/client/core/tts/TTSDemand;->getType()Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    move-result-object v0

    sget-object v1, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->CAR_PROMPT:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    if-ne v0, v1, :cond_53

    .line 1756
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->curContext:Lcom/vlingo/client/core/recognizer/SRContext;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->recoTTSPrompt:Lcom/vlingo/client/core/tts/TTSDemand;

    if-eqz v0, :cond_22

    .line 1757
    iput-object v2, p0, Lcom/vlingo/client/car/CarActivity;->recoTTSPrompt:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 1759
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/safereader/SafeReaderAPI;->cancel(Z)V

    .line 1760
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->recognizer:Lcom/vlingo/client/car/asr/CarRecognizer;

    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity;->curContext:Lcom/vlingo/client/core/recognizer/SRContext;

    invoke-virtual {v0, v1, p0, p0}, Lcom/vlingo/client/car/asr/CarRecognizer;->startListening(Lcom/vlingo/client/core/recognizer/SRContext;Landroid/content/Context;Lcom/vlingo/client/car/asr/CarRecognizerListener;)V

    .line 1770
    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-boolean v0, v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->paused:Z

    if-nez v0, :cond_44

    .line 1771
    invoke-virtual {p1}, Lcom/vlingo/client/core/tts/TTSDemand;->isInChain()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {p1}, Lcom/vlingo/client/core/tts/TTSDemand;->isLastInChain()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1772
    :cond_34
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v0, v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->phraseSpotterHandler:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->setStartPhraseDelay(I)V

    .line 1773
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v0, v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->phraseSpotterHandler:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    invoke-virtual {v0}, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->startPhraseSpottingDelayed()V

    .line 1776
    :cond_44
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->backgroundDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->backgroundDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {v0, p1}, Lcom/vlingo/client/core/tts/TTSDemand;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 1777
    iput-object v2, p0, Lcom/vlingo/client/car/CarActivity;->backgroundDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 1778
    :cond_52
    return-void

    .line 1763
    :cond_53
    invoke-virtual {p1}, Lcom/vlingo/client/core/tts/TTSDemand;->getType()Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    move-result-object v0

    sget-object v1, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->CAR_CONFIRM:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    if-eq v0, v1, :cond_22

    invoke-virtual {p1}, Lcom/vlingo/client/core/tts/TTSDemand;->getType()Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    move-result-object v0

    sget-object v1, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->CAR_CONFIRM_CANCEL:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    if-eq v0, v1, :cond_22

    .line 1765
    invoke-virtual {p1}, Lcom/vlingo/client/core/tts/TTSDemand;->getType()Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    move-result-object v0

    sget-object v1, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->CAR_CANCELABLE:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    if-ne v0, v1, :cond_22

    .line 1766
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarActivity;->isOnHomeScreen()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/vlingo/client/car/CarActivity;->isRecoActive()Z

    move-result v0

    if-nez v0, :cond_22

    .line 1767
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vlingo/client/car/CarActivity;->onShowReady(Z)V

    goto :goto_22
.end method

.method public onDemandWillPlay(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 5
    .parameter "demand"

    .prologue
    .line 1637
    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity;->recognizer:Lcom/vlingo/client/car/asr/CarRecognizer;

    invoke-virtual {v1}, Lcom/vlingo/client/car/asr/CarRecognizer;->cancel()V

    .line 1638
    invoke-virtual {p1}, Lcom/vlingo/client/core/tts/TTSDemand;->getType()Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    move-result-object v1

    sget-object v2, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->READBACK_SMS:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    if-eq v1, v2, :cond_15

    invoke-virtual {p1}, Lcom/vlingo/client/core/tts/TTSDemand;->getType()Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    move-result-object v1

    sget-object v2, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->READBACK_MMS:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    if-ne v1, v2, :cond_31

    .line 1640
    :cond_15
    invoke-virtual {p1}, Lcom/vlingo/client/core/tts/TTSDemand;->getMsgContext()Lcom/vlingo/client/safereader/MessageContext;

    move-result-object v0

    .line 1641
    .local v0, mc:Lcom/vlingo/client/safereader/MessageContext;
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarActivity;->isOnHomeScreen()Z

    move-result v1

    if-eqz v1, :cond_29

    if-eqz v0, :cond_29

    .line 1642
    new-instance v1, Lcom/vlingo/client/car/CarActivity$6;

    invoke-direct {v1, p0, v0}, Lcom/vlingo/client/car/CarActivity$6;-><init>(Lcom/vlingo/client/car/CarActivity;Lcom/vlingo/client/safereader/MessageContext;)V

    invoke-static {v1}, Lcom/vlingo/client/util/ActivityUtil;->scheduleOnMainThread(Ljava/lang/Runnable;)V

    .line 1654
    .end local v0           #mc:Lcom/vlingo/client/safereader/MessageContext;
    :cond_29
    :goto_29
    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v1, v1, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->phraseSpotterHandler:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    invoke-virtual {v1}, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->stopPhraseSpotting()V

    .line 1655
    return-void

    .line 1649
    :cond_31
    invoke-virtual {p1}, Lcom/vlingo/client/core/tts/TTSDemand;->getType()Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    move-result-object v1

    sget-object v2, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->CAR_CANCELABLE:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    if-ne v1, v2, :cond_29

    .line 1650
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarActivity;->isOnHomeScreen()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1651
    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity;->recoButton:Lcom/vlingo/client/car/CarRecoButton;

    invoke-virtual {v1}, Lcom/vlingo/client/car/CarRecoButton;->showCancel()V

    goto :goto_29
.end method

.method public declared-synchronized onDestroy()V
    .registers 3

    .prologue
    .line 553
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/vlingo/client/car/CarActivity;->isVeryEarlyState:Z

    if-nez v0, :cond_1e

    .line 554
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->paused:Z

    .line 555
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarActivity;->uninitializeCarActivity()V

    .line 556
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v0, v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->phraseSpotterHandler:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->setStartPhraseDelay(I)V

    .line 557
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->recognizer:Lcom/vlingo/client/car/asr/CarRecognizer;

    invoke-virtual {v0}, Lcom/vlingo/client/car/asr/CarRecognizer;->close()V

    .line 558
    invoke-static {}, Lcom/vlingo/client/android/core/audio/TonePlayer;->release()V

    .line 567
    :cond_1e
    invoke-super {p0}, Lcom/vlingo/client/ui/VLActivityGroup;->onDestroy()V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 568
    monitor-exit p0

    return-void

    .line 553
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDoneListeningButtonClicked()V
    .registers 2

    .prologue
    .line 984
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->recognizer:Lcom/vlingo/client/car/asr/CarRecognizer;

    invoke-virtual {v0}, Lcom/vlingo/client/car/asr/CarRecognizer;->stopListening()V

    .line 985
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vlingo/client/car/CarActivity;->onShowThinking(Z)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 987
    monitor-exit p0

    return-void

    .line 984
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onEndOfSpeech()V
    .registers 2

    .prologue
    .line 1026
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vlingo/client/car/CarActivity;->onShowThinking(Z)V

    .line 1027
    return-void
.end method

.method public onError(I)V
    .registers 9
    .parameter "errorCode"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1060
    sget-object v3, Lcom/vlingo/client/asr/service/VLRecognitionResult;->ERROR_IDS:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1061
    .local v0, id:Ljava/lang/Integer;
    if-nez v0, :cond_17

    .line 1062
    const v3, 0x7f09033a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1064
    :cond_17
    const/4 v1, 0x1

    .line 1065
    .local v1, playTTS:Z
    const/4 v2, 0x1

    .line 1066
    .local v2, showToast:Z
    const/16 v3, 0xc

    if-ne p1, v3, :cond_1e

    .line 1068
    const/4 v1, 0x0

    .line 1070
    :cond_1e
    const/4 v3, 0x2

    if-eq p1, v3, :cond_23

    if-ne p1, v6, :cond_36

    .line 1071
    :cond_23
    sget-object v3, Lcom/vlingo/client/car/CarActivity$10;->$SwitchMap$com$vlingo$client$core$deviceinfo$PhoneInfo$ConnectState:[I

    invoke-static {}, Lcom/vlingo/client/core/deviceinfo/PhoneInfo;->getInstance()Lcom/vlingo/client/core/deviceinfo/PhoneInfo;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/vlingo/client/core/deviceinfo/PhoneInfo;->isReadyToConnect(Z)Lcom/vlingo/client/core/deviceinfo/PhoneInfo$ConnectState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vlingo/client/core/deviceinfo/PhoneInfo$ConnectState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_5c

    .line 1085
    :cond_36
    :goto_36
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/vlingo/client/car/CarActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1, v2}, Lcom/vlingo/client/car/CarActivity;->onError(Ljava/lang/String;ZZ)V

    .line 1086
    return-void

    .line 1074
    :pswitch_42
    const v3, 0x7f09033e

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1075
    const/4 v1, 0x0

    .line 1076
    const/4 v2, 0x0

    .line 1077
    goto :goto_36

    .line 1080
    :pswitch_4f
    const v3, 0x7f09031f

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1081
    const/4 v1, 0x0

    .line 1082
    const/4 v2, 0x0

    goto :goto_36

    .line 1071
    :pswitch_data_5c
    .packed-switch 0x2
        :pswitch_42
        :pswitch_4f
    .end packed-switch
.end method

.method public onError(Ljava/lang/String;Z)V
    .registers 4
    .parameter "errorMessage"
    .parameter "playTTS"

    .prologue
    .line 1053
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/vlingo/client/car/CarActivity;->onError(Ljava/lang/String;ZZ)V

    .line 1054
    return-void
.end method

.method public onError(Ljava/lang/String;ZZ)V
    .registers 7
    .parameter "errorMessage"
    .parameter "playTTS"
    .parameter "showToast"

    .prologue
    const/4 v2, 0x0

    .line 1036
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->recognizer:Lcom/vlingo/client/car/asr/CarRecognizer;

    invoke-virtual {v0}, Lcom/vlingo/client/car/asr/CarRecognizer;->cancel()V

    .line 1037
    invoke-direct {p0, v2}, Lcom/vlingo/client/car/CarActivity;->onShowReady(Z)V

    .line 1038
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v0, v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->carActivityRef:Lcom/vlingo/client/car/CarActivity;

    invoke-virtual {v0}, Lcom/vlingo/client/car/CarActivity;->playErrorTone()V

    .line 1039
    if-eqz p2, :cond_1b

    .line 1040
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v0, v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->carActivityRef:Lcom/vlingo/client/car/CarActivity;

    sget-object v1, Lcom/vlingo/client/car/tts/CarTTSCachedRequests;->ERROR_OCCURRED:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/CarActivity;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 1042
    :cond_1b
    if-eqz p3, :cond_2d

    .line 1043
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1044
    invoke-static {}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->getInstance()Lcom/vlingo/client/userlogging/UserLoggingEngine;

    move-result-object v0

    const-string v1, "car-recognizer-error"

    invoke-virtual {v0, v1, p1}, Lcom/vlingo/client/userlogging/UserLoggingEngine;->errorDisplayed(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    :cond_2d
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v0, v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->phraseSpotterHandler:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    invoke-virtual {v0}, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->startPhraseSpottingDelayed()V

    .line 1050
    return-void
.end method

.method public declared-synchronized onGoBackButtonClicked()V
    .registers 2

    .prologue
    .line 990
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v0, v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->carActivityRef:Lcom/vlingo/client/car/CarActivity;

    invoke-direct {v0}, Lcom/vlingo/client/car/CarActivity;->cancelRecognition()V

    .line 991
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v0}, Lcom/vlingo/client/scroller/ScrollableContainer;->scrollLeft()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 992
    monitor-exit p0

    return-void

    .line 990
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2022
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 2023
    const/4 v0, 0x1

    .line 2026
    :goto_4
    return v0

    :cond_5
    invoke-super {p0, p1, p2}, Lcom/vlingo/client/ui/VLActivityGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_4
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2013
    const/16 v0, 0x54

    if-ne p1, v0, :cond_6

    .line 2014
    const/4 v0, 0x1

    .line 2017
    :goto_5
    return v0

    :cond_6
    invoke-super {p0, p1, p2}, Lcom/vlingo/client/ui/VLActivityGroup;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_5
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 365
    invoke-super {p0, p1}, Lcom/vlingo/client/ui/VLActivityGroup;->onNewIntent(Landroid/content/Intent;)V

    .line 366
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/car/CarActivity;->spokeBluetoothCheckSchedule:Z

    .line 367
    invoke-virtual {p0, p1}, Lcom/vlingo/client/car/CarActivity;->setIntent(Landroid/content/Intent;)V

    .line 368
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 2081
    invoke-direct {p0}, Lcom/vlingo/client/car/CarActivity;->cancelRecognition()V

    .line 2082
    iget-object v2, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v2}, Lcom/vlingo/client/scroller/ScrollableContainer;->getCurrentItem()Lcom/vlingo/client/scroller/ScrollableItem;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/car/CarScrollableItem;

    .line 2083
    .local v0, curItem:Lcom/vlingo/client/car/CarScrollableItem;
    invoke-virtual {v0, p1}, Lcom/vlingo/client/car/CarScrollableItem;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 2100
    :goto_12
    return v1

    .line 2086
    :cond_13
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_34

    .line 2100
    const/4 v1, 0x0

    goto :goto_12

    .line 2088
    :pswitch_1c
    invoke-direct {p0}, Lcom/vlingo/client/car/CarActivity;->showCarSettings()V

    goto :goto_12

    .line 2091
    :pswitch_20
    invoke-direct {p0}, Lcom/vlingo/client/car/CarActivity;->showCarHelp()V

    goto :goto_12

    .line 2094
    :pswitch_24
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarActivity;->finish()V

    goto :goto_12

    .line 2097
    :pswitch_28
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/vlingo/client/home/HomeActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/vlingo/client/car/CarActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_12

    .line 2086
    nop

    :pswitch_data_34
    .packed-switch 0x2
        :pswitch_1c
        :pswitch_20
        :pswitch_24
        :pswitch_28
    .end packed-switch
.end method

.method protected declared-synchronized onPause()V
    .registers 4

    .prologue
    .line 541
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->paused:Z

    .line 542
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v0, v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->phraseSpotterHandler:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->setStartPhraseDelay(I)V

    .line 543
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarActivity;->uninitializeCarActivity()V

    .line 544
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->tm:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity;->psl:Lcom/vlingo/client/car/CarActivity$MyPhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 547
    invoke-super {p0}, Lcom/vlingo/client/ui/VLActivityGroup;->onPause()V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 548
    monitor-exit p0

    return-void

    .line 541
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 8
    .parameter "menu"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2067
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 2069
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->updateCurrentLocale()V

    .line 2071
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/vlingo/client/car/CarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901af

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200b2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2072
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/vlingo/client/car/CarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090291

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v1, v5, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02014f

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2074
    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v1}, Lcom/vlingo/client/scroller/ScrollableContainer;->getCurrentItem()Lcom/vlingo/client/scroller/ScrollableItem;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/car/CarScrollableItem;

    .line 2075
    .local v0, curItem:Lcom/vlingo/client/car/CarScrollableItem;
    invoke-virtual {v0, p1}, Lcom/vlingo/client/car/CarScrollableItem;->onCreateOptionsMenu(Landroid/view/Menu;)V

    .line 2077
    return v5
.end method

.method public onReadyButtonClicked()V
    .registers 4

    .prologue
    .line 947
    invoke-static {p0}, Lcom/vlingo/client/core/audio/AudioFocusManager;->getInstance(Landroid/content/Context;)Lcom/vlingo/client/core/audio/AudioFocusManager;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/vlingo/client/core/audio/AudioFocusManager;->requestAudioFocus(II)V

    .line 948
    invoke-direct {p0}, Lcom/vlingo/client/car/CarActivity;->onRecognitionStartRequested()V

    .line 949
    return-void
.end method

.method public onReadyForSpeech()V
    .registers 3

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v0, v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->phraseSpotterHandler:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->setStartPhraseDelay(I)V

    .line 1002
    invoke-direct {p0}, Lcom/vlingo/client/car/CarActivity;->onShowListeningStarted()V

    .line 1003
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 456
    invoke-direct {p0, p1}, Lcom/vlingo/client/car/CarActivity;->unpackSavedInstanceState(Landroid/os/Bundle;)V

    .line 457
    invoke-super {p0, p1}, Lcom/vlingo/client/ui/VLActivityGroup;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 458
    return-void
.end method

.method public onResults(Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;)V
    .registers 5
    .parameter "results"

    .prologue
    const/4 v2, 0x0

    .line 1091
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vlingo/client/car/CarActivity;->creatingNewTask:Z

    .line 1096
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->hasActions()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p1}, Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;->hasNonMessageActions()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1097
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarActivity;->playResultTone()V

    .line 1100
    :cond_15
    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity;->dispatcher:Lcom/vlingo/client/car/vvs/CarVVSDispatcher;

    invoke-virtual {v1, p1}, Lcom/vlingo/client/car/vvs/CarVVSDispatcher;->resultHandler(Lcom/vlingo/client/core/recognizer/results/SRRecognitionResponse;)Z

    move-result v0

    .line 1102
    .local v0, handlerFound:Z
    if-nez v0, :cond_20

    .line 1103
    invoke-direct {p0, v2}, Lcom/vlingo/client/car/CarActivity;->onShowReady(Z)V

    .line 1104
    :cond_20
    iput-boolean v2, p0, Lcom/vlingo/client/car/CarActivity;->creatingNewTask:Z

    .line 1105
    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v1, v1, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->phraseSpotterHandler:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    invoke-virtual {v1}, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->startPhraseSpottingDelayed()V

    .line 1106
    return-void
.end method

.method protected declared-synchronized onResume()V
    .registers 4

    .prologue
    .line 472
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Lcom/vlingo/client/ui/VLActivityGroup;->onResume()V

    .line 473
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->paused:Z

    .line 476
    invoke-static {}, Lcom/vlingo/client/tos/TermsOfServiceManager;->isTOSRequired()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {}, Lcom/vlingo/client/car/iux/CarIUXManager;->requiresIUX()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 479
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v0, v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->phraseSpotterHandler:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    invoke-virtual {v0}, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->startPhraseSpottingDelayed()V

    .line 489
    :cond_1c
    invoke-static {p0}, Lcom/vlingo/client/core/audio/AudioFocusManager;->getInstance(Landroid/content/Context;)Lcom/vlingo/client/core/audio/AudioFocusManager;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/vlingo/client/core/audio/AudioFocusManager;->requestAudioFocus(II)V

    .line 494
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->language:Ljava/lang/String;

    invoke-static {}, Lcom/vlingo/client/settings/Settings;->getVlingoLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 495
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarActivity;->finish()V

    .line 496
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vlingo/client/car/CarActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/CarActivity;->startActivity(Landroid/content/Intent;)V

    .line 509
    :goto_3e
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->tm:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity;->psl:Lcom/vlingo/client/car/CarActivity$MyPhoneStateListener;

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_5a

    .line 512
    monitor-exit p0

    return-void

    .line 499
    :cond_49
    :try_start_49
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarActivity;->initializeCarActivity()V

    .line 500
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarActivity;->updateAppButtons()V

    .line 502
    new-instance v0, Lcom/vlingo/client/car/CarActivity$3;

    invoke-direct {v0, p0}, Lcom/vlingo/client/car/CarActivity$3;-><init>(Lcom/vlingo/client/car/CarActivity;)V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lcom/vlingo/client/util/ActivityUtil;->scheduleOnMainThread(Ljava/lang/Runnable;J)V
    :try_end_59
    .catchall {:try_start_49 .. :try_end_59} :catchall_5a

    goto :goto_3e

    .line 472
    :catchall_5a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    .line 219
    .local v0, handle:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;
    return-object v0
.end method

.method public onRmsChanged(F)V
    .registers 4
    .parameter "rmsdB"

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->recoState:Lcom/vlingo/client/car/CarActivity$RecoState;

    sget-object v1, Lcom/vlingo/client/car/CarActivity$RecoState;->LISTENING_STARTED:Lcom/vlingo/client/car/CarActivity$RecoState;

    if-ne v0, v1, :cond_b

    .line 1013
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->popupContainer:Lcom/vlingo/client/car/CarPopup;

    invoke-virtual {v0, p1}, Lcom/vlingo/client/car/CarPopup;->onRMSChanged(F)V

    .line 1015
    :cond_b
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 448
    const-string v0, "spokeBluetoothCheckSchedule"

    iget-boolean v1, p0, Lcom/vlingo/client/car/CarActivity;->spokeBluetoothCheckSchedule:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 449
    const-string v0, "initialStateChecked"

    iget-boolean v1, p0, Lcom/vlingo/client/car/CarActivity;->initialStateChecked:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 450
    const-string v0, "wasSafeReaderOnBeforeStart"

    iget-boolean v1, p0, Lcom/vlingo/client/car/CarActivity;->wasSafeReaderOnBeforeStart:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 451
    const-string v0, "startedWithCarDock"

    iget-boolean v1, p0, Lcom/vlingo/client/car/CarActivity;->startedWithCarDock:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 452
    invoke-super {p0, p1}, Lcom/vlingo/client/ui/VLActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 453
    return-void
.end method

.method public onScrollableContainerItemChanged(Lcom/vlingo/client/scroller/ScrollableContainer;Lcom/vlingo/client/scroller/ScrollableItem;Lcom/vlingo/client/scroller/ScrollableItem;I)V
    .registers 15
    .parameter "container"
    .parameter "prevItem"
    .parameter "newItem"
    .parameter "newItemIndex"

    .prologue
    const/16 v9, 0x1f4

    const/4 v8, 0x0

    .line 1839
    move-object v4, p2

    check-cast v4, Lcom/vlingo/client/car/CarScrollableItem;

    .local v4, prevCarItem:Lcom/vlingo/client/car/CarScrollableItem;
    move-object v0, p3

    .line 1840
    check-cast v0, Lcom/vlingo/client/car/CarScrollableItem;

    .line 1841
    .local v0, carItem:Lcom/vlingo/client/car/CarScrollableItem;
    if-nez p3, :cond_14

    .line 1842
    new-instance v6, Lcom/vlingo/client/car/CarActivity$8;

    invoke-direct {v6, p0}, Lcom/vlingo/client/car/CarActivity$8;-><init>(Lcom/vlingo/client/car/CarActivity;)V

    invoke-virtual {p0, v6}, Lcom/vlingo/client/car/CarActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1913
    :cond_13
    return-void

    .line 1850
    :cond_14
    if-nez p4, :cond_d0

    .line 1851
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/vlingo/client/car/CarActivity;->maybeEnableOrientationChange(Z)V

    .line 1852
    iget-boolean v6, p0, Lcom/vlingo/client/car/CarActivity;->cancelling:Z

    if-eqz v6, :cond_27

    .line 1853
    iput-boolean v8, p0, Lcom/vlingo/client/car/CarActivity;->cancelling:Z

    .line 1854
    iget-object v6, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    add-int/lit8 v7, p4, 0x1

    invoke-virtual {v6, v7}, Lcom/vlingo/client/scroller/ScrollableContainer;->removeItemsStartingAtIndex(I)V

    .line 1860
    :cond_27
    :goto_27
    if-eqz v4, :cond_32

    invoke-virtual {v4}, Lcom/vlingo/client/car/CarScrollableItem;->supportsAutoListen()Z

    move-result v6

    if-eqz v6, :cond_32

    .line 1861
    invoke-virtual {v4, v8}, Lcom/vlingo/client/car/CarScrollableItem;->setAutoListenShouldTrigger(Z)V

    .line 1864
    :cond_32
    invoke-virtual {v0}, Lcom/vlingo/client/car/CarScrollableItem;->isRecognitionSupported()Z

    move-result v6

    if-nez v6, :cond_d5

    .line 1865
    iget-object v6, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v6, v6, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->phraseSpotterHandler:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    invoke-virtual {v6, v9}, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->setStartPhraseDelay(I)V

    .line 1866
    iget-object v6, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v6, v6, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->phraseSpotterHandler:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    invoke-virtual {v6}, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->stopPhraseSpotting()V

    .line 1874
    :cond_46
    :goto_46
    iget-object v6, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v6, v6, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->recoResponderChain:Lcom/vlingo/client/car/asr/RecoResponderChain;

    invoke-virtual {v6}, Lcom/vlingo/client/car/asr/RecoResponderChain;->removeAllResponders()V

    .line 1875
    iget-object v6, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v6, v6, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->recoResponderChain:Lcom/vlingo/client/car/asr/RecoResponderChain;

    iget-object v7, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v7, v7, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->carActivityRef:Lcom/vlingo/client/car/CarActivity;

    invoke-virtual {v6, v7}, Lcom/vlingo/client/car/asr/RecoResponderChain;->pushResponderOnToChain(Lcom/vlingo/client/car/asr/RecoResponder;)V

    .line 1876
    invoke-virtual {v0}, Lcom/vlingo/client/car/CarScrollableItem;->getTaskController()Lcom/vlingo/client/car/TaskController;

    move-result-object v6

    if-eqz v6, :cond_69

    .line 1877
    iget-object v6, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v6, v6, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->recoResponderChain:Lcom/vlingo/client/car/asr/RecoResponderChain;

    invoke-virtual {v0}, Lcom/vlingo/client/car/CarScrollableItem;->getTaskController()Lcom/vlingo/client/car/TaskController;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/vlingo/client/car/asr/RecoResponderChain;->pushResponderOnToChain(Lcom/vlingo/client/car/asr/RecoResponder;)V

    .line 1878
    :cond_69
    iget-object v6, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v6, v6, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->recoResponderChain:Lcom/vlingo/client/car/asr/RecoResponderChain;

    invoke-virtual {v6, v0}, Lcom/vlingo/client/car/asr/RecoResponderChain;->pushResponderOnToChain(Lcom/vlingo/client/car/asr/RecoResponder;)V

    .line 1881
    iget-object v6, p0, Lcom/vlingo/client/car/CarActivity;->recognizer:Lcom/vlingo/client/car/asr/CarRecognizer;

    invoke-virtual {v6}, Lcom/vlingo/client/car/asr/CarRecognizer;->cancel()V

    .line 1882
    invoke-direct {p0, v8}, Lcom/vlingo/client/car/CarActivity;->onShowReady(Z)V

    .line 1885
    invoke-virtual {v0}, Lcom/vlingo/client/car/CarScrollableItem;->isOverloadingBottomContainer()Z

    move-result v6

    if-nez v6, :cond_82

    .line 1886
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/vlingo/client/car/CarActivity;->overloadBottomContainerWithView(Landroid/view/View;)V

    .line 1888
    :cond_82
    invoke-direct {p0, v8}, Lcom/vlingo/client/car/CarActivity;->updateRecoButtonReadyState(Z)V

    .line 1889
    iget-object v6, p0, Lcom/vlingo/client/car/CarActivity;->recoButton:Lcom/vlingo/client/car/CarRecoButton;

    invoke-virtual {v0}, Lcom/vlingo/client/car/CarScrollableItem;->isTalkButtonEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/vlingo/client/car/CarRecoButton;->setListenButtonEnabled(Z)V

    .line 1891
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarActivity;->setHeaderBasedOnCurrentItem()V

    .line 1894
    invoke-virtual {v0}, Lcom/vlingo/client/car/CarScrollableItem;->supportsHints()Z

    move-result v6

    if-eqz v6, :cond_a6

    .line 1895
    invoke-virtual {v0}, Lcom/vlingo/client/car/CarScrollableItem;->getRandomHint()Ljava/lang/String;

    move-result-object v1

    .line 1896
    .local v1, hintText:Ljava/lang/String;
    if-eqz v1, :cond_a6

    .line 1897
    iget-object v6, p0, Lcom/vlingo/client/car/CarActivity;->recoButton:Lcom/vlingo/client/car/CarRecoButton;

    invoke-virtual {v0}, Lcom/vlingo/client/car/CarScrollableItem;->getHintDelay()I

    move-result v7

    invoke-virtual {v6, v1, v7}, Lcom/vlingo/client/car/CarRecoButton;->showHint(Ljava/lang/String;I)V

    .line 1902
    .end local v1           #hintText:Ljava/lang/String;
    :cond_a6
    iget-object v6, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v6}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildCount()I

    move-result v3

    .line 1903
    .local v3, len:I
    iget-object v6, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v6}, Lcom/vlingo/client/scroller/ScrollableContainer;->getCurrentScreenIndex()I

    move-result v5

    .line 1904
    .local v5, sel:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b3
    iget-object v6, p0, Lcom/vlingo/client/car/CarActivity;->dots:[Landroid/widget/ImageView;

    array-length v6, v6

    if-ge v2, v6, :cond_13

    .line 1905
    if-ge v2, v3, :cond_f1

    .line 1906
    iget-object v6, p0, Lcom/vlingo/client/car/CarActivity;->dots:[Landroid/widget/ImageView;

    aget-object v6, v6, v2

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1907
    iget-object v6, p0, Lcom/vlingo/client/car/CarActivity;->dots:[Landroid/widget/ImageView;

    aget-object v7, v6, v2

    if-ne v2, v5, :cond_ed

    const v6, 0x7f020114

    :goto_ca
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1904
    :goto_cd
    add-int/lit8 v2, v2, 0x1

    goto :goto_b3

    .line 1857
    .end local v2           #i:I
    .end local v3           #len:I
    .end local v5           #sel:I
    :cond_d0
    invoke-direct {p0}, Lcom/vlingo/client/car/CarActivity;->disableOrientationChange()V

    goto/16 :goto_27

    .line 1868
    :cond_d5
    iget-object v6, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v6}, Lcom/vlingo/client/scroller/ScrollableContainer;->getCurrentScreenIndex()I

    move-result v6

    if-gtz v6, :cond_46

    .line 1869
    iget-object v6, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v6, v6, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->phraseSpotterHandler:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    invoke-virtual {v6, v9}, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->setStartPhraseDelay(I)V

    .line 1870
    iget-object v6, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v6, v6, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->phraseSpotterHandler:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    invoke-virtual {v6}, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->startPhraseSpottingDelayed()V

    goto/16 :goto_46

    .line 1907
    .restart local v2       #i:I
    .restart local v3       #len:I
    .restart local v5       #sel:I
    :cond_ed
    const v6, 0x7f020113

    goto :goto_ca

    .line 1910
    :cond_f1
    iget-object v6, p0, Lcom/vlingo/client/car/CarActivity;->dots:[Landroid/widget/ImageView;

    aget-object v6, v6, v2

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_cd
.end method

.method protected onStart()V
    .registers 4

    .prologue
    .line 929
    invoke-super {p0}, Lcom/vlingo/client/ui/VLActivityGroup;->onStart()V

    .line 931
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarActivity;->setHeaderBasedOnCurrentItem()V

    .line 932
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->tm:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity;->psl:Lcom/vlingo/client/car/CarActivity$MyPhoneStateListener;

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 933
    return-void
.end method

.method public onStatusMessage(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 1020
    return-void
.end method

.method protected declared-synchronized onStop()V
    .registers 4

    .prologue
    .line 517
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->paused:Z

    .line 518
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v0, v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->phraseSpotterHandler:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->setStartPhraseDelay(I)V

    .line 519
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarActivity;->uninitializeCarActivity()V

    .line 520
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->tm:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity;->psl:Lcom/vlingo/client/car/CarActivity$MyPhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 523
    invoke-super {p0}, Lcom/vlingo/client/ui/VLActivityGroup;->onStop()V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 524
    monitor-exit p0

    return-void

    .line 517
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onUserLeaveHint()V
    .registers 3

    .prologue
    .line 527
    invoke-super {p0}, Lcom/vlingo/client/ui/VLActivityGroup;->onUserLeaveHint()V

    .line 528
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarActivity;->getCurrentTaskItem()Lcom/vlingo/client/car/CarScrollableItem;

    move-result-object v0

    .line 529
    .local v0, item:Lcom/vlingo/client/car/CarScrollableItem;
    if-eqz v0, :cond_10

    .line 530
    instance-of v1, v0, Lcom/vlingo/client/car/memo/MemoSavingView;

    if-eqz v1, :cond_10

    .line 531
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarActivity;->taskFinished()V

    .line 535
    :cond_10
    return-void
.end method

.method public overloadBottomContainerWithView(Landroid/view/View;)V
    .registers 7
    .parameter "bottomView"

    .prologue
    .line 1574
    iget-object v2, p0, Lcom/vlingo/client/car/CarActivity;->overloadedBottomView:Landroid/view/View;

    if-eqz v2, :cond_1f

    .line 1575
    iget-object v2, p0, Lcom/vlingo/client/car/CarActivity;->bottomContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/vlingo/client/car/CarActivity;->overloadedBottomView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1c

    .line 1576
    iget-object v2, p0, Lcom/vlingo/client/car/CarActivity;->bottomContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/vlingo/client/car/CarActivity;->bottomContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/vlingo/client/car/CarActivity;->overloadedBottomView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    .line 1578
    :cond_1c
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vlingo/client/car/CarActivity;->overloadedBottomView:Landroid/view/View;

    .line 1581
    :cond_1f
    if-eqz p1, :cond_3f

    .line 1582
    const/4 v1, 0x0

    .local v1, i:I
    :goto_22
    iget-object v2, p0, Lcom/vlingo/client/car/CarActivity;->bottomContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_37

    .line 1583
    iget-object v2, p0, Lcom/vlingo/client/car/CarActivity;->bottomContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1584
    .local v0, child:Landroid/view/View;
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1582
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 1586
    .end local v0           #child:Landroid/view/View;
    :cond_37
    iget-object v2, p0, Lcom/vlingo/client/car/CarActivity;->bottomContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1587
    iput-object p1, p0, Lcom/vlingo/client/car/CarActivity;->overloadedBottomView:Landroid/view/View;

    .line 1591
    .end local v1           #i:I
    :goto_3e
    return-void

    .line 1589
    :cond_3f
    iget-object v2, p0, Lcom/vlingo/client/car/CarActivity;->recoButton:Lcom/vlingo/client/car/CarRecoButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/vlingo/client/car/CarRecoButton;->setVisibility(I)V

    goto :goto_3e
.end method

.method public playErrorTone()V
    .registers 2

    .prologue
    .line 1924
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->recognizer:Lcom/vlingo/client/car/asr/CarRecognizer;

    invoke-virtual {v0}, Lcom/vlingo/client/car/asr/CarRecognizer;->getTonePlayer()Lcom/vlingo/client/android/core/audio/TonePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/android/core/audio/TonePlayer;->playErrorTone()V

    .line 1925
    return-void
.end method

.method public playResultTone()V
    .registers 2

    .prologue
    .line 1920
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->recognizer:Lcom/vlingo/client/car/asr/CarRecognizer;

    invoke-virtual {v0}, Lcom/vlingo/client/car/asr/CarRecognizer;->getTonePlayer()Lcom/vlingo/client/android/core/audio/TonePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/android/core/audio/TonePlayer;->playResultTone()V

    .line 1921
    return-void
.end method

.method public playWordSpottedTone()V
    .registers 2

    .prologue
    .line 1928
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->recognizer:Lcom/vlingo/client/car/asr/CarRecognizer;

    invoke-virtual {v0}, Lcom/vlingo/client/car/asr/CarRecognizer;->getTonePlayer()Lcom/vlingo/client/android/core/audio/TonePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/android/core/audio/TonePlayer;->playWordSpottedTone()V

    .line 1929
    return-void
.end method

.method public pushTaskItem(Lcom/vlingo/client/car/CarScrollableItem;Lcom/vlingo/client/car/CarScrollableItem;)V
    .registers 5
    .parameter "itemToPush"
    .parameter "originatingItem"

    .prologue
    .line 1545
    invoke-virtual {p2}, Lcom/vlingo/client/car/CarScrollableItem;->getTaskController()Lcom/vlingo/client/car/TaskController;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/vlingo/client/car/CarActivity;->initTaskItem(Lcom/vlingo/client/car/CarScrollableItem;Lcom/vlingo/client/car/TaskController;)V

    .line 1547
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v1, p2}, Lcom/vlingo/client/scroller/ScrollableContainer;->indexOfItem(Lcom/vlingo/client/scroller/ScrollableItem;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/scroller/ScrollableContainer;->removeItemsStartingAtIndex(I)V

    .line 1548
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v0, p1}, Lcom/vlingo/client/scroller/ScrollableContainer;->addItem(Lcom/vlingo/client/scroller/ScrollableItem;)V

    .line 1549
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v0, p1}, Lcom/vlingo/client/scroller/ScrollableContainer;->scrollToItem(Lcom/vlingo/client/scroller/ScrollableItem;)V

    .line 1550
    return-void
.end method

.method public removeItemFromTask(Lcom/vlingo/client/car/CarScrollableItem;)V
    .registers 3
    .parameter "item"

    .prologue
    .line 1538
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v0, p1}, Lcom/vlingo/client/scroller/ScrollableContainer;->removeItem(Lcom/vlingo/client/scroller/ScrollableItem;)V

    .line 1539
    return-void
.end method

.method public scrollBack()V
    .registers 3

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getCurrentScreenIndex()I

    move-result v0

    if-lez v0, :cond_15

    .line 1441
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v1}, Lcom/vlingo/client/scroller/ScrollableContainer;->getCurrentScreenIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/scroller/ScrollableContainer;->scrollToScreenAtIndex(I)V

    .line 1443
    :cond_15
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v0, v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->phraseSpotterHandler:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    const/16 v1, 0x5dc

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->setStartPhraseDelay(I)V

    .line 1444
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v0, v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->phraseSpotterHandler:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    invoke-virtual {v0}, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->startPhraseSpottingDelayed()V

    .line 1445
    return-void
.end method

.method public scrollForward()V
    .registers 3

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getCurrentScreenIndex()I

    move-result v0

    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v1}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1d

    .line 1449
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v1}, Lcom/vlingo/client/scroller/ScrollableContainer;->getCurrentScreenIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/scroller/ScrollableContainer;->scrollToScreenAtIndex(I)V

    .line 1451
    :cond_1d
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v0, v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->phraseSpotterHandler:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    const/16 v1, 0x5dc

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->setStartPhraseDelay(I)V

    .line 1452
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v0, v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->phraseSpotterHandler:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    invoke-virtual {v0}, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->startPhraseSpottingDelayed()V

    .line 1453
    return-void
.end method

.method public scrollHome()V
    .registers 3

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getCurrentScreenIndex()I

    move-result v0

    if-lez v0, :cond_e

    .line 1433
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vlingo/client/scroller/ScrollableContainer;->scrollToScreenAtIndex(I)V

    .line 1435
    :cond_e
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v0, v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->phraseSpotterHandler:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    const/16 v1, 0x5dc

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->setStartPhraseDelay(I)V

    .line 1436
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v0, v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->phraseSpotterHandler:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    invoke-virtual {v0}, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->startPhraseSpottingDelayed()V

    .line 1437
    return-void
.end method

.method public setHeaderBasedOnCurrentItem()V
    .registers 4

    .prologue
    .line 1984
    iget-object v2, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v2}, Lcom/vlingo/client/scroller/ScrollableContainer;->getCurrentItem()Lcom/vlingo/client/scroller/ScrollableItem;

    move-result-object v0

    check-cast v0, Lcom/vlingo/client/car/CarScrollableItem;

    .line 1985
    .local v0, curItem:Lcom/vlingo/client/car/CarScrollableItem;
    invoke-virtual {v0}, Lcom/vlingo/client/car/CarScrollableItem;->getTaskController()Lcom/vlingo/client/car/TaskController;

    move-result-object v2

    if-eqz v2, :cond_24

    .line 1987
    invoke-virtual {v0}, Lcom/vlingo/client/car/CarScrollableItem;->getTaskController()Lcom/vlingo/client/car/TaskController;

    move-result-object v2

    invoke-interface {v2}, Lcom/vlingo/client/car/TaskController;->getTaskName()Ljava/lang/String;

    move-result-object v1

    .line 1988
    .local v1, title:Ljava/lang/String;
    if-eqz v1, :cond_1e

    .line 1989
    iget-object v2, p0, Lcom/vlingo/client/car/CarActivity;->headerView:Lcom/vlingo/client/car/CarHeaderView;

    invoke-virtual {v2, v1}, Lcom/vlingo/client/car/CarHeaderView;->showTitle(Ljava/lang/String;)V

    .line 1995
    .end local v1           #title:Ljava/lang/String;
    :goto_1d
    return-void

    .line 1991
    .restart local v1       #title:Ljava/lang/String;
    :cond_1e
    iget-object v2, p0, Lcom/vlingo/client/car/CarActivity;->headerView:Lcom/vlingo/client/car/CarHeaderView;

    invoke-virtual {v2}, Lcom/vlingo/client/car/CarHeaderView;->hideIcon()V

    goto :goto_1d

    .line 1993
    .end local v1           #title:Ljava/lang/String;
    :cond_24
    iget-object v2, p0, Lcom/vlingo/client/car/CarActivity;->headerView:Lcom/vlingo/client/car/CarHeaderView;

    invoke-virtual {v2}, Lcom/vlingo/client/car/CarHeaderView;->showLogo()V

    goto :goto_1d
.end method

.method public speak(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 6
    .parameter "demand"

    .prologue
    .line 1594
    invoke-virtual {p1}, Lcom/vlingo/client/core/tts/TTSDemand;->getType()Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    move-result-object v2

    sget-object v3, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->CAR_BACKGROUND:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    if-ne v2, v3, :cond_a

    .line 1595
    iput-object p1, p0, Lcom/vlingo/client/car/CarActivity;->backgroundDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 1598
    :cond_a
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v0

    .line 1599
    .local v0, context:Landroid/content/Context;
    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1600
    .local v1, mgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eqz v2, :cond_30

    .line 1601
    invoke-virtual {p1}, Lcom/vlingo/client/core/tts/TTSDemand;->getText()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1606
    :goto_28
    iget-object v2, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v2, v2, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->carActivityRef:Lcom/vlingo/client/car/CarActivity;

    invoke-virtual {v2}, Lcom/vlingo/client/car/CarActivity;->updateAppButtons()V

    .line 1607
    return-void

    .line 1604
    :cond_30
    iget-object v2, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v2, v2, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->ttsManager:Lcom/vlingo/client/car/tts/CarTTSManager;

    invoke-virtual {v2, p1}, Lcom/vlingo/client/car/tts/CarTTSManager;->playDemand(Lcom/vlingo/client/core/tts/TTSDemand;)V

    goto :goto_28
.end method

.method public speak([Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 10
    .parameter "demand"

    .prologue
    .line 1610
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v1

    .line 1611
    .local v1, context:Landroid/content/Context;
    const-string v6, "phone"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 1612
    .local v5, mgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v6

    if-eqz v6, :cond_2b

    .line 1613
    move-object v0, p1

    .local v0, arr$:[Lcom/vlingo/client/core/tts/TTSDemand;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_15
    if-ge v3, v4, :cond_32

    aget-object v2, v0, v3

    .line 1614
    .local v2, dmnd:Lcom/vlingo/client/core/tts/TTSDemand;
    if-nez v2, :cond_1e

    .line 1613
    :goto_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 1616
    :cond_1e
    invoke-virtual {v2}, Lcom/vlingo/client/core/tts/TTSDemand;->getText()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v1, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1b

    .line 1620
    .end local v0           #arr$:[Lcom/vlingo/client/core/tts/TTSDemand;
    .end local v2           #dmnd:Lcom/vlingo/client/core/tts/TTSDemand;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_2b
    iget-object v6, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v6, v6, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->ttsManager:Lcom/vlingo/client/car/tts/CarTTSManager;

    invoke-virtual {v6, p1}, Lcom/vlingo/client/car/tts/CarTTSManager;->playDemand([Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 1622
    :cond_32
    iget-object v6, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v6, v6, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->carActivityRef:Lcom/vlingo/client/car/CarActivity;

    invoke-virtual {v6}, Lcom/vlingo/client/car/CarActivity;->updateAppButtons()V

    .line 1623
    return-void
.end method

.method public declared-synchronized startRecognition(Lcom/vlingo/client/core/recognizer/SRContext;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 1305
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0, p1, v0, v1}, Lcom/vlingo/client/car/CarActivity;->startRecognition(Lcom/vlingo/client/core/recognizer/SRContext;Lcom/vlingo/client/core/tts/TTSDemand;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    .line 1306
    monitor-exit p0

    return-void

    .line 1305
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startRecognition(Lcom/vlingo/client/core/recognizer/SRContext;Lcom/vlingo/client/core/tts/TTSDemand;Ljava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "spokenPrompt"
    .parameter "shownPrompt"

    .prologue
    .line 1309
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/vlingo/client/car/CarActivity;->startRecognition(Lcom/vlingo/client/core/recognizer/SRContext;Lcom/vlingo/client/core/tts/TTSDemand;Ljava/lang/String;Lcom/vlingo/client/car/PromptContent;)V

    .line 1310
    return-void
.end method

.method public startRecognition(Lcom/vlingo/client/core/recognizer/SRContext;Lcom/vlingo/client/core/tts/TTSDemand;Ljava/lang/String;Lcom/vlingo/client/car/PromptContent;)V
    .registers 10
    .parameter "context"
    .parameter "spokenPrompt"
    .parameter "shownPrompt"
    .parameter "content"

    .prologue
    const/4 v4, 0x0

    .line 1316
    sget-object v1, Lcom/vlingo/client/car/CarActivity$10;->$SwitchMap$com$vlingo$client$core$deviceinfo$PhoneInfo$ConnectState:[I

    invoke-static {}, Lcom/vlingo/client/core/deviceinfo/PhoneInfo;->getInstance()Lcom/vlingo/client/core/deviceinfo/PhoneInfo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/vlingo/client/core/deviceinfo/PhoneInfo;->isReadyToConnect(Z)Lcom/vlingo/client/core/deviceinfo/PhoneInfo$ConnectState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vlingo/client/core/deviceinfo/PhoneInfo$ConnectState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_58

    .line 1333
    invoke-direct {p0}, Lcom/vlingo/client/car/CarActivity;->disableOrientationChange()V

    .line 1335
    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v1, v1, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->phraseSpotterHandler:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    invoke-virtual {v1}, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->stopPhraseSpotting()V

    .line 1337
    iput-object p1, p0, Lcom/vlingo/client/car/CarActivity;->curContext:Lcom/vlingo/client/core/recognizer/SRContext;

    .line 1338
    iput-object p2, p0, Lcom/vlingo/client/car/CarActivity;->recoTTSPrompt:Lcom/vlingo/client/core/tts/TTSDemand;

    .line 1339
    iput-object p3, p0, Lcom/vlingo/client/car/CarActivity;->currentShownPrompt:Ljava/lang/String;

    .line 1340
    iput-object p4, p0, Lcom/vlingo/client/car/CarActivity;->currentPromptContent:Lcom/vlingo/client/car/PromptContent;

    .line 1341
    const/4 v0, 0x0

    .line 1342
    .local v0, nDelay:I
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_56

    .line 1343
    const/16 v0, 0x6a4

    .line 1348
    :goto_36
    new-instance v1, Lcom/vlingo/client/car/CarActivity$5;

    invoke-direct {v1, p0}, Lcom/vlingo/client/car/CarActivity$5;-><init>(Lcom/vlingo/client/car/CarActivity;)V

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lcom/vlingo/client/util/ActivityUtil;->scheduleOnMainThread(Ljava/lang/Runnable;J)V

    .line 1362
    .end local v0           #nDelay:I
    :goto_3f
    return-void

    .line 1318
    :pswitch_40
    const v1, 0x7f09033e

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_3f

    .line 1321
    :pswitch_4b
    const v1, 0x7f09031f

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_3f

    .line 1345
    .restart local v0       #nDelay:I
    :cond_56
    const/4 v0, 0x0

    goto :goto_36

    .line 1316
    :pswitch_data_58
    .packed-switch 0x2
        :pswitch_40
        :pswitch_4b
    .end packed-switch
.end method

.method public startTask(Lcom/vlingo/client/car/CarScrollableItem;Lcom/vlingo/client/car/TaskController;)V
    .registers 4
    .parameter "item"
    .parameter "taskController"

    .prologue
    .line 1382
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/vlingo/client/car/CarActivity;->startTask(Lcom/vlingo/client/car/CarScrollableItem;[Lcom/vlingo/client/car/CarScrollableItem;Lcom/vlingo/client/car/TaskController;)V

    .line 1383
    return-void
.end method

.method public startTask(Lcom/vlingo/client/car/CarScrollableItem;[Lcom/vlingo/client/car/CarScrollableItem;Lcom/vlingo/client/car/TaskController;)V
    .registers 5
    .parameter "activeItem"
    .parameter "itemsToPushBeforeActiveItem"
    .parameter "taskController"

    .prologue
    .line 1386
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/vlingo/client/car/CarActivity;->startTask(Lcom/vlingo/client/car/CarScrollableItem;[Lcom/vlingo/client/car/CarScrollableItem;[Lcom/vlingo/client/car/CarScrollableItem;Lcom/vlingo/client/car/TaskController;)V

    .line 1387
    return-void
.end method

.method public startTask(Lcom/vlingo/client/car/CarScrollableItem;[Lcom/vlingo/client/car/CarScrollableItem;[Lcom/vlingo/client/car/CarScrollableItem;Lcom/vlingo/client/car/TaskController;)V
    .registers 13
    .parameter "activeItem"
    .parameter "itemsToPushBeforeActiveItem"
    .parameter "itemsToPushAfterActiveItem"
    .parameter "taskController"

    .prologue
    const/4 v7, 0x1

    .line 1394
    invoke-direct {p0, p1, p4}, Lcom/vlingo/client/car/CarActivity;->initTaskItem(Lcom/vlingo/client/car/CarScrollableItem;Lcom/vlingo/client/car/TaskController;)V

    .line 1395
    const/4 v5, 0x1

    .line 1397
    .local v5, scrollToNewItem:Z
    iget-object v6, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v6}, Lcom/vlingo/client/scroller/ScrollableContainer;->getCurrentScreenIndex()I

    move-result v6

    if-lez v6, :cond_51

    .line 1399
    iget-object v6, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v6}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildCount()I

    move-result v6

    iget-object v7, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v7}, Lcom/vlingo/client/scroller/ScrollableContainer;->getCurrentScreenIndex()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    if-le v6, v7, :cond_2a

    .line 1400
    iget-object v6, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    iget-object v7, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v7}, Lcom/vlingo/client/scroller/ScrollableContainer;->getCurrentScreenIndex()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Lcom/vlingo/client/scroller/ScrollableContainer;->removeItemsStartingAtIndex(I)V

    .line 1402
    :cond_2a
    iget-object v6, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v6}, Lcom/vlingo/client/scroller/ScrollableContainer;->getCurrentItem()Lcom/vlingo/client/scroller/ScrollableItem;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/car/CarScrollableItem;

    .line 1403
    .local v1, curItem:Lcom/vlingo/client/car/CarScrollableItem;
    invoke-virtual {v1}, Lcom/vlingo/client/car/CarScrollableItem;->removeOnTaskStart()Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 1404
    iget-object v6, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v6, v1}, Lcom/vlingo/client/scroller/ScrollableContainer;->removeItem(Lcom/vlingo/client/scroller/ScrollableItem;)V

    .line 1412
    .end local v1           #curItem:Lcom/vlingo/client/car/CarScrollableItem;
    :cond_3d
    :goto_3d
    if-eqz p2, :cond_5f

    .line 1413
    move-object v0, p2

    .local v0, arr$:[Lcom/vlingo/client/car/CarScrollableItem;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_42
    if-ge v3, v4, :cond_5f

    aget-object v2, v0, v3

    .line 1414
    .local v2, i:Lcom/vlingo/client/car/CarScrollableItem;
    invoke-direct {p0, v2, p4}, Lcom/vlingo/client/car/CarActivity;->initTaskItem(Lcom/vlingo/client/car/CarScrollableItem;Lcom/vlingo/client/car/TaskController;)V

    .line 1415
    iget-object v6, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v6, v2}, Lcom/vlingo/client/scroller/ScrollableContainer;->addItem(Lcom/vlingo/client/scroller/ScrollableItem;)V

    .line 1413
    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    .line 1407
    .end local v0           #arr$:[Lcom/vlingo/client/car/CarScrollableItem;
    .end local v2           #i:Lcom/vlingo/client/car/CarScrollableItem;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_51
    iget-object v6, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v6}, Lcom/vlingo/client/scroller/ScrollableContainer;->getChildCount()I

    move-result v6

    if-le v6, v7, :cond_3d

    .line 1408
    iget-object v6, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v6, v7}, Lcom/vlingo/client/scroller/ScrollableContainer;->removeItemsStartingAtIndex(I)V

    goto :goto_3d

    .line 1418
    :cond_5f
    iget-object v6, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v6, p1}, Lcom/vlingo/client/scroller/ScrollableContainer;->addItem(Lcom/vlingo/client/scroller/ScrollableItem;)V

    .line 1419
    if-eqz p3, :cond_78

    .line 1420
    move-object v0, p3

    .restart local v0       #arr$:[Lcom/vlingo/client/car/CarScrollableItem;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_69
    if-ge v3, v4, :cond_78

    aget-object v2, v0, v3

    .line 1421
    .restart local v2       #i:Lcom/vlingo/client/car/CarScrollableItem;
    invoke-direct {p0, v2, p4}, Lcom/vlingo/client/car/CarActivity;->initTaskItem(Lcom/vlingo/client/car/CarScrollableItem;Lcom/vlingo/client/car/TaskController;)V

    .line 1422
    iget-object v6, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v6, v2}, Lcom/vlingo/client/scroller/ScrollableContainer;->addItem(Lcom/vlingo/client/scroller/ScrollableItem;)V

    .line 1420
    add-int/lit8 v3, v3, 0x1

    goto :goto_69

    .line 1425
    .end local v0           #arr$:[Lcom/vlingo/client/car/CarScrollableItem;
    .end local v2           #i:Lcom/vlingo/client/car/CarScrollableItem;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_78
    if-eqz v5, :cond_80

    .line 1426
    iget-object v6, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v6, p1}, Lcom/vlingo/client/scroller/ScrollableContainer;->scrollToItem(Lcom/vlingo/client/scroller/ScrollableItem;)V

    .line 1429
    :goto_7f
    return-void

    .line 1428
    :cond_80
    iget-object v6, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v6, p1}, Lcom/vlingo/client/scroller/ScrollableContainer;->setCurrentItem(Lcom/vlingo/client/scroller/ScrollableItem;)V

    goto :goto_7f
.end method

.method public taskCancelled()V
    .registers 3

    .prologue
    .line 1494
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    invoke-virtual {v0}, Lcom/vlingo/client/scroller/ScrollableContainer;->getCurrentScreenIndex()I

    move-result v0

    if-lez v0, :cond_11

    .line 1495
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/car/CarActivity;->cancelling:Z

    .line 1496
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vlingo/client/scroller/ScrollableContainer;->scrollToScreenAtIndex(I)V

    .line 1504
    :cond_11
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v0, v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->phraseSpotterHandler:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    const/16 v1, 0x5dc

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->setStartPhraseDelay(I)V

    .line 1505
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v0, v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->phraseSpotterHandler:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    invoke-virtual {v0}, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->startPhraseSpottingDelayed()V

    .line 1506
    return-void
.end method

.method public taskCleanup()V
    .registers 3

    .prologue
    .line 1458
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/scroller/ScrollableContainer;->removeItemsStartingAtIndex(I)V

    .line 1459
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vlingo/client/scroller/ScrollableContainer;->setCurrentScreenIndex(I)V

    .line 1466
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v0, v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->phraseSpotterHandler:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    const/16 v1, 0x5dc

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->setStartPhraseDelay(I)V

    .line 1467
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v0, v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->phraseSpotterHandler:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    invoke-virtual {v0}, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->startPhraseSpottingDelayed()V

    .line 1468
    return-void
.end method

.method public taskFinished()V
    .registers 3

    .prologue
    .line 1473
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/scroller/ScrollableContainer;->removeItemsStartingAtIndex(I)V

    .line 1474
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->scrollContainer:Lcom/vlingo/client/scroller/ScrollableContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vlingo/client/scroller/ScrollableContainer;->setCurrentScreenIndex(I)V

    .line 1481
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v0, v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->phraseSpotterHandler:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->setStartPhraseDelay(I)V

    .line 1482
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v0, v0, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->phraseSpotterHandler:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    invoke-virtual {v0}, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->startPhraseSpottingDelayed()V

    .line 1488
    iget-boolean v0, p0, Lcom/vlingo/client/car/CarActivity;->startedWithVoiceAction:Z

    iput-boolean v0, p0, Lcom/vlingo/client/car/CarActivity;->readyToFinishByVoice:Z

    .line 1489
    return-void
.end method

.method protected declared-synchronized uninitializeCarActivity()V
    .registers 4

    .prologue
    .line 710
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-boolean v1, v1, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->initialized:Z
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_72

    if-nez v1, :cond_9

    .line 757
    :goto_7
    monitor-exit p0

    return-void

    .line 712
    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->initialized:Z

    .line 714
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vlingo.client.zeroclickr.state"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 715
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "running"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 716
    invoke-virtual {p0, v0}, Lcom/vlingo/client/car/CarActivity;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 717
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/vlingo/client/settings/Settings;->setInCarMode(Z)V

    .line 719
    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity;->backgroundDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity;->backgroundDemand:Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {v1}, Lcom/vlingo/client/core/tts/TTSDemand;->getType()Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    move-result-object v1

    sget-object v2, Lcom/vlingo/client/core/tts/TTSDemand$TTSType;->CAR_BACKGROUND:Lcom/vlingo/client/core/tts/TTSDemand$TTSType;

    if-eq v1, v2, :cond_38

    .line 720
    :cond_30
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/vlingo/client/safereader/SafeReaderAPI;->cancel(Z)V

    .line 723
    :cond_38
    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v1, v1, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->ttsManager:Lcom/vlingo/client/car/tts/CarTTSManager;

    invoke-virtual {v1}, Lcom/vlingo/client/car/tts/CarTTSManager;->detach()V

    .line 724
    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity;->recognizer:Lcom/vlingo/client/car/asr/CarRecognizer;

    invoke-virtual {v1}, Lcom/vlingo/client/car/asr/CarRecognizer;->cancel()V

    .line 725
    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity;->myData:Lcom/vlingo/client/car/CarActivity$DataObjectHandle;

    iget-object v1, v1, Lcom/vlingo/client/car/CarActivity$DataObjectHandle;->phraseSpotterHandler:Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;

    invoke-virtual {v1}, Lcom/vlingo/client/car/CarActivity$PhraseSpotterHandler;->stopPhraseSpotting()V

    .line 728
    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity;->systemEventManager:Lcom/vlingo/client/car/CarSystemEventManager;

    invoke-virtual {v1}, Lcom/vlingo/client/car/CarSystemEventManager;->handlePause()V

    .line 730
    iget-boolean v1, p0, Lcom/vlingo/client/car/CarActivity;->startedWithCarDock:Z

    if-eqz v1, :cond_59

    .line 731
    iget-object v1, p0, Lcom/vlingo/client/car/CarActivity;->carDockBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/vlingo/client/car/CarActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 734
    :cond_59
    invoke-virtual {p0}, Lcom/vlingo/client/car/CarActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 736
    invoke-static {p0}, Lcom/vlingo/client/samsung/DrivingModeUtil;->isDrivingModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6d

    .line 739
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vlingo/client/safereader/SafeReaderAPI;->stop(Z)V

    .line 756
    :cond_6d
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/vlingo/client/car/CarActivity;->maybeEnableOrientationChange(Z)V
    :try_end_71
    .catchall {:try_start_9 .. :try_end_71} :catchall_72

    goto :goto_7

    .line 710
    .end local v0           #intent:Landroid/content/Intent;
    :catchall_72
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public updateAppButtons()V
    .registers 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->carAppButtons:Lcom/vlingo/client/car/CarAppButtonsItem;

    if-eqz v0, :cond_9

    .line 360
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->carAppButtons:Lcom/vlingo/client/car/CarAppButtonsItem;

    invoke-virtual {v0}, Lcom/vlingo/client/car/CarAppButtonsItem;->updateButtonStates()V

    .line 361
    :cond_9
    return-void
.end method

.method public updateControlButtons()V
    .registers 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->carControlButtons:Lcom/vlingo/client/car/CarControlButtonsItem;

    if-eqz v0, :cond_9

    .line 355
    iget-object v0, p0, Lcom/vlingo/client/car/CarActivity;->carControlButtons:Lcom/vlingo/client/car/CarControlButtonsItem;

    invoke-virtual {v0}, Lcom/vlingo/client/car/CarControlButtonsItem;->updateButtonStates()V

    .line 356
    :cond_9
    return-void
.end method
