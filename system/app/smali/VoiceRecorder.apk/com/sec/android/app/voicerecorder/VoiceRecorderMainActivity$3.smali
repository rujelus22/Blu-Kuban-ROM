.class Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$3;
.super Ljava/lang/Object;
.source "VoiceRecorderMainActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 423
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 426
    const-string v0, "VoiceRecorderMainActivity"

    const-string v1, "onServiceConnected()"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-static {p2}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    move-result-object v1

    #setter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;
    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$002(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;)Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    .line 430
    :try_start_11
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$000(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mServiceCallback:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderServiceCallback;
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$1900(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderServiceCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;->registerCallback(Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderServiceCallback;)V

    .line 432
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$000(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;->getRecDuration()J

    move-result-wide v0

    sput-wide v0, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->mTime:J

    .line 433
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$100(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/widget/DigitAnimator;->resetUI(Landroid/os/Handler;)V

    .line 436
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/widget/EQBar;->initViews(Landroid/content/Context;)V

    .line 438
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$100(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xbce

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 440
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mIsActivityPaused:Z
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$1600(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 441
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$000(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;->hideNotification()Z

    .line 444
    :cond_5a
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #calls: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->isRecordOnlyMode()Z
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$600(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 445
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$000(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;->getMediaRecorderState()I

    move-result v0

    const/16 v1, 0x3eb

    if-eq v0, v1, :cond_7e

    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$000(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;->getMediaRecorderState()I

    move-result v0

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_138

    .line 447
    :cond_7e
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->skipSetResult:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$1402(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Z)Z

    .line 448
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$000(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;->saveRecording()Z

    .line 454
    :cond_8d
    :goto_8d
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.action.RUN"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-ne v0, v3, :cond_a2

    .line 455
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mIsRecordOrderAvailable:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$2002(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Z)Z

    .line 458
    :cond_a2
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mIsRecordOrderAvailable:Z
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$2000(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Z

    move-result v0

    if-eqz v0, :cond_164

    .line 461
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #calls: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->isNotElapsed1SEC()Z
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$2100(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 462
    const-wide/16 v0, 0x1f4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mServiceCommandReturnedTime:J
    invoke-static {v4}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$1800(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 463
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_c9

    .line 464
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 468
    :cond_c9
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 469
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->setFixedNewFileNameWithIndex(Ljava/lang/String;Landroid/content/Context;)V

    .line 471
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$100(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xbeb

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 472
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$100(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xbd0

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 473
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->doRecord()V

    .line 474
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mIsRecordOrderAvailable:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$2002(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Z)Z

    .line 480
    :cond_107
    :goto_107
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$000(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;
    :try_end_10c
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_10c} :catch_15b

    move-result-object v0

    if-eqz v0, :cond_137

    .line 482
    :try_start_10f
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$000(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_127

    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$000(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_137

    .line 483
    :cond_127
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    const-class v2, Lcom/sec/android/app/voicerecorder/VoiceListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 484
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    const/16 v2, 0xa

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_137
    .catch Landroid/os/RemoteException; {:try_start_10f .. :try_end_137} :catch_17c

    .line 493
    :cond_137
    :goto_137
    return-void

    .line 449
    :cond_138
    :try_start_138
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$000(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_150

    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$000(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 450
    :cond_150
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$000(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;->stopPlay()V
    :try_end_159
    .catch Landroid/os/RemoteException; {:try_start_138 .. :try_end_159} :catch_15b

    goto/16 :goto_8d

    .line 490
    :catch_15b
    move-exception v0

    .line 491
    const-string v1, "VoiceRecorderMainActivity"

    const-string v2, "onServiceConnected error"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_137

    .line 476
    :cond_164
    :try_start_164
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mIsActivityPaused:Z
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$1600(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Z

    move-result v0

    if-nez v0, :cond_107

    .line 477
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$000(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;->getMediaRecorderState()I

    move-result v1

    #calls: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->changeUI(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$1200(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;I)V

    goto :goto_107

    .line 486
    :catch_17c
    move-exception v0

    .line 487
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_180
    .catch Landroid/os/RemoteException; {:try_start_164 .. :try_end_180} :catch_15b

    goto :goto_137
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "cName"

    .prologue
    .line 497
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$3;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;
    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$002(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;)Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    .line 498
    return-void
.end method
