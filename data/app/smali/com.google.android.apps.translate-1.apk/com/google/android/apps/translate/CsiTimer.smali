.class public Lcom/google/android/apps/translate/CsiTimer;
.super Ljava/lang/Object;
.source "CsiTimer.java"


# static fields
.field private static final ACTION_PARAM:Ljava/lang/String; = "action"

.field private static final ACTION_VAR:Ljava/lang/String; = "&action="

.field public static final CSI_ACTION_APPLICATION_LOAD:Ljava/lang/String; = "app"

.field public static final CSI_ACTION_HOME_LOAD:Ljava/lang/String; = "home"

.field public static final CSI_ACTION_NETWORK_TTS:Ljava/lang/String; = "nts"

.field public static final CSI_ACTION_TRANSLATE:Ljava/lang/String; = "trs"

.field public static final CSI_INTERVAL_INIT_TIME:Ljava/lang/String; = "init"

.field public static final CSI_INTERVAL_PROCESSING_TIME:Ljava/lang/String; = "t"

.field private static final DEFAULT_CSI_VERSION:I = 0x2

.field private static final EMPTY_PARAM_VALUE:Ljava/lang/String; = ""

.field private static final ENABLE_CSI_REPORT:Z = true

.field private static final INTERVAL_PARAM:Ljava/lang/String; = "it"

.field private static final INTERVAL_VAR:Ljava/lang/String; = "&it="

.field private static final SERVER_URL:Ljava/lang/String; = "http://csi.gstatic.com/csi?"

.field private static final SERVICE_NAME:Ljava/lang/String; = "atrans"

.field private static final SERVICE_PARAM:Ljava/lang/String; = "s"

.field private static final SERVICE_VAR:Ljava/lang/String; = "&s="

.field private static final TAG:Ljava/lang/String; = "CsiTimer"

.field private static final VERSION_PARAM:Ljava/lang/String; = "v"

.field private static final VERSION_VAR:Ljava/lang/String; = "v="


# instance fields
.field private final mActionName:Ljava/lang/String;

.field private final mIntervalTimes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mServerUrl:Ljava/lang/String;

.field private final mServiceName:Ljava/lang/String;

.field private final mStartTimes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/apps/translate/CsiTimer;)V
    .registers 5
    .parameter "oldTimer"

    .prologue
    .line 99
    iget-object v0, p1, Lcom/google/android/apps/translate/CsiTimer;->mServiceName:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/apps/translate/CsiTimer;->mServerUrl:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/apps/translate/CsiTimer;->mActionName:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/translate/CsiTimer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v0, "CsiTimer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset oldaction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/apps/translate/CsiTimer;->getActionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/translate/CsiTimer;Ljava/lang/String;)V
    .registers 6
    .parameter "oldTimer"
    .parameter "actionName"

    .prologue
    .line 110
    iget-object v0, p1, Lcom/google/android/apps/translate/CsiTimer;->mServiceName:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/apps/translate/CsiTimer;->mServerUrl:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p2}, Lcom/google/android/apps/translate/CsiTimer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v0, "CsiTimer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset oldaction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/apps/translate/CsiTimer;->getActionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .parameter "actionName"

    .prologue
    .line 89
    const-string v0, "atrans"

    const-string v1, "http://csi.gstatic.com/csi?"

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/apps/translate/CsiTimer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v0, "CsiTimer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "serviceName"
    .parameter "serverUrl"
    .parameter "actionName"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-static {}, Lcom/google/android/apps/translate/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/CsiTimer;->mStartTimes:Ljava/util/HashMap;

    .line 69
    invoke-static {}, Lcom/google/android/apps/translate/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/CsiTimer;->mIntervalTimes:Ljava/util/HashMap;

    .line 79
    invoke-static {p1}, Lcom/google/android/apps/translate/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/translate/CsiTimer;->mServiceName:Ljava/lang/String;

    .line 80
    invoke-static {p2}, Lcom/google/android/apps/translate/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/translate/CsiTimer;->mServerUrl:Ljava/lang/String;

    .line 81
    invoke-static {p3}, Lcom/google/android/apps/translate/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/translate/CsiTimer;->mActionName:Ljava/lang/String;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/translate/CsiTimer;Lorg/apache/http/client/HttpClient;Ljava/lang/String;)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/translate/CsiTimer;->runReport(Lorg/apache/http/client/HttpClient;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private varargs beginInternal(Ljava/lang/Long;Z[Ljava/lang/String;)V
    .registers 11
    .parameter "time"
    .parameter "override"
    .parameter "intervalNames"

    .prologue
    .line 151
    move-object v0, p3

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_3
    if-ge v1, v3, :cond_6d

    aget-object v2, v0, v1

    .line 152
    .local v2, interval:Ljava/lang/String;
    const-string v4, "CsiTimer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "beginInternal action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/translate/CsiTimer;->mActionName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " interval="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    if-nez p2, :cond_35

    iget-object v4, p0, Lcom/google/android/apps/translate/CsiTimer;->mStartTimes:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6a

    .line 154
    :cond_35
    iget-object v4, p0, Lcom/google/android/apps/translate/CsiTimer;->mStartTimes:Ljava/util/HashMap;

    invoke-virtual {v4, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start -- ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/translate/CsiTimer;->mStartTimes:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") -- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/apps/translate/CsiTimer;->log(Ljava/lang/String;)V

    .line 151
    :cond_6a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 158
    .end local v2           #interval:Ljava/lang/String;
    :cond_6d
    return-void
.end method

.method private buildUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "additionalData"

    .prologue
    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/android/apps/translate/CsiTimer;->mServerUrl:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 282
    .local v2, url:Ljava/lang/StringBuilder;
    const-string v3, "v="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 283
    const-string v3, "&s="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/translate/CsiTimer;->mServiceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    iget-object v3, p0, Lcom/google/android/apps/translate/CsiTimer;->mActionName:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 285
    const-string v3, "&action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/translate/CsiTimer;->mActionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    :cond_31
    iget-object v3, p0, Lcom/google/android/apps/translate/CsiTimer;->mIntervalTimes:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8a

    .line 288
    const-string v3, "&it="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    iget-object v3, p0, Lcom/google/android/apps/translate/CsiTimer;->mIntervalTimes:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_48
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_81

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 290
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_48

    .line 292
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_81
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 294
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_8a
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private log(Ljava/lang/String;)V
    .registers 4
    .parameter "str"

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/apps/translate/CsiTimer;->mActionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method private log(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 5
    .parameter "str"
    .parameter "e"

    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/apps/translate/CsiTimer;->mActionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    return-void
.end method

.method private runReport(Lorg/apache/http/client/HttpClient;Ljava/lang/String;)Z
    .registers 14
    .parameter "httpClient"
    .parameter "additionalData"

    .prologue
    const/4 v8, 0x0

    .line 247
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 249
    .local v5, startTime:J
    iget-object v9, p0, Lcom/google/android/apps/translate/CsiTimer;->mIntervalTimes:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 277
    :goto_d
    return v8

    .line 254
    :cond_e
    invoke-direct {p0, p2}, Lcom/google/android/apps/translate/CsiTimer;->buildUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 255
    .local v7, url:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "report -- url = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/google/android/apps/translate/CsiTimer;->log(Ljava/lang/String;)V

    .line 258
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, v7}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 259
    .local v3, httpGet:Lorg/apache/http/client/methods/HttpGet;
    const/4 v4, 0x0

    .line 261
    .local v4, response:Lorg/apache/http/HttpResponse;
    :try_start_2e
    invoke-interface {p1, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_31
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2e .. :try_end_31} :catch_5d
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_64

    move-result-object v4

    .line 269
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    const/16 v10, 0xcc

    if-eq v9, v10, :cond_6b

    .line 271
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "report -- not 204 response :: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/google/android/apps/translate/CsiTimer;->log(Ljava/lang/String;)V

    goto :goto_d

    .line 262
    :catch_5d
    move-exception v0

    .line 263
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    const-string v9, "report -- exception 1 :: "

    invoke-direct {p0, v9, v0}, Lcom/google/android/apps/translate/CsiTimer;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_d

    .line 265
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_64
    move-exception v0

    .line 266
    .local v0, e:Ljava/io/IOException;
    const-string v9, "report -- exception 2 :: "

    invoke-direct {p0, v9, v0}, Lcom/google/android/apps/translate/CsiTimer;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_d

    .line 275
    .end local v0           #e:Ljava/io/IOException;
    :cond_6b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 276
    .local v1, endTime:J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "report -- success (time "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v9, v1, v5

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/google/android/apps/translate/CsiTimer;->log(Ljava/lang/String;)V

    .line 277
    const/4 v8, 0x1

    goto/16 :goto_d
.end method


# virtual methods
.method public varargs begin(Ljava/lang/Long;[Ljava/lang/String;)V
    .registers 4
    .parameter "time"
    .parameter "intervalNames"

    .prologue
    .line 147
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/apps/translate/CsiTimer;->beginInternal(Ljava/lang/Long;Z[Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public varargs begin([Ljava/lang/String;)V
    .registers 6
    .parameter "intervalNames"

    .prologue
    .line 134
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 135
    .local v0, time:J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3, p1}, Lcom/google/android/apps/translate/CsiTimer;->beginInternal(Ljava/lang/Long;Z[Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public varargs end([Ljava/lang/String;)V
    .registers 13
    .parameter "intervalNames"

    .prologue
    .line 169
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 170
    .local v6, time:J
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_7
    if-ge v1, v3, :cond_8a

    aget-object v2, v0, v1

    .line 171
    .local v2, interval:Ljava/lang/String;
    const-string v8, "CsiTimer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "end action="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/apps/translate/CsiTimer;->mActionName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " interval="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v8, p0, Lcom/google/android/apps/translate/CsiTimer;->mStartTimes:Ljava/util/HashMap;

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_86

    iget-object v8, p0, Lcom/google/android/apps/translate/CsiTimer;->mIntervalTimes:Ljava/util/HashMap;

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_86

    .line 173
    iget-object v8, p0, Lcom/google/android/apps/translate/CsiTimer;->mStartTimes:Ljava/util/HashMap;

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v4, v6, v8

    .line 174
    .local v4, span:J
    iget-object v8, p0, Lcom/google/android/apps/translate/CsiTimer;->mIntervalTimes:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "end -- add("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/apps/translate/CsiTimer;->mIntervalTimes:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") -- "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/google/android/apps/translate/CsiTimer;->log(Ljava/lang/String;)V

    .line 170
    .end local v4           #span:J
    :cond_86
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_7

    .line 178
    .end local v2           #interval:Ljava/lang/String;
    :cond_8a
    return-void
.end method

.method public getActionName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/apps/translate/CsiTimer;->mActionName:Ljava/lang/String;

    return-object v0
.end method

.method public recordInterval(Ljava/lang/String;I)V
    .registers 5
    .parameter "intervalName"
    .parameter "length"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/apps/translate/CsiTimer;->mIntervalTimes:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interval -- add("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/CsiTimer;->mIntervalTimes:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/CsiTimer;->log(Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public report(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 240
    invoke-static {p1}, Lcom/google/android/apps/translate/Util;->generateUserAgentName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/translate/Util;->newHttpClient(Ljava/lang/String;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/CsiTimer;->report(Lorg/apache/http/client/HttpClient;)V

    .line 241
    return-void
.end method

.method public report(Lorg/apache/http/client/HttpClient;)V
    .registers 3
    .parameter "httpClient"

    .prologue
    .line 233
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/translate/CsiTimer;->report(Lorg/apache/http/client/HttpClient;Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method public report(Lorg/apache/http/client/HttpClient;Ljava/lang/String;)V
    .registers 7
    .parameter "httpClient"
    .parameter "additionalData"

    .prologue
    .line 217
    const-string v1, "CsiTimer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "report action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/translate/CsiTimer;->mActionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/apps/translate/CsiTimer$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/apps/translate/CsiTimer$1;-><init>(Lcom/google/android/apps/translate/CsiTimer;Lorg/apache/http/client/HttpClient;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 223
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 224
    return-void
.end method
