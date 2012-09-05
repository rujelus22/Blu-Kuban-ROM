.class Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "AnalogClockActivity.java"


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
    .line 404
    iput-object p1, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$3;->this$0:Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 409
    if-nez p2, :cond_3

    .line 419
    :cond_2
    :goto_2
    return-void

    .line 411
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 415
    :cond_17
    iget-object v1, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$3;->this$0:Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;

    #calls: Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->destroyTimeHandler()V
    invoke-static {v1}, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->access$200(Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;)V

    .line 416
    iget-object v1, p0, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity$3;->this$0:Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;

    #calls: Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->createTimeHandler()V
    invoke-static {v1}, Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;->access$300(Lcom/sec/android/widgetapp/analogclock/AnalogClockActivity;)V

    goto :goto_2
.end method
