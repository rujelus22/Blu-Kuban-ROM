.class Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)V
    .registers 2
    .parameter

    .prologue
    .line 1113
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1113
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1117
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1119
    const-string v1, "AlarmAlert"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15b

    .line 1122
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    const-string v2, "state"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mPhoneStateExtra:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$1802(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;Ljava/lang/String;)Ljava/lang/String;

    .line 1126
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$700(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mPhoneStateExtra:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$1800(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->setCallState(Ljava/lang/String;)V

    .line 1128
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mPhoneStateExtra:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$1800(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5e

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mPhoneStateExtra:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$1800(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    .line 1130
    :cond_5e
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mPause:Ljava/lang/Boolean;
    invoke-static {v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$1902(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1131
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$700(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->Pause()V

    .line 1132
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$2000(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Landroid/media/AudioManager;

    move-result-object v1

    if-eqz v1, :cond_87

    .line 1133
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$2000(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mOldVolume:I
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$2100(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)I

    move-result v2

    invoke-virtual {v1, v7, v2, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1301
    :cond_87
    :goto_87
    const-string v1, "sec.android.intent.action.HOME_RESUME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 1302
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->stopAlarmSound()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$2600(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)V

    .line 1305
    :cond_94
    return-void

    .line 1140
    :cond_95
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mPhoneStateExtra:Ljava/lang/String;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$1800(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 1142
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mService:Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$200(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;

    move-result-object v1

    if-eqz v1, :cond_87

    .line 1143
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mService:Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$200(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;->getCount()I

    move-result v2

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mCount:I
    invoke-static {v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$502(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;I)I

    .line 1144
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    const-class v4, Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->stopService(Landroid/content/Intent;)Z

    .line 1146
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mConnection:Landroid/content/ServiceConnection;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$2200(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1147
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mService:Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;
    invoke-static {v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$202(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;)Lcom/sec/android/app/clockpackage/alarm/AlarmAlertInCallService;

    .line 1192
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$1600(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    move-result-object v1

    iget v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    if-ne v1, v6, :cond_12c

    .line 1193
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$700(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->setPlayMode(I)V

    .line 1194
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mCount:I
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$500(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)I

    move-result v2

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mVoiceCount:I
    invoke-static {v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$602(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;I)I

    .line 1199
    :goto_f7
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$700(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mSoundTone:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$800(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mVoiceString:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$900(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->setPlayResource(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mPause:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$1900(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_13e

    .line 1201
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$700(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->Pause()V

    .line 1208
    :goto_121
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAlertTimer:Landroid/os/CountDownTimer;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$2400(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Landroid/os/CountDownTimer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto/16 :goto_87

    .line 1196
    :cond_12c
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->player:Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$700(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$1600(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    move-result-object v2

    iget v2, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmPlayer;->setPlayMode(I)V

    goto :goto_f7

    .line 1203
    :cond_13e
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$1600(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    move-result-object v2

    iget v2, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmVolume:I

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mVolume:I
    invoke-static {v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$2302(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;I)I

    .line 1204
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$2000(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mVolume:I
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$2300(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)I

    move-result v2

    invoke-virtual {v1, v7, v2, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_121

    .line 1212
    :cond_15b
    const-string v1, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_176

    .line 1213
    new-instance v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-direct {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;-><init>()V

    .line 1214
    invoke-virtual {v1, p2}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->readFromIntent(Landroid/content/Intent;)V

    .line 1215
    iget v1, v1, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    if-eq v1, v6, :cond_87

    .line 1216
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->defaultStop()V
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$400(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)V

    goto/16 :goto_87

    .line 1217
    :cond_176
    const-string v1, "com.samsung.sec.android.clockpackage.alarm.ALARM_PAUSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18e

    .line 1218
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->mPause:Ljava/lang/Boolean;
    invoke-static {v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$1902(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1219
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->pausePlaying()V
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$2500(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)V

    goto/16 :goto_87

    .line 1220
    :cond_18e
    const-string v1, "com.samsung.sec.android.clockpackage.alarm.ALARM_STOP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 1221
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert$MyReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->defaultStop()V
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;->access$400(Lcom/sec/android/app/clockpackage/alarm/AlarmAlert;)V

    goto/16 :goto_87
.end method
