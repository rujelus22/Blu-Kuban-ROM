.class Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$MyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmSmartAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)V
    .registers 2
    .parameter

    .prologue
    .line 786
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 786
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$MyReceiver;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 788
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 790
    const-string v1, "AlarmSmartAlert"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "..OnReceiver..(MyReceiver)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_114

    .line 793
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    const-string v1, "state"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mPhoneStateExtra:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$1602(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;Ljava/lang/String;)Ljava/lang/String;

    .line 797
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$1000(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mPhoneStateExtra:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$1600(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->setCallState(Ljava/lang/String;)V

    .line 799
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mPhoneStateExtra:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$1600(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 802
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mPause:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$1702(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 803
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$1000(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->Pause()V

    .line 804
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$1800(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_78

    .line 805
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$1800(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mOldVolume:I
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$1900(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)I

    move-result v1

    invoke-virtual {v0, v6, v1, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 850
    :cond_78
    :goto_78
    return-void

    .line 808
    :cond_79
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mPhoneStateExtra:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$1600(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 810
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mService:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$200(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;

    move-result-object v0

    if-eqz v0, :cond_78

    .line 811
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mService:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$200(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;->getCount()I

    move-result v1

    int-to-float v1, v1

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->count:F
    invoke-static {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$502(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;F)F

    .line 812
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    const-class v3, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->stopService(Landroid/content/Intent;)Z

    .line 814
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$2000(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->unbindService(Landroid/content/ServiceConnection;)V

    .line 815
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mService:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;
    invoke-static {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$202(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;)Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlertInCallService;

    .line 817
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$1000(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->setPlayMode(I)V

    .line 818
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$1000(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_SUBDUE_URI:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$1500(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    move-result-object v2

    iget v2, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueTone:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mVoiceString:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$2100(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->setPlayResource(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mPause:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$1700(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_102

    .line 822
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$1000(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->Pause()V

    .line 828
    :goto_f7
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mTimer1:Landroid/os/CountDownTimer;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$2200(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto/16 :goto_78

    .line 824
    :cond_102
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$1800(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$1500(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    move-result-object v1

    iget v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmVolume:I

    invoke-virtual {v0, v6, v1, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_f7

    .line 831
    :cond_114
    const-string v1, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_149

    .line 832
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mPause:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$1702(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 833
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$1000(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->Pause()V

    .line 836
    const-string v0, "AlarmSmartAlert"

    const-string v1, "action is : com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    new-instance v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-direct {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;-><init>()V

    .line 839
    invoke-virtual {v0, p2}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->readFromIntent(Landroid/content/Intent;)V

    .line 840
    iget v0, v0, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_78

    .line 841
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->goTimeOutExit()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$400(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)V

    goto/16 :goto_78

    .line 842
    :cond_149
    const-string v1, "com.samsung.sec.android.clockpackage.alarm.ALARM_PAUSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_161

    .line 843
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->mPause:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$1702(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 844
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->pausePlaying()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$2300(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)V

    goto/16 :goto_78

    .line 845
    :cond_161
    const-string v1, "com.samsung.sec.android.clockpackage.alarm.SMARTALARM_STOP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_170

    .line 846
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->goTimeOutExit()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$400(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)V

    goto/16 :goto_78

    .line 847
    :cond_170
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 848
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->updateDisplay()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;->access$300(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlert;)V

    goto/16 :goto_78
.end method
