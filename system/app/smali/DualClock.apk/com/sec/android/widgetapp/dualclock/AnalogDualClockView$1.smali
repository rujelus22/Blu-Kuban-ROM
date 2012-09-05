.class Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$1;
.super Landroid/content/BroadcastReceiver;
.source "AnalogDualClockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;)V
    .registers 2
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$1;->this$0:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 65
    if-nez p2, :cond_3

    .line 95
    :goto_2
    return-void

    .line 68
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    const-string v2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    const-string v2, "dualclock.date_format_changed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    const-string v2, "dualclock.add_city"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 93
    :cond_2f
    :goto_2f
    iget-object v2, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$1;->this$0:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;

    #calls: Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->readTimeZoneDB()V
    invoke-static {v2}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->access$000(Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;)V

    .line 94
    iget-object v2, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$1;->this$0:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->updateClock()V

    goto :goto_2

    .line 88
    :cond_3a
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 89
    new-instance v1, Lcom/sec/android/widgetapp/dualclock/City;

    invoke-direct {v1, p1}, Lcom/sec/android/widgetapp/dualclock/City;-><init>(Landroid/content/Context;)V

    .line 90
    .local v1, city:Lcom/sec/android/widgetapp/dualclock/City;
    iget-object v2, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$1;->this$0:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;

    invoke-virtual {v2, p1, v1}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->updateDBCityCountry(Landroid/content/Context;Lcom/sec/android/widgetapp/dualclock/City;)V

    goto :goto_2f
.end method
