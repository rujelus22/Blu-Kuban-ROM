.class public Lcom/sec/android/app/clockpackage/timer/TimerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TimerReceiver.java"


# instance fields
.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-static {p1}, Lcom/sec/android/app/clockpackage/timer/PowerController;->acquire(Landroid/content/Context;)V

    .line 49
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 52
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 54
    if-eqz p2, :cond_1d

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".timer.popup"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 55
    :cond_1d
    invoke-virtual {p0, p1}, Lcom/sec/android/app/clockpackage/timer/TimerReceiver;->sendVRStopCommand(Landroid/content/Context;)V

    .line 73
    :cond_20
    const/4 v1, 0x1

    if-eq v0, v1, :cond_36

    .line 74
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/clockpackage/timer/TimerAlarm;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    const/high16 v1, 0x1004

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 82
    :cond_36
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/timer/TimerReceiver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/clockpackage/timer/TimerReceiver$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/timer/TimerReceiver$1;-><init>(Lcom/sec/android/app/clockpackage/timer/TimerReceiver;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    return-void
.end method

.method public sendVRStopCommand(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 109
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.voicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, i:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "stop"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 113
    return-void
.end method
