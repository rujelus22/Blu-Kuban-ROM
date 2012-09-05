.class Lcom/sec/android/app/clockpackage/timer/TimerDetail$MyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TimerDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/timer/TimerDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)V
    .registers 2
    .parameter

    .prologue
    .line 952
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$MyBroadcastReceiver;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/clockpackage/timer/TimerDetail;Lcom/sec/android/app/clockpackage/timer/TimerDetail$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 952
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/timer/TimerDetail$MyBroadcastReceiver;-><init>(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 955
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 956
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 958
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$MyBroadcastReceiver;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mMainView:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$1300(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 959
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$MyBroadcastReceiver;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mMainView:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$1300(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 978
    :cond_1d
    :goto_1d
    return-void

    .line 962
    :cond_1e
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 964
    invoke-static {}, Lcom/sec/android/app/clockpackage/timer/TimerDetail$Player;->stopMediaPlayer()V

    goto :goto_1d

    .line 966
    :cond_2a
    const-string v1, "volume_change"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 967
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$MyBroadcastReceiver;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mVolume:Lcom/sec/android/touchwiz/widget/TwSeekBar;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$500(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Lcom/sec/android/touchwiz/widget/TwSeekBar;

    move-result-object v1

    const-string v2, "volume_level"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->setProgress(I)V

    goto :goto_1d

    .line 968
    :cond_43
    const-string v1, "com.samsung.sec.android.clockpackage.alarm.NOTIFY_ALARM_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 970
    const-string v1, "TimerDetail"

    const-string v2, "NOTIFY_ALARM_CHANGE comes in."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 972
    :cond_53
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 973
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$MyBroadcastReceiver;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    new-instance v2, Landroid/media/RingtoneManager;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$MyBroadcastReceiver;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    invoke-direct {v2, v3}, Landroid/media/RingtoneManager;-><init>(Landroid/app/Activity;)V

    #setter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneManager:Landroid/media/RingtoneManager;
    invoke-static {v1, v2}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$1402(Lcom/sec/android/app/clockpackage/timer/TimerDetail;Landroid/media/RingtoneManager;)Landroid/media/RingtoneManager;

    .line 974
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$MyBroadcastReceiver;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneManager:Landroid/media/RingtoneManager;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$1400(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Landroid/media/RingtoneManager;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 975
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/timer/TimerDetail$MyBroadcastReceiver;->this$0:Lcom/sec/android/app/clockpackage/timer/TimerDetail;

    #getter for: Lcom/sec/android/app/clockpackage/timer/TimerDetail;->mRingtoneManager:Landroid/media/RingtoneManager;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/timer/TimerDetail;->access$1400(Lcom/sec/android/app/clockpackage/timer/TimerDetail;)Landroid/media/RingtoneManager;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/media/RingtoneManager;->setType(I)V

    goto :goto_1d
.end method
