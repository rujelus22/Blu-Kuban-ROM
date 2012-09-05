.class Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$2;
.super Ljava/lang/Object;
.source "AnalogDualClockView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 716
    iput-object p1, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$2;->this$0:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 718
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$2;->this$0:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;

    #getter for: Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->access$100(Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 719
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$2;->this$0:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;

    #getter for: Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->dualclockview:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;
    invoke-static {v0}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->access$200(Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;)Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$DualClockView;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 720
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView$2;->this$0:Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;

    const/4 v1, 0x0

    #calls: Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->drawClock(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;->access$300(Lcom/sec/android/widgetapp/dualclock/AnalogDualClockView;Z)V

    .line 722
    :cond_19
    return-void
.end method
