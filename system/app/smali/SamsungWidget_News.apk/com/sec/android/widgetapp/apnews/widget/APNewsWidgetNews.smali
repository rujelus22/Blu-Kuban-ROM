.class public Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;
.super Landroid/appwidget/AppWidgetProvider;
.source "APNewsWidgetNews.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews$WidgetReceiver;
    }
.end annotation


# static fields
.field private static AUTOREFRESH_AFTER_CONNECTED:Z

.field private static autoRefreshHandler:Landroid/os/Handler;

.field private static isLauncherResume:Z

.field private static isScroll:Z

.field private static mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private static mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;",
            ">;"
        }
    .end annotation
.end field

.field private static mLastIndex:I


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 43
    sput-object v1, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    .line 44
    sput v0, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mLastIndex:I

    .line 45
    sput-object v1, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 49
    sput-boolean v0, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->isScroll:Z

    .line 61
    sput-object v1, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->autoRefreshHandler:Landroid/os/Handler;

    .line 62
    sput-boolean v0, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->AUTOREFRESH_AFTER_CONNECTED:Z

    .line 65
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->isLauncherResume:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 39
    sput-boolean p0, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->isLauncherResume:Z

    return p0
.end method

.method static synthetic access$200(Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;Landroid/content/Context;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->stopAutoRefresh(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;Landroid/content/Context;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->stopScroll(Landroid/content/Context;)V

    return-void
.end method

.method private checkAutoRefresh(Landroid/content/Context;IJ)V
    .registers 11
    .parameter "context"
    .parameter "refreshType"
    .parameter "nextRefreshTime"

    .prologue
    const-wide/16 v4, 0x0

    .line 2583
    if-eqz p1, :cond_23

    .line 2585
    sget-object v2, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    if-eqz v2, :cond_24

    sget-object v2, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_24

    if-eqz p2, :cond_24

    cmp-long v2, p3, v4

    if-eqz v2, :cond_24

    .line 2587
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, p3, v2

    .line 2589
    .local v0, delay:J
    cmp-long v2, v0, v4

    if-lez v2, :cond_23

    .line 2590
    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->startAutoRefresh(Landroid/content/Context;J)V

    .line 2596
    .end local v0           #delay:J
    :cond_23
    :goto_23
    return-void

    .line 2593
    :cond_24
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->stopAutoRefresh(Landroid/content/Context;)V

    goto :goto_23
.end method

.method private checkAutoRefreshSkip(Landroid/content/Context;)Z
    .registers 11
    .parameter

    .prologue
    const-wide/16 v7, 0x0

    const/4 v1, 0x0

    .line 2997
    new-instance v0, Lcom/sec/android/widgetapp/apnews/engine/Preferences;

    invoke-direct {v0, p1}, Lcom/sec/android/widgetapp/apnews/engine/Preferences;-><init>(Landroid/content/Context;)V

    .line 2998
    const-string v2, "AP_NEWS_AUTO_REFRESH"

    invoke-virtual {v0, v2}, Lcom/sec/android/widgetapp/apnews/engine/Preferences;->getIntValue(Ljava/lang/String;)I

    move-result v2

    .line 3000
    const-string v3, "WidgetNews"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cARS --> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3002
    if-nez v2, :cond_2a

    move v0, v1

    .line 3030
    :goto_29
    return v0

    .line 3006
    :cond_2a
    sget-object v2, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    if-eqz v2, :cond_a7

    sget-object v2, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_a7

    .line 3007
    const-string v2, "AUTO_REFRESH_TIME"

    invoke-virtual {v0, v2, v7, v8}, Lcom/sec/android/widgetapp/apnews/engine/Preferences;->getLongValue(Ljava/lang/String;J)J

    move-result-wide v2

    .line 3015
    const-string v0, "WidgetNews"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cARS nRT = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3016
    const-string v4, "WidgetNews"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cARS DT =  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v0, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsTime:Ljava/lang/Long;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3017
    const-string v0, "WidgetNews"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cARS LT  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3019
    cmp-long v0, v2, v7

    if-lez v0, :cond_a7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_a7

    .line 3024
    const-string v0, "WidgetNews"

    const-string v1, "cARS return true"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3026
    const/4 v0, 0x1

    goto :goto_29

    .line 3029
    :cond_a7
    const-string v0, "WidgetNews"

    const-string v2, "cARS return false"

    invoke-static {v0, v2}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 3030
    goto/16 :goto_29
.end method

.method private checkAutoScroll(Landroid/content/Context;)I
    .registers 6
    .parameter

    .prologue
    .line 2552
    const/4 v0, 0x0

    .line 2553
    new-instance v1, Lcom/sec/android/widgetapp/apnews/engine/Preferences;

    invoke-direct {v1, p1}, Lcom/sec/android/widgetapp/apnews/engine/Preferences;-><init>(Landroid/content/Context;)V

    .line 2555
    const-string v2, "AP_NEWS_AUTO_SCROLL"

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/apnews/engine/Preferences;->getIntValue(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    .line 2556
    const/4 v0, 0x5

    .line 2561
    :cond_10
    :goto_10
    return v0

    .line 2557
    :cond_11
    const-string v2, "AP_NEWS_AUTO_SCROLL"

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/apnews/engine/Preferences;->getIntValue(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_10

    .line 2558
    const/16 v0, 0xa

    goto :goto_10
.end method

.method private checkPreferences(Landroid/content/Context;Z)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 2491
    if-eqz p1, :cond_34

    .line 2492
    sget-object v0, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    if-eqz v0, :cond_34

    sget-object v0, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_34

    .line 2494
    new-instance v0, Lcom/sec/android/widgetapp/apnews/engine/Preferences;

    invoke-direct {v0, p1}, Lcom/sec/android/widgetapp/apnews/engine/Preferences;-><init>(Landroid/content/Context;)V

    .line 2496
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->checkAutoScroll(Landroid/content/Context;)I

    move-result v1

    if-lez v1, :cond_39

    .line 2497
    sget-object v1, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_35

    .line 2498
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->startScroll(Landroid/content/Context;)V

    .line 2508
    :goto_25
    const-string v1, "AP_NEWS_AUTO_REFRESH"

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/apnews/engine/Preferences;->getIntValue(Ljava/lang/String;)I

    move-result v1

    .line 2509
    const-string v2, "AUTO_REFRESH_TIME"

    invoke-virtual {v0, v2}, Lcom/sec/android/widgetapp/apnews/engine/Preferences;->getLongValue(Ljava/lang/String;)J

    move-result-wide v2

    .line 2511
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->checkAutoRefresh(Landroid/content/Context;IJ)V

    .line 2516
    :cond_34
    return-void

    .line 2501
    :cond_35
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->stopScroll(Landroid/content/Context;)V

    goto :goto_25

    .line 2505
    :cond_39
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->stopScroll(Landroid/content/Context;)V

    goto :goto_25
.end method

.method private doAutoRefresh(Landroid/content/Context;)V
    .registers 9
    .parameter

    .prologue
    const v6, 0x7f0c0013

    const v5, 0x7f0c0012

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2895
    if-eqz p1, :cond_fe

    .line 2897
    const-string v0, "WidgetNews"

    const-string v1, "doAutoRefresh do ing"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2900
    new-instance v0, Lcom/sec/android/widgetapp/apnews/engine/Preferences;

    invoke-direct {v0, p1}, Lcom/sec/android/widgetapp/apnews/engine/Preferences;-><init>(Landroid/content/Context;)V

    .line 2901
    const-string v1, "AP_NEWS_AUTO_REFRESH"

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/apnews/engine/Preferences;->getIntValue(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_fe

    .line 2906
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->stopScroll(Landroid/content/Context;)V

    .line 2910
    const/16 v0, 0xca

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 2912
    invoke-direct {p0, p1, v3}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_2x2(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 2913
    if-eqz v0, :cond_41

    .line 2914
    invoke-virtual {v0, v6, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2915
    invoke-virtual {v0, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2916
    const v1, 0x7f0c0023

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2917
    const/16 v1, 0xca

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 2921
    :cond_41
    const/16 v0, 0x12e

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 2923
    invoke-direct {p0, p1, v3}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_3x2(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 2924
    if-eqz v0, :cond_60

    .line 2925
    invoke-virtual {v0, v6, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2926
    invoke-virtual {v0, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2927
    const v1, 0x7f0c0023

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2928
    const/16 v1, 0x12e

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 2932
    :cond_60
    const/16 v0, 0x192

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 2934
    invoke-direct {p0, p1, v3}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_4x2(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 2935
    if-eqz v0, :cond_7f

    .line 2936
    invoke-virtual {v0, v6, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2937
    invoke-virtual {v0, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2938
    const v1, 0x7f0c0023

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2939
    const/16 v1, 0x192

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 2943
    :cond_7f
    const/16 v0, 0x193

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 2945
    invoke-direct {p0, p1, v3}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_4x3(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 2946
    if-eqz v0, :cond_9e

    .line 2947
    invoke-virtual {v0, v6, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2948
    invoke-virtual {v0, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2949
    const v1, 0x7f0c0023

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2950
    const/16 v1, 0x193

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 2954
    :cond_9e
    const/16 v0, 0x194

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 2956
    invoke-direct {p0, p1, v3}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_4x4(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 2957
    if-eqz v0, :cond_bd

    .line 2958
    invoke-virtual {v0, v6, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2959
    invoke-virtual {v0, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2960
    const v1, 0x7f0c0023

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2961
    const/16 v1, 0x194

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 2965
    :cond_bd
    const/16 v0, 0x1f6

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 2967
    invoke-direct {p0, p1, v3}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_5x2(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 2968
    if-eqz v0, :cond_dc

    .line 2969
    invoke-virtual {v0, v6, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2970
    invoke-virtual {v0, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2971
    const v1, 0x7f0c0023

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2972
    const/16 v1, 0x1f6

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 2976
    :cond_dc
    const/16 v0, 0x1f7

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_fb

    .line 2978
    invoke-direct {p0, p1, v3}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_5x3(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 2979
    if-eqz v0, :cond_fb

    .line 2980
    invoke-virtual {v0, v6, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2981
    invoke-virtual {v0, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2982
    const v1, 0x7f0c0023

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2983
    const/16 v1, 0x1f7

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 2987
    :cond_fb
    invoke-direct {p0, p1, v3}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->refreshDataToService(Landroid/content/Context;Z)V

    .line 2991
    :cond_fe
    return-void
.end method

.method private extractDefaultWidgetSize()I
    .registers 8

    .prologue
    .line 1063
    const/16 v2, 0x192

    .line 1064
    .local v2, initialLayout:I
    iget-object v5, p0, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f050001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 1068
    .local v4, xml:Landroid/content/res/XmlResourceParser;
    :cond_f
    :goto_f
    :try_start_f
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    .line 1069
    .local v1, event:I
    const/4 v5, 0x2

    if-ne v1, v5, :cond_2c

    .line 1070
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getNamespace()Ljava/lang/String;

    move-result-object v3

    .line 1071
    .local v3, namespace:Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    const/4 v3, 0x0

    .line 1072
    :cond_23
    const-string v5, "APmobileDefaultSizeConst"

    const/16 v6, 0x192

    invoke-interface {v4, v3, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2a} :catch_30

    move-result v2

    .line 1074
    goto :goto_f

    .line 1075
    .end local v3           #namespace:Ljava/lang/String;
    :cond_2c
    const/4 v5, 0x1

    if-ne v1, v5, :cond_f

    .line 1081
    return v2

    .line 1077
    .end local v1           #event:I
    :catch_30
    move-exception v0

    .line 1078
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method private getBroadcastIntentForReload(Landroid/content/Context;)Landroid/app/PendingIntent;
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 2460
    if-eqz p1, :cond_f

    .line 2461
    new-instance v0, Landroid/content/Intent;

    const-string v1, "APNewsWidget.action.widget.news.refresh"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2462
    .local v0, serviceIntent:Landroid/content/Intent;
    invoke-static {p1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2464
    .end local v0           #serviceIntent:Landroid/content/Intent;
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method private getCpData(Landroid/content/Context;)V
    .registers 9
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 2392
    if-eqz p1, :cond_2d

    .line 2393
    new-instance v3, Lcom/sec/android/widgetapp/apnews/engine/Controller;

    invoke-direct {v3, p1}, Lcom/sec/android/widgetapp/apnews/engine/Controller;-><init>(Landroid/content/Context;)V

    .line 2395
    .local v3, sController:Lcom/sec/android/widgetapp/apnews/engine/Controller;
    invoke-virtual {v3}, Lcom/sec/android/widgetapp/apnews/engine/Controller;->fetchAPNewsRowsWidget()Ljava/util/ArrayList;

    move-result-object v4

    sput-object v4, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    .line 2396
    sget-object v4, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    if-eqz v4, :cond_2e

    sget-object v4, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2e

    .line 2397
    sget-object v4, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    if-eqz v4, :cond_2d

    .line 2398
    sget-object v4, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_28

    .line 2399
    sput v6, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mLastIndex:I

    .line 2401
    :cond_28
    sget-object v4, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->trimToSize()V

    .line 2439
    .end local v3           #sController:Lcom/sec/android/widgetapp/apnews/engine/Controller;
    :cond_2d
    :goto_2d
    return-void

    .line 2406
    .restart local v3       #sController:Lcom/sec/android/widgetapp/apnews/engine/Controller;
    :cond_2e
    sget-object v4, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    if-eqz v4, :cond_3f

    .line 2407
    sget-object v4, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2408
    sget-object v4, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->trimToSize()V

    .line 2409
    const/4 v4, 0x0

    sput-object v4, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    .line 2421
    :cond_3f
    const-string v4, "getCpData"

    const-string v5, "NULL"

    invoke-static {v4, v5}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    const-string v4, "SetDefaultValue"

    invoke-virtual {p1, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2423
    .local v2, pref:Landroid/content/SharedPreferences;
    const-string v4, "Status"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2424
    .local v0, bStatus:Z
    if-nez v0, :cond_6c

    .line 2426
    const-string v4, "getCpData bStatus"

    const-string v5, "false"

    invoke-static {v4, v5}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2427
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2428
    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    const-string v4, "Status"

    const/4 v5, 0x1

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2429
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2431
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mainRefresh(Landroid/content/Context;)V

    goto :goto_2d

    .line 2434
    .end local v1           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_6c
    const-string v4, "getCpData bStatus"

    const-string v5, "true"

    invoke-static {v4, v5}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d
.end method

.method private getCpDataImageEach(Landroid/content/Context;I)V
    .registers 7
    .parameter "context"
    .parameter "index"

    .prologue
    .line 2444
    if-eqz p1, :cond_34

    .line 2446
    sget-object v2, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    if-eqz v2, :cond_34

    sget-object v2, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_34

    sget-object v2, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p2, :cond_34

    .line 2447
    new-instance v0, Lcom/sec/android/widgetapp/apnews/engine/Controller;

    invoke-direct {v0, p1}, Lcom/sec/android/widgetapp/apnews/engine/Controller;-><init>(Landroid/content/Context;)V

    .line 2448
    .local v0, controller:Lcom/sec/android/widgetapp/apnews/engine/Controller;
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    iget-object v2, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsXmlUrl:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/sec/android/widgetapp/apnews/engine/Controller;->fetchAPNewsRow(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    move-result-object v1

    .line 2449
    .local v1, news:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    if-eqz v1, :cond_34

    .line 2450
    sget-object v2, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2456
    .end local v0           #controller:Lcom/sec/android/widgetapp/apnews/engine/Controller;
    .end local v1           #news:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    :cond_34
    return-void
.end method

.method private getIntentForAPNews(Landroid/content/Context;Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;)Landroid/app/PendingIntent;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 2479
    if-eqz p1, :cond_39

    if-eqz p2, :cond_39

    .line 2480
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2481
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.widgetapp.apnews"

    const-string v3, "com.sec.android.widgetapp.apnews.activity.APNews"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2482
    const-string v1, "selAPNews"

    iget-object v2, p2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsIndex:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2483
    const-string v1, "xmlUrl"

    iget-object v2, p2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsXmlUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2484
    const-string v1, "ViewMode"

    const-string v2, "AP Mobile news"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2485
    const/16 v1, 0x1e

    const/high16 v2, 0x800

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 2487
    :goto_38
    return-object v0

    :cond_39
    const/4 v0, 0x0

    goto :goto_38
.end method

.method private getNewsListSize(Landroid/content/Context;)I
    .registers 6
    .parameter

    .prologue
    .line 3035
    .line 3037
    new-instance v0, Lcom/sec/android/widgetapp/apnews/engine/Controller;

    invoke-direct {v0, p1}, Lcom/sec/android/widgetapp/apnews/engine/Controller;-><init>(Landroid/content/Context;)V

    .line 3039
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/apnews/engine/Controller;->getWidgetNewsListSize()I

    move-result v0

    .line 3041
    const-string v1, "WidgetNews"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNewsListSize -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3043
    return v0
.end method

.method private getResizeType(Landroid/content/Intent;)I
    .registers 11
    .parameter "intent"

    .prologue
    const/4 v8, 0x5

    const/4 v3, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x4

    const/4 v5, 0x2

    .line 169
    const-string v2, "widgetspanx"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 170
    .local v0, spanX:I
    const-string v2, "widgetspany"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 172
    .local v1, spanY:I
    const-string v2, "WidgetNews"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WIDGET_RESIZE spanX : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", spanY : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    if-ne v0, v5, :cond_3a

    if-ne v1, v5, :cond_3a

    .line 175
    const/16 v2, 0xca

    .line 189
    :goto_39
    return v2

    .line 176
    :cond_3a
    if-ne v0, v7, :cond_41

    if-ne v1, v5, :cond_41

    .line 177
    const/16 v2, 0x12e

    goto :goto_39

    .line 178
    :cond_41
    if-ne v0, v6, :cond_48

    if-ne v1, v5, :cond_48

    .line 179
    const/16 v2, 0x192

    goto :goto_39

    .line 180
    :cond_48
    if-ne v0, v6, :cond_4f

    if-ne v1, v7, :cond_4f

    .line 181
    const/16 v2, 0x193

    goto :goto_39

    .line 182
    :cond_4f
    if-ne v0, v6, :cond_56

    if-ne v1, v6, :cond_56

    .line 183
    const/16 v2, 0x194

    goto :goto_39

    .line 184
    :cond_56
    if-ne v0, v8, :cond_5d

    if-ne v1, v5, :cond_5d

    .line 185
    const/16 v2, 0x1f6

    goto :goto_39

    .line 186
    :cond_5d
    if-ne v0, v8, :cond_64

    if-ne v1, v7, :cond_64

    .line 187
    const/16 v2, 0x1f7

    goto :goto_39

    .line 189
    :cond_64
    const/4 v2, -0x1

    goto :goto_39
.end method

.method private mainRefresh(Landroid/content/Context;)V
    .registers 10
    .parameter "context"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    const v5, 0x7f0c000f

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 2253
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->stopScroll(Landroid/content/Context;)V

    .line 2254
    const/4 v0, 0x0

    .line 2255
    .local v0, view:Landroid/widget/RemoteViews;
    const/16 v1, 0xca

    invoke-static {p1, v1}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 2257
    invoke-direct {p0, p1, v6}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_2x2(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 2258
    if-eqz v0, :cond_66

    .line 2259
    sget-object v1, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_26

    sget-object v1, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_4f

    .line 2260
    :cond_26
    const v1, 0x7f0c0015

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2261
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2262
    const v1, 0x7f0c0013

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2263
    invoke-virtual {v0, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2264
    const v1, 0x7f0c0016

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2265
    const v1, 0x7f0c0011

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2267
    :cond_4f
    const v1, 0x7f0c0022

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2268
    const v1, 0x7f0c0012

    invoke-virtual {v0, v1, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2269
    const v1, 0x7f0c0023

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2270
    const/16 v1, 0xca

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 2274
    :cond_66
    const/16 v1, 0x12e

    invoke-static {p1, v1}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_c0

    .line 2276
    invoke-direct {p0, p1, v6}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_3x2(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 2277
    if-eqz v0, :cond_c0

    .line 2278
    sget-object v1, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_80

    sget-object v1, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_a9

    .line 2279
    :cond_80
    const v1, 0x7f0c0015

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2280
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2281
    const v1, 0x7f0c0013

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2282
    invoke-virtual {v0, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2283
    const v1, 0x7f0c0016

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2284
    const v1, 0x7f0c0011

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2286
    :cond_a9
    const v1, 0x7f0c0022

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2287
    const v1, 0x7f0c0012

    invoke-virtual {v0, v1, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2288
    const v1, 0x7f0c0023

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2289
    const/16 v1, 0x12e

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 2293
    :cond_c0
    const/16 v1, 0x192

    invoke-static {p1, v1}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_11a

    .line 2295
    invoke-direct {p0, p1, v6}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_4x2(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 2296
    if-eqz v0, :cond_11a

    .line 2297
    sget-object v1, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_da

    sget-object v1, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_103

    .line 2298
    :cond_da
    const v1, 0x7f0c0015

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2299
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2300
    const v1, 0x7f0c0013

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2301
    invoke-virtual {v0, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2302
    const v1, 0x7f0c0016

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2303
    const v1, 0x7f0c0011

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2305
    :cond_103
    const v1, 0x7f0c0022

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2306
    const v1, 0x7f0c0012

    invoke-virtual {v0, v1, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2307
    const v1, 0x7f0c0023

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2308
    const/16 v1, 0x192

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 2312
    :cond_11a
    const/16 v1, 0x193

    invoke-static {p1, v1}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_174

    .line 2314
    invoke-direct {p0, p1, v6}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_4x3(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 2315
    if-eqz v0, :cond_174

    .line 2316
    sget-object v1, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_134

    sget-object v1, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_15d

    .line 2317
    :cond_134
    const v1, 0x7f0c0015

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2318
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2319
    const v1, 0x7f0c0013

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2320
    invoke-virtual {v0, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2321
    const v1, 0x7f0c0016

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2322
    const v1, 0x7f0c0011

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2324
    :cond_15d
    const v1, 0x7f0c0022

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2325
    const v1, 0x7f0c0012

    invoke-virtual {v0, v1, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2326
    const v1, 0x7f0c0023

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2327
    const/16 v1, 0x193

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 2331
    :cond_174
    const/16 v1, 0x194

    invoke-static {p1, v1}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1ce

    .line 2333
    invoke-direct {p0, p1, v6}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_4x4(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 2334
    if-eqz v0, :cond_1ce

    .line 2335
    sget-object v1, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_18e

    sget-object v1, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1b7

    .line 2336
    :cond_18e
    const v1, 0x7f0c0015

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2337
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2338
    const v1, 0x7f0c0013

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2339
    invoke-virtual {v0, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2340
    const v1, 0x7f0c0016

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2341
    const v1, 0x7f0c0011

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2343
    :cond_1b7
    const v1, 0x7f0c0022

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2344
    const v1, 0x7f0c0012

    invoke-virtual {v0, v1, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2345
    const v1, 0x7f0c0023

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2346
    const/16 v1, 0x194

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 2350
    :cond_1ce
    const/16 v1, 0x1f6

    invoke-static {p1, v1}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_228

    .line 2352
    invoke-direct {p0, p1, v6}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_5x2(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 2353
    if-eqz v0, :cond_228

    .line 2354
    sget-object v1, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1e8

    sget-object v1, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_211

    .line 2355
    :cond_1e8
    const v1, 0x7f0c0015

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2356
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2357
    const v1, 0x7f0c0013

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2358
    invoke-virtual {v0, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2359
    const v1, 0x7f0c0016

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2360
    const v1, 0x7f0c0011

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2362
    :cond_211
    const v1, 0x7f0c0022

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2363
    const v1, 0x7f0c0012

    invoke-virtual {v0, v1, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2364
    const v1, 0x7f0c0023

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2365
    const/16 v1, 0x1f6

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 2369
    :cond_228
    const/16 v1, 0x1f7

    invoke-static {p1, v1}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_282

    .line 2371
    invoke-direct {p0, p1, v6}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_5x3(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 2372
    if-eqz v0, :cond_282

    .line 2373
    sget-object v1, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_242

    sget-object v1, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_26b

    .line 2374
    :cond_242
    const v1, 0x7f0c0015

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2375
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2376
    const v1, 0x7f0c0013

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2377
    invoke-virtual {v0, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2378
    const v1, 0x7f0c0016

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2379
    const v1, 0x7f0c0011

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2381
    :cond_26b
    const v1, 0x7f0c0022

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2382
    const v1, 0x7f0c0012

    invoke-virtual {v0, v1, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2383
    const v1, 0x7f0c0023

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2384
    const/16 v1, 0x1f7

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 2388
    :cond_282
    invoke-direct {p0, p1, v3}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->refreshDataToService(Landroid/content/Context;Z)V

    .line 2389
    return-void
.end method

.method private refreshDataToService(Landroid/content/Context;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 2653
    if-eqz p1, :cond_12

    .line 2654
    invoke-static {p1}, Lcom/sec/android/widgetapp/apnews/engine/Util;->checkNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 2656
    const-string v0, "WidgetNews"

    const-string v1, "NotUesNetwork"

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2657
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setNotUesNetwork(Landroid/content/Context;)V

    .line 2674
    :cond_12
    :goto_12
    return-void

    .line 2660
    :cond_13
    new-instance v0, Landroid/content/Intent;

    const-string v1, "APNewsWidgetIntents.ACTION_SERVICE_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2661
    const-string v1, "APNEWS_SERVICE"

    const-string v2, "GET_NEWS_HEAD"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2663
    const-string v1, "GET_NEWS_SELECTED_HEAD"

    const-string v2, "GET_TOP_STORY"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2665
    if-eqz p2, :cond_34

    .line 2666
    const-string v1, "Is_Widget_Auto_Refresh"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2671
    :goto_30
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_12

    .line 2668
    :cond_34
    const-string v1, "Is_Widget_Auto_Refresh"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_30
.end method

.method private setDBErr(Landroid/content/Context;)V
    .registers 9
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2775
    if-eqz p1, :cond_58

    .line 2776
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->stopScroll(Landroid/content/Context;)V

    .line 2778
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 2780
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    .line 2783
    if-eqz v2, :cond_58

    .line 2785
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f030013

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2787
    if-eqz v3, :cond_58

    .line 2788
    const v4, 0x7f0c002f

    const v5, 0x7f02005b

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 2790
    const v4, 0x7f0c002a

    const/16 v5, 0x8

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2791
    const v4, 0x7f0c002c

    invoke-virtual {v3, v4, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2793
    const v4, 0x7f0c002d

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a001e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2795
    :goto_4d
    array-length v4, v2

    if-ge v0, v4, :cond_58

    .line 2796
    aget v4, v2, v0

    invoke-virtual {v1, v4, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 2795
    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    .line 2801
    :cond_58
    return-void
.end method

.method private setData_2x2(Landroid/content/Context;Z)Landroid/widget/RemoteViews;
    .registers 14
    .parameter "context"
    .parameter "isIndexChange"

    .prologue
    .line 1183
    if-eqz p1, :cond_288

    .line 1184
    new-instance v7, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f030004

    invoke-direct {v7, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1185
    .local v7, view:Landroid/widget/RemoteViews;
    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f03000b

    invoke-direct {v6, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1186
    .local v6, subDataView:Landroid/widget/RemoteViews;
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f030003

    invoke-direct {v4, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1187
    .local v4, infoView:Landroid/widget/RemoteViews;
    if-eqz v7, :cond_183

    .line 1188
    if-eqz v6, :cond_5d

    if-eqz v4, :cond_5d

    .line 1189
    const v8, 0x7f0c0014

    invoke-virtual {v7, v8}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 1190
    const v8, 0x7f0c0015

    invoke-virtual {v7, v8}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 1192
    const v8, 0x7f0c0014

    invoke-virtual {v7, v8, v6}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 1193
    const v8, 0x7f0c0015

    invoke-virtual {v7, v8, v4}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 1194
    const v8, 0x7f0c001f

    const v9, 0x7f02005b

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1195
    const v8, 0x7f0c0018

    const v9, 0x7f02005b

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1196
    const v8, 0x7f0c0011

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1200
    :cond_5d
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->getNewsListSize(Landroid/content/Context;)I

    move-result v5

    .line 1202
    .local v5, listsize:I
    sget-object v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    if-eqz v8, :cond_184

    .line 1204
    const-string v8, "WidgetNews"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setData -> mDataList : size -> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    sget-object v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eq v8, v5, :cond_95

    .line 1208
    const-string v8, "WidgetNews"

    const-string v9, "setData A-> call getCpData()"

    invoke-static {v8, v9}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->getCpData(Landroid/content/Context;)V

    .line 1226
    :cond_95
    :goto_95
    sget-object v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    if-eqz v8, :cond_236

    sget-object v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_236

    .line 1227
    const/4 v2, 0x0

    .line 1230
    .local v2, dataFirst:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    sget v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mLastIndex:I

    sget-object v9, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_b6

    .line 1231
    sget-object v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    sget v9, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mLastIndex:I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #dataFirst:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    check-cast v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    .line 1233
    .restart local v2       #dataFirst:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    :cond_b6
    if-eqz v2, :cond_183

    .line 1234
    const v8, 0x7f0c001f

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1235
    const v8, 0x7f0c0018

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1237
    const v8, 0x7f0c0013

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1238
    const v8, 0x7f0c0015

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1239
    const v8, 0x7f0c0016

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1240
    const v8, 0x7f0c0022

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1242
    iget-object v8, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsTitle:Ljava/lang/String;

    if-eqz v8, :cond_f1

    .line 1243
    const v8, 0x7f0c001d

    iget-object v9, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsTitle:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1246
    :cond_f1
    iget-object v8, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageData:[B

    if-eqz v8, :cond_205

    .line 1250
    :try_start_f5
    iget-object v8, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageData:[B

    const/4 v9, 0x0

    iget-object v10, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageData:[B

    array-length v10, v10

    invoke-static {v8, v9, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1251
    .local v0, NewsImage:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1c7

    .line 1252
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-le v8, v9, :cond_199

    .line 1254
    const v8, 0x7f0c001a

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1255
    const v8, 0x7f0c0019

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1256
    const v8, 0x7f0c0019

    invoke-virtual {v7, v8, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1264
    :goto_120
    const v8, 0x7f0c001b

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_128
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f5 .. :try_end_128} :catch_1b0
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_128} :catch_1ee

    .line 1291
    .end local v0           #NewsImage:Landroid/graphics/Bitmap;
    :goto_128
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1292
    .local v1, buf:Ljava/lang/StringBuffer;
    iget-object v8, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsTime:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v8

    if-nez v8, :cond_21e

    .line 1294
    sget-object v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    iget-object v8, v8, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsTime:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/sec/android/widgetapp/apnews/engine/Util;->formatTimeStampStringDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1298
    :goto_14f
    if-eqz v1, :cond_15b

    .line 1299
    const v8, 0x7f0c0025

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1302
    :cond_15b
    iget-object v8, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsPublishTime:Ljava/lang/Long;

    if-eqz v8, :cond_16f

    .line 1303
    const v8, 0x7f0c001e

    iget-object v9, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsPublishTime:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/sec/android/widgetapp/apnews/engine/Util;->formatTimeStampStringTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1305
    :cond_16f
    const v8, 0x7f0c0011

    invoke-direct {p0, p1, v2}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->getIntentForAPNews(Landroid/content/Context;Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1306
    const v8, 0x7f0c0012

    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->getBroadcastIntentForReload(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1329
    .end local v1           #buf:Ljava/lang/StringBuffer;
    .end local v2           #dataFirst:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    .end local v4           #infoView:Landroid/widget/RemoteViews;
    .end local v5           #listsize:I
    .end local v6           #subDataView:Landroid/widget/RemoteViews;
    .end local v7           #view:Landroid/widget/RemoteViews;
    :cond_183
    :goto_183
    return-object v7

    .line 1215
    .restart local v4       #infoView:Landroid/widget/RemoteViews;
    .restart local v5       #listsize:I
    .restart local v6       #subDataView:Landroid/widget/RemoteViews;
    .restart local v7       #view:Landroid/widget/RemoteViews;
    :cond_184
    const-string v8, "WidgetNews"

    const-string v9, "setData -> mDataList == null"

    invoke-static {v8, v9}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    if-eqz v5, :cond_95

    .line 1219
    const-string v8, "WidgetNews"

    const-string v9, "setData B -> call getCpData()"

    invoke-static {v8, v9}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->getCpData(Landroid/content/Context;)V

    goto/16 :goto_95

    .line 1260
    .restart local v0       #NewsImage:Landroid/graphics/Bitmap;
    .restart local v2       #dataFirst:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    :cond_199
    const v8, 0x7f0c0019

    const/16 v9, 0x8

    :try_start_19e
    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1261
    const v8, 0x7f0c001a

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1262
    const v8, 0x7f0c001a

    invoke-virtual {v7, v8, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    :try_end_1ae
    .catch Ljava/lang/OutOfMemoryError; {:try_start_19e .. :try_end_1ae} :catch_1b0
    .catch Ljava/lang/Exception; {:try_start_19e .. :try_end_1ae} :catch_1ee

    goto/16 :goto_120

    .line 1272
    .end local v0           #NewsImage:Landroid/graphics/Bitmap;
    :catch_1b0
    move-exception v3

    .line 1273
    .local v3, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 1274
    const/4 v0, 0x0

    .line 1275
    .restart local v0       #NewsImage:Landroid/graphics/Bitmap;
    const v8, 0x7f0c001a

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1276
    const v8, 0x7f0c0019

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_128

    .line 1266
    .end local v3           #e:Ljava/lang/OutOfMemoryError;
    :cond_1c7
    const v8, 0x7f0c0012

    const/4 v9, 0x0

    :try_start_1cb
    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1267
    const v8, 0x7f0c0023

    const/4 v9, 0x4

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1268
    const v8, 0x7f0c001a

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1269
    const v8, 0x7f0c0019

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1270
    const v8, 0x7f0c001b

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_1ec
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1cb .. :try_end_1ec} :catch_1b0
    .catch Ljava/lang/Exception; {:try_start_1cb .. :try_end_1ec} :catch_1ee

    goto/16 :goto_128

    .line 1277
    .end local v0           #NewsImage:Landroid/graphics/Bitmap;
    :catch_1ee
    move-exception v3

    .line 1278
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1279
    const/4 v0, 0x0

    .line 1280
    .restart local v0       #NewsImage:Landroid/graphics/Bitmap;
    const v8, 0x7f0c001a

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1281
    const v8, 0x7f0c0019

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_128

    .line 1286
    .end local v0           #NewsImage:Landroid/graphics/Bitmap;
    .end local v3           #e:Ljava/lang/Exception;
    :cond_205
    const v8, 0x7f0c001a

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1287
    const v8, 0x7f0c0019

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1288
    const v8, 0x7f0c001b

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_128

    .line 1296
    .restart local v1       #buf:Ljava/lang/StringBuffer;
    :cond_21e
    sget-object v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    iget-object v8, v8, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsTime:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/sec/android/widgetapp/apnews/engine/Util;->formatTimeStampStringTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_14f

    .line 1310
    .end local v1           #buf:Ljava/lang/StringBuffer;
    .end local v2           #dataFirst:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    :cond_236
    const v8, 0x7f0c0011

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1311
    const v8, 0x7f0c0013

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1312
    const v8, 0x7f0c0015

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1314
    const v8, 0x7f0c0017

    const v9, 0x7f020052

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1316
    const v8, 0x7f0c000f

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1317
    const v8, 0x7f0c0016

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1319
    const v8, 0x7f0c0022

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1320
    const v8, 0x7f0c001f

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1321
    const v8, 0x7f0c0018

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1324
    const v8, 0x7f0c0016

    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->getBroadcastIntentForReload(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto/16 :goto_183

    .line 1329
    .end local v4           #infoView:Landroid/widget/RemoteViews;
    .end local v5           #listsize:I
    .end local v6           #subDataView:Landroid/widget/RemoteViews;
    .end local v7           #view:Landroid/widget/RemoteViews;
    :cond_288
    const/4 v7, 0x0

    goto/16 :goto_183
.end method

.method private setData_3x2(Landroid/content/Context;Z)Landroid/widget/RemoteViews;
    .registers 14
    .parameter "context"
    .parameter "isIndexChange"

    .prologue
    .line 1333
    if-eqz p1, :cond_288

    .line 1334
    new-instance v7, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f030005

    invoke-direct {v7, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1335
    .local v7, view:Landroid/widget/RemoteViews;
    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f03000c

    invoke-direct {v6, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1336
    .local v6, subDataView:Landroid/widget/RemoteViews;
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f030003

    invoke-direct {v4, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1337
    .local v4, infoView:Landroid/widget/RemoteViews;
    if-eqz v7, :cond_183

    .line 1338
    if-eqz v6, :cond_5d

    if-eqz v4, :cond_5d

    .line 1339
    const v8, 0x7f0c0014

    invoke-virtual {v7, v8}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 1340
    const v8, 0x7f0c0015

    invoke-virtual {v7, v8}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 1342
    const v8, 0x7f0c0014

    invoke-virtual {v7, v8, v6}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 1343
    const v8, 0x7f0c0015

    invoke-virtual {v7, v8, v4}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 1344
    const v8, 0x7f0c001f

    const v9, 0x7f02005b

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1345
    const v8, 0x7f0c0018

    const v9, 0x7f02005b

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1346
    const v8, 0x7f0c0011

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1350
    :cond_5d
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->getNewsListSize(Landroid/content/Context;)I

    move-result v5

    .line 1352
    .local v5, listsize:I
    sget-object v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    if-eqz v8, :cond_184

    .line 1354
    const-string v8, "WidgetNews"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setData -> mDataList : size -> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    sget-object v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eq v8, v5, :cond_95

    .line 1358
    const-string v8, "WidgetNews"

    const-string v9, "setData A-> call getCpData()"

    invoke-static {v8, v9}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->getCpData(Landroid/content/Context;)V

    .line 1376
    :cond_95
    :goto_95
    sget-object v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    if-eqz v8, :cond_236

    sget-object v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_236

    .line 1377
    const/4 v2, 0x0

    .line 1380
    .local v2, dataFirst:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    sget v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mLastIndex:I

    sget-object v9, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_b6

    .line 1381
    sget-object v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    sget v9, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mLastIndex:I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #dataFirst:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    check-cast v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    .line 1383
    .restart local v2       #dataFirst:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    :cond_b6
    if-eqz v2, :cond_183

    .line 1384
    const v8, 0x7f0c001f

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1385
    const v8, 0x7f0c0018

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1387
    const v8, 0x7f0c0013

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1388
    const v8, 0x7f0c0015

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1389
    const v8, 0x7f0c0016

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1390
    const v8, 0x7f0c0022

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1392
    iget-object v8, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsTitle:Ljava/lang/String;

    if-eqz v8, :cond_f1

    .line 1393
    const v8, 0x7f0c001d

    iget-object v9, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsTitle:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1396
    :cond_f1
    iget-object v8, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageData:[B

    if-eqz v8, :cond_205

    .line 1400
    :try_start_f5
    iget-object v8, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageData:[B

    const/4 v9, 0x0

    iget-object v10, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageData:[B

    array-length v10, v10

    invoke-static {v8, v9, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1401
    .local v0, NewsImage:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1c7

    .line 1402
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-le v8, v9, :cond_199

    .line 1404
    const v8, 0x7f0c001a

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1405
    const v8, 0x7f0c0019

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1406
    const v8, 0x7f0c0019

    invoke-virtual {v7, v8, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1414
    :goto_120
    const v8, 0x7f0c001b

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_128
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f5 .. :try_end_128} :catch_1b0
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_128} :catch_1ee

    .line 1442
    .end local v0           #NewsImage:Landroid/graphics/Bitmap;
    :goto_128
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1443
    .local v1, buf:Ljava/lang/StringBuffer;
    iget-object v8, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsTime:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v8

    if-nez v8, :cond_21e

    .line 1445
    sget-object v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    iget-object v8, v8, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsTime:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/sec/android/widgetapp/apnews/engine/Util;->formatTimeStampStringDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1449
    :goto_14f
    if-eqz v1, :cond_15b

    .line 1450
    const v8, 0x7f0c0025

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1454
    :cond_15b
    iget-object v8, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsPublishTime:Ljava/lang/Long;

    if-eqz v8, :cond_16f

    .line 1455
    const v8, 0x7f0c001e

    iget-object v9, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsPublishTime:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/sec/android/widgetapp/apnews/engine/Util;->formatTimeStampStringTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1458
    :cond_16f
    const v8, 0x7f0c0011

    invoke-direct {p0, p1, v2}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->getIntentForAPNews(Landroid/content/Context;Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1459
    const v8, 0x7f0c0012

    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->getBroadcastIntentForReload(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1482
    .end local v1           #buf:Ljava/lang/StringBuffer;
    .end local v2           #dataFirst:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    .end local v4           #infoView:Landroid/widget/RemoteViews;
    .end local v5           #listsize:I
    .end local v6           #subDataView:Landroid/widget/RemoteViews;
    .end local v7           #view:Landroid/widget/RemoteViews;
    :cond_183
    :goto_183
    return-object v7

    .line 1365
    .restart local v4       #infoView:Landroid/widget/RemoteViews;
    .restart local v5       #listsize:I
    .restart local v6       #subDataView:Landroid/widget/RemoteViews;
    .restart local v7       #view:Landroid/widget/RemoteViews;
    :cond_184
    const-string v8, "WidgetNews"

    const-string v9, "setData -> mDataList == null"

    invoke-static {v8, v9}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    if-eqz v5, :cond_95

    .line 1369
    const-string v8, "WidgetNews"

    const-string v9, "setData B -> call getCpData()"

    invoke-static {v8, v9}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->getCpData(Landroid/content/Context;)V

    goto/16 :goto_95

    .line 1410
    .restart local v0       #NewsImage:Landroid/graphics/Bitmap;
    .restart local v2       #dataFirst:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    :cond_199
    const v8, 0x7f0c0019

    const/16 v9, 0x8

    :try_start_19e
    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1411
    const v8, 0x7f0c001a

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1412
    const v8, 0x7f0c001a

    invoke-virtual {v7, v8, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    :try_end_1ae
    .catch Ljava/lang/OutOfMemoryError; {:try_start_19e .. :try_end_1ae} :catch_1b0
    .catch Ljava/lang/Exception; {:try_start_19e .. :try_end_1ae} :catch_1ee

    goto/16 :goto_120

    .line 1422
    .end local v0           #NewsImage:Landroid/graphics/Bitmap;
    :catch_1b0
    move-exception v3

    .line 1423
    .local v3, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 1424
    const/4 v0, 0x0

    .line 1425
    .restart local v0       #NewsImage:Landroid/graphics/Bitmap;
    const v8, 0x7f0c001a

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1426
    const v8, 0x7f0c0019

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_128

    .line 1416
    .end local v3           #e:Ljava/lang/OutOfMemoryError;
    :cond_1c7
    const v8, 0x7f0c0012

    const/4 v9, 0x0

    :try_start_1cb
    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1417
    const v8, 0x7f0c0023

    const/4 v9, 0x4

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1418
    const v8, 0x7f0c001a

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1419
    const v8, 0x7f0c0019

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1420
    const v8, 0x7f0c001b

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_1ec
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1cb .. :try_end_1ec} :catch_1b0
    .catch Ljava/lang/Exception; {:try_start_1cb .. :try_end_1ec} :catch_1ee

    goto/16 :goto_128

    .line 1427
    .end local v0           #NewsImage:Landroid/graphics/Bitmap;
    :catch_1ee
    move-exception v3

    .line 1428
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1429
    const/4 v0, 0x0

    .line 1430
    .restart local v0       #NewsImage:Landroid/graphics/Bitmap;
    const v8, 0x7f0c001a

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1431
    const v8, 0x7f0c0019

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_128

    .line 1436
    .end local v0           #NewsImage:Landroid/graphics/Bitmap;
    .end local v3           #e:Ljava/lang/Exception;
    :cond_205
    const v8, 0x7f0c001a

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1437
    const v8, 0x7f0c0019

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1438
    const v8, 0x7f0c001b

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_128

    .line 1447
    .restart local v1       #buf:Ljava/lang/StringBuffer;
    :cond_21e
    sget-object v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    iget-object v8, v8, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsTime:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/sec/android/widgetapp/apnews/engine/Util;->formatTimeStampStringTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_14f

    .line 1463
    .end local v1           #buf:Ljava/lang/StringBuffer;
    .end local v2           #dataFirst:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    :cond_236
    const v8, 0x7f0c0011

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1464
    const v8, 0x7f0c0013

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1465
    const v8, 0x7f0c0015

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1467
    const v8, 0x7f0c0017

    const v9, 0x7f020053

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1469
    const v8, 0x7f0c000f

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1470
    const v8, 0x7f0c0016

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1472
    const v8, 0x7f0c0022

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1473
    const v8, 0x7f0c001f

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1474
    const v8, 0x7f0c0018

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1477
    const v8, 0x7f0c0016

    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->getBroadcastIntentForReload(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto/16 :goto_183

    .line 1482
    .end local v4           #infoView:Landroid/widget/RemoteViews;
    .end local v5           #listsize:I
    .end local v6           #subDataView:Landroid/widget/RemoteViews;
    .end local v7           #view:Landroid/widget/RemoteViews;
    :cond_288
    const/4 v7, 0x0

    goto/16 :goto_183
.end method

.method private setData_4x2(Landroid/content/Context;Z)Landroid/widget/RemoteViews;
    .registers 14
    .parameter "context"
    .parameter "isIndexChange"

    .prologue
    .line 1486
    if-eqz p1, :cond_27f

    .line 1487
    new-instance v7, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f030006

    invoke-direct {v7, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1488
    .local v7, view:Landroid/widget/RemoteViews;
    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f03000d

    invoke-direct {v6, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1489
    .local v6, subDataView:Landroid/widget/RemoteViews;
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f030003

    invoke-direct {v4, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1491
    .local v4, infoView:Landroid/widget/RemoteViews;
    if-eqz v7, :cond_192

    .line 1492
    if-eqz v6, :cond_5d

    if-eqz v4, :cond_5d

    .line 1493
    const v8, 0x7f0c0014

    invoke-virtual {v7, v8}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 1494
    const v8, 0x7f0c0015

    invoke-virtual {v7, v8}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 1496
    const v8, 0x7f0c0014

    invoke-virtual {v7, v8, v6}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 1497
    const v8, 0x7f0c0015

    invoke-virtual {v7, v8, v4}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 1498
    const v8, 0x7f0c001f

    const v9, 0x7f02005b

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1499
    const v8, 0x7f0c0018

    const v9, 0x7f02005b

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1500
    const v8, 0x7f0c0011

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1504
    :cond_5d
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->getNewsListSize(Landroid/content/Context;)I

    move-result v5

    .line 1506
    .local v5, listsize:I
    sget-object v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    if-eqz v8, :cond_193

    .line 1508
    const-string v8, "WidgetNews"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setData -> mDataList : size -> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    sget-object v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eq v8, v5, :cond_95

    .line 1512
    const-string v8, "WidgetNews"

    const-string v9, "setData A-> call getCpData()"

    invoke-static {v8, v9}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->getCpData(Landroid/content/Context;)V

    .line 1530
    :cond_95
    :goto_95
    sget-object v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    if-eqz v8, :cond_22d

    sget-object v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_22d

    .line 1531
    const/4 v2, 0x0

    .line 1534
    .local v2, dataFirst:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    sget v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mLastIndex:I

    sget-object v9, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_b6

    .line 1535
    sget-object v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    sget v9, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mLastIndex:I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #dataFirst:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    check-cast v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    .line 1537
    .restart local v2       #dataFirst:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    :cond_b6
    if-eqz v2, :cond_192

    .line 1538
    const v8, 0x7f0c001f

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1539
    const v8, 0x7f0c0018

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1541
    const v8, 0x7f0c0013

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1542
    const v8, 0x7f0c0015

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1543
    const v8, 0x7f0c0016

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1544
    const v8, 0x7f0c0022

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1546
    iget-object v8, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsTitle:Ljava/lang/String;

    if-eqz v8, :cond_f1

    .line 1547
    const v8, 0x7f0c001d

    iget-object v9, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsTitle:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1550
    :cond_f1
    iget-object v8, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageData:[B

    if-eqz v8, :cond_214

    .line 1554
    :try_start_f5
    iget-object v8, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageData:[B

    const/4 v9, 0x0

    iget-object v10, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageData:[B

    array-length v10, v10

    invoke-static {v8, v9, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1555
    .local v0, NewsImage:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1d6

    .line 1556
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-le v8, v9, :cond_1a8

    .line 1558
    const v8, 0x7f0c001a

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1559
    const v8, 0x7f0c0019

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1560
    const v8, 0x7f0c0019

    invoke-virtual {v7, v8, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1568
    :goto_120
    const v8, 0x7f0c001b

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_128
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f5 .. :try_end_128} :catch_1bf
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_128} :catch_1fd

    .line 1597
    .end local v0           #NewsImage:Landroid/graphics/Bitmap;
    :goto_128
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1598
    .local v1, buf:Ljava/lang/StringBuffer;
    sget-object v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    iget-object v8, v8, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsTime:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/sec/android/widgetapp/apnews/engine/Util;->formatTimeStampStringDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1599
    const-string v8, "  "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1600
    sget-object v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    iget-object v8, v8, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsTime:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/sec/android/widgetapp/apnews/engine/Util;->formatTimeStampStringTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1602
    if-eqz v1, :cond_16a

    .line 1603
    const v8, 0x7f0c0025

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1607
    :cond_16a
    iget-object v8, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsPublishTime:Ljava/lang/Long;

    if-eqz v8, :cond_17e

    .line 1608
    const v8, 0x7f0c001e

    iget-object v9, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsPublishTime:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/sec/android/widgetapp/apnews/engine/Util;->formatTimeStampStringTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1610
    :cond_17e
    const v8, 0x7f0c0011

    invoke-direct {p0, p1, v2}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->getIntentForAPNews(Landroid/content/Context;Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1611
    const v8, 0x7f0c0012

    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->getBroadcastIntentForReload(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1634
    .end local v1           #buf:Ljava/lang/StringBuffer;
    .end local v2           #dataFirst:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    .end local v4           #infoView:Landroid/widget/RemoteViews;
    .end local v5           #listsize:I
    .end local v6           #subDataView:Landroid/widget/RemoteViews;
    .end local v7           #view:Landroid/widget/RemoteViews;
    :cond_192
    :goto_192
    return-object v7

    .line 1519
    .restart local v4       #infoView:Landroid/widget/RemoteViews;
    .restart local v5       #listsize:I
    .restart local v6       #subDataView:Landroid/widget/RemoteViews;
    .restart local v7       #view:Landroid/widget/RemoteViews;
    :cond_193
    const-string v8, "WidgetNews"

    const-string v9, "setData -> mDataList == null"

    invoke-static {v8, v9}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    if-eqz v5, :cond_95

    .line 1523
    const-string v8, "WidgetNews"

    const-string v9, "setData B -> call getCpData()"

    invoke-static {v8, v9}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->getCpData(Landroid/content/Context;)V

    goto/16 :goto_95

    .line 1564
    .restart local v0       #NewsImage:Landroid/graphics/Bitmap;
    .restart local v2       #dataFirst:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    :cond_1a8
    const v8, 0x7f0c0019

    const/16 v9, 0x8

    :try_start_1ad
    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1565
    const v8, 0x7f0c001a

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1566
    const v8, 0x7f0c001a

    invoke-virtual {v7, v8, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    :try_end_1bd
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1ad .. :try_end_1bd} :catch_1bf
    .catch Ljava/lang/Exception; {:try_start_1ad .. :try_end_1bd} :catch_1fd

    goto/16 :goto_120

    .line 1576
    .end local v0           #NewsImage:Landroid/graphics/Bitmap;
    :catch_1bf
    move-exception v3

    .line 1577
    .local v3, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 1578
    const/4 v0, 0x0

    .line 1579
    .restart local v0       #NewsImage:Landroid/graphics/Bitmap;
    const v8, 0x7f0c001a

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1580
    const v8, 0x7f0c0019

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_128

    .line 1570
    .end local v3           #e:Ljava/lang/OutOfMemoryError;
    :cond_1d6
    const v8, 0x7f0c0012

    const/4 v9, 0x0

    :try_start_1da
    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1571
    const v8, 0x7f0c0023

    const/4 v9, 0x4

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1572
    const v8, 0x7f0c001a

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1573
    const v8, 0x7f0c0019

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1574
    const v8, 0x7f0c001b

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_1fb
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1da .. :try_end_1fb} :catch_1bf
    .catch Ljava/lang/Exception; {:try_start_1da .. :try_end_1fb} :catch_1fd

    goto/16 :goto_128

    .line 1581
    .end local v0           #NewsImage:Landroid/graphics/Bitmap;
    :catch_1fd
    move-exception v3

    .line 1582
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1583
    const/4 v0, 0x0

    .line 1584
    .restart local v0       #NewsImage:Landroid/graphics/Bitmap;
    const v8, 0x7f0c001a

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1585
    const v8, 0x7f0c0019

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_128

    .line 1590
    .end local v0           #NewsImage:Landroid/graphics/Bitmap;
    .end local v3           #e:Ljava/lang/Exception;
    :cond_214
    const v8, 0x7f0c001a

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1591
    const v8, 0x7f0c0019

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1592
    const v8, 0x7f0c001b

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_128

    .line 1615
    .end local v2           #dataFirst:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    :cond_22d
    const v8, 0x7f0c0011

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1616
    const v8, 0x7f0c0013

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1617
    const v8, 0x7f0c0015

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1619
    const v8, 0x7f0c0017

    const v9, 0x7f020054

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1621
    const v8, 0x7f0c000f

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1622
    const v8, 0x7f0c0016

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1624
    const v8, 0x7f0c0022

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1625
    const v8, 0x7f0c001f

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1626
    const v8, 0x7f0c0018

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1629
    const v8, 0x7f0c0016

    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->getBroadcastIntentForReload(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto/16 :goto_192

    .line 1634
    .end local v4           #infoView:Landroid/widget/RemoteViews;
    .end local v5           #listsize:I
    .end local v6           #subDataView:Landroid/widget/RemoteViews;
    .end local v7           #view:Landroid/widget/RemoteViews;
    :cond_27f
    const/4 v7, 0x0

    goto/16 :goto_192
.end method

.method private setData_4x3(Landroid/content/Context;Z)Landroid/widget/RemoteViews;
    .registers 14
    .parameter "context"
    .parameter "isIndexChange"

    .prologue
    .line 1638
    if-eqz p1, :cond_27f

    .line 1639
    new-instance v7, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f030007

    invoke-direct {v7, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1640
    .local v7, view:Landroid/widget/RemoteViews;
    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f03000e

    invoke-direct {v6, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1641
    .local v6, subDataView:Landroid/widget/RemoteViews;
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f030003

    invoke-direct {v4, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1643
    .local v4, infoView:Landroid/widget/RemoteViews;
    if-eqz v7, :cond_192

    .line 1644
    if-eqz v6, :cond_5d

    if-eqz v4, :cond_5d

    .line 1645
    const v8, 0x7f0c0014

    invoke-virtual {v7, v8}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 1646
    const v8, 0x7f0c0015

    invoke-virtual {v7, v8}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 1648
    const v8, 0x7f0c0014

    invoke-virtual {v7, v8, v6}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 1649
    const v8, 0x7f0c0015

    invoke-virtual {v7, v8, v4}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 1650
    const v8, 0x7f0c001f

    const v9, 0x7f02005b

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1651
    const v8, 0x7f0c0018

    const v9, 0x7f02005b

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1652
    const v8, 0x7f0c0011

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1656
    :cond_5d
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->getNewsListSize(Landroid/content/Context;)I

    move-result v5

    .line 1658
    .local v5, listsize:I
    sget-object v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    if-eqz v8, :cond_193

    .line 1660
    const-string v8, "WidgetNews"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setData -> mDataList : size -> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    sget-object v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eq v8, v5, :cond_95

    .line 1664
    const-string v8, "WidgetNews"

    const-string v9, "setData A-> call getCpData()"

    invoke-static {v8, v9}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->getCpData(Landroid/content/Context;)V

    .line 1682
    :cond_95
    :goto_95
    sget-object v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    if-eqz v8, :cond_22d

    sget-object v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_22d

    .line 1683
    const/4 v2, 0x0

    .line 1686
    .local v2, dataFirst:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    sget v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mLastIndex:I

    sget-object v9, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_b6

    .line 1687
    sget-object v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    sget v9, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mLastIndex:I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #dataFirst:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    check-cast v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    .line 1689
    .restart local v2       #dataFirst:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    :cond_b6
    if-eqz v2, :cond_192

    .line 1690
    const v8, 0x7f0c001f

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1691
    const v8, 0x7f0c0018

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1693
    const v8, 0x7f0c0013

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1694
    const v8, 0x7f0c0015

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1695
    const v8, 0x7f0c0016

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1696
    const v8, 0x7f0c0022

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1698
    iget-object v8, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsTitle:Ljava/lang/String;

    if-eqz v8, :cond_f1

    .line 1699
    const v8, 0x7f0c001d

    iget-object v9, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsTitle:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1707
    :cond_f1
    iget-object v8, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageData:[B

    if-eqz v8, :cond_214

    .line 1711
    :try_start_f5
    iget-object v8, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageData:[B

    const/4 v9, 0x0

    iget-object v10, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageData:[B

    array-length v10, v10

    invoke-static {v8, v9, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1712
    .local v0, NewsImage:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1d6

    .line 1713
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-le v8, v9, :cond_1a8

    .line 1715
    const v8, 0x7f0c001a

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1716
    const v8, 0x7f0c0019

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1717
    const v8, 0x7f0c0019

    invoke-virtual {v7, v8, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1725
    :goto_120
    const v8, 0x7f0c001b

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_128
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f5 .. :try_end_128} :catch_1bf
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_128} :catch_1fd

    .line 1753
    .end local v0           #NewsImage:Landroid/graphics/Bitmap;
    :goto_128
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1754
    .local v1, buf:Ljava/lang/StringBuffer;
    sget-object v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    iget-object v8, v8, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsTime:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/sec/android/widgetapp/apnews/engine/Util;->formatTimeStampStringDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1755
    const-string v8, "  "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1756
    sget-object v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    iget-object v8, v8, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsTime:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/sec/android/widgetapp/apnews/engine/Util;->formatTimeStampStringTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1758
    if-eqz v1, :cond_16a

    .line 1759
    const v8, 0x7f0c0025

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1763
    :cond_16a
    iget-object v8, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsPublishTime:Ljava/lang/Long;

    if-eqz v8, :cond_17e

    .line 1764
    const v8, 0x7f0c001e

    iget-object v9, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsPublishTime:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/sec/android/widgetapp/apnews/engine/Util;->formatTimeStampStringTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1766
    :cond_17e
    const v8, 0x7f0c0011

    invoke-direct {p0, p1, v2}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->getIntentForAPNews(Landroid/content/Context;Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1767
    const v8, 0x7f0c0012

    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->getBroadcastIntentForReload(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1790
    .end local v1           #buf:Ljava/lang/StringBuffer;
    .end local v2           #dataFirst:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    .end local v4           #infoView:Landroid/widget/RemoteViews;
    .end local v5           #listsize:I
    .end local v6           #subDataView:Landroid/widget/RemoteViews;
    .end local v7           #view:Landroid/widget/RemoteViews;
    :cond_192
    :goto_192
    return-object v7

    .line 1671
    .restart local v4       #infoView:Landroid/widget/RemoteViews;
    .restart local v5       #listsize:I
    .restart local v6       #subDataView:Landroid/widget/RemoteViews;
    .restart local v7       #view:Landroid/widget/RemoteViews;
    :cond_193
    const-string v8, "WidgetNews"

    const-string v9, "setData -> mDataList == null"

    invoke-static {v8, v9}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    if-eqz v5, :cond_95

    .line 1675
    const-string v8, "WidgetNews"

    const-string v9, "setData B -> call getCpData()"

    invoke-static {v8, v9}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->getCpData(Landroid/content/Context;)V

    goto/16 :goto_95

    .line 1721
    .restart local v0       #NewsImage:Landroid/graphics/Bitmap;
    .restart local v2       #dataFirst:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    :cond_1a8
    const v8, 0x7f0c0019

    const/16 v9, 0x8

    :try_start_1ad
    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1722
    const v8, 0x7f0c001a

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1723
    const v8, 0x7f0c001a

    invoke-virtual {v7, v8, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    :try_end_1bd
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1ad .. :try_end_1bd} :catch_1bf
    .catch Ljava/lang/Exception; {:try_start_1ad .. :try_end_1bd} :catch_1fd

    goto/16 :goto_120

    .line 1733
    .end local v0           #NewsImage:Landroid/graphics/Bitmap;
    :catch_1bf
    move-exception v3

    .line 1734
    .local v3, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 1735
    const/4 v0, 0x0

    .line 1736
    .restart local v0       #NewsImage:Landroid/graphics/Bitmap;
    const v8, 0x7f0c001a

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1737
    const v8, 0x7f0c0019

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_128

    .line 1727
    .end local v3           #e:Ljava/lang/OutOfMemoryError;
    :cond_1d6
    const v8, 0x7f0c0012

    const/4 v9, 0x0

    :try_start_1da
    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1728
    const v8, 0x7f0c0023

    const/4 v9, 0x4

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1729
    const v8, 0x7f0c001a

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1730
    const v8, 0x7f0c0019

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1731
    const v8, 0x7f0c001b

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_1fb
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1da .. :try_end_1fb} :catch_1bf
    .catch Ljava/lang/Exception; {:try_start_1da .. :try_end_1fb} :catch_1fd

    goto/16 :goto_128

    .line 1738
    .end local v0           #NewsImage:Landroid/graphics/Bitmap;
    :catch_1fd
    move-exception v3

    .line 1739
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1740
    const/4 v0, 0x0

    .line 1741
    .restart local v0       #NewsImage:Landroid/graphics/Bitmap;
    const v8, 0x7f0c001a

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1742
    const v8, 0x7f0c0019

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_128

    .line 1747
    .end local v0           #NewsImage:Landroid/graphics/Bitmap;
    .end local v3           #e:Ljava/lang/Exception;
    :cond_214
    const v8, 0x7f0c001a

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1748
    const v8, 0x7f0c0019

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1749
    const v8, 0x7f0c001b

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_128

    .line 1771
    .end local v2           #dataFirst:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    :cond_22d
    const v8, 0x7f0c0011

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1772
    const v8, 0x7f0c0013

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1773
    const v8, 0x7f0c0015

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1775
    const v8, 0x7f0c0017

    const v9, 0x7f020055

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1777
    const v8, 0x7f0c000f

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1778
    const v8, 0x7f0c0016

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1780
    const v8, 0x7f0c0022

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1781
    const v8, 0x7f0c001f

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1782
    const v8, 0x7f0c0018

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1785
    const v8, 0x7f0c0016

    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->getBroadcastIntentForReload(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto/16 :goto_192

    .line 1790
    .end local v4           #infoView:Landroid/widget/RemoteViews;
    .end local v5           #listsize:I
    .end local v6           #subDataView:Landroid/widget/RemoteViews;
    .end local v7           #view:Landroid/widget/RemoteViews;
    :cond_27f
    const/4 v7, 0x0

    goto/16 :goto_192
.end method

.method private setData_4x4(Landroid/content/Context;Z)Landroid/widget/RemoteViews;
    .registers 14
    .parameter "context"
    .parameter "isIndexChange"

    .prologue
    .line 1794
    if-eqz p1, :cond_27f

    .line 1795
    new-instance v7, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f030008

    invoke-direct {v7, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1796
    .local v7, view:Landroid/widget/RemoteViews;
    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f03000f

    invoke-direct {v6, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1797
    .local v6, subDataView:Landroid/widget/RemoteViews;
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f030003

    invoke-direct {v4, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1799
    .local v4, infoView:Landroid/widget/RemoteViews;
    if-eqz v7, :cond_192

    .line 1800
    if-eqz v6, :cond_5d

    if-eqz v4, :cond_5d

    .line 1801
    const v8, 0x7f0c0014

    invoke-virtual {v7, v8}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 1802
    const v8, 0x7f0c0015

    invoke-virtual {v7, v8}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 1804
    const v8, 0x7f0c0014

    invoke-virtual {v7, v8, v6}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 1805
    const v8, 0x7f0c0015

    invoke-virtual {v7, v8, v4}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 1806
    const v8, 0x7f0c001f

    const v9, 0x7f02005b

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1807
    const v8, 0x7f0c0018

    const v9, 0x7f02005b

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1808
    const v8, 0x7f0c0011

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1812
    :cond_5d
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->getNewsListSize(Landroid/content/Context;)I

    move-result v5

    .line 1814
    .local v5, listsize:I
    sget-object v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    if-eqz v8, :cond_193

    .line 1816
    const-string v8, "WidgetNews"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setData -> mDataList : size -> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    sget-object v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eq v8, v5, :cond_95

    .line 1820
    const-string v8, "WidgetNews"

    const-string v9, "setData A-> call getCpData()"

    invoke-static {v8, v9}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->getCpData(Landroid/content/Context;)V

    .line 1838
    :cond_95
    :goto_95
    sget-object v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    if-eqz v8, :cond_22d

    sget-object v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_22d

    .line 1839
    const/4 v2, 0x0

    .line 1842
    .local v2, dataFirst:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    sget v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mLastIndex:I

    sget-object v9, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_b6

    .line 1843
    sget-object v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    sget v9, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mLastIndex:I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #dataFirst:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    check-cast v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    .line 1845
    .restart local v2       #dataFirst:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    :cond_b6
    if-eqz v2, :cond_192

    .line 1846
    const v8, 0x7f0c001f

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1847
    const v8, 0x7f0c0018

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1849
    const v8, 0x7f0c0013

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1850
    const v8, 0x7f0c0015

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1851
    const v8, 0x7f0c0016

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1852
    const v8, 0x7f0c0022

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1854
    iget-object v8, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsTitle:Ljava/lang/String;

    if-eqz v8, :cond_f1

    .line 1855
    const v8, 0x7f0c001d

    iget-object v9, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsTitle:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1862
    :cond_f1
    iget-object v8, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageData:[B

    if-eqz v8, :cond_214

    .line 1866
    :try_start_f5
    iget-object v8, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageData:[B

    const/4 v9, 0x0

    iget-object v10, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageData:[B

    array-length v10, v10

    invoke-static {v8, v9, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1867
    .local v0, NewsImage:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1d6

    .line 1868
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-le v8, v9, :cond_1a8

    .line 1870
    const v8, 0x7f0c001a

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1871
    const v8, 0x7f0c0019

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1872
    const v8, 0x7f0c0019

    invoke-virtual {v7, v8, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1880
    :goto_120
    const v8, 0x7f0c001b

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_128
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f5 .. :try_end_128} :catch_1bf
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_128} :catch_1fd

    .line 1908
    .end local v0           #NewsImage:Landroid/graphics/Bitmap;
    :goto_128
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1909
    .local v1, buf:Ljava/lang/StringBuffer;
    sget-object v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    iget-object v8, v8, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsTime:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/sec/android/widgetapp/apnews/engine/Util;->formatTimeStampStringDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1910
    const-string v8, "  "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1911
    sget-object v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    iget-object v8, v8, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsTime:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/sec/android/widgetapp/apnews/engine/Util;->formatTimeStampStringTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1913
    if-eqz v1, :cond_16a

    .line 1914
    const v8, 0x7f0c0025

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1919
    :cond_16a
    iget-object v8, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsPublishTime:Ljava/lang/Long;

    if-eqz v8, :cond_17e

    .line 1920
    const v8, 0x7f0c001e

    iget-object v9, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsPublishTime:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/sec/android/widgetapp/apnews/engine/Util;->formatTimeStampStringTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1922
    :cond_17e
    const v8, 0x7f0c0011

    invoke-direct {p0, p1, v2}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->getIntentForAPNews(Landroid/content/Context;Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1923
    const v8, 0x7f0c0012

    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->getBroadcastIntentForReload(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1946
    .end local v1           #buf:Ljava/lang/StringBuffer;
    .end local v2           #dataFirst:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    .end local v4           #infoView:Landroid/widget/RemoteViews;
    .end local v5           #listsize:I
    .end local v6           #subDataView:Landroid/widget/RemoteViews;
    .end local v7           #view:Landroid/widget/RemoteViews;
    :cond_192
    :goto_192
    return-object v7

    .line 1827
    .restart local v4       #infoView:Landroid/widget/RemoteViews;
    .restart local v5       #listsize:I
    .restart local v6       #subDataView:Landroid/widget/RemoteViews;
    .restart local v7       #view:Landroid/widget/RemoteViews;
    :cond_193
    const-string v8, "WidgetNews"

    const-string v9, "setData -> mDataList == null"

    invoke-static {v8, v9}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    if-eqz v5, :cond_95

    .line 1831
    const-string v8, "WidgetNews"

    const-string v9, "setData B -> call getCpData()"

    invoke-static {v8, v9}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->getCpData(Landroid/content/Context;)V

    goto/16 :goto_95

    .line 1876
    .restart local v0       #NewsImage:Landroid/graphics/Bitmap;
    .restart local v2       #dataFirst:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    :cond_1a8
    const v8, 0x7f0c0019

    const/16 v9, 0x8

    :try_start_1ad
    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1877
    const v8, 0x7f0c001a

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1878
    const v8, 0x7f0c001a

    invoke-virtual {v7, v8, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    :try_end_1bd
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1ad .. :try_end_1bd} :catch_1bf
    .catch Ljava/lang/Exception; {:try_start_1ad .. :try_end_1bd} :catch_1fd

    goto/16 :goto_120

    .line 1888
    .end local v0           #NewsImage:Landroid/graphics/Bitmap;
    :catch_1bf
    move-exception v3

    .line 1889
    .local v3, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 1890
    const/4 v0, 0x0

    .line 1891
    .restart local v0       #NewsImage:Landroid/graphics/Bitmap;
    const v8, 0x7f0c001a

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1892
    const v8, 0x7f0c0019

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_128

    .line 1882
    .end local v3           #e:Ljava/lang/OutOfMemoryError;
    :cond_1d6
    const v8, 0x7f0c0012

    const/4 v9, 0x0

    :try_start_1da
    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1883
    const v8, 0x7f0c0023

    const/4 v9, 0x4

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1884
    const v8, 0x7f0c001a

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1885
    const v8, 0x7f0c0019

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1886
    const v8, 0x7f0c001b

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_1fb
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1da .. :try_end_1fb} :catch_1bf
    .catch Ljava/lang/Exception; {:try_start_1da .. :try_end_1fb} :catch_1fd

    goto/16 :goto_128

    .line 1893
    .end local v0           #NewsImage:Landroid/graphics/Bitmap;
    :catch_1fd
    move-exception v3

    .line 1894
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1895
    const/4 v0, 0x0

    .line 1896
    .restart local v0       #NewsImage:Landroid/graphics/Bitmap;
    const v8, 0x7f0c001a

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1897
    const v8, 0x7f0c0019

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_128

    .line 1902
    .end local v0           #NewsImage:Landroid/graphics/Bitmap;
    .end local v3           #e:Ljava/lang/Exception;
    :cond_214
    const v8, 0x7f0c001a

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1903
    const v8, 0x7f0c0019

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1904
    const v8, 0x7f0c001b

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_128

    .line 1927
    .end local v2           #dataFirst:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    :cond_22d
    const v8, 0x7f0c0011

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1928
    const v8, 0x7f0c0013

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1929
    const v8, 0x7f0c0015

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1931
    const v8, 0x7f0c0017

    const v9, 0x7f020056

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1933
    const v8, 0x7f0c000f

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1934
    const v8, 0x7f0c0016

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1936
    const v8, 0x7f0c0022

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1937
    const v8, 0x7f0c001f

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1938
    const v8, 0x7f0c0018

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1941
    const v8, 0x7f0c0016

    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->getBroadcastIntentForReload(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto/16 :goto_192

    .line 1946
    .end local v4           #infoView:Landroid/widget/RemoteViews;
    .end local v5           #listsize:I
    .end local v6           #subDataView:Landroid/widget/RemoteViews;
    .end local v7           #view:Landroid/widget/RemoteViews;
    :cond_27f
    const/4 v7, 0x0

    goto/16 :goto_192
.end method

.method private setData_5x2(Landroid/content/Context;Z)Landroid/widget/RemoteViews;
    .registers 14
    .parameter "context"
    .parameter "isIndexChange"

    .prologue
    .line 1950
    if-eqz p1, :cond_27f

    .line 1951
    new-instance v7, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f030009

    invoke-direct {v7, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1952
    .local v7, view:Landroid/widget/RemoteViews;
    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f030010

    invoke-direct {v6, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1953
    .local v6, subDataView:Landroid/widget/RemoteViews;
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f030003

    invoke-direct {v4, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1955
    .local v4, infoView:Landroid/widget/RemoteViews;
    if-eqz v7, :cond_192

    .line 1956
    if-eqz v6, :cond_5d

    if-eqz v4, :cond_5d

    .line 1957
    const v8, 0x7f0c0014

    invoke-virtual {v7, v8}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 1958
    const v8, 0x7f0c0015

    invoke-virtual {v7, v8}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 1960
    const v8, 0x7f0c0014

    invoke-virtual {v7, v8, v6}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 1961
    const v8, 0x7f0c0015

    invoke-virtual {v7, v8, v4}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 1962
    const v8, 0x7f0c001f

    const v9, 0x7f02005b

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1963
    const v8, 0x7f0c0018

    const v9, 0x7f02005b

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1964
    const v8, 0x7f0c0011

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1968
    :cond_5d
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->getNewsListSize(Landroid/content/Context;)I

    move-result v5

    .line 1970
    .local v5, listsize:I
    sget-object v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    if-eqz v8, :cond_193

    .line 1972
    const-string v8, "WidgetNews"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setData -> mDataList : size -> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    sget-object v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eq v8, v5, :cond_95

    .line 1976
    const-string v8, "WidgetNews"

    const-string v9, "setData A-> call getCpData()"

    invoke-static {v8, v9}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->getCpData(Landroid/content/Context;)V

    .line 1994
    :cond_95
    :goto_95
    sget-object v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    if-eqz v8, :cond_22d

    sget-object v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_22d

    .line 1995
    const/4 v2, 0x0

    .line 1998
    .local v2, dataFirst:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    sget v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mLastIndex:I

    sget-object v9, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_b6

    .line 1999
    sget-object v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    sget v9, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mLastIndex:I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #dataFirst:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    check-cast v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    .line 2001
    .restart local v2       #dataFirst:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    :cond_b6
    if-eqz v2, :cond_192

    .line 2002
    const v8, 0x7f0c001f

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2003
    const v8, 0x7f0c0018

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2005
    const v8, 0x7f0c0013

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2006
    const v8, 0x7f0c0015

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2007
    const v8, 0x7f0c0016

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2008
    const v8, 0x7f0c0022

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2010
    iget-object v8, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsTitle:Ljava/lang/String;

    if-eqz v8, :cond_f1

    .line 2011
    const v8, 0x7f0c001d

    iget-object v9, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsTitle:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2014
    :cond_f1
    iget-object v8, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageData:[B

    if-eqz v8, :cond_214

    .line 2018
    :try_start_f5
    iget-object v8, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageData:[B

    const/4 v9, 0x0

    iget-object v10, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageData:[B

    array-length v10, v10

    invoke-static {v8, v9, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2019
    .local v0, NewsImage:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1d6

    .line 2020
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-le v8, v9, :cond_1a8

    .line 2022
    const v8, 0x7f0c001a

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2023
    const v8, 0x7f0c0019

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2024
    const v8, 0x7f0c0019

    invoke-virtual {v7, v8, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 2032
    :goto_120
    const v8, 0x7f0c001b

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_128
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f5 .. :try_end_128} :catch_1bf
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_128} :catch_1fd

    .line 2060
    .end local v0           #NewsImage:Landroid/graphics/Bitmap;
    :goto_128
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 2061
    .local v1, buf:Ljava/lang/StringBuffer;
    sget-object v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    iget-object v8, v8, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsTime:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/sec/android/widgetapp/apnews/engine/Util;->formatTimeStampStringDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2062
    const-string v8, "  "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2063
    sget-object v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    iget-object v8, v8, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsTime:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/sec/android/widgetapp/apnews/engine/Util;->formatTimeStampStringTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2065
    if-eqz v1, :cond_16a

    .line 2066
    const v8, 0x7f0c0025

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2070
    :cond_16a
    iget-object v8, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsPublishTime:Ljava/lang/Long;

    if-eqz v8, :cond_17e

    .line 2071
    const v8, 0x7f0c001e

    iget-object v9, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsPublishTime:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/sec/android/widgetapp/apnews/engine/Util;->formatTimeStampStringTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2073
    :cond_17e
    const v8, 0x7f0c0011

    invoke-direct {p0, p1, v2}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->getIntentForAPNews(Landroid/content/Context;Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2074
    const v8, 0x7f0c0012

    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->getBroadcastIntentForReload(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2097
    .end local v1           #buf:Ljava/lang/StringBuffer;
    .end local v2           #dataFirst:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    .end local v4           #infoView:Landroid/widget/RemoteViews;
    .end local v5           #listsize:I
    .end local v6           #subDataView:Landroid/widget/RemoteViews;
    .end local v7           #view:Landroid/widget/RemoteViews;
    :cond_192
    :goto_192
    return-object v7

    .line 1983
    .restart local v4       #infoView:Landroid/widget/RemoteViews;
    .restart local v5       #listsize:I
    .restart local v6       #subDataView:Landroid/widget/RemoteViews;
    .restart local v7       #view:Landroid/widget/RemoteViews;
    :cond_193
    const-string v8, "WidgetNews"

    const-string v9, "setData -> mDataList == null"

    invoke-static {v8, v9}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    if-eqz v5, :cond_95

    .line 1987
    const-string v8, "WidgetNews"

    const-string v9, "setData B -> call getCpData()"

    invoke-static {v8, v9}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->getCpData(Landroid/content/Context;)V

    goto/16 :goto_95

    .line 2028
    .restart local v0       #NewsImage:Landroid/graphics/Bitmap;
    .restart local v2       #dataFirst:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    :cond_1a8
    const v8, 0x7f0c0019

    const/16 v9, 0x8

    :try_start_1ad
    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2029
    const v8, 0x7f0c001a

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2030
    const v8, 0x7f0c001a

    invoke-virtual {v7, v8, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    :try_end_1bd
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1ad .. :try_end_1bd} :catch_1bf
    .catch Ljava/lang/Exception; {:try_start_1ad .. :try_end_1bd} :catch_1fd

    goto/16 :goto_120

    .line 2040
    .end local v0           #NewsImage:Landroid/graphics/Bitmap;
    :catch_1bf
    move-exception v3

    .line 2041
    .local v3, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 2042
    const/4 v0, 0x0

    .line 2043
    .restart local v0       #NewsImage:Landroid/graphics/Bitmap;
    const v8, 0x7f0c001a

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2044
    const v8, 0x7f0c0019

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_128

    .line 2034
    .end local v3           #e:Ljava/lang/OutOfMemoryError;
    :cond_1d6
    const v8, 0x7f0c0012

    const/4 v9, 0x0

    :try_start_1da
    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2035
    const v8, 0x7f0c0023

    const/4 v9, 0x4

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2036
    const v8, 0x7f0c001a

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2037
    const v8, 0x7f0c0019

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2038
    const v8, 0x7f0c001b

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_1fb
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1da .. :try_end_1fb} :catch_1bf
    .catch Ljava/lang/Exception; {:try_start_1da .. :try_end_1fb} :catch_1fd

    goto/16 :goto_128

    .line 2045
    .end local v0           #NewsImage:Landroid/graphics/Bitmap;
    :catch_1fd
    move-exception v3

    .line 2046
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 2047
    const/4 v0, 0x0

    .line 2048
    .restart local v0       #NewsImage:Landroid/graphics/Bitmap;
    const v8, 0x7f0c001a

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2049
    const v8, 0x7f0c0019

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_128

    .line 2054
    .end local v0           #NewsImage:Landroid/graphics/Bitmap;
    .end local v3           #e:Ljava/lang/Exception;
    :cond_214
    const v8, 0x7f0c001a

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2055
    const v8, 0x7f0c0019

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2056
    const v8, 0x7f0c001b

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_128

    .line 2078
    .end local v2           #dataFirst:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    :cond_22d
    const v8, 0x7f0c0011

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2079
    const v8, 0x7f0c0013

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2080
    const v8, 0x7f0c0015

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2082
    const v8, 0x7f0c0017

    const v9, 0x7f020057

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 2084
    const v8, 0x7f0c000f

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2085
    const v8, 0x7f0c0016

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2087
    const v8, 0x7f0c0022

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2088
    const v8, 0x7f0c001f

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2089
    const v8, 0x7f0c0018

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2092
    const v8, 0x7f0c0016

    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->getBroadcastIntentForReload(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto/16 :goto_192

    .line 2097
    .end local v4           #infoView:Landroid/widget/RemoteViews;
    .end local v5           #listsize:I
    .end local v6           #subDataView:Landroid/widget/RemoteViews;
    .end local v7           #view:Landroid/widget/RemoteViews;
    :cond_27f
    const/4 v7, 0x0

    goto/16 :goto_192
.end method

.method private setData_5x3(Landroid/content/Context;Z)Landroid/widget/RemoteViews;
    .registers 14
    .parameter "context"
    .parameter "isIndexChange"

    .prologue
    .line 2101
    if-eqz p1, :cond_27f

    .line 2102
    new-instance v7, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f03000a

    invoke-direct {v7, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2103
    .local v7, view:Landroid/widget/RemoteViews;
    new-instance v6, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f030011

    invoke-direct {v6, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2104
    .local v6, subDataView:Landroid/widget/RemoteViews;
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f030003

    invoke-direct {v4, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2106
    .local v4, infoView:Landroid/widget/RemoteViews;
    if-eqz v7, :cond_192

    .line 2107
    if-eqz v6, :cond_5d

    if-eqz v4, :cond_5d

    .line 2108
    const v8, 0x7f0c0014

    invoke-virtual {v7, v8}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 2109
    const v8, 0x7f0c0015

    invoke-virtual {v7, v8}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 2111
    const v8, 0x7f0c0014

    invoke-virtual {v7, v8, v6}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 2112
    const v8, 0x7f0c0015

    invoke-virtual {v7, v8, v4}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 2113
    const v8, 0x7f0c001f

    const v9, 0x7f02005b

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 2114
    const v8, 0x7f0c0018

    const v9, 0x7f02005b

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 2115
    const v8, 0x7f0c0011

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2119
    :cond_5d
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->getNewsListSize(Landroid/content/Context;)I

    move-result v5

    .line 2121
    .local v5, listsize:I
    sget-object v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    if-eqz v8, :cond_193

    .line 2123
    const-string v8, "WidgetNews"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setData -> mDataList : size -> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    sget-object v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eq v8, v5, :cond_95

    .line 2127
    const-string v8, "WidgetNews"

    const-string v9, "setData A-> call getCpData()"

    invoke-static {v8, v9}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->getCpData(Landroid/content/Context;)V

    .line 2145
    :cond_95
    :goto_95
    sget-object v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    if-eqz v8, :cond_22d

    sget-object v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_22d

    .line 2146
    const/4 v2, 0x0

    .line 2149
    .local v2, dataFirst:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    sget v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mLastIndex:I

    sget-object v9, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_b6

    .line 2150
    sget-object v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    sget v9, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mLastIndex:I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #dataFirst:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    check-cast v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    .line 2152
    .restart local v2       #dataFirst:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    :cond_b6
    if-eqz v2, :cond_192

    .line 2153
    const v8, 0x7f0c001f

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2154
    const v8, 0x7f0c0018

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2156
    const v8, 0x7f0c0013

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2157
    const v8, 0x7f0c0015

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2158
    const v8, 0x7f0c0016

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2159
    const v8, 0x7f0c0022

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2161
    iget-object v8, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsTitle:Ljava/lang/String;

    if-eqz v8, :cond_f1

    .line 2162
    const v8, 0x7f0c001d

    iget-object v9, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsTitle:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2165
    :cond_f1
    iget-object v8, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageData:[B

    if-eqz v8, :cond_214

    .line 2169
    :try_start_f5
    iget-object v8, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageData:[B

    const/4 v9, 0x0

    iget-object v10, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageData:[B

    array-length v10, v10

    invoke-static {v8, v9, v10}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2170
    .local v0, NewsImage:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1d6

    .line 2171
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-le v8, v9, :cond_1a8

    .line 2173
    const v8, 0x7f0c001a

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2174
    const v8, 0x7f0c0019

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2175
    const v8, 0x7f0c0019

    invoke-virtual {v7, v8, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 2183
    :goto_120
    const v8, 0x7f0c001b

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_128
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f5 .. :try_end_128} :catch_1bf
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_128} :catch_1fd

    .line 2211
    .end local v0           #NewsImage:Landroid/graphics/Bitmap;
    :goto_128
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 2212
    .local v1, buf:Ljava/lang/StringBuffer;
    sget-object v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    iget-object v8, v8, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsTime:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/sec/android/widgetapp/apnews/engine/Util;->formatTimeStampStringDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2213
    const-string v8, "  "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2214
    sget-object v8, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    iget-object v8, v8, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsTime:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/sec/android/widgetapp/apnews/engine/Util;->formatTimeStampStringTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2216
    if-eqz v1, :cond_16a

    .line 2217
    const v8, 0x7f0c0025

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2221
    :cond_16a
    iget-object v8, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsPublishTime:Ljava/lang/Long;

    if-eqz v8, :cond_17e

    .line 2222
    const v8, 0x7f0c001e

    iget-object v9, v2, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsPublishTime:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {p1, v9, v10}, Lcom/sec/android/widgetapp/apnews/engine/Util;->formatTimeStampStringTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2224
    :cond_17e
    const v8, 0x7f0c0011

    invoke-direct {p0, p1, v2}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->getIntentForAPNews(Landroid/content/Context;Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2225
    const v8, 0x7f0c0012

    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->getBroadcastIntentForReload(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2248
    .end local v1           #buf:Ljava/lang/StringBuffer;
    .end local v2           #dataFirst:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    .end local v4           #infoView:Landroid/widget/RemoteViews;
    .end local v5           #listsize:I
    .end local v6           #subDataView:Landroid/widget/RemoteViews;
    .end local v7           #view:Landroid/widget/RemoteViews;
    :cond_192
    :goto_192
    return-object v7

    .line 2134
    .restart local v4       #infoView:Landroid/widget/RemoteViews;
    .restart local v5       #listsize:I
    .restart local v6       #subDataView:Landroid/widget/RemoteViews;
    .restart local v7       #view:Landroid/widget/RemoteViews;
    :cond_193
    const-string v8, "WidgetNews"

    const-string v9, "setData -> mDataList == null"

    invoke-static {v8, v9}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    if-eqz v5, :cond_95

    .line 2138
    const-string v8, "WidgetNews"

    const-string v9, "setData B -> call getCpData()"

    invoke-static {v8, v9}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->getCpData(Landroid/content/Context;)V

    goto/16 :goto_95

    .line 2179
    .restart local v0       #NewsImage:Landroid/graphics/Bitmap;
    .restart local v2       #dataFirst:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    :cond_1a8
    const v8, 0x7f0c0019

    const/16 v9, 0x8

    :try_start_1ad
    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2180
    const v8, 0x7f0c001a

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2181
    const v8, 0x7f0c001a

    invoke-virtual {v7, v8, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    :try_end_1bd
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1ad .. :try_end_1bd} :catch_1bf
    .catch Ljava/lang/Exception; {:try_start_1ad .. :try_end_1bd} :catch_1fd

    goto/16 :goto_120

    .line 2191
    .end local v0           #NewsImage:Landroid/graphics/Bitmap;
    :catch_1bf
    move-exception v3

    .line 2192
    .local v3, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v3}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 2193
    const/4 v0, 0x0

    .line 2194
    .restart local v0       #NewsImage:Landroid/graphics/Bitmap;
    const v8, 0x7f0c001a

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2195
    const v8, 0x7f0c0019

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_128

    .line 2185
    .end local v3           #e:Ljava/lang/OutOfMemoryError;
    :cond_1d6
    const v8, 0x7f0c0012

    const/4 v9, 0x0

    :try_start_1da
    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2186
    const v8, 0x7f0c0023

    const/4 v9, 0x4

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2187
    const v8, 0x7f0c001a

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2188
    const v8, 0x7f0c0019

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2189
    const v8, 0x7f0c001b

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V
    :try_end_1fb
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1da .. :try_end_1fb} :catch_1bf
    .catch Ljava/lang/Exception; {:try_start_1da .. :try_end_1fb} :catch_1fd

    goto/16 :goto_128

    .line 2196
    .end local v0           #NewsImage:Landroid/graphics/Bitmap;
    :catch_1fd
    move-exception v3

    .line 2197
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 2198
    const/4 v0, 0x0

    .line 2199
    .restart local v0       #NewsImage:Landroid/graphics/Bitmap;
    const v8, 0x7f0c001a

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2200
    const v8, 0x7f0c0019

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_128

    .line 2205
    .end local v0           #NewsImage:Landroid/graphics/Bitmap;
    .end local v3           #e:Ljava/lang/Exception;
    :cond_214
    const v8, 0x7f0c001a

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2206
    const v8, 0x7f0c0019

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2207
    const v8, 0x7f0c001b

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_128

    .line 2229
    .end local v2           #dataFirst:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    :cond_22d
    const v8, 0x7f0c0011

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2230
    const v8, 0x7f0c0013

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2231
    const v8, 0x7f0c0015

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2233
    const v8, 0x7f0c0017

    const v9, 0x7f020058

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 2235
    const v8, 0x7f0c000f

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2236
    const v8, 0x7f0c0016

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2238
    const v8, 0x7f0c0022

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2239
    const v8, 0x7f0c001f

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2240
    const v8, 0x7f0c0018

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2243
    const v8, 0x7f0c0016

    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->getBroadcastIntentForReload(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto/16 :goto_192

    .line 2248
    .end local v4           #infoView:Landroid/widget/RemoteViews;
    .end local v5           #listsize:I
    .end local v6           #subDataView:Landroid/widget/RemoteViews;
    .end local v7           #view:Landroid/widget/RemoteViews;
    :cond_27f
    const/4 v7, 0x0

    goto/16 :goto_192
.end method

.method private setNetworkErr(Landroid/content/Context;)V
    .registers 10
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2724
    if-eqz p1, :cond_6b

    .line 2725
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->stopScroll(Landroid/content/Context;)V

    .line 2727
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 2729
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    .line 2732
    if-eqz v2, :cond_6b

    .line 2734
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f030013

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2736
    if-eqz v3, :cond_6b

    .line 2737
    const v4, 0x7f0c002f

    const v5, 0x7f02005b

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 2739
    const v4, 0x7f0c002a

    invoke-virtual {v3, v4, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2741
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 2742
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 2744
    const v5, 0x7f0c002b

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2753
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews$3;

    invoke-direct {v5, p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews$3;-><init>(Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;Landroid/content/Context;)V

    const-wide/16 v6, 0xbb8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2766
    :goto_60
    array-length v4, v2

    if-ge v0, v4, :cond_6b

    .line 2767
    aget v4, v2, v0

    invoke-virtual {v1, v4, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 2766
    add-int/lit8 v0, v0, 0x1

    goto :goto_60

    .line 2772
    :cond_6b
    return-void
.end method

.method private setNotUesNetwork(Landroid/content/Context;)V
    .registers 10
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2677
    if-eqz p1, :cond_5e

    .line 2678
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->stopScroll(Landroid/content/Context;)V

    .line 2680
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 2682
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    .line 2685
    if-eqz v2, :cond_5e

    .line 2687
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f030013

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 2689
    if-eqz v3, :cond_5e

    .line 2690
    const v4, 0x7f0c002f

    const v5, 0x7f02005b

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 2692
    const v4, 0x7f0c002a

    invoke-virtual {v3, v4, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2694
    const v4, 0x7f0c002b

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f0a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2703
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews$2;

    invoke-direct {v5, p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews$2;-><init>(Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;Landroid/content/Context;)V

    const-wide/16 v6, 0xbb8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2715
    :goto_53
    array-length v4, v2

    if-ge v0, v4, :cond_5e

    .line 2716
    aget v4, v2, v0

    invoke-virtual {v1, v4, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 2715
    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    .line 2721
    :cond_5e
    return-void
.end method

.method private setProblemLoadingWidget(Landroid/content/Context;)V
    .registers 7
    .parameter

    .prologue
    .line 1041
    if-eqz p1, :cond_32

    .line 1042
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->stopScroll(Landroid/content/Context;)V

    .line 1044
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 1045
    if-eqz v1, :cond_32

    .line 1046
    new-instance v0, Landroid/content/ComponentName;

    const-class v2, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;

    invoke-direct {v0, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v2

    .line 1048
    if-eqz v2, :cond_32

    .line 1050
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const v4, 0x7f030014

    invoke-direct {v3, v0, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1052
    if-eqz v3, :cond_32

    .line 1053
    const/4 v0, 0x0

    :goto_27
    array-length v4, v2

    if-ge v0, v4, :cond_32

    .line 1054
    aget v4, v2, v0

    invoke-virtual {v1, v4, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 1053
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 1060
    :cond_32
    return-void
.end method

.method private setWidgetReceiver(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 90
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    new-instance v1, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews$WidgetReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews$WidgetReceiver;-><init>(Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews$1;)V

    sput-object v1, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->isLauncherResume:Z

    .line 102
    return-void
.end method

.method private startAutoRefresh(Landroid/content/Context;J)V
    .registers 7
    .parameter "context"
    .parameter "delay"

    .prologue
    const/4 v2, 0x0

    .line 2601
    if-eqz p1, :cond_1b

    .line 2602
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2603
    .local v0, cal:Ljava/util/Calendar;
    if-eqz v0, :cond_1b

    .line 2605
    sget-object v1, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->autoRefreshHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1c

    .line 2606
    sget-object v1, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->autoRefreshHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2617
    :goto_12
    sget-object v1, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->autoRefreshHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1b

    .line 2618
    sget-object v1, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->autoRefreshHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2631
    .end local v0           #cal:Ljava/util/Calendar;
    :cond_1b
    return-void

    .line 2609
    .restart local v0       #cal:Ljava/util/Calendar;
    :cond_1c
    new-instance v1, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews$1;-><init>(Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;Landroid/content/Context;)V

    sput-object v1, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->autoRefreshHandler:Landroid/os/Handler;

    goto :goto_12
.end method

.method private startScroll(Landroid/content/Context;)V
    .registers 11
    .parameter

    .prologue
    const-wide/16 v7, 0x2710

    const-wide/16 v4, 0x1388

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 2521
    if-eqz p1, :cond_2c

    .line 2522
    new-instance v0, Landroid/content/Intent;

    const-string v2, "APNewsWidget.action.widget.news.scroll"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2523
    invoke-static {p1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 2525
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 2526
    if-eqz v2, :cond_2c

    .line 2528
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2529
    if-eqz v0, :cond_2c

    .line 2530
    sput-boolean v1, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->isScroll:Z

    .line 2532
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->checkAutoScroll(Landroid/content/Context;)I

    move-result v3

    sparse-switch v3, :sswitch_data_40

    .line 2547
    :cond_2c
    :goto_2c
    return-void

    .line 2535
    :sswitch_2d
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_2c

    .line 2539
    :sswitch_36
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    add-long/2addr v2, v7

    move-wide v4, v7

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_2c

    .line 2532
    :sswitch_data_40
    .sparse-switch
        0x5 -> :sswitch_2d
        0xa -> :sswitch_36
    .end sparse-switch
.end method

.method private stopAutoRefresh(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 2634
    if-eqz p1, :cond_c

    .line 2636
    sget-object v0, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->autoRefreshHandler:Landroid/os/Handler;

    if-eqz v0, :cond_c

    .line 2637
    sget-object v0, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->autoRefreshHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2646
    :cond_c
    return-void
.end method

.method private stopScroll(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2567
    if-eqz p1, :cond_1d

    .line 2568
    new-instance v0, Landroid/content/Intent;

    const-string v1, "APNewsWidget.action.widget.news.scroll"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2569
    invoke-static {p1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2572
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2573
    if-eqz v0, :cond_1d

    .line 2574
    sput-boolean v2, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->isScroll:Z

    .line 2575
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2578
    :cond_1d
    return-void
.end method

.method private update_layout(Landroid/widget/RemoteViews;I)V
    .registers 8
    .parameter "views"
    .parameter "type"

    .prologue
    .line 194
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->context:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->getPrefIDs(Landroid/content/Context;I)[I

    move-result-object v0

    .line 195
    .local v0, ids:[I
    const-string v2, "WidgetNews"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update_layout "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 198
    .local v1, manager:Landroid/appwidget/AppWidgetManager;
    invoke-virtual {v1, v0, p1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget([ILandroid/widget/RemoteViews;)V

    .line 199
    return-void
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .registers 7
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->context:Landroid/content/Context;

    .line 107
    move-object v0, p2

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_5
    if-ge v1, v3, :cond_f

    aget v2, v0, v1

    .line 108
    .local v2, id:I
    invoke-static {p1, v2}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->removeWidgetIds(Landroid/content/Context;I)V

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 110
    .end local v2           #id:I
    :cond_f
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 111
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 114
    new-instance v1, Landroid/content/Intent;

    const-string v2, "apnews.widget.action.stopservice"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 115
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->context:Landroid/content/Context;

    .line 117
    sget-object v1, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1d

    .line 118
    sget-object v1, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 119
    sget-object v1, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    .line 120
    sput-object v3, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    .line 123
    :cond_1d
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->stopScroll(Landroid/content/Context;)V

    .line 124
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->stopAutoRefresh(Landroid/content/Context;)V

    .line 128
    :try_start_23
    sget-object v1, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_33

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 130
    const/4 v1, 0x0

    sput-object v1, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_33} :catch_3a

    .line 138
    :cond_33
    :goto_33
    invoke-static {p1}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->removeAllWidgetIds(Landroid/content/Context;)V

    .line 140
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 141
    return-void

    .line 133
    :catch_3a
    move-exception v0

    .line 135
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "WidgetNews"

    const-string v2, "News : Broadcast receiver is already unregistered."

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33
.end method

.method public onEnabled(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 71
    new-instance v0, Landroid/content/Intent;

    const-string v1, "apnews.widget.action.startservice"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 72
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->context:Landroid/content/Context;

    .line 74
    const-string v0, "WidgetNews"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnabled context => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {p1}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->setContext(Landroid/content/Context;)V

    .line 79
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setWidgetReceiver(Landroid/content/Context;)V

    .line 81
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->getCpData(Landroid/content/Context;)V

    .line 83
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 84
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const v8, 0x7f0c0023

    const v7, 0x7f0c0012

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 202
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 204
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_23

    .line 207
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 208
    if-eqz v0, :cond_22

    array-length v0, v0

    if-gtz v0, :cond_23

    .line 1038
    :cond_22
    :goto_22
    return-void

    .line 215
    :cond_23
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->context:Landroid/content/Context;

    .line 217
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_22

    .line 219
    const-string v1, "WidgetNews"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "widget onReceive ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const-string v1, "com.sec.android.widgetapp.APPWIDGET_RESIZE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 221
    const-string v0, "widgetId"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 223
    if-gez v0, :cond_6d

    .line 225
    const-string v1, "WidgetNews"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid widgetId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 229
    :cond_6d
    invoke-direct {p0, p2}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->getResizeType(Landroid/content/Intent;)I

    move-result v1

    .line 230
    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->getWidgetType(Landroid/content/Context;I)I

    move-result v2

    .line 231
    if-eq v2, v1, :cond_22

    if-lez v1, :cond_22

    .line 233
    invoke-static {p1, v0, v1}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->setWidgetType(Landroid/content/Context;II)V

    .line 235
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->getCpData(Landroid/content/Context;)V

    .line 237
    const/4 v0, 0x0

    .line 239
    sparse-switch v1, :sswitch_data_870

    .line 270
    :goto_83
    if-eqz v0, :cond_8e

    .line 271
    invoke-virtual {v0, v7, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 272
    invoke-virtual {v0, v8, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 274
    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 276
    :cond_8e
    const-string v0, "Updated.result"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_bd

    .line 277
    invoke-direct {p0, p1, v4}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->checkPreferences(Landroid/content/Context;Z)V

    goto :goto_22

    .line 242
    :sswitch_9a
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_2x2(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_83

    .line 246
    :sswitch_9f
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_3x2(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_83

    .line 250
    :sswitch_a4
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_4x2(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_83

    .line 254
    :sswitch_a9
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_4x3(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_83

    .line 258
    :sswitch_ae
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_4x4(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_83

    .line 262
    :sswitch_b3
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_5x2(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_83

    .line 266
    :sswitch_b8
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_5x3(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_83

    .line 280
    :cond_bd
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->checkPreferences(Landroid/content/Context;Z)V

    goto/16 :goto_22

    .line 367
    :cond_c2
    const-string v1, "Updated.result"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e2

    .line 368
    const-string v0, "APNews.updated.finish"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 370
    const/4 v1, -0x2

    if-ne v0, v1, :cond_db

    .line 372
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setDBErr(Landroid/content/Context;)V

    .line 380
    :cond_d6
    :goto_d6
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->getCpData(Landroid/content/Context;)V

    goto/16 :goto_22

    .line 374
    :cond_db
    const/4 v1, -0x1

    if-ne v0, v1, :cond_d6

    .line 376
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setNetworkErr(Landroid/content/Context;)V

    goto :goto_d6

    .line 382
    :cond_e2
    const-string v1, "News.updated"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_215

    .line 383
    const-string v0, "DB_START"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 384
    if-ne v0, v5, :cond_122

    .line 387
    :try_start_f2
    sget-object v0, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_102

    .line 388
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 389
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 393
    :cond_102
    new-instance v0, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews$WidgetReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews$WidgetReceiver;-><init>(Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews$1;)V

    sput-object v0, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 394
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 395
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 396
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_122
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_122} :catch_1ef

    .line 407
    :cond_122
    :goto_122
    const-string v0, "Complete_News_update"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12d

    .line 408
    invoke-static {p1}, Lcom/sec/android/widgetapp/apnews/engine/Util;->setNextAutoRefreshTime(Landroid/content/Context;)V

    .line 411
    :cond_12d
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->requestFirstTabImage(Landroid/content/Context;)V

    .line 412
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->getCpData(Landroid/content/Context;)V

    .line 414
    const-string v0, "Updated.result"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_210

    .line 415
    invoke-direct {p0, p1, v4}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->checkPreferences(Landroid/content/Context;Z)V

    .line 421
    :goto_13e
    const/16 v0, 0xca

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_157

    .line 423
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_2x2(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 424
    if-eqz v0, :cond_157

    .line 425
    invoke-virtual {v0, v7, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 426
    invoke-virtual {v0, v8, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 427
    const/16 v1, 0xca

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 431
    :cond_157
    const/16 v0, 0x12e

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_170

    .line 433
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_3x2(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 434
    if-eqz v0, :cond_170

    .line 435
    invoke-virtual {v0, v7, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 436
    invoke-virtual {v0, v8, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 437
    const/16 v1, 0x12e

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 441
    :cond_170
    const/16 v0, 0x192

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_189

    .line 443
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_4x2(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 444
    if-eqz v0, :cond_189

    .line 445
    invoke-virtual {v0, v7, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 446
    invoke-virtual {v0, v8, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 447
    const/16 v1, 0x192

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 451
    :cond_189
    const/16 v0, 0x193

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1a2

    .line 453
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_4x3(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 454
    if-eqz v0, :cond_1a2

    .line 455
    invoke-virtual {v0, v7, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 456
    invoke-virtual {v0, v8, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 457
    const/16 v1, 0x193

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 461
    :cond_1a2
    const/16 v0, 0x194

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1bb

    .line 463
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_4x4(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 464
    if-eqz v0, :cond_1bb

    .line 465
    invoke-virtual {v0, v7, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 466
    invoke-virtual {v0, v8, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 467
    const/16 v1, 0x194

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 471
    :cond_1bb
    const/16 v0, 0x1f6

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1d4

    .line 473
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_5x2(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 474
    if-eqz v0, :cond_1d4

    .line 475
    invoke-virtual {v0, v7, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 476
    invoke-virtual {v0, v8, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 477
    const/16 v1, 0x1f6

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 481
    :cond_1d4
    const/16 v0, 0x1f7

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 483
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_5x3(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 484
    if-eqz v0, :cond_22

    .line 485
    invoke-virtual {v0, v7, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 486
    invoke-virtual {v0, v8, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 487
    const/16 v1, 0x1f7

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    goto/16 :goto_22

    .line 399
    :catch_1ef
    move-exception v0

    .line 400
    if-eqz v0, :cond_122

    .line 401
    const-string v1, "WidgetNews"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "news exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_122

    .line 417
    :cond_210
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->checkPreferences(Landroid/content/Context;Z)V

    goto/16 :goto_13e

    .line 492
    :cond_215
    const-string v1, "APNewsWidget.action.widget.news.scroll"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c6

    .line 493
    sget-boolean v0, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->isScroll:Z

    if-eqz v0, :cond_22

    .line 494
    sget-object v0, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    if-eqz v0, :cond_22

    sget-object v0, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_22

    .line 497
    sget v0, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mLastIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mLastIndex:I

    .line 498
    sget v0, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mLastIndex:I

    sget-object v1, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_23f

    .line 499
    sput v4, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mLastIndex:I

    .line 503
    :cond_23f
    const/16 v0, 0xca

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_252

    .line 505
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_2x2(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 506
    if-eqz v0, :cond_252

    .line 507
    const/16 v1, 0xca

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 511
    :cond_252
    const/16 v0, 0x12e

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_265

    .line 513
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_3x2(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 514
    if-eqz v0, :cond_265

    .line 515
    const/16 v1, 0x12e

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 519
    :cond_265
    const/16 v0, 0x192

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_278

    .line 521
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_4x2(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 522
    if-eqz v0, :cond_278

    .line 523
    const/16 v1, 0x192

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 527
    :cond_278
    const/16 v0, 0x193

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_28b

    .line 529
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_4x3(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 530
    if-eqz v0, :cond_28b

    .line 531
    const/16 v1, 0x193

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 535
    :cond_28b
    const/16 v0, 0x194

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_29e

    .line 537
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_4x4(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 538
    if-eqz v0, :cond_29e

    .line 539
    const/16 v1, 0x194

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 543
    :cond_29e
    const/16 v0, 0x1f6

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2b1

    .line 545
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_5x2(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 546
    if-eqz v0, :cond_2b1

    .line 547
    const/16 v1, 0x1f6

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 551
    :cond_2b1
    const/16 v0, 0x1f7

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 553
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_5x3(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 554
    if-eqz v0, :cond_22

    .line 555
    const/16 v1, 0x1f7

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    goto/16 :goto_22

    .line 563
    :cond_2c6
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e6

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e6

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e6

    const-string v1, "clock.date_format_changed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36d

    .line 572
    :cond_2e6
    const/16 v0, 0xca

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2f9

    .line 574
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_2x2(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 575
    if-eqz v0, :cond_2f9

    .line 576
    const/16 v1, 0xca

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 580
    :cond_2f9
    const/16 v0, 0x12e

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_30c

    .line 582
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_3x2(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 583
    if-eqz v0, :cond_30c

    .line 584
    const/16 v1, 0x12e

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 588
    :cond_30c
    const/16 v0, 0x192

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_31f

    .line 590
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_4x2(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 591
    if-eqz v0, :cond_31f

    .line 592
    const/16 v1, 0x192

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 596
    :cond_31f
    const/16 v0, 0x193

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_332

    .line 598
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_4x3(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 599
    if-eqz v0, :cond_332

    .line 600
    const/16 v1, 0x193

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 604
    :cond_332
    const/16 v0, 0x194

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_345

    .line 606
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_4x4(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 607
    if-eqz v0, :cond_345

    .line 608
    const/16 v1, 0x194

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 612
    :cond_345
    const/16 v0, 0x1f6

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_358

    .line 614
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_5x2(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 615
    if-eqz v0, :cond_358

    .line 616
    const/16 v1, 0x1f6

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 620
    :cond_358
    const/16 v0, 0x1f7

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 622
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_5x3(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 623
    if-eqz v0, :cond_22

    .line 624
    const/16 v1, 0x1f7

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    goto/16 :goto_22

    .line 630
    :cond_36d
    const-string v1, "APNewsWidget.action.widget.news.refresh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37a

    .line 631
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mainRefresh(Landroid/content/Context;)V

    goto/16 :goto_22

    .line 633
    :cond_37a
    const-string v1, "APNewsWidget.action.widget.news.autorefresh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_394

    .line 635
    invoke-static {p1}, Lcom/sec/android/widgetapp/apnews/engine/Util;->checkNetworkConnection(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_390

    .line 636
    sput-boolean v4, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->AUTOREFRESH_AFTER_CONNECTED:Z

    .line 637
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->doAutoRefresh(Landroid/content/Context;)V

    goto/16 :goto_22

    .line 639
    :cond_390
    sput-boolean v5, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->AUTOREFRESH_AFTER_CONNECTED:Z

    goto/16 :goto_22

    .line 644
    :cond_394
    const-string v1, "APNewsWidget.action.widget.news.err.retry"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e5

    .line 645
    invoke-static {p1}, Lcom/sec/android/widgetapp/apnews/engine/Util;->checkNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 648
    const/16 v0, 0xca

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3f4

    .line 650
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_2x2(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 651
    if-eqz v0, :cond_3f4

    .line 652
    sget-object v1, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_3bc

    sget-object v1, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3e9

    .line 653
    :cond_3bc
    const v1, 0x7f0c000f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 654
    const v1, 0x7f0c0013

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 655
    const v1, 0x7f0c000f

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 656
    const v1, 0x7f0c0016

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 657
    const v1, 0x7f0c0011

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 659
    :cond_3e9
    invoke-virtual {v0, v7, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 660
    invoke-virtual {v0, v8, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 661
    const/16 v1, 0xca

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 665
    :cond_3f4
    const/16 v0, 0x12e

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_446

    .line 667
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_3x2(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 668
    if-eqz v0, :cond_446

    .line 669
    sget-object v1, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_40e

    sget-object v1, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_43b

    .line 670
    :cond_40e
    const v1, 0x7f0c000f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 671
    const v1, 0x7f0c0013

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 672
    const v1, 0x7f0c000f

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 673
    const v1, 0x7f0c0016

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 674
    const v1, 0x7f0c0011

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 676
    :cond_43b
    invoke-virtual {v0, v7, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 677
    invoke-virtual {v0, v8, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 678
    const/16 v1, 0x12e

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 682
    :cond_446
    const/16 v0, 0x192

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_498

    .line 684
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_4x2(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 685
    if-eqz v0, :cond_498

    .line 686
    sget-object v1, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_460

    sget-object v1, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_48d

    .line 687
    :cond_460
    const v1, 0x7f0c000f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 688
    const v1, 0x7f0c0013

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 689
    const v1, 0x7f0c000f

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 690
    const v1, 0x7f0c0016

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 691
    const v1, 0x7f0c0011

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 693
    :cond_48d
    invoke-virtual {v0, v7, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 694
    invoke-virtual {v0, v8, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 695
    const/16 v1, 0x192

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 699
    :cond_498
    const/16 v0, 0x193

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_4ea

    .line 701
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_4x3(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 702
    if-eqz v0, :cond_4ea

    .line 703
    sget-object v1, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_4b2

    sget-object v1, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_4df

    .line 704
    :cond_4b2
    const v1, 0x7f0c000f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 705
    const v1, 0x7f0c0013

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 706
    const v1, 0x7f0c000f

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 707
    const v1, 0x7f0c0016

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 708
    const v1, 0x7f0c0011

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 710
    :cond_4df
    invoke-virtual {v0, v7, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 711
    invoke-virtual {v0, v8, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 712
    const/16 v1, 0x193

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 716
    :cond_4ea
    const/16 v0, 0x194

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_53c

    .line 718
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_4x4(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 719
    if-eqz v0, :cond_53c

    .line 720
    sget-object v1, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_504

    sget-object v1, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_531

    .line 721
    :cond_504
    const v1, 0x7f0c000f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 722
    const v1, 0x7f0c0013

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 723
    const v1, 0x7f0c000f

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 724
    const v1, 0x7f0c0016

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 725
    const v1, 0x7f0c0011

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 727
    :cond_531
    invoke-virtual {v0, v7, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 728
    invoke-virtual {v0, v8, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 729
    const/16 v1, 0x194

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 733
    :cond_53c
    const/16 v0, 0x1f6

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_58e

    .line 735
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_5x2(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 736
    if-eqz v0, :cond_58e

    .line 737
    sget-object v1, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_556

    sget-object v1, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_583

    .line 738
    :cond_556
    const v1, 0x7f0c000f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 739
    const v1, 0x7f0c0013

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 740
    const v1, 0x7f0c000f

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 741
    const v1, 0x7f0c0016

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 742
    const v1, 0x7f0c0011

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 744
    :cond_583
    invoke-virtual {v0, v7, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 745
    invoke-virtual {v0, v8, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 746
    const/16 v1, 0x1f6

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 750
    :cond_58e
    const/16 v0, 0x1f7

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_5e0

    .line 752
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_5x3(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 753
    if-eqz v0, :cond_5e0

    .line 754
    sget-object v1, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_5a8

    sget-object v1, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_5d5

    .line 755
    :cond_5a8
    const v1, 0x7f0c000f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 756
    const v1, 0x7f0c0013

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 757
    const v1, 0x7f0c000f

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 758
    const v1, 0x7f0c0016

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 759
    const v1, 0x7f0c0011

    invoke-virtual {v0, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 761
    :cond_5d5
    invoke-virtual {v0, v7, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 762
    invoke-virtual {v0, v8, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 763
    const/16 v1, 0x1f7

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 767
    :cond_5e0
    invoke-direct {p0, p1, v4}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->refreshDataToService(Landroid/content/Context;Z)V

    goto/16 :goto_22

    .line 770
    :cond_5e5
    const-string v1, "APNewsWidget.action.widget.news.err.cancel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_677

    .line 773
    const/16 v0, 0xca

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_600

    .line 775
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_2x2(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 776
    if-eqz v0, :cond_600

    .line 777
    const/16 v1, 0xca

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 781
    :cond_600
    const/16 v0, 0x12e

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_613

    .line 783
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_3x2(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 784
    if-eqz v0, :cond_613

    .line 785
    const/16 v1, 0x12e

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 789
    :cond_613
    const/16 v0, 0x192

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_626

    .line 791
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_4x2(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 792
    if-eqz v0, :cond_626

    .line 793
    const/16 v1, 0x192

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 797
    :cond_626
    const/16 v0, 0x193

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_639

    .line 799
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_4x3(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 800
    if-eqz v0, :cond_639

    .line 801
    const/16 v1, 0x193

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 805
    :cond_639
    const/16 v0, 0x194

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_64c

    .line 807
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_4x4(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 808
    if-eqz v0, :cond_64c

    .line 809
    const/16 v1, 0x194

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 813
    :cond_64c
    const/16 v0, 0x1f6

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_65f

    .line 815
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_5x2(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 816
    if-eqz v0, :cond_65f

    .line 817
    const/16 v1, 0x1f6

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 821
    :cond_65f
    const/16 v0, 0x1f7

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_672

    .line 823
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_5x3(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 824
    if-eqz v0, :cond_672

    .line 825
    const/16 v1, 0x1f7

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 828
    :cond_672
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->checkPreferences(Landroid/content/Context;Z)V

    goto/16 :goto_22

    .line 831
    :cond_677
    const-string v1, "APNewsWidget.action.widget.news.progress"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73f

    .line 832
    sget-object v0, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    if-eqz v0, :cond_22

    sget-object v0, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_22

    .line 833
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->stopScroll(Landroid/content/Context;)V

    .line 836
    const/16 v0, 0xca

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_6a7

    .line 838
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_2x2(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 839
    if-eqz v0, :cond_6a7

    .line 840
    invoke-virtual {v0, v7, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 841
    invoke-virtual {v0, v8, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 842
    const/16 v1, 0xca

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 846
    :cond_6a7
    const/16 v0, 0x12e

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_6c0

    .line 848
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_3x2(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 849
    if-eqz v0, :cond_6c0

    .line 850
    invoke-virtual {v0, v7, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 851
    invoke-virtual {v0, v8, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 852
    const/16 v1, 0x12e

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 856
    :cond_6c0
    const/16 v0, 0x192

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_6d9

    .line 858
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_4x2(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 859
    if-eqz v0, :cond_6d9

    .line 860
    invoke-virtual {v0, v7, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 861
    invoke-virtual {v0, v8, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 862
    const/16 v1, 0x192

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 866
    :cond_6d9
    const/16 v0, 0x193

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_6f2

    .line 868
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_4x3(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 869
    if-eqz v0, :cond_6f2

    .line 870
    invoke-virtual {v0, v7, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 871
    invoke-virtual {v0, v8, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 872
    const/16 v1, 0x193

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 876
    :cond_6f2
    const/16 v0, 0x194

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_70b

    .line 878
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_4x4(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 879
    if-eqz v0, :cond_70b

    .line 880
    invoke-virtual {v0, v7, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 881
    invoke-virtual {v0, v8, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 882
    const/16 v1, 0x194

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 886
    :cond_70b
    const/16 v0, 0x1f6

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_724

    .line 888
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_5x2(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 889
    if-eqz v0, :cond_724

    .line 890
    invoke-virtual {v0, v7, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 891
    invoke-virtual {v0, v8, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 892
    const/16 v1, 0x1f6

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 896
    :cond_724
    const/16 v0, 0x1f7

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 898
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_5x3(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 899
    if-eqz v0, :cond_22

    .line 900
    invoke-virtual {v0, v7, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 901
    invoke-virtual {v0, v8, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 902
    const/16 v1, 0x1f7

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    goto/16 :goto_22

    .line 914
    :cond_73f
    const-string v1, "sec.android.intent.action.HOME_RESUME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_787

    .line 915
    const-string v0, "APNews_WidgetIDs"

    invoke-virtual {p1, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 917
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_75a

    .line 918
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setProblemLoadingWidget(Landroid/content/Context;)V

    .line 923
    :cond_75a
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->checkAutoRefreshSkip(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_784

    .line 924
    invoke-static {p1}, Lcom/sec/android/widgetapp/apnews/engine/Util;->isWifiConnecting(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_76f

    .line 925
    sput-boolean v5, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->AUTOREFRESH_AFTER_CONNECTED:Z

    .line 942
    :goto_768
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->checkPreferences(Landroid/content/Context;Z)V

    .line 944
    sput-boolean v5, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->isLauncherResume:Z

    goto/16 :goto_22

    .line 927
    :cond_76f
    invoke-static {p1}, Lcom/sec/android/widgetapp/apnews/engine/Util;->checkNetworkConnection(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_77d

    .line 928
    sput-boolean v4, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->AUTOREFRESH_AFTER_CONNECTED:Z

    .line 929
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->doAutoRefresh(Landroid/content/Context;)V

    goto/16 :goto_22

    .line 932
    :cond_77d
    sput-boolean v4, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->AUTOREFRESH_AFTER_CONNECTED:Z

    .line 933
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setNotUesNetwork(Landroid/content/Context;)V

    goto/16 :goto_22

    .line 938
    :cond_784
    sput-boolean v4, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->AUTOREFRESH_AFTER_CONNECTED:Z

    goto :goto_768

    .line 946
    :cond_787
    const-string v1, "sec.android.intent.action.HOME_PAUSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_799

    .line 947
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->stopAutoRefresh(Landroid/content/Context;)V

    .line 948
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->stopScroll(Landroid/content/Context;)V

    .line 949
    sput-boolean v4, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->isLauncherResume:Z

    goto/16 :goto_22

    .line 955
    :cond_799
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c4

    .line 957
    invoke-static {p1}, Lcom/sec/android/widgetapp/apnews/engine/Util;->checkNetworkConnection(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_22

    sget-boolean v0, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->isLauncherResume:Z

    if-eqz v0, :cond_22

    .line 958
    sget-boolean v0, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->AUTOREFRESH_AFTER_CONNECTED:Z

    if-eqz v0, :cond_7b7

    .line 959
    sput-boolean v4, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->AUTOREFRESH_AFTER_CONNECTED:Z

    .line 960
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->doAutoRefresh(Landroid/content/Context;)V

    goto/16 :goto_22

    .line 961
    :cond_7b7
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->checkAutoRefreshSkip(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 962
    sput-boolean v4, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->AUTOREFRESH_AFTER_CONNECTED:Z

    .line 963
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->doAutoRefresh(Landroid/content/Context;)V

    goto/16 :goto_22

    .line 970
    :cond_7c4
    const-string v1, "action.widget.news.Updated_image_each"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 971
    const-string v0, "News.Image.updated.index"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 973
    sget v1, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mLastIndex:I

    if-ne v0, v1, :cond_22

    .line 974
    invoke-direct {p0, p1, v0}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->getCpDataImageEach(Landroid/content/Context;I)V

    .line 977
    sget-object v0, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    if-eqz v0, :cond_22

    sget-object v0, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_22

    .line 979
    const/16 v0, 0xca

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_7fc

    .line 981
    invoke-direct {p0, p1, v4}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_2x2(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 982
    if-eqz v0, :cond_7fc

    .line 983
    const/16 v1, 0xca

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 987
    :cond_7fc
    const/16 v0, 0x12e

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_80f

    .line 989
    invoke-direct {p0, p1, v4}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_3x2(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 990
    if-eqz v0, :cond_80f

    .line 991
    const/16 v1, 0x12e

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 995
    :cond_80f
    const/16 v0, 0x192

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_822

    .line 997
    invoke-direct {p0, p1, v4}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_4x2(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 998
    if-eqz v0, :cond_822

    .line 999
    const/16 v1, 0x192

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 1003
    :cond_822
    const/16 v0, 0x193

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_835

    .line 1005
    invoke-direct {p0, p1, v4}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_4x3(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 1006
    if-eqz v0, :cond_835

    .line 1007
    const/16 v1, 0x193

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 1011
    :cond_835
    const/16 v0, 0x194

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_848

    .line 1013
    invoke-direct {p0, p1, v4}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_4x4(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 1014
    if-eqz v0, :cond_848

    .line 1015
    const/16 v1, 0x194

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 1019
    :cond_848
    const/16 v0, 0x1f6

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_85b

    .line 1021
    invoke-direct {p0, p1, v4}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_5x2(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 1022
    if-eqz v0, :cond_85b

    .line 1023
    const/16 v1, 0x1f6

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 1027
    :cond_85b
    const/16 v0, 0x1f7

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1029
    invoke-direct {p0, p1, v4}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_5x3(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 1030
    if-eqz v0, :cond_22

    .line 1031
    const/16 v1, 0x1f7

    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    goto/16 :goto_22

    .line 239
    :sswitch_data_870
    .sparse-switch
        0xca -> :sswitch_9a
        0x12e -> :sswitch_9f
        0x192 -> :sswitch_a4
        0x193 -> :sswitch_a9
        0x194 -> :sswitch_ae
        0x1f6 -> :sswitch_b3
        0x1f7 -> :sswitch_b8
    .end sparse-switch
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x12e

    const/16 v7, 0xca

    const/4 v6, -0x1

    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 1086
    new-instance v0, Landroid/content/Intent;

    const-string v2, "apnews.widget.action.stopservice"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1087
    iput-object p1, p0, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->context:Landroid/content/Context;

    .line 1089
    const-string v0, "WidgetNews"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpdate context => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    const-string v0, "WidgetNews"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpdate  -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;

    invoke-direct {v3, p1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    const-string v0, "WidgetNews"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpdate  -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    array-length v2, p3

    move v0, v1

    :goto_69
    if-ge v0, v2, :cond_7d

    aget v3, p3, v0

    .line 1095
    invoke-static {p1, v3}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->getWidgetType(Landroid/content/Context;I)I

    move-result v4

    if-ne v4, v6, :cond_7a

    .line 1097
    invoke-direct {p0}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->extractDefaultWidgetSize()I

    move-result v4

    invoke-static {p1, v4, v3}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->addWidgetIds(Landroid/content/Context;II)V

    .line 1093
    :cond_7a
    add-int/lit8 v0, v0, 0x1

    goto :goto_69

    .line 1100
    :cond_7d
    sget-object v0, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->mDataList:Ljava/util/ArrayList;

    if-nez v0, :cond_84

    .line 1101
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->getCpData(Landroid/content/Context;)V

    .line 1104
    :cond_84
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->checkAutoRefreshSkip(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_127

    .line 1105
    invoke-static {p1}, Lcom/sec/android/widgetapp/apnews/engine/Util;->checkNetworkConnection(Landroid/content/Context;)I

    move-result v0

    if-eq v0, v6, :cond_a0

    .line 1106
    sput-boolean v1, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->AUTOREFRESH_AFTER_CONNECTED:Z

    .line 1107
    new-instance v0, Landroid/content/Intent;

    const-string v1, "APNewsWidget.action.widget.news.autorefresh"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1108
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1110
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 1180
    :goto_9f
    return-void

    .line 1113
    :cond_a0
    sput-boolean v5, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->AUTOREFRESH_AFTER_CONNECTED:Z

    .line 1121
    :goto_a2
    invoke-static {p1, v7}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 1123
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_2x2(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 1124
    if-eqz v0, :cond_b1

    .line 1125
    invoke-direct {p0, v0, v7}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 1129
    :cond_b1
    invoke-static {p1, v8}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 1131
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_3x2(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 1132
    if-eqz v0, :cond_c0

    .line 1133
    invoke-direct {p0, v0, v8}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 1137
    :cond_c0
    const/16 v0, 0x192

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 1139
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_4x2(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 1140
    if-eqz v0, :cond_d3

    .line 1141
    const/16 v2, 0x192

    invoke-direct {p0, v0, v2}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 1145
    :cond_d3
    const/16 v0, 0x193

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_e6

    .line 1147
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_4x3(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 1148
    if-eqz v0, :cond_e6

    .line 1149
    const/16 v2, 0x193

    invoke-direct {p0, v0, v2}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 1153
    :cond_e6
    const/16 v0, 0x194

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_f9

    .line 1155
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_4x4(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 1156
    if-eqz v0, :cond_f9

    .line 1157
    const/16 v2, 0x194

    invoke-direct {p0, v0, v2}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 1161
    :cond_f9
    const/16 v0, 0x1f6

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_10c

    .line 1163
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_5x2(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 1164
    if-eqz v0, :cond_10c

    .line 1165
    const/16 v2, 0x1f6

    invoke-direct {p0, v0, v2}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 1169
    :cond_10c
    const/16 v0, 0x1f7

    invoke-static {p1, v0}, Lcom/sec/android/widgetapp/apnews/engine/WidgetIdManager;->isActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_11f

    .line 1171
    invoke-direct {p0, p1, v5}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->setData_5x3(Landroid/content/Context;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 1172
    if-eqz v0, :cond_11f

    .line 1173
    const/16 v2, 0x1f7

    invoke-direct {p0, v0, v2}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->update_layout(Landroid/widget/RemoteViews;I)V

    .line 1177
    :cond_11f
    invoke-direct {p0, p1, v1}, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->checkPreferences(Landroid/content/Context;Z)V

    .line 1179
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    goto/16 :goto_9f

    .line 1116
    :cond_127
    sput-boolean v1, Lcom/sec/android/widgetapp/apnews/widget/APNewsWidgetNews;->AUTOREFRESH_AFTER_CONNECTED:Z

    goto/16 :goto_a2
.end method

.method public requestFirstTabImage(Landroid/content/Context;)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 144
    new-instance v1, Lcom/sec/android/widgetapp/apnews/engine/Controller;

    invoke-direct {v1, p1}, Lcom/sec/android/widgetapp/apnews/engine/Controller;-><init>(Landroid/content/Context;)V

    .line 145
    invoke-virtual {v1}, Lcom/sec/android/widgetapp/apnews/engine/Controller;->fetchAPNewsHeadRows()Ljava/util/ArrayList;

    move-result-object v2

    .line 147
    if-eqz v2, :cond_13

    .line 148
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ge v0, v3, :cond_14

    .line 165
    :cond_13
    return-void

    .line 151
    :cond_14
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;->xmlUrl:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sec/android/widgetapp/apnews/engine/Controller;->fetchAPNewsRows(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_13

    .line 154
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2c
    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    .line 155
    iget-object v3, v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageUrl:Ljava/lang/String;

    if-eqz v3, :cond_2c

    iget-object v3, v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageData:[B

    if-nez v3, :cond_2c

    invoke-static {p1}, Lcom/sec/android/widgetapp/apnews/engine/Util;->checkNetwork(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 156
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/sec/android/widgetapp/apnews/engine/DataService;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    const-string v4, "APNEWS_SERVICE"

    const-string v5, "GET_NEWS_IMAGE"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string v4, "News.Image.updated.index"

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsIndex:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string v4, "xmlUrl"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;

    iget-object v0, v0, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsHeadContainer;->xmlUrl:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    invoke-virtual {p1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_2c
.end method
