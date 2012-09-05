.class Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$7;
.super Landroid/os/Handler;
.source "WeatherClockSearchDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field responseCode:I

.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)V
    .registers 2
    .parameter

    .prologue
    .line 1410
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$7;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .parameter "msg"

    .prologue
    const/16 v9, 0xc8

    const/4 v10, 0x1

    .line 1414
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$7;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mRequestCanceled:Z
    invoke-static {v7}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->access$900(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1464
    :cond_b
    :goto_b
    return-void

    .line 1416
    :cond_c
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1417
    .local v0, bundle:Landroid/os/Bundle;
    const-string v7, "CITY_NAME"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1418
    .local v1, cityName:Ljava/lang/String;
    const-string v7, "LOCATION"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1419
    .local v3, location:Ljava/lang/String;
    const-string v7, "RESPONSE_BODY"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1420
    .local v5, responseBody:Ljava/lang/String;
    const-string v7, "RESPONSE_CODE"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$7;->responseCode:I

    .line 1425
    iget v7, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$7;->responseCode:I

    if-ne v7, v9, :cond_51

    .line 1428
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$7$1;

    invoke-direct {v7, p0, v1, v3, v5}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$7$1;-><init>(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$7;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1439
    .local v6, t:Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 1440
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$7;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    iget-object v7, v7, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->mHttpThreads:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1443
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$7;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->SearchDetailCtx:Landroid/content/Context;
    invoke-static {v7}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->access$1100(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$7;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    #getter for: Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->dbHelper:Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;
    invoke-static {v8}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->access$1200(Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;)Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/android/widgetapp/weatherclock/common/DaemonInterface;->CheckSameDaemonCityIdAtDate(Landroid/content/Context;Lcom/sec/android/widgetapp/weatherclock/db/DBHelper;)V

    .line 1446
    .end local v6           #t:Ljava/lang/Thread;
    :cond_51
    iget v7, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$7;->responseCode:I

    if-eq v7, v9, :cond_b

    .line 1448
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$7;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->isActivityVisible()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1451
    sget-boolean v7, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->POPUP_IS_ON:Z

    if-nez v7, :cond_b

    sget-boolean v7, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->NETWORK_TRY:Z

    if-nez v7, :cond_b

    .line 1453
    sput-boolean v10, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->POPUP_IS_ON:Z

    .line 1454
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$7;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    const-string v8, "config"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1455
    .local v4, pref:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1456
    .local v2, edit:Landroid/content/SharedPreferences$Editor;
    const-string v7, "NETWORK_TRY"

    invoke-interface {v2, v7, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1457
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1458
    sput-boolean v10, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;->NETWORK_TRY:Z

    .line 1459
    iget-object v7, p0, Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail$7;->this$0:Lcom/sec/android/widgetapp/weatherclock/WeatherClockSearchDetail;

    const v8, 0x7f09001d

    invoke-static {v7, v8}, Lcom/sec/android/widgetapp/weatherclock/common/Util;->toast(Landroid/content/Context;I)V

    goto :goto_b
.end method
