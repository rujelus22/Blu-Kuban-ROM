.class Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$2;
.super Ljava/lang/Object;
.source "AnalogClockActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$2;->this$0:Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 285
    iget-object v2, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$2;->this$0:Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;

    #calls: Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->drawTime()V
    invoke-static {v2}, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->access$000(Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;)V

    .line 287
    iget-object v2, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$2;->this$0:Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;

    #calls: Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->getDelayTime()J
    invoke-static {v2}, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->access$100(Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;)J

    move-result-wide v0

    .line 290
    .local v0, delayTime:J
    const-wide/16 v2, 0x708

    cmp-long v2, v0, v2

    if-lez v2, :cond_1b

    .line 291
    iget-object v2, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$2;->this$0:Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;

    #calls: Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->destroyTimeHandler()V
    invoke-static {v2}, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->access$200(Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;)V

    .line 292
    iget-object v2, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$2;->this$0:Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;

    #calls: Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->createTimeHandler()V
    invoke-static {v2}, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->access$300(Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;)V

    .line 296
    :cond_1b
    iget-object v2, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$2;->this$0:Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;

    #getter for: Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mTimeHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->access$400(Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$2;->this$0:Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;

    iget-object v3, v3, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->mTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 297
    return-void
.end method
