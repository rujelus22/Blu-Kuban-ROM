.class Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13$3;
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
    .line 2074
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13$3;->this$1:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2077
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13$3;->this$1:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-boolean v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->performMapCancled:Z

    if-nez v0, :cond_20

    .line 2079
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13$3;->this$1:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->performMapCancled:Z

    .line 2080
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13$3;->this$1:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #calls: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->hideRefreshDialog()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$1400(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)V

    .line 2082
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13$3;->this$1:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    const v1, 0x7f09001d

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast(Landroid/content/Context;I)V

    .line 2084
    :cond_20
    return-void
.end method
