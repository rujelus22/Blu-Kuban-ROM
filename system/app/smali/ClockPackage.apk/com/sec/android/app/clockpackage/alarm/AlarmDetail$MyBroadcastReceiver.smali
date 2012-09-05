.class Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V
    .registers 2
    .parameter

    .prologue
    .line 2740
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyBroadcastReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2740
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyBroadcastReceiver;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 2743
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2744
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 2745
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyBroadcastReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->initTime(Landroid/content/Context;III)V
    invoke-static {v1, p1, v2, v2, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$2400(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;Landroid/content/Context;III)V

    .line 2746
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyBroadcastReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMainView:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$2500(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 2747
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyBroadcastReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mMainView:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$2500(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 2796
    :cond_24
    :goto_24
    return-void

    .line 2750
    :cond_25
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 2751
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;->stopMediaPlayer()V

    goto :goto_24

    .line 2753
    :cond_31
    const-string v1, "volume_change"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 2754
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyBroadcastReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolume:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1300(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/widget/SeekBar;

    move-result-object v1

    const-string v2, "volume_level"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_24

    .line 2756
    :cond_49
    const-string v1, "com.samsung.sec.android.clockpackage.alarm.NOTIFY_ALARM_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 2757
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$600()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 2758
    const-string v1, "AlarmDetail"

    const-string v2, "NOTIFY_ALARM_CHANGE comes in."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2760
    :cond_5e
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyBroadcastReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mDataChnaged:Z
    invoke-static {v1, v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1802(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;Z)Z

    goto :goto_24

    .line 2761
    :cond_64
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 2763
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyBroadcastReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    new-instance v2, Landroid/media/RingtoneManager;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyBroadcastReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    invoke-direct {v2, v3}, Landroid/media/RingtoneManager;-><init>(Landroid/app/Activity;)V

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneManager:Landroid/media/RingtoneManager;
    invoke-static {v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$2602(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;Landroid/media/RingtoneManager;)Landroid/media/RingtoneManager;

    .line 2764
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyBroadcastReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneManager:Landroid/media/RingtoneManager;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$2600(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/media/RingtoneManager;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 2765
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$MyBroadcastReceiver;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mRingtoneManager:Landroid/media/RingtoneManager;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$2600(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/media/RingtoneManager;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/media/RingtoneManager;->setType(I)V

    goto :goto_24

    .line 2768
    :cond_8b
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_24
.end method
