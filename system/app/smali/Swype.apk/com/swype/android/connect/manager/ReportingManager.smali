.class public Lcom/swype/android/connect/manager/ReportingManager;
.super Lcom/swype/android/connect/manager/AbstractCommandManager;
.source "ReportingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swype/android/connect/manager/ReportingManager$ValidCommands;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final COMMAND_FAMILY:Ljava/lang/String; = "report"

.field protected static final REPORTING_DATA_EXPIRATION:I = 0x76a700

.field public static final REPORTING_GENERIC:Ljava/lang/String; = "REPORTING_GENERIC"

.field protected static REPORTING_USAGE_INTERVAL:I = 0x0

.field protected static final REPORT_KEY_NAME:Ljava/lang/String; = "metric"

.field protected static final REPORT_TIME_NAME:Ljava/lang/String; = "timestamp"

.field protected static final REPORT_TIME_TO_REPLACE:Ljava/lang/String; = "Time"

.field protected static final STAT_BATCH_SEPARATOR:Ljava/lang/String; = "#$#"

.field protected static final STAT_INDIV_SEPARATOR:Ljava/lang/String; = "*"

.field protected static final STAT_INIV_POINT_SEPARATOR:Ljava/lang/String; = "|"

.field protected static final STAT_LABEL_SEPARATOR:Ljava/lang/String; = ":"

.field protected static final STAT_POINT_SEPARATOR:Ljava/lang/String; = "%"


# instance fields
.field protected final REPORTING_LAST_RUN:Ljava/lang/String;

.field private lastReport:J

.field protected lastRun:J

.field protected metricsAllowed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected nextRun:J

.field protected validateMetricsSent:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-class v0, Lcom/swype/android/connect/manager/ReportingManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/swype/android/connect/manager/ReportingManager;->$assertionsDisabled:Z

    .line 33
    const v0, 0x54600

    sput v0, Lcom/swype/android/connect/manager/ReportingManager;->REPORTING_USAGE_INTERVAL:I

    return-void

    .line 28
    :cond_11
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/swype/android/connect/ConnectClient;)V
    .registers 4
    .parameter "ctx"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/swype/android/connect/manager/AbstractCommandManager;-><init>(Lcom/swype/android/connect/ConnectClient;)V

    .line 36
    const-string v0, "REPORTING_LAST_RUN"

    iput-object v0, p0, Lcom/swype/android/connect/manager/ReportingManager;->REPORTING_LAST_RUN:Ljava/lang/String;

    .line 57
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/swype/android/connect/manager/ReportingManager;->lastReport:J

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swype/android/connect/manager/ReportingManager;->validateMetricsSent:Z

    .line 79
    const/4 v0, 0x2

    iput v0, p0, Lcom/swype/android/connect/manager/ReportingManager;->version:I

    .line 80
    const-string v0, "report"

    iput-object v0, p0, Lcom/swype/android/connect/manager/ReportingManager;->commandFamily:Ljava/lang/String;

    .line 81
    const v0, 0x3491d21

    iput v0, p0, Lcom/swype/android/connect/manager/ReportingManager;->alarmUniqueId:I

    .line 82
    return-void
.end method

.method private cleanStoredReports(J)V
    .registers 7
    .parameter

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/swype/android/connect/manager/ReportingManager;->getReportingStorage()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 204
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 206
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 207
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 208
    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 210
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 211
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 213
    :try_start_26
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-lez v2, :cond_14

    .line 214
    invoke-interface {v1, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_31
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_31} :catch_32

    goto :goto_14

    .line 217
    :catch_32
    move-exception v2

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_14

    .line 221
    :cond_37
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 222
    return-void
.end method

.method private getReportingStorage()Landroid/content/SharedPreferences;
    .registers 4

    .prologue
    .line 122
    iget-object v0, p0, Lcom/swype/android/connect/manager/ReportingManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/swype/android/connect/ConnectClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Reports"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private getStoredReports()Ljava/lang/String;
    .registers 4

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/swype/android/connect/manager/ReportingManager;->getReportingStorage()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 182
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 183
    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 185
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    .line 186
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 187
    invoke-static {p0}, Lcom/swype/android/connect/util/EncryptUtils;->decryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 188
    if-eqz v2, :cond_15

    .line 189
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 191
    const-string v2, "#$#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    .line 195
    :cond_3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addStatsFromString(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 398
    sget-boolean v0, Lcom/swype/android/connect/manager/ReportingManager;->$assertionsDisabled:Z

    if-nez v0, :cond_c

    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 399
    :cond_c
    invoke-static {}, Lcom/swype/android/connect/manager/ReportingManager;->getCurrentTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 400
    invoke-static {p1}, Lcom/swype/android/connect/util/EncryptUtils;->encryptString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 401
    invoke-direct {p0}, Lcom/swype/android/connect/manager/ReportingManager;->getReportingStorage()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 402
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 403
    return-void
.end method

.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .parameter "type"
    .parameter "data"

    .prologue
    .line 115
    if-eqz p1, :cond_d

    const-string v0, "REPORTING_GENERIC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 117
    invoke-virtual {p0}, Lcom/swype/android/connect/manager/ReportingManager;->sendReportTracking()V

    .line 119
    :cond_d
    return-void
.end method

.method public destroy()V
    .registers 1

    .prologue
    .line 98
    return-void
.end method

.method protected determineUsageNextRun()V
    .registers 5

    .prologue
    .line 130
    iget-object v0, p0, Lcom/swype/android/connect/manager/ReportingManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/swype/android/connect/ConnectClient;->getPrivatePreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 131
    const-string v1, "REPORTING_LAST_RUN"

    invoke-static {}, Lcom/swype/android/connect/manager/ReportingManager;->getCurrentTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/swype/android/connect/manager/ReportingManager;->lastRun:J

    .line 133
    sget v0, Lcom/swype/android/connect/manager/ReportingManager;->REPORTING_USAGE_INTERVAL:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/swype/android/connect/manager/ReportingManager;->lastRun:J

    invoke-static {v0, v1, v2, v3}, Lcom/swype/android/connect/manager/ReportingManager;->convertSecondsToTimeStamp(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/swype/android/connect/manager/ReportingManager;->nextRun:J

    .line 135
    iget-wide v0, p0, Lcom/swype/android/connect/manager/ReportingManager;->nextRun:J

    invoke-static {}, Lcom/swype/android/connect/manager/ReportingManager;->getCurrentTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2b

    .line 137
    invoke-virtual {p0}, Lcom/swype/android/connect/manager/ReportingManager;->sendReportTracking()V

    .line 143
    :goto_2a
    return-void

    .line 139
    :cond_2b
    const-class v0, Lcom/swype/android/connect/manager/ReportingManager;

    const-string v1, "REPORTING_GENERIC"

    invoke-virtual {p0, v0, v1}, Lcom/swype/android/connect/manager/ReportingManager;->generateIntent(Ljava/lang/Class;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 141
    iget-wide v1, p0, Lcom/swype/android/connect/manager/ReportingManager;->nextRun:J

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/swype/android/connect/manager/ReportingManager;->setAlarmAt(JLandroid/app/PendingIntent;Z)V

    goto :goto_2a
.end method

.method public onResponse(Lcom/swype/android/connect/util/Response;)V
    .registers 4
    .parameter

    .prologue
    .line 102
    sget-object v0, Lcom/swype/android/connect/manager/ReportingManager$ValidCommands;->tracking:Lcom/swype/android/connect/manager/ReportingManager$ValidCommands;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/ReportingManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/swype/android/connect/util/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 103
    invoke-virtual {p0, p1}, Lcom/swype/android/connect/manager/ReportingManager;->processTrackingResponse(Lcom/swype/android/connect/util/Response;)V

    .line 111
    :goto_11
    return-void

    .line 104
    :cond_12
    sget-object v0, Lcom/swype/android/connect/manager/ReportingManager$ValidCommands;->usage:Lcom/swype/android/connect/manager/ReportingManager$ValidCommands;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/ReportingManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/swype/android/connect/util/Response;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 105
    invoke-virtual {p0, p1}, Lcom/swype/android/connect/manager/ReportingManager;->processUsageResponse(Lcom/swype/android/connect/util/Response;)V

    goto :goto_11

    .line 108
    :cond_24
    const-string v0, "Unknown Command"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_11
.end method

.method protected processStatsBatch(Ljava/lang/String;)Lorg/json/JSONArray;
    .registers 13
    .parameter

    .prologue
    .line 271
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "#$#"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 275
    :cond_c
    :try_start_c
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_c6

    .line 277
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 279
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, "|"

    invoke-direct {v3, v2, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_1d
    :goto_1d
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 281
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 283
    const-string v4, "%"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 285
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 286
    const/4 v5, 0x0

    const-string v6, "%"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 288
    const-string v6, "metric"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 290
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 291
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v7, "*"

    invoke-direct {v6, v2, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_59
    :goto_59
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_c7

    .line 294
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 296
    const/4 v7, 0x0

    const-string v8, ":"

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 297
    const-string v8, ":"

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 301
    const-string v8, "Time"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_88

    .line 303
    const-string v7, "timestamp"
    :try_end_88
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_88} :catch_ab

    .line 307
    :cond_88
    :try_start_88
    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    .line 308
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v2}, Ljava/lang/String;->length()I
    :try_end_93
    .catch Ljava/lang/NumberFormatException; {:try_start_88 .. :try_end_93} :catch_101
    .catch Lorg/json/JSONException; {:try_start_88 .. :try_end_93} :catch_ab

    move-result v10

    if-ne v9, v10, :cond_97

    move-object v2, v8

    .line 315
    :cond_97
    :goto_97
    :try_start_97
    iget-boolean v8, p0, Lcom/swype/android/connect/manager/ReportingManager;->validateMetricsSent:Z

    if-eqz v8, :cond_a7

    iget-object v8, p0, Lcom/swype/android/connect/manager/ReportingManager;->metricsAllowed:Ljava/util/List;

    if-eqz v8, :cond_59

    iget-object v8, p0, Lcom/swype/android/connect/manager/ReportingManager;->metricsAllowed:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_59

    .line 317
    :cond_a7
    invoke-virtual {v4, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_aa
    .catch Lorg/json/JSONException; {:try_start_97 .. :try_end_aa} :catch_ab

    goto :goto_59

    .line 333
    :catch_ab
    move-exception v0

    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error processing string to JSON: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 337
    :cond_c6
    return-object v1

    .line 322
    :cond_c7
    :try_start_c7
    const-string v2, "timestamp"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d7

    const-string v2, "timestamp"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_fc

    .line 323
    :cond_d7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Metric "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " is missing a timestamp, adding one (invalid) so that we can store the metric"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 324
    const-string v2, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 328
    :cond_fc
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_ff
    .catch Lorg/json/JSONException; {:try_start_c7 .. :try_end_ff} :catch_ab

    goto/16 :goto_1d

    :catch_101
    move-exception v8

    goto :goto_97
.end method

.method protected processTrackingResponse(Lcom/swype/android/connect/util/Response;)V
    .registers 7
    .parameter

    .prologue
    .line 345
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v1, "metrics"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v1, "metrics"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/json/JSONArray;

    if-eqz v0, :cond_5d

    .line 346
    iget-object v0, p1, Lcom/swype/android/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v1, "metrics"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    .line 348
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/swype/android/connect/manager/ReportingManager;->metricsAllowed:Ljava/util/List;

    .line 350
    const/4 v1, 0x0

    :goto_28
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_56

    .line 352
    :try_start_2e
    iget-object v2, p0, Lcom/swype/android/connect/manager/ReportingManager;->metricsAllowed:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_2e .. :try_end_37} :catch_3a

    .line 350
    :goto_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 353
    :catch_3a
    move-exception v2

    .line 354
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error found while parsing tracking responses for reporting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/swype/android/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_37

    .line 358
    :cond_56
    iget-object v0, p0, Lcom/swype/android/connect/manager/ReportingManager;->metricsAllowed:Ljava/util/List;

    if-eqz v0, :cond_5d

    .line 359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/swype/android/connect/manager/ReportingManager;->validateMetricsSent:Z

    .line 363
    :cond_5d
    invoke-virtual {p0}, Lcom/swype/android/connect/manager/ReportingManager;->sendReports()V

    .line 364
    return-void
.end method

.method protected processUsageResponse(Lcom/swype/android/connect/util/Response;)V
    .registers 6
    .parameter

    .prologue
    .line 371
    iget-object v0, p0, Lcom/swype/android/connect/manager/ReportingManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/swype/android/connect/ConnectClient;->getPrivatePreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 372
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 374
    iget-object v1, p1, Lcom/swype/android/connect/util/Response;->status:Ljava/lang/String;

    const-string v2, "SUCCESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 378
    iget-wide v1, p0, Lcom/swype/android/connect/manager/ReportingManager;->lastReport:J

    invoke-direct {p0, v1, v2}, Lcom/swype/android/connect/manager/ReportingManager;->cleanStoredReports(J)V

    .line 385
    :cond_19
    const-string v1, "REPORTING_LAST_RUN"

    invoke-static {}, Lcom/swype/android/connect/manager/ReportingManager;->getCurrentTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 386
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 388
    invoke-virtual {p0}, Lcom/swype/android/connect/manager/ReportingManager;->determineUsageNextRun()V

    .line 389
    return-void
.end method

.method protected sendReportTracking()V
    .registers 3

    .prologue
    .line 167
    sget-object v1, Lcom/swype/android/connect/manager/ReportingManager$ValidCommands;->tracking:Lcom/swype/android/connect/manager/ReportingManager$ValidCommands;

    invoke-virtual {v1}, Lcom/swype/android/connect/manager/ReportingManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/swype/android/connect/manager/ReportingManager;->createCommand(Ljava/lang/String;)Lcom/swype/android/connect/util/Command;

    move-result-object v0

    .line 168
    .local v0, command:Lcom/swype/android/connect/util/Command;
    invoke-virtual {p0, v0}, Lcom/swype/android/connect/manager/ReportingManager;->sendCommand(Lcom/swype/android/connect/util/Command;)V

    .line 169
    return-void
.end method

.method public sendReportingNow()V
    .registers 5

    .prologue
    .line 151
    iget-object v0, p0, Lcom/swype/android/connect/manager/ReportingManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/swype/android/connect/ConnectClient;->getPrivatePreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 152
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 153
    const-string v1, "REPORTING_LAST_RUN"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 154
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 156
    const-class v0, Lcom/swype/android/connect/manager/ReportingManager;

    const-string v1, "REPORTING_GENERIC"

    invoke-virtual {p0, v0, v1}, Lcom/swype/android/connect/manager/ReportingManager;->generateIntent(Ljava/lang/Class;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 157
    invoke-virtual {p0, v0}, Lcom/swype/android/connect/manager/ReportingManager;->removeLongTermTimer(Landroid/app/PendingIntent;)V

    .line 159
    invoke-virtual {p0}, Lcom/swype/android/connect/manager/ReportingManager;->determineUsageNextRun()V

    .line 160
    return-void
.end method

.method protected sendReports()V
    .registers 6

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/swype/android/connect/manager/ReportingManager;->getStoredReports()Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-static {}, Lcom/swype/android/connect/manager/ReportingManager;->getCurrentTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/swype/android/connect/manager/ReportingManager;->lastReport:J

    .line 231
    const/4 v1, 0x0

    .line 233
    iget-object v2, p0, Lcom/swype/android/connect/manager/ReportingManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v2}, Lcom/swype/android/connect/ConnectClient;->isDataCollectionPermitted()Z

    move-result v2

    if-nez v2, :cond_32

    .line 235
    iget-wide v0, p0, Lcom/swype/android/connect/manager/ReportingManager;->lastReport:J

    invoke-direct {p0, v0, v1}, Lcom/swype/android/connect/manager/ReportingManager;->cleanStoredReports(J)V

    .line 237
    iget-object v0, p0, Lcom/swype/android/connect/manager/ReportingManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/swype/android/connect/ConnectClient;->getPrivatePreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 238
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 239
    const-string v1, "REPORTING_LAST_RUN"

    invoke-static {}, Lcom/swype/android/connect/manager/ReportingManager;->getCurrentTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 240
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 260
    :cond_2e
    invoke-virtual {p0}, Lcom/swype/android/connect/manager/ReportingManager;->determineUsageNextRun()V

    .line 263
    :goto_31
    return-void

    .line 244
    :cond_32
    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6b

    .line 246
    :cond_3a
    iget-object v0, p0, Lcom/swype/android/connect/manager/ReportingManager;->client:Lcom/swype/android/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/swype/android/connect/ConnectClient;->getPrivatePreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 247
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 248
    const-string v2, "REPORTING_LAST_RUN"

    invoke-static {}, Lcom/swype/android/connect/manager/ReportingManager;->getCurrentTime()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 249
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object v0, v1

    .line 254
    :goto_51
    if-eqz v0, :cond_2e

    .line 255
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 256
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lcom/swype/android/connect/manager/ReportingManager$ValidCommands;->usage:Lcom/swype/android/connect/manager/ReportingManager$ValidCommands;

    invoke-virtual {v0}, Lcom/swype/android/connect/manager/ReportingManager$ValidCommands;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/swype/android/connect/manager/ReportingManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/swype/android/connect/util/Command;

    move-result-object v0

    .line 258
    invoke-virtual {p0, v0}, Lcom/swype/android/connect/manager/ReportingManager;->sendCommand(Lcom/swype/android/connect/util/Command;)V

    goto :goto_31

    .line 251
    :cond_6b
    invoke-virtual {p0, v0}, Lcom/swype/android/connect/manager/ReportingManager;->processStatsBatch(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_51
.end method

.method public start()V
    .registers 5

    .prologue
    .line 86
    invoke-static {}, Lcom/swype/android/connect/manager/ReportingManager;->getCurrentTime()J

    move-result-wide v0

    const-wide/32 v2, 0x76a700

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/swype/android/connect/manager/ReportingManager;->cleanStoredReports(J)V

    .line 87
    sget-object v0, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;->STARTING:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    iput-object v0, p0, Lcom/swype/android/connect/manager/ReportingManager;->managerStartState:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    .line 88
    iget-object v0, p0, Lcom/swype/android/connect/manager/ReportingManager;->client:Lcom/swype/android/connect/ConnectClient;

    const-string v1, "REPORTING_FREQUENCY"

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->getConfigurationIntValue(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/swype/android/connect/manager/ReportingManager;->REPORTING_USAGE_INTERVAL:I

    .line 89
    invoke-virtual {p0}, Lcom/swype/android/connect/manager/ReportingManager;->determineUsageNextRun()V

    .line 90
    sget-object v0, Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;->STARTED:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    iput-object v0, p0, Lcom/swype/android/connect/manager/ReportingManager;->managerStartState:Lcom/swype/android/connect/manager/AbstractCommandManager$managerState;

    .line 91
    iget-object v0, p0, Lcom/swype/android/connect/manager/ReportingManager;->client:Lcom/swype/android/connect/ConnectClient;

    const-class v1, Lcom/swype/android/connect/manager/ReportingManager;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/ConnectClient;->managerStartComplete(Ljava/lang/String;)V

    .line 92
    return-void
.end method
