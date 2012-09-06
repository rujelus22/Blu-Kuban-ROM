.class public final Lcom/google/android/apps/plus/analytics/EsAnalytics;
.super Ljava/lang/Object;
.source "EsAnalytics.java"


# direct methods
.method private static createUniqueId(Lcom/google/protobuf/Internal$EnumLite;)Lcom/google/wireless/webapps/Analytics$UniqueId;
    .registers 3
    .parameter "value"

    .prologue
    .line 323
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$UniqueId;->newBuilder()Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;

    move-result-object v0

    .line 324
    .local v0, builder:Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;
    invoke-interface {p0}, Lcom/google/protobuf/Internal$EnumLite;->getNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->setNumber(I)Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;

    .line 325
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;

    .line 326
    invoke-virtual {v0}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->build()Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v1

    return-object v1
.end method

.method private static getUniqueIdForAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)Lcom/google/wireless/webapps/Analytics$UniqueId;
    .registers 2
    .parameter "action"

    .prologue
    .line 301
    invoke-static {p0}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->createUniqueId(Lcom/google/protobuf/Internal$EnumLite;)Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method private static getUniqueIdForView(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;)Lcom/google/wireless/webapps/Analytics$UniqueId;
    .registers 2
    .parameter "view"

    .prologue
    .line 312
    invoke-static {p0}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->createUniqueId(Lcom/google/protobuf/Internal$EnumLite;)Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method private static logAction(Lcom/google/wireless/webapps/Analytics$Event$EventType;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    .registers 5
    .parameter "type"
    .parameter "action"

    .prologue
    .line 362
    const-string v0, "EsAnalytics"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 363
    const-string v0, "EsAnalytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=========> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " invoked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_2b
    return-void
.end method

.method private static logViewNavigationEvent(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;JLcom/google/wireless/tacotruck/proto/Logging$Targets$Views;J)V
    .registers 13
    .parameter "startView"
    .parameter "startTime"
    .parameter "endView"
    .parameter "endTime"

    .prologue
    const-wide/16 v5, 0x0

    .line 339
    const-string v3, "EsAnalytics"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "=========> Navigated"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 341
    .local v2, message:Ljava/lang/StringBuilder;
    if-eqz p0, :cond_1d

    .line 342
    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 345
    :cond_1d
    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 346
    cmp-long v3, p1, v5

    if-lez v3, :cond_3f

    cmp-long v3, p4, v5

    if-lez v3, :cond_3f

    .line 347
    sub-long v0, p4, p1

    .line 348
    .local v0, duration:J
    const-string v3, " (took "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .end local v0           #duration:J
    :cond_3f
    const-string v3, "EsAnalytics"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    .end local v2           #message:Ljava/lang/StringBuilder;
    :cond_48
    return-void
.end method

.method public static postRecordEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/analytics/AnalyticsInfo;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    .registers 7
    .parameter "inputContext"
    .parameter "account"
    .parameter "analytics"
    .parameter "action"

    .prologue
    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 94
    .local v0, context:Landroid/content/Context;
    if-eqz p2, :cond_17

    .line 95
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/google/android/apps/plus/analytics/EsAnalytics$1;

    invoke-direct {v2, v0, p1, p2, p3}, Lcom/google/android/apps/plus/analytics/EsAnalytics$1;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/analytics/AnalyticsInfo;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 105
    :cond_17
    return-void
.end method

.method private static recordAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/webapps/Analytics$Event$EventType;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;J)V
    .registers 13
    .parameter "context"
    .parameter "account"
    .parameter "type"
    .parameter "action"
    .parameter "startTime"

    .prologue
    .line 250
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/webapps/Analytics$Event$EventType;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;JLandroid/os/Bundle;)V

    .line 251
    return-void
.end method

.method private static recordAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/webapps/Analytics$Event$EventType;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;JLandroid/os/Bundle;)V
    .registers 15
    .parameter "context"
    .parameter "account"
    .parameter "type"
    .parameter "action"
    .parameter "startTime"
    .parameter "data"

    .prologue
    .line 266
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$Event;->newBuilder()Lcom/google/wireless/webapps/Analytics$Event$Builder;

    move-result-object v2

    .line 267
    .local v2, event:Lcom/google/wireless/webapps/Analytics$Event$Builder;
    invoke-virtual {v2, p2}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->setEventType(Lcom/google/wireless/webapps/Analytics$Event$EventType;)Lcom/google/wireless/webapps/Analytics$Event$Builder;

    .line 268
    invoke-static {p3}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->getUniqueIdForAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->setAction(Lcom/google/wireless/webapps/Analytics$UniqueId;)Lcom/google/wireless/webapps/Analytics$Event$Builder;

    .line 270
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 271
    .local v0, endTime:J
    const-wide/16 v6, 0x0

    cmp-long v6, p4, v6

    if-lez v6, :cond_4c

    .line 272
    invoke-virtual {v2, p4, p5}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->setStartTimeMsec(J)Lcom/google/wireless/webapps/Analytics$Event$Builder;

    .line 278
    :goto_1b
    invoke-virtual {v2, v0, v1}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->setEndTimeMsec(J)Lcom/google/wireless/webapps/Analytics$Event$Builder;

    .line 280
    if-eqz p6, :cond_50

    .line 281
    invoke-virtual {p6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 282
    .local v4, key:Ljava/lang/String;
    invoke-virtual {p6, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 283
    .local v5, value:Ljava/lang/String;
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$CustomValue;->newBuilder()Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->setKey(Ljava/lang/String;)Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->setValue(Ljava/lang/String;)Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->build()Lcom/google/wireless/webapps/Analytics$CustomValue;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->addCustomValue(Lcom/google/wireless/webapps/Analytics$CustomValue;)Lcom/google/wireless/webapps/Analytics$Event$Builder;

    goto :goto_28

    .line 276
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    :cond_4c
    invoke-virtual {v2, v0, v1}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->setStartTimeMsec(J)Lcom/google/wireless/webapps/Analytics$Event$Builder;

    goto :goto_1b

    .line 289
    :cond_50
    invoke-virtual {v2}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->build()Lcom/google/wireless/webapps/Analytics$Event;

    move-result-object v6

    invoke-static {p0, p1, v6}, Lcom/google/android/apps/plus/service/EsService;->insertEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/webapps/Analytics$Event;)V

    .line 290
    invoke-static {p2, p3}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->logAction(Lcom/google/wireless/webapps/Analytics$Event$EventType;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 291
    return-void
.end method

.method public static recordEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/analytics/AnalyticsInfo;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)J
    .registers 14
    .parameter "context"
    .parameter "account"
    .parameter "info"
    .parameter "action"

    .prologue
    .line 50
    if-nez p1, :cond_5

    .line 51
    const-wide/16 v2, -0x1

    .line 84
    :goto_4
    return-wide v2

    .line 54
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 56
    .local v2, endTime:J
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$Event;->newBuilder()Lcom/google/wireless/webapps/Analytics$Event$Builder;

    move-result-object v4

    .line 57
    .local v4, event:Lcom/google/wireless/webapps/Analytics$Event$Builder;
    sget-object v6, Lcom/google/wireless/webapps/Analytics$Event$EventType;->USER:Lcom/google/wireless/webapps/Analytics$Event$EventType;

    invoke-virtual {v4, v6}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->setEventType(Lcom/google/wireless/webapps/Analytics$Event$EventType;)Lcom/google/wireless/webapps/Analytics$Event$Builder;

    .line 58
    invoke-static {p3}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->getUniqueIdForAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->setAction(Lcom/google/wireless/webapps/Analytics$UniqueId;)Lcom/google/wireless/webapps/Analytics$Event$Builder;

    .line 59
    invoke-virtual {p2}, Lcom/google/android/apps/plus/analytics/AnalyticsInfo;->getStartTimeMsec()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_88

    .line 60
    invoke-virtual {p2}, Lcom/google/android/apps/plus/analytics/AnalyticsInfo;->getStartTimeMsec()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->setStartTimeMsec(J)Lcom/google/wireless/webapps/Analytics$Event$Builder;

    .line 66
    :goto_2a
    invoke-virtual {v4, v2, v3}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->setEndTimeMsec(J)Lcom/google/wireless/webapps/Analytics$Event$Builder;

    .line 68
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$EventDetails;->newBuilder()Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;

    move-result-object v1

    .line 69
    .local v1, details:Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;
    invoke-virtual {p2}, Lcom/google/android/apps/plus/analytics/AnalyticsInfo;->getStartView()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    move-result-object v6

    if-eqz v6, :cond_42

    .line 70
    invoke-virtual {p2}, Lcom/google/android/apps/plus/analytics/AnalyticsInfo;->getStartView()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->getUniqueIdForView(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;)Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->setStartView(Lcom/google/wireless/webapps/Analytics$UniqueId;)Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;

    .line 73
    :cond_42
    invoke-virtual {p2}, Lcom/google/android/apps/plus/analytics/AnalyticsInfo;->getEndView()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->getUniqueIdForView(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;)Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->setEndView(Lcom/google/wireless/webapps/Analytics$UniqueId;)Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;

    .line 74
    invoke-virtual {v4, v1}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->setDetails(Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;)Lcom/google/wireless/webapps/Analytics$Event$Builder;

    .line 76
    invoke-virtual {p2}, Lcom/google/android/apps/plus/analytics/AnalyticsInfo;->getCustomValues()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_5c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 77
    .local v0, customValue:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$CustomValue;->newBuilder()Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->setKey(Ljava/lang/String;)Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->setValue(Ljava/lang/String;)Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->build()Lcom/google/wireless/webapps/Analytics$CustomValue;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->addCustomValue(Lcom/google/wireless/webapps/Analytics$CustomValue;)Lcom/google/wireless/webapps/Analytics$Event$Builder;

    goto :goto_5c

    .line 64
    .end local v0           #customValue:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1           #details:Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_88
    invoke-virtual {v4, v2, v3}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->setStartTimeMsec(J)Lcom/google/wireless/webapps/Analytics$Event$Builder;

    goto :goto_2a

    .line 83
    .restart local v1       #details:Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;
    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_8c
    invoke-virtual {v4}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->build()Lcom/google/wireless/webapps/Analytics$Event;

    move-result-object v6

    invoke-static {p0, p1, v6}, Lcom/google/android/apps/plus/service/EsService;->insertEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/webapps/Analytics$Event;)V

    goto/16 :goto_4
.end method

.method public static recordSystemAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    .registers 5
    .parameter "context"
    .parameter "account"
    .parameter "action"

    .prologue
    .line 137
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordSystemAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;J)V

    .line 138
    return-void
.end method

.method private static recordSystemAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;J)V
    .registers 12
    .parameter "context"
    .parameter "account"
    .parameter "action"
    .parameter "startTime"

    .prologue
    .line 163
    sget-object v2, Lcom/google/wireless/webapps/Analytics$Event$EventType;->SYSTEM:Lcom/google/wireless/webapps/Analytics$Event$EventType;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/webapps/Analytics$Event$EventType;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;JLandroid/os/Bundle;)V

    .line 164
    return-void
.end method

.method public static recordSystemAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;Landroid/os/Bundle;)V
    .registers 11
    .parameter "context"
    .parameter "account"
    .parameter "action"
    .parameter "data"

    .prologue
    .line 150
    sget-object v2, Lcom/google/wireless/webapps/Analytics$Event$EventType;->SYSTEM:Lcom/google/wireless/webapps/Analytics$Event$EventType;

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/webapps/Analytics$Event$EventType;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;JLandroid/os/Bundle;)V

    .line 151
    return-void
.end method

.method public static recordSystemActionWithData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 12
    .parameter "context"
    .parameter "account"
    .parameter "action"
    .parameter "key"
    .parameter "data"
    .parameter "startTime"

    .prologue
    .line 178
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$Event;->newBuilder()Lcom/google/wireless/webapps/Analytics$Event$Builder;

    move-result-object v2

    .line 179
    .local v2, event:Lcom/google/wireless/webapps/Analytics$Event$Builder;
    sget-object v3, Lcom/google/wireless/webapps/Analytics$Event$EventType;->SYSTEM:Lcom/google/wireless/webapps/Analytics$Event$EventType;

    invoke-virtual {v2, v3}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->setEventType(Lcom/google/wireless/webapps/Analytics$Event$EventType;)Lcom/google/wireless/webapps/Analytics$Event$Builder;

    .line 180
    invoke-static {p2}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->getUniqueIdForAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->setAction(Lcom/google/wireless/webapps/Analytics$UniqueId;)Lcom/google/wireless/webapps/Analytics$Event$Builder;

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 183
    .local v0, endTime:J
    const-wide/16 v3, 0x0

    cmp-long v3, p5, v3

    if-lez v3, :cond_40

    .line 184
    invoke-virtual {v2, p5, p6}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->setStartTimeMsec(J)Lcom/google/wireless/webapps/Analytics$Event$Builder;

    .line 190
    :goto_1d
    invoke-virtual {v2, v0, v1}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->setEndTimeMsec(J)Lcom/google/wireless/webapps/Analytics$Event$Builder;

    .line 191
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$CustomValue;->newBuilder()Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->setKey(Ljava/lang/String;)Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;

    move-result-object v3

    invoke-virtual {v3, p4}, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->setValue(Ljava/lang/String;)Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/webapps/Analytics$CustomValue$Builder;->build()Lcom/google/wireless/webapps/Analytics$CustomValue;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->addCustomValue(Lcom/google/wireless/webapps/Analytics$CustomValue;)Lcom/google/wireless/webapps/Analytics$Event$Builder;

    .line 196
    invoke-virtual {v2}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->build()Lcom/google/wireless/webapps/Analytics$Event;

    move-result-object v3

    invoke-static {p0, p1, v3}, Lcom/google/android/apps/plus/service/EsService;->insertEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/webapps/Analytics$Event;)V

    .line 197
    sget-object v3, Lcom/google/wireless/webapps/Analytics$Event$EventType;->SYSTEM:Lcom/google/wireless/webapps/Analytics$Event$EventType;

    invoke-static {v3, p2}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->logAction(Lcom/google/wireless/webapps/Analytics$Event$EventType;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 198
    return-void

    .line 188
    :cond_40
    invoke-virtual {v2, v0, v1}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->setStartTimeMsec(J)Lcom/google/wireless/webapps/Analytics$Event$Builder;

    goto :goto_1d
.end method

.method public static recordUserAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/analytics/AnalyticsInfo;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    .registers 5
    .parameter "context"
    .parameter "account"
    .parameter "info"
    .parameter "action"

    .prologue
    .line 222
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/analytics/AnalyticsInfo;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)J

    .line 223
    sget-object v0, Lcom/google/wireless/webapps/Analytics$Event$EventType;->USER:Lcom/google/wireless/webapps/Analytics$Event$EventType;

    invoke-static {v0, p3}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->logAction(Lcom/google/wireless/webapps/Analytics$Event$EventType;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 224
    return-void
.end method

.method public static recordUserAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    .registers 5
    .parameter "context"
    .parameter "account"
    .parameter "action"

    .prologue
    .line 209
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordUserAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;J)V

    .line 210
    return-void
.end method

.method public static recordUserAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;J)V
    .registers 11
    .parameter "context"
    .parameter "account"
    .parameter "action"
    .parameter "startTime"

    .prologue
    .line 236
    sget-object v2, Lcom/google/wireless/webapps/Analytics$Event$EventType;->USER:Lcom/google/wireless/webapps/Analytics$Event$EventType;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/webapps/Analytics$Event$EventType;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;J)V

    .line 237
    return-void
.end method

.method public static recordViewNavigationEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;JLcom/google/wireless/tacotruck/proto/Logging$Targets$Views;)V
    .registers 12
    .parameter "context"
    .parameter "account"
    .parameter "startView"
    .parameter "startTime"
    .parameter "endView"

    .prologue
    .line 119
    if-nez p5, :cond_a

    .line 120
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "End view is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_a
    new-instance v0, Lcom/google/android/apps/plus/analytics/AnalyticsInfo;

    invoke-direct {v0, p2, p5, p3, p4}, Lcom/google/android/apps/plus/analytics/AnalyticsInfo;-><init>(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;J)V

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->NAVIGATE_TO:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/analytics/AnalyticsInfo;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)J

    move-result-wide v4

    .local v4, endTime:J
    move-object v0, p2

    move-wide v1, p3

    move-object v3, p5

    .line 125
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->logViewNavigationEvent(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;JLcom/google/wireless/tacotruck/proto/Logging$Targets$Views;J)V

    .line 126
    return-void
.end method
