.class public Lcom/google/android/finsky/analytics/DfeAnalytics;
.super Ljava/lang/Object;
.source "DfeAnalytics.java"

# interfaces
.implements Lcom/google/android/finsky/analytics/Analytics;


# static fields
.field private static final DISPATCH_PERIOD_MS:I

.field private static final MAX_LOGS_BEFORE_FLUSH:I


# instance fields
.field private mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private final mHandler:Landroid/os/Handler;

.field private final mLogFlusher:Ljava/lang/Runnable;

.field private mPendingEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/android/finsky/config/G;->logsDispatchIntervalSeconds:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/google/android/finsky/analytics/DfeAnalytics;->DISPATCH_PERIOD_MS:I

    .line 31
    sget-object v0, Lcom/google/android/finsky/config/G;->maxLogQueueSizeBeforeFlush:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/google/android/finsky/analytics/DfeAnalytics;->MAX_LOGS_BEFORE_FLUSH:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3
    .parameter "handler"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mPendingEvents:Ljava/util/List;

    .line 169
    new-instance v0, Lcom/google/android/finsky/analytics/DfeAnalytics$3;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/analytics/DfeAnalytics$3;-><init>(Lcom/google/android/finsky/analytics/DfeAnalytics;)V

    iput-object v0, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mLogFlusher:Ljava/lang/Runnable;

    .line 43
    iput-object p1, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mHandler:Landroid/os/Handler;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/finsky/api/DfeApi;)V
    .registers 3
    .parameter "handler"
    .parameter "dfeApi"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/finsky/analytics/DfeAnalytics;-><init>(Landroid/os/Handler;)V

    .line 51
    iput-object p2, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/analytics/DfeAnalytics;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/android/finsky/analytics/DfeAnalytics;->flushLogs()V

    return-void
.end method

.method private flushLogs()V
    .registers 8

    .prologue
    .line 132
    iget-object v6, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    if-nez v6, :cond_5

    .line 163
    :cond_4
    :goto_4
    return-void

    .line 136
    :cond_5
    iget-object v6, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mPendingEvents:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 137
    .local v0, currentLogCount:I
    if-eqz v0, :cond_4

    .line 141
    new-instance v4, Lcom/google/android/finsky/remoting/protos/Log$LogRequest;

    invoke-direct {v4}, Lcom/google/android/finsky/remoting/protos/Log$LogRequest;-><init>()V

    .line 143
    .local v4, request:Lcom/google/android/finsky/remoting/protos/Log$LogRequest;
    iget-object v6, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mPendingEvents:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_28

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;

    .line 144
    .local v2, event:Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;
    invoke-virtual {v4, v2}, Lcom/google/android/finsky/remoting/protos/Log$LogRequest;->addClickEvent(Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;)Lcom/google/android/finsky/remoting/protos/Log$LogRequest;

    goto :goto_18

    .line 146
    .end local v2           #event:Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;
    :cond_28
    iget-object v6, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mPendingEvents:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 148
    new-instance v5, Lcom/google/android/finsky/analytics/DfeAnalytics$1;

    invoke-direct {v5, p0, v0}, Lcom/google/android/finsky/analytics/DfeAnalytics$1;-><init>(Lcom/google/android/finsky/analytics/DfeAnalytics;I)V

    .line 156
    .local v5, responseListener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<Lcom/google/android/finsky/remoting/protos/Log$LogResponse;>;"
    new-instance v1, Lcom/google/android/finsky/analytics/DfeAnalytics$2;

    invoke-direct {v1, p0, v0}, Lcom/google/android/finsky/analytics/DfeAnalytics$2;-><init>(Lcom/google/android/finsky/analytics/DfeAnalytics;I)V

    .line 162
    .local v1, errorListener:Lcom/android/volley/Response$ErrorListener;
    iget-object v6, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-virtual {v6, v4, v5, v1}, Lcom/google/android/finsky/api/DfeApi;->log(Lcom/google/android/finsky/remoting/protos/Log$LogRequest;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    goto :goto_4
.end method

.method private static makeClickLogEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;
    .registers 7
    .parameter "referrerUrl"
    .parameter "referrerListCookie"
    .parameter "currentPageUrl"
    .parameter "listCookie"

    .prologue
    .line 88
    new-instance v0, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;

    invoke-direct {v0}, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;-><init>()V

    .line 89
    .local v0, cle:Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->setEventTime(J)Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;

    .line 90
    if-eqz p0, :cond_11

    invoke-virtual {v0, p0}, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->setReferrerUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;

    .line 91
    :cond_11
    if-eqz p1, :cond_16

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->setReferrerListId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;

    .line 92
    :cond_16
    if-eqz p2, :cond_1b

    invoke-virtual {v0, p2}, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->setUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;

    .line 93
    :cond_1b
    if-eqz p3, :cond_20

    invoke-virtual {v0, p3}, Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;->setListId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;

    .line 94
    :cond_20
    return-object v0
.end method

.method private scheduleFlush(Z)V
    .registers 6
    .parameter "forceNow"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mLogFlusher:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 103
    if-nez p1, :cond_13

    iget-object v0, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mPendingEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lcom/google/android/finsky/analytics/DfeAnalytics;->MAX_LOGS_BEFORE_FLUSH:I

    if-lt v0, v1, :cond_1b

    .line 104
    :cond_13
    iget-object v0, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mLogFlusher:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 108
    :goto_1a
    return-void

    .line 106
    :cond_1b
    iget-object v0, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mLogFlusher:Ljava/lang/Runnable;

    sget v2, Lcom/google/android/finsky/analytics/DfeAnalytics;->DISPATCH_PERIOD_MS:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1a
.end method


# virtual methods
.method public logListViewOnPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "referrerUrl"
    .parameter "referrerListCookie"
    .parameter "currentPageUrl"
    .parameter "listCookie"

    .prologue
    const/4 v3, 0x0

    .line 70
    sget-boolean v0, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v0, :cond_18

    .line 71
    const-string v0, "Logging list view: referrerUrl=[%s], referrerCookie=[%s], currentPageUrl=[%s], listCookie=[%s]"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    :cond_18
    iget-object v0, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mPendingEvents:Ljava/util/List;

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/finsky/analytics/DfeAnalytics;->makeClickLogEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-direct {p0, v3}, Lcom/google/android/finsky/analytics/DfeAnalytics;->scheduleFlush(Z)V

    .line 78
    return-void
.end method

.method public logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "referrerUrl"
    .parameter "referrerListCookie"
    .parameter "currentPageUrl"

    .prologue
    const/4 v3, 0x0

    .line 56
    sget-boolean v0, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v0, :cond_15

    .line 57
    const-string v0, "Logging page view: referrerUrl=[%s], referrerCookie=[%s], currentPageUrl=[%s]"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    :cond_15
    iget-object v0, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mPendingEvents:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v1}, Lcom/google/android/finsky/analytics/DfeAnalytics;->makeClickLogEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Log$ClickLogEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-direct {p0, v3}, Lcom/google/android/finsky/analytics/DfeAnalytics;->scheduleFlush(Z)V

    .line 65
    return-void
.end method

.method public logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "tag"
    .parameter "packageName"
    .parameter "error"

    .prologue
    const/4 v3, 0x0

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?doc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p3, :cond_28

    const-string v0, ""

    :goto_1c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v3, v0}, Lcom/google/android/finsky/analytics/DfeAnalytics;->logPageView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void

    .line 82
    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&error="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 118
    .local v0, oldApi:Lcom/google/android/finsky/api/DfeApi;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 119
    if-eqz v0, :cond_14

    .line 123
    iget-object v1, p0, Lcom/google/android/finsky/analytics/DfeAnalytics;->mPendingEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 128
    :goto_13
    return-void

    .line 126
    :cond_14
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/finsky/analytics/DfeAnalytics;->scheduleFlush(Z)V

    goto :goto_13
.end method
