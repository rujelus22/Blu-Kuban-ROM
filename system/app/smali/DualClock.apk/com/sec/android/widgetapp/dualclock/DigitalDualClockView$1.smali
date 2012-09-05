.class Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$1;
.super Landroid/content/BroadcastReceiver;
.source "DigitalDualClockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;)V
    .registers 2
    .parameter

    .prologue
    .line 524
    iput-object p1, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$1;->this$0:Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 529
    if-nez p2, :cond_3

    .line 555
    :goto_2
    return-void

    .line 533
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 534
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 535
    new-instance v1, Lcom/sec/android/widgetapp/dualclock/City;

    invoke-direct {v1, p1}, Lcom/sec/android/widgetapp/dualclock/City;-><init>(Landroid/content/Context;)V

    .line 536
    .local v1, city:Lcom/sec/android/widgetapp/dualclock/City;
    iget-object v2, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$1;->this$0:Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;

    invoke-virtual {v2, v1}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->updateDBCityCountry(Lcom/sec/android/widgetapp/dualclock/City;)V

    .line 553
    .end local v1           #city:Lcom/sec/android/widgetapp/dualclock/City;
    :cond_19
    :goto_19
    iget-object v2, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$1;->this$0:Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;

    const/4 v3, 0x0

    #calls: Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->updateDualView(Z)V
    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->access$000(Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;Z)V

    goto :goto_2

    .line 538
    :cond_20
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_19
.end method
