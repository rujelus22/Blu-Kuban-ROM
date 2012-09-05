.class Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$5;
.super Ljava/lang/Object;
.source "DigitalDualClockView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 989
    iput-object p1, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$5;->this$0:Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 991
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$5;->this$0:Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;

    #getter for: Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->mDigitalDualClock:Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalDualClock;
    invoke-static {v0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->access$400(Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;)Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$DigitalDualClock;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 992
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$5;->this$0:Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;

    const/4 v1, 0x0

    #calls: Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->updateDualView(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->access$000(Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;Z)V

    .line 994
    :cond_e
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$5;->this$0:Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;

    #getter for: Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->access$600(Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView$5;->this$0:Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;

    #calls: Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->getDelayTime()J
    invoke-static {v1}, Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;->access$500(Lcom/sec/android/widgetapp/dualclock/DigitalDualClockView;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 995
    return-void
.end method
