.class Lcom/sec/android/app/clockpackage/alarm/AnalogClock$1;
.super Landroid/content/BroadcastReceiver;
.source "AnalogClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/alarm/AnalogClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/AnalogClock;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AnalogClock;)V
    .registers 2
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/AnalogClock;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 271
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 272
    const-string v1, "time-zone"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, tz:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/AnalogClock;

    new-instance v2, Landroid/text/format/Time;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->mCalendar:Landroid/text/format/Time;
    invoke-static {v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->access$002(Lcom/sec/android/app/clockpackage/alarm/AnalogClock;Landroid/text/format/Time;)Landroid/text/format/Time;

    .line 276
    .end local v0           #tz:Ljava/lang/String;
    :cond_24
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/AnalogClock;

    #calls: Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->onTimeChanged()V
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->access$100(Lcom/sec/android/app/clockpackage/alarm/AnalogClock;)V

    .line 278
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AnalogClock$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/AnalogClock;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/alarm/AnalogClock;->invalidate()V

    .line 279
    return-void
.end method
