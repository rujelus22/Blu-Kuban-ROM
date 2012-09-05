.class public final Lcom/google/android/apps/plus/analytics/EsAnalytics;
.super Ljava/lang/Object;
.source "EsAnalytics.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method private static createUniqueId(Lcom/google/protobuf/Internal$EnumLite;)Lcom/google/wireless/webapps/Analytics$UniqueId;
    .registers 3
    .parameter "value"

    .prologue
    .line 143
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$UniqueId;->newBuilder()Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;

    move-result-object v0

    .line 144
    .local v0, builder:Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;
    invoke-interface {p0}, Lcom/google/protobuf/Internal$EnumLite;->getNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->setNumber(I)Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;

    .line 145
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;

    .line 146
    invoke-virtual {v0}, Lcom/google/wireless/webapps/Analytics$UniqueId$Builder;->build()Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v1

    return-object v1
.end method

.method private static getUniqueIdForAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)Lcom/google/wireless/webapps/Analytics$UniqueId;
    .registers 2
    .parameter "action"

    .prologue
    .line 135
    invoke-static {p0}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->createUniqueId(Lcom/google/protobuf/Internal$EnumLite;)Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method private static getUniqueIdForView(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;)Lcom/google/wireless/webapps/Analytics$UniqueId;
    .registers 2
    .parameter "view"

    .prologue
    .line 139
    invoke-static {p0}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->createUniqueId(Lcom/google/protobuf/Internal$EnumLite;)Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v0

    return-object v0
.end method

.method private static logAction(Lcom/google/wireless/webapps/Analytics$Event$EventType;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    .registers 5
    .parameter "type"
    .parameter "action"

    .prologue
    .line 166
    const-string v0, "EsAnalytics"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 167
    const-string v0, "EsAnalytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

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

    .line 169
    :cond_25
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

    .line 151
    const-string v3, "EsAnalytics"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Navigated"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .local v2, message:Ljava/lang/StringBuilder;
    if-eqz p0, :cond_1d

    .line 154
    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 156
    :cond_1d
    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    cmp-long v3, p1, v5

    if-lez v3, :cond_3f

    cmp-long v3, p4, v5

    if-lez v3, :cond_3f

    .line 158
    sub-long v0, p4, p1

    .line 159
    .local v0, duration:J
    const-string v3, " (took "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .end local v0           #duration:J
    :cond_3f
    const-string v3, "EsAnalytics"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .end local v2           #message:Ljava/lang/StringBuilder;
    :cond_48
    return-void
.end method

.method private static recordAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/webapps/Analytics$Event$EventType;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;J)V
    .registers 11
    .parameter "context"
    .parameter "account"
    .parameter "type"
    .parameter "action"
    .parameter "startTime"

    .prologue
    .line 116
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$Event;->newBuilder()Lcom/google/wireless/webapps/Analytics$Event$Builder;

    move-result-object v2

    .line 117
    .local v2, event:Lcom/google/wireless/webapps/Analytics$Event$Builder;
    invoke-virtual {v2, p2}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->setEventType(Lcom/google/wireless/webapps/Analytics$Event$EventType;)Lcom/google/wireless/webapps/Analytics$Event$Builder;

    .line 118
    invoke-static {p3}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->getUniqueIdForAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->setAction(Lcom/google/wireless/webapps/Analytics$UniqueId;)Lcom/google/wireless/webapps/Analytics$Event$Builder;

    .line 120
    invoke-static {}, Lcom/google/android/apps/plus/analytics/AnalyticsClock;->now()J

    move-result-wide v0

    .line 121
    .local v0, endTime:J
    const-wide/16 v3, 0x0

    cmp-long v3, p4, v3

    if-lez v3, :cond_29

    .line 122
    invoke-virtual {v2, p4, p5}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->setStartTimeMsec(J)Lcom/google/wireless/webapps/Analytics$Event$Builder;

    .line 128
    :goto_1b
    invoke-virtual {v2, v0, v1}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->setEndTimeMsec(J)Lcom/google/wireless/webapps/Analytics$Event$Builder;

    .line 130
    invoke-virtual {v2}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->build()Lcom/google/wireless/webapps/Analytics$Event;

    move-result-object v3

    invoke-static {p0, p1, v3}, Lcom/google/android/apps/plus/service/EsService;->insertEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/webapps/Analytics$Event;)V

    .line 131
    invoke-static {p2, p3}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->logAction(Lcom/google/wireless/webapps/Analytics$Event$EventType;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 132
    return-void

    .line 126
    :cond_29
    invoke-virtual {v2, v0, v1}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->setStartTimeMsec(J)Lcom/google/wireless/webapps/Analytics$Event$Builder;

    goto :goto_1b
.end method

.method public static recordSystemAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    .registers 5
    .parameter "context"
    .parameter "account"
    .parameter "action"

    .prologue
    .line 87
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordSystemAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;J)V

    .line 88
    return-void
.end method

.method public static recordSystemAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;J)V
    .registers 11
    .parameter "context"
    .parameter "account"
    .parameter "action"
    .parameter "startTime"

    .prologue
    .line 95
    sget-object v2, Lcom/google/wireless/webapps/Analytics$Event$EventType;->SYSTEM:Lcom/google/wireless/webapps/Analytics$Event$EventType;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/webapps/Analytics$Event$EventType;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;J)V

    .line 96
    return-void
.end method

.method public static recordTabNavigationEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;)V
    .registers 10
    .parameter "context"
    .parameter "account"
    .parameter "startView"
    .parameter "endView"

    .prologue
    .line 79
    const-wide/16 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordViewNavigationEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;JLcom/google/wireless/tacotruck/proto/Logging$Targets$Views;)V

    .line 80
    return-void
.end method

.method public static recordUserAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    .registers 5
    .parameter "context"
    .parameter "account"
    .parameter "action"

    .prologue
    .line 103
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordUserAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;J)V

    .line 104
    return-void
.end method

.method public static recordUserAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;J)V
    .registers 11
    .parameter "context"
    .parameter "account"
    .parameter "action"
    .parameter "startTime"

    .prologue
    .line 111
    sget-object v2, Lcom/google/wireless/webapps/Analytics$Event$EventType;->USER:Lcom/google/wireless/webapps/Analytics$Event$EventType;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/webapps/Analytics$Event$EventType;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;J)V

    .line 112
    return-void
.end method

.method static recordViewNavigationEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;JLcom/google/wireless/tacotruck/proto/Logging$Targets$Views;)V
    .registers 14
    .parameter "context"
    .parameter "account"
    .parameter "startView"
    .parameter "startTime"
    .parameter "endView"

    .prologue
    .line 43
    if-nez p5, :cond_a

    .line 44
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "End view is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_a
    invoke-static {}, Lcom/google/android/apps/plus/analytics/AnalyticsClock;->now()J

    move-result-wide v4

    .line 49
    .local v4, endTime:J
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$Event;->newBuilder()Lcom/google/wireless/webapps/Analytics$Event$Builder;

    move-result-object v7

    .line 50
    .local v7, event:Lcom/google/wireless/webapps/Analytics$Event$Builder;
    sget-object v0, Lcom/google/wireless/webapps/Analytics$Event$EventType;->USER:Lcom/google/wireless/webapps/Analytics$Event$EventType;

    invoke-virtual {v7, v0}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->setEventType(Lcom/google/wireless/webapps/Analytics$Event$EventType;)Lcom/google/wireless/webapps/Analytics$Event$Builder;

    .line 51
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->NAVIGATE_TO:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-static {v0}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->getUniqueIdForAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->setAction(Lcom/google/wireless/webapps/Analytics$UniqueId;)Lcom/google/wireless/webapps/Analytics$Event$Builder;

    .line 52
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_51

    .line 53
    invoke-virtual {v7, p3, p4}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->setStartTimeMsec(J)Lcom/google/wireless/webapps/Analytics$Event$Builder;

    .line 59
    :goto_29
    invoke-virtual {v7, v4, v5}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->setEndTimeMsec(J)Lcom/google/wireless/webapps/Analytics$Event$Builder;

    .line 61
    invoke-static {}, Lcom/google/wireless/webapps/Analytics$EventDetails;->newBuilder()Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;

    move-result-object v6

    .line 62
    .local v6, details:Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;
    if-eqz p2, :cond_39

    .line 63
    invoke-static {p2}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->getUniqueIdForView(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;)Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->setStartView(Lcom/google/wireless/webapps/Analytics$UniqueId;)Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;

    .line 65
    :cond_39
    invoke-static {p5}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->getUniqueIdForView(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;)Lcom/google/wireless/webapps/Analytics$UniqueId;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;->setEndView(Lcom/google/wireless/webapps/Analytics$UniqueId;)Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;

    .line 66
    invoke-virtual {v7, v6}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->setDetails(Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;)Lcom/google/wireless/webapps/Analytics$Event$Builder;

    .line 68
    invoke-virtual {v7}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->build()Lcom/google/wireless/webapps/Analytics$Event;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/android/apps/plus/service/EsService;->insertEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/webapps/Analytics$Event;)V

    move-object v0, p2

    move-wide v1, p3

    move-object v3, p5

    .line 69
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->logViewNavigationEvent(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;JLcom/google/wireless/tacotruck/proto/Logging$Targets$Views;J)V

    .line 70
    return-void

    .line 57
    .end local v6           #details:Lcom/google/wireless/webapps/Analytics$EventDetails$Builder;
    :cond_51
    invoke-virtual {v7, v4, v5}, Lcom/google/wireless/webapps/Analytics$Event$Builder;->setStartTimeMsec(J)Lcom/google/wireless/webapps/Analytics$Event$Builder;

    goto :goto_29
.end method
