.class public Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;
.super Ljava/lang/Object;
.source "HandwritingCsi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;,
        Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RunningAction;
    }
.end annotation


# static fields
.field private static final ACTION_VAR:Ljava/lang/String; = "&action="

.field private static final CSI_CLIENT_RECO_PREFIX:Ljava/lang/String; = "r"

.field private static final CSI_LANG_TIME_PREFIX:Ljava/lang/String; = "t"

.field private static final CSI_RECO:Ljava/lang/String; = "rrs"

.field private static final CSI_TIME:Ljava/lang/String; = "t"

.field private static final DEBUG:Z = false

.field private static final EXPERIMENT_ID:Ljava/lang/String; = "&e="

.field private static final INTERVAL_VAR:Ljava/lang/String; = "&it="

.field private static final MAX_MAP_SIZE:I = 0x64

.field private static final SERVER_URL:Ljava/lang/String; = "http://csi.gstatic.com/csi?"

.field private static final SERVER_URL_BACKUP:Ljava/lang/String; = "http://csi.gstatic.cn/csi?"

.field private static final SERVICE_VAR:Ljava/lang/String; = "&s="

.field private static final TAG:Ljava/lang/String; = "HandwritingCsi"

.field private static final VERSION_VAR:Ljava/lang/String; = "&v="

.field public static shouldTryBackupUrl:Z


# instance fields
.field private clientName:Ljava/lang/String;

.field private final httpClient:Lorg/apache/http/client/HttpClient;

.field private numRecordedActions:I

.field final recordedActions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;",
            ">;>;"
        }
    .end annotation
.end field

.field private reportEveryN:I

.field private final runningActions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RunningAction;",
            ">;"
        }
    .end annotation
.end field

.field private final serviceName:Ljava/lang/String;

.field private final version:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->shouldTryBackupUrl:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "serviceName"

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->clientName:Ljava/lang/String;

    .line 57
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->version:I

    .line 59
    iput v1, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->reportEveryN:I

    .line 64
    iput v1, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->numRecordedActions:I

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->recordedActions:Ljava/util/HashMap;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->runningActions:Ljava/util/HashMap;

    .line 76
    iput-object p1, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->serviceName:Ljava/lang/String;

    .line 77
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v0, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/http/client/HttpClient;)V
    .registers 5
    .parameter "serviceName"
    .parameter "httpClient"

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->clientName:Ljava/lang/String;

    .line 57
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->version:I

    .line 59
    iput v1, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->reportEveryN:I

    .line 64
    iput v1, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->numRecordedActions:I

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->recordedActions:Ljava/util/HashMap;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->runningActions:Ljava/util/HashMap;

    .line 87
    iput-object p1, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->serviceName:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 89
    return-void
.end method

.method private actionName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 366
    const-string v0, "%s,%s_%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "rrs"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "r"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->clientName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private actionVariables(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .parameter "language"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 370
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 371
    .local v0, vars:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "t"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "t_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    return-object v0
.end method

.method private buildUrl(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter
    .parameter "serverUrl"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, ras:Ljava/util/List;,"Ljava/util/List<Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;>;"
    const/4 v8, 0x0

    .line 291
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;

    #getter for: Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;->name:Ljava/lang/String;
    invoke-static {v6}, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;->access$400(Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;)Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, action:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 293
    .local v4, url:Ljava/lang/StringBuilder;
    const-string v6, "&v="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    const-string v6, "&s="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->serviceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    const-string v6, "&action="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;

    #getter for: Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;->experiment:Ljava/lang/String;
    invoke-static {v6}, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;->access$500(Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_53

    .line 297
    const-string v6, "&e="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;

    #getter for: Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;->experiment:Ljava/lang/String;
    invoke-static {v6}, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;->access$500(Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    :cond_53
    const-string v6, "&it="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_91

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;

    .line 301
    .local v3, ra:Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;
    #getter for: Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;->vars:Ljava/util/List;
    invoke-static {v3}, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;->access$600(Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_70
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 302
    .local v5, v:Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    #getter for: Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;->duration:J
    invoke-static {v3}, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;->access$700(Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 305
    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_70

    .line 309
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #ra:Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;
    .end local v5           #v:Ljava/lang/String;
    :cond_91
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_a0

    .line 310
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 312
    :cond_a0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private languageCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "language"

    .prologue
    const/4 v1, 0x2

    .line 377
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v1, :cond_d

    .line 378
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 380
    :goto_c
    return-object v0

    :cond_d
    const-string v0, ""

    goto :goto_c
.end method

.method private record(Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;)V
    .registers 5
    .parameter "recordedAction"

    .prologue
    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #getter for: Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;->name:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;->access$400(Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    #getter for: Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;->experiment:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;->access$500(Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->recordedActions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 274
    iget-object v1, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->recordedActions:Ljava/util/HashMap;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_2b
    iget-object v1, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->recordedActions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    iget v1, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->numRecordedActions:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->numRecordedActions:I

    .line 278
    iget v1, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->numRecordedActions:I

    iget v2, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->reportEveryN:I

    if-lt v1, v2, :cond_45

    .line 279
    invoke-direct {p0}, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->startReporting()V

    .line 281
    :cond_45
    return-void
.end method

.method private recordAction(Ljava/lang/String;Ljava/util/List;J)V
    .registers 11
    .parameter "actionName"
    .parameter
    .parameter "duration"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 262
    .local p2, vars:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;-><init>(Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;Ljava/lang/String;Ljava/util/List;J)V

    invoke-direct {p0, v0}, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->record(Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;)V

    .line 263
    return-void
.end method

.method private startAction(Ljava/lang/String;Ljava/util/List;I)V
    .registers 13
    .parameter "actionName"
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p2, vars:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 230
    .local v5, startTime:J
    iget-object v0, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->runningActions:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 235
    :cond_10
    iget-object v7, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->runningActions:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RunningAction;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RunningAction;-><init>(Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;J)V

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    return-void
.end method

.method private startActionWithExperiment(Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)V
    .registers 15
    .parameter "actionName"
    .parameter
    .parameter "id"
    .parameter "experiment"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 240
    .local p2, vars:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 241
    .local v5, startTime:J
    iget-object v0, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->runningActions:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 246
    :cond_10
    iget-object v8, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->runningActions:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RunningAction;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RunningAction;-><init>(Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;JLjava/lang/String;)V

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    return-void
.end method

.method private startReporting()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 162
    .local v0, tmpRecordedActions:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;>;>;"
    iget-object v1, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->recordedActions:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 163
    iget-object v1, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->recordedActions:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 164
    iput v3, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->numRecordedActions:I

    .line 166
    iget-object v1, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->runningActions:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_21

    .line 167
    iget-object v1, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->runningActions:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 170
    :cond_21
    new-instance v1, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$1;

    invoke-direct {v1, p0, v0}, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$1;-><init>(Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;Ljava/util/HashMap;)V

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 177
    return-void
.end method

.method private stopAction(I)V
    .registers 7
    .parameter "id"

    .prologue
    .line 250
    iget-object v3, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->runningActions:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 259
    :goto_c
    return-void

    .line 256
    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 257
    .local v1, stopTime:J
    iget-object v3, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->runningActions:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RunningAction;

    .line 258
    .local v0, action:Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RunningAction;
    new-instance v3, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;-><init>(Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RunningAction;J)V

    invoke-direct {p0, v3}, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->record(Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;)V

    goto :goto_c
.end method


# virtual methods
.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->startReporting()V

    .line 182
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 183
    return-void
.end method

.method public recordRecognition(Ljava/lang/String;J)V
    .registers 6
    .parameter "language"
    .parameter "duration"

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->actionName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->actionVariables(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->recordAction(Ljava/lang/String;Ljava/util/List;J)V

    .line 154
    return-void
.end method

.method report(Ljava/util/HashMap;)V
    .registers 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, recordedActions:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi$RecordedAction;>;>;"
    const/16 v8, 0xcc

    .line 320
    const/4 v2, 0x0

    .line 321
    .local v2, hasException:Z
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 322
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const-string v7, "http://csi.gstatic.com/csi?"

    invoke-direct {p0, v6, v7}, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->buildUrl(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 327
    .local v5, url:Ljava/lang/String;
    :try_start_23
    iget-object v6, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->httpClient:Lorg/apache/http/client/HttpClient;

    new-instance v7, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v7, v5}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 328
    .local v4, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_35} :catch_39

    move-result v6

    if-eq v6, v8, :cond_b

    .line 363
    .end local v0           #action:Ljava/lang/String;
    .end local v4           #resp:Lorg/apache/http/HttpResponse;
    .end local v5           #url:Ljava/lang/String;
    :cond_38
    :goto_38
    return-void

    .line 335
    .restart local v0       #action:Ljava/lang/String;
    .restart local v5       #url:Ljava/lang/String;
    :catch_39
    move-exception v1

    .line 336
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x1

    .line 344
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #e:Ljava/lang/Exception;
    .end local v5           #url:Ljava/lang/String;
    :cond_3b
    if-eqz v2, :cond_38

    sget-boolean v6, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->shouldTryBackupUrl:Z

    if-eqz v6, :cond_38

    .line 349
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_49
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 350
    .restart local v0       #action:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    const-string v7, "http://csi.gstatic.cn/csi?"

    invoke-direct {p0, v6, v7}, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->buildUrl(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 352
    .restart local v5       #url:Ljava/lang/String;
    :try_start_61
    iget-object v6, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->httpClient:Lorg/apache/http/client/HttpClient;

    new-instance v7, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v7, v5}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 353
    .restart local v4       #resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_73} :catch_77

    move-result v6

    if-eq v6, v8, :cond_49

    goto :goto_38

    .line 356
    .end local v4           #resp:Lorg/apache/http/HttpResponse;
    :catch_77
    move-exception v1

    .line 360
    .restart local v1       #e:Ljava/lang/Exception;
    goto :goto_38
.end method

.method public setClientName(Ljava/lang/String;)V
    .registers 2
    .parameter "clientName"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->clientName:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setReportEveryN(I)V
    .registers 2
    .parameter "reportEveryN"

    .prologue
    .line 118
    iput p1, p0, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->reportEveryN:I

    .line 119
    return-void
.end method

.method public startRecognition(Ljava/lang/String;I)V
    .registers 6
    .parameter "language"
    .parameter "requestId"

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->languageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, langCode:Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 131
    invoke-direct {p0}, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->actionName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->actionVariables(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v1, v2, p2}, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->startAction(Ljava/lang/String;Ljava/util/List;I)V

    .line 135
    :goto_15
    return-void

    .line 133
    :cond_16
    invoke-direct {p0}, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->actionName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->actionVariables(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v1, v2, p2, p1}, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->startActionWithExperiment(Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    goto :goto_15
.end method

.method public stopRecognition(I)V
    .registers 2
    .parameter "requestId"

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/google/research/handwriting/networkrecognizer/HandwritingCsi;->stopAction(I)V

    .line 144
    return-void
.end method
