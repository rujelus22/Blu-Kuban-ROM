.class Lcom/sec/android/app/clockpackage/deskclock/DigitalClock$1;
.super Landroid/content/BroadcastReceiver;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;)V
    .registers 2
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock$1;->this$0:Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 68
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock$1;->this$0:Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mLive:Z
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->access$000(Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;)Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 71
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock$1;->this$0:Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    #setter for: Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mCalendar:Ljava/util/Calendar;
    invoke-static {v2, v3}, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->access$102(Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 79
    :cond_1d
    :goto_1d
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock$1;->this$0:Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->access$400(Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock$1$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock$1$1;-><init>(Lcom/sec/android/app/clockpackage/deskclock/DigitalClock$1;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    return-void

    .line 73
    :cond_2c
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock$1;->this$0:Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mLive:Z
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->access$000(Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 74
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock$1;->this$0:Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    #setter for: Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mDate:Ljava/util/Date;
    invoke-static {v2, v3}, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->access$202(Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;Ljava/util/Date;)Ljava/util/Date;

    .line 75
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock$1;->this$0:Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->mDate:Ljava/util/Date;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->access$200(Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 76
    .local v0, time:J
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock$1;->this$0:Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/app/clockpackage/deskclock/DigitalClock;->setDateText(J)V

    goto :goto_1d
.end method
