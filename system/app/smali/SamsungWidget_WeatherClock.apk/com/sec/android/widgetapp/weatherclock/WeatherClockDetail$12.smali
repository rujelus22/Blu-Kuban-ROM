.class Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$12;
.super Landroid/os/Handler;
.source "WeatherClockDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)V
    .registers 2
    .parameter

    .prologue
    .line 1890
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    const v2, -0x140b4

    .line 1893
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mapweather:Ljava/util/ArrayList;

    if-nez v0, :cond_12

    .line 1894
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mapweather:Ljava/util/ArrayList;

    .line 1896
    :cond_12
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, -0x13d30

    if-ne v0, v1, :cond_26

    .line 1898
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mapHandler:Landroid/os/Handler;

    if-eqz v0, :cond_25

    .line 1900
    const-wide/32 v0, 0x15f90

    invoke-virtual {p0, v2, v0, v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$12;->sendEmptyMessageDelayed(IJ)Z

    .line 1913
    :cond_25
    :goto_25
    return-void

    .line 1904
    :cond_26
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_25

    .line 1906
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mapweather:Ljava/util/ArrayList;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mapweather:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v1, v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->cities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 1908
    :cond_42
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #calls: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->hideRefreshDialog()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$1400(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)V

    .line 1909
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$12;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    const v1, 0x7f09001d

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast(Landroid/content/Context;I)V

    goto :goto_25
.end method
