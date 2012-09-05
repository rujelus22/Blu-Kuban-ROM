.class Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13$1;
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
    .line 2015
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 2020
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;

    iget-object v1, v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    const-class v2, Lcom/sec/android/widgetapp/weatherclock/MapsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2021
    const-string v1, "mapweather"

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mapweather:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 2022
    const-string v1, "pre_lat"

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mapitem:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getLatitude()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 2023
    const-string v1, "pre_lon"

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mapitem:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getLongitude()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 2026
    const-string v1, "pre_loc"

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mapitem:Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/weatherclock/model/MapCityInfo;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2028
    const-string v1, "tempscale"

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->tempscale:I
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$1800(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2029
    const-string v1, "launcher"

    const v2, -0x14564

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2030
    const-string v1, "flags"

    const v2, -0xcb84

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2031
    const-string v1, "appWidgetId"

    iget-object v2, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;

    iget-object v2, v2, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mAppWidgetId:I
    invoke-static {v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$1900(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2032
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2034
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;

    iget-object v1, v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->isActivityVisible()Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 2035
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;

    iget-object v1, v1, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    const v2, -0xcb84

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2037
    :cond_8e
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #calls: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->hideRefreshDialog()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$1400(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_95} :catch_96

    .line 2048
    :cond_95
    :goto_95
    return-void

    .line 2039
    :catch_96
    move-exception v0

    .line 2041
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-boolean v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->performMapCancled:Z

    if-nez v0, :cond_95

    .line 2043
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #calls: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->hideRefreshDialog()V
    invoke-static {v0}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$1400(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)V

    .line 2044
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mapHandler:Landroid/os/Handler;

    const v1, -0x140b4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2045
    iget-object v0, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13$1;->this$1:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;

    iget-object v0, v0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$13;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    const v1, 0x7f09001d

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast(Landroid/content/Context;I)V

    goto :goto_95
.end method
