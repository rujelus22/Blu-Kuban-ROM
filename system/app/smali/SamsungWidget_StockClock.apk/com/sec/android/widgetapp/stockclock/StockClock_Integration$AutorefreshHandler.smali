.class Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutorefreshHandler;
.super Landroid/os/Handler;
.source "StockClock_Integration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutorefreshHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;


# direct methods
.method private constructor <init>(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)V
    .registers 2
    .parameter

    .prologue
    .line 3913
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutorefreshHandler;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3913
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutorefreshHandler;-><init>(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16
    .parameter "msg"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 3917
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 3918
    .local v5, now:J
    iget-object v9, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutorefreshHandler;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #getter for: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->context:Landroid/content/Context;
    invoke-static {v9}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$500(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getLastTime(Landroid/content/Context;)J

    move-result-wide v0

    .line 3919
    .local v0, lasttime:J
    cmp-long v9, v0, v5

    if-gtz v9, :cond_b3

    move v2, v7

    .line 3921
    .local v2, need_refresh:Z
    :goto_15
    const-string v9, ""

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\n >> Current Time = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutorefreshHandler;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    iget-object v11, v11, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->sdf:Ljava/text/SimpleDateFormat;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n >> Last auto refresh time = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutorefreshHandler;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    iget-object v11, v11, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->sdf:Ljava/text/SimpleDateFormat;

    iget-object v12, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutorefreshHandler;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #getter for: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->context:Landroid/content/Context;
    invoke-static {v12}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$500(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getLastAutoRefreshUpdateTime(Landroid/content/Context;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n >> Next update time = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutorefreshHandler;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    iget-object v11, v11, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->sdf:Ljava/text/SimpleDateFormat;

    iget-object v12, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutorefreshHandler;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #getter for: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->context:Landroid/content/Context;
    invoke-static {v12}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$500(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getLastTime(Landroid/content/Context;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n >> need refresh : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n >> Auto refresh setting = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutorefreshHandler;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #getter for: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->context:Landroid/content/Context;
    invoke-static {v11}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$500(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getAutorefreshSetting(Landroid/content/Context;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3927
    if-nez v2, :cond_b6

    .line 3928
    iget-object v7, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutorefreshHandler;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    #getter for: Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->context:Landroid/content/Context;
    invoke-static {v7}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$500(Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v8, v2}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getNextTime(Landroid/content/Context;ZZ)J

    move-result-wide v3

    .line 3930
    .local v3, nexttime:J
    invoke-virtual {p0, v8}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutorefreshHandler;->removeMessages(I)V

    .line 3931
    sub-long v9, v3, v5

    invoke-virtual {p0, v8, v9, v10}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutorefreshHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3932
    const-string v7, ""

    const-string v8, "\n >> No need auto refresh.\n >> Handle delay time reset."

    invoke-static {v7, v8}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3939
    .end local v3           #nexttime:J
    :goto_b2
    return-void

    .end local v2           #need_refresh:Z
    :cond_b3
    move v2, v8

    .line 3919
    goto/16 :goto_15

    .line 3935
    .restart local v2       #need_refresh:Z
    :cond_b6
    const-string v8, ""

    const-string v9, "\n >> Tried auto refresh"

    invoke-static {v8, v9}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3936
    invoke-static {v7}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->access$3102(Z)Z

    .line 3937
    iget-object v7, p0, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration$AutorefreshHandler;->this$0:Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;

    invoke-virtual {v7}, Lcom/sec/android/widgetapp/stockclock/StockClock_Integration;->autorefreshAllStock()V

    goto :goto_b2
.end method
