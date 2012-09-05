.class Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13$2;
.super Ljava/lang/Object;
.source "WeatherClockDetail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;->onReceive(IILjava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;)V
    .registers 2
    .parameter

    .prologue
    .line 2058
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13$2;->this$1:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2061
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13$2;->this$1:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-boolean v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->performMapCancled:Z

    if-nez v0, :cond_25

    .line 2063
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13$2;->this$1:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #calls: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->hideRefreshDialog()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$1400(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)V

    .line 2064
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13$2;->this$1:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mapHandler:Landroid/os/Handler;

    const v1, -0x140b4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2065
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13$2;->this$1:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    const v1, 0x7f09001d

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast(Landroid/content/Context;I)V

    .line 2067
    :cond_25
    return-void
.end method
