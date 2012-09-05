.class Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$8;
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
.field responseCode:I

.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)V
    .registers 2
    .parameter

    .prologue
    .line 1469
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .parameter "msg"

    .prologue
    const/16 v7, 0xc8

    const/4 v9, 0x1

    .line 1473
    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->isActivityVisible()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 1475
    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mRequestCanceled:Z
    invoke-static {v6}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$1200(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 1517
    :cond_13
    :goto_13
    return-void

    .line 1477
    :cond_14
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1478
    .local v0, bundle:Landroid/os/Bundle;
    const-string v6, "LOCATION"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1479
    .local v2, location:Ljava/lang/String;
    const-string v6, "RESPONSE_BODY"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1480
    .local v4, responseBody:Ljava/lang/String;
    const-string v6, "RESPONSE_CODE"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$8;->responseCode:I

    .line 1484
    iget v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$8;->responseCode:I

    if-ne v6, v7, :cond_44

    .line 1487
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$8$1;

    invoke-direct {v6, p0, v2, v4}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$8$1;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$8;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1496
    .local v5, t:Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 1497
    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    iget-object v6, v6, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->mHttpThreads:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1501
    .end local v5           #t:Ljava/lang/Thread;
    :cond_44
    iget v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$8;->responseCode:I

    if-eq v6, v7, :cond_13

    .line 1504
    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    #calls: Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->hideRefreshDialog()V
    invoke-static {v6}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->access$1400(Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;)V

    .line 1505
    sget-boolean v6, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->POPUP_IS_ON:Z

    if-nez v6, :cond_13

    sget-boolean v6, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->NETWORK_TRY:Z

    if-nez v6, :cond_13

    .line 1507
    sput-boolean v9, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->POPUP_IS_ON:Z

    .line 1508
    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    const-string v7, "config"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1509
    .local v3, pref:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1510
    .local v1, edit:Landroid/content/SharedPreferences$Editor;
    const-string v6, "NETWORK_TRY"

    invoke-interface {v1, v6, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1511
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1512
    sput-boolean v9, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;->NETWORK_TRY:Z

    .line 1513
    iget-object v6, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail$8;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockDetail;

    const v7, 0x7f09001d

    invoke-static {v6, v7}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast(Landroid/content/Context;I)V

    goto :goto_13
.end method
