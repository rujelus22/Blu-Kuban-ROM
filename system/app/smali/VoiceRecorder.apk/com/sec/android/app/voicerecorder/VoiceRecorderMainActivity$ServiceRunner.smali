.class Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;
.super Ljava/lang/Object;
.source "VoiceRecorderMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceRunner"
.end annotation


# instance fields
.field private mCommand:Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;

.field final synthetic this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 696
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 697
    sget-object v0, Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;->IDLE:Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;->mCommand:Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 696
    invoke-direct {p0, p1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;-><init>(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)V

    return-void
.end method


# virtual methods
.method public getCommand()Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;
    .registers 2

    .prologue
    .line 705
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;->mCommand:Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;

    return-object v0
.end method

.method public run()V
    .registers 10

    .prologue
    const/16 v8, 0x3e8

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 712
    :try_start_4
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    const/4 v2, 0x1

    #setter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mServiceOnProcessing:Z
    invoke-static {v0, v2}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$1702(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Z)Z

    .line 714
    sget-object v0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$12;->$SwitchMap$com$sec$android$app$voicerecorder$util$VRConsts$VRCommand:[I

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;->mCommand:Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;

    invoke-virtual {v2}, Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_208

    .line 819
    :cond_17
    :goto_17
    :pswitch_17
    return-void

    .line 716
    :pswitch_18
    invoke-static {}, Lcom/sec/android/app/voicerecorder/util/VRSettings;->getInternalStorageSelected()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->checkAvailableStorage(Z)Z

    move-result v0

    if-eqz v0, :cond_12d

    .line 717
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #calls: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->isRecordOnlyMode()Z
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$600(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Z

    move-result v7

    .line 720
    sget-wide v2, Lcom/sec/android/app/voicerecorder/util/VRUtil;->avaliableSize:J

    const-wide v4, 0xffffffffL

    cmp-long v0, v2, v4

    if-lez v0, :cond_3a

    .line 721
    const-wide v2, 0xffffffffL

    sput-wide v2, Lcom/sec/android/app/voicerecorder/util/VRUtil;->avaliableSize:J

    .line 723
    :cond_3a
    sget-wide v2, Lcom/sec/android/app/voicerecorder/util/VRUtil;->avaliableSize:J

    .line 726
    if-eqz v7, :cond_cb

    .line 727
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "mime_type"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 729
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mLimitedFileSize:J
    invoke-static {v2}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$200(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)J

    move-result-wide v2

    .line 731
    if-eqz v0, :cond_c9

    const-string v4, "audio/amr"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c9

    move v0, v6

    :goto_5b
    move v5, v0

    .line 748
    :goto_5c
    const/4 v4, -0x1

    .line 751
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$000(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    move-result-object v0

    if-nez v7, :cond_6b

    invoke-static {}, Lcom/sec/android/app/voicerecorder/util/VRSettings;->isMmsMode()Z

    move-result v7

    if-eqz v7, :cond_e7

    :cond_6b
    :goto_6b
    invoke-interface/range {v0 .. v5}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;->initRecording(ZJIZ)Z

    move-result v0

    if-eqz v0, :cond_e9

    .line 753
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$000(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    move-result-object v0

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$000(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;->startRecording()Z

    move-result v0

    if-nez v0, :cond_17

    .line 754
    :cond_85
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$100(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xbf4

    const v2, 0x7f06005c

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 755
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mServiceOnProcessing:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$1702(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Z)Z

    .line 756
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$100(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xbfe

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_ab
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_ab} :catch_ad
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_ab} :catch_111

    goto/16 :goto_17

    .line 810
    :catch_ad
    move-exception v0

    .line 811
    const-string v1, "VoiceRecorderMainActivity"

    const-string v2, "mService Remote exception, change UI to Initial State"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 812
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$100(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 813
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #setter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mServiceOnProcessing:Z
    invoke-static {v0, v6}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$1702(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Z)Z

    goto/16 :goto_17

    :cond_c9
    move v0, v1

    .line 735
    goto :goto_5b

    .line 738
    :cond_cb
    :try_start_cb
    invoke-static {}, Lcom/sec/android/app/voicerecorder/util/VRSettings;->isMmsMode()Z

    move-result v0

    if-ne v0, v1, :cond_d5

    .line 739
    invoke-static {}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->getMMSSize()J

    move-result-wide v2

    .line 741
    :cond_d5
    invoke-static {}, Lcom/sec/android/app/voicerecorder/util/VRSettings;->getAudioFormat()Lcom/sec/android/app/voicerecorder/util/VRAudioFormat;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/voicerecorder/util/VRAudioFormat;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v4, "audio/3gpp"

    if-ne v0, v4, :cond_e4

    move v5, v1

    .line 742
    goto/16 :goto_5c

    :cond_e4
    move v5, v6

    .line 744
    goto/16 :goto_5c

    :cond_e7
    move v1, v6

    .line 751
    goto :goto_6b

    .line 759
    :cond_e9
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$100(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xbf4

    const v2, 0x7f06005c

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 760
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mServiceOnProcessing:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$1702(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Z)Z

    .line 761
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$100(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xbfe

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_10f
    .catch Landroid/os/RemoteException; {:try_start_cb .. :try_end_10f} :catch_ad
    .catch Ljava/lang/NullPointerException; {:try_start_cb .. :try_end_10f} :catch_111

    goto/16 :goto_17

    .line 814
    :catch_111
    move-exception v0

    .line 815
    const-string v1, "VoiceRecorderMainActivity"

    const-string v2, "mService is Null, change UI to Initial State"

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 816
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$100(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 817
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #setter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mServiceOnProcessing:Z
    invoke-static {v0, v6}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$1702(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Z)Z

    goto/16 :goto_17

    .line 764
    :cond_12d
    :try_start_12d
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/voicerecorder/util/VRSettings;->getInternalStorageSelected()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->isMounted(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_174

    .line 765
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$100(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xbf4

    const v2, 0x7f060032

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 771
    :goto_150
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$100(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 772
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mServiceOnProcessing:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$1702(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Z)Z

    .line 773
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$100(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xbfe

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_17

    .line 768
    :cond_174
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$100(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xbf4

    const v2, 0x7f06003d

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_150

    .line 777
    :pswitch_188
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$000(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;->pauseRecording()Z

    move-result v0

    if-nez v0, :cond_17

    .line 778
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mServiceOnProcessing:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$1702(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Z)Z

    goto/16 :goto_17

    .line 782
    :pswitch_19c
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$000(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;->resumeRecording()Z

    move-result v0

    if-nez v0, :cond_17

    .line 783
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mUIUpdateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$100(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xbf4

    const v2, 0x7f06005c

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 784
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mServiceOnProcessing:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$1702(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Z)Z

    goto/16 :goto_17

    .line 788
    :pswitch_1c3
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$000(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;->saveRecording()Z

    move-result v0

    if-nez v0, :cond_17

    .line 789
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mServiceOnProcessing:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$1702(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;Z)Z

    goto/16 :goto_17

    .line 793
    :pswitch_1d7
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #getter for: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->mService:Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$000(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/voicerecorder/service/IVoiceRecorderService;->cancelRecording()Z

    .line 794
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    #calls: Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->isRecordOnlyMode()Z
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->access$600(Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 796
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    const-class v3, Lcom/sec/android/app/voicerecorder/service/VoiceRecorderService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->stopService(Landroid/content/Intent;)Z

    .line 797
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->unbindFromService(Landroid/content/Context;)V

    .line 799
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->setResult(I)V

    .line 800
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;->this$0:Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;->finish()V
    :try_end_206
    .catch Landroid/os/RemoteException; {:try_start_12d .. :try_end_206} :catch_ad
    .catch Ljava/lang/NullPointerException; {:try_start_12d .. :try_end_206} :catch_111

    goto/16 :goto_17

    .line 714
    :pswitch_data_208
    .packed-switch 0x1
        :pswitch_18
        :pswitch_188
        :pswitch_19c
        :pswitch_1c3
        :pswitch_1d7
        :pswitch_17
    .end packed-switch
.end method

.method public setCommand(Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;)V
    .registers 2
    .parameter "vrCmd"

    .prologue
    .line 700
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity$ServiceRunner;->mCommand:Lcom/sec/android/app/voicerecorder/util/VRConsts$VRCommand;

    .line 701
    return-void
.end method
