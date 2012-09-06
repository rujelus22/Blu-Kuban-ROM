.class Lcom/google/android/ytremote/backend/browserchannel/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field protected a:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;

.field protected b:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;

.field volatile c:Ljava/lang/String;

.field private e:I

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Lcom/google/android/ytremote/backend/browserchannel/ChunkStream;

.field private final i:Lcom/google/net/async/p;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const-class v0, Lcom/google/android/ytremote/backend/browserchannel/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/ytremote/backend/browserchannel/a;->d:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/net/async/p;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/ytremote/backend/browserchannel/s;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .registers 20
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 143
    new-instance v8, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;

    invoke-direct {v8, p1, p2, p3, p4}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;-><init>(Landroid/content/Context;Lcom/google/net/async/p;Ljava/lang/String;I)V

    .line 144
    new-instance v9, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;

    invoke-direct {v9, p1, p2, p3, p4}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;-><init>(Landroid/content/Context;Lcom/google/net/async/p;Ljava/lang/String;I)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    invoke-direct/range {v0 .. v9}, Lcom/google/android/ytremote/backend/browserchannel/a;-><init>(Lcom/google/net/async/p;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/ytremote/backend/browserchannel/s;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;)V

    .line 145
    return-void
.end method

.method private constructor <init>(Lcom/google/net/async/p;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/ytremote/backend/browserchannel/s;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation build Lcom/google/android/ytremote/util/VisibleForTesting;
    .end annotation

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/ytremote/backend/browserchannel/a;->n:I

    .line 159
    invoke-static {p2}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/a;->f:Ljava/lang/String;

    .line 160
    const-string v0, "/"

    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "channelPathPrefix must end with \'/\'"

    invoke-static {v0, v1}, Lcom/google/android/ytremote/util/b;->a(ZLjava/lang/Object;)V

    .line 161
    iput-object p3, p0, Lcom/google/android/ytremote/backend/browserchannel/a;->g:Ljava/lang/String;

    .line 162
    invoke-static {p7}, Lcom/google/android/ytremote/a/c/a;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/a;->k:Ljava/lang/String;

    .line 163
    invoke-static {p5}, Lcom/google/android/ytremote/a/c/a;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/a;->l:Ljava/lang/String;

    .line 164
    invoke-static {p6}, Lcom/google/android/ytremote/a/c/a;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/a;->j:Ljava/lang/String;

    .line 166
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/ytremote/backend/browserchannel/a;->o:I

    .line 167
    iput-object p8, p0, Lcom/google/android/ytremote/backend/browserchannel/a;->a:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;

    .line 168
    iput-object p9, p0, Lcom/google/android/ytremote/backend/browserchannel/a;->b:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;

    .line 169
    new-instance v0, Lcom/google/android/ytremote/backend/browserchannel/ChunkStream;

    invoke-direct {v0}, Lcom/google/android/ytremote/backend/browserchannel/ChunkStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/a;->h:Lcom/google/android/ytremote/backend/browserchannel/ChunkStream;

    .line 170
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/a;->h:Lcom/google/android/ytremote/backend/browserchannel/ChunkStream;

    new-instance v1, Lcom/google/android/ytremote/backend/browserchannel/q;

    invoke-direct {v1, p0, p4}, Lcom/google/android/ytremote/backend/browserchannel/q;-><init>(Lcom/google/android/ytremote/backend/browserchannel/a;Lcom/google/android/ytremote/backend/browserchannel/s;)V

    invoke-virtual {v0, v1}, Lcom/google/android/ytremote/backend/browserchannel/ChunkStream;->a(Lcom/google/android/ytremote/backend/browserchannel/d;)V

    .line 171
    iput-object p1, p0, Lcom/google/android/ytremote/backend/browserchannel/a;->i:Lcom/google/net/async/p;

    .line 172
    return-void
.end method

.method private b(Lcom/google/android/ytremote/backend/model/Method;Lcom/google/android/ytremote/backend/model/Params;)Ljava/lang/String;
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 375
    iget v1, p0, Lcom/google/android/ytremote/backend/browserchannel/a;->n:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/google/android/ytremote/backend/browserchannel/a;->n:I

    .line 377
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "count=1"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 378
    const-string v2, "&req"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 379
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 380
    const-string v2, "__sc="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 381
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 382
    invoke-virtual {p2}, Lcom/google/android/ytremote/backend/model/Params;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_30

    .line 390
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 382
    :cond_30
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/ytremote/backend/model/d;

    .line 383
    const-string v4, "&req"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 384
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 385
    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 386
    iget-object v5, v0, Lcom/google/android/ytremote/backend/model/d;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 387
    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 388
    iget-object v0, v0, Lcom/google/android/ytremote/backend/model/d;->b:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_5d} :catch_5e

    goto :goto_25

    .line 391
    :catch_5e
    move-exception v0

    .line 392
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "?RID=TBD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_50

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "&SID="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/ytremote/backend/browserchannel/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&VER=8&CVER=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 405
    iget-object v1, p0, Lcom/google/android/ytremote/backend/browserchannel/a;->m:Ljava/lang/String;

    if-eqz v1, :cond_4f

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&gsessionid="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/ytremote/backend/browserchannel/a;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 408
    :cond_4f
    return-object v0

    .line 404
    :cond_50
    const-string v0, ""

    goto :goto_24
.end method

.method static synthetic c()Ljava/lang/String;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/google/android/ytremote/backend/browserchannel/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connection: Keep-Alive\r\nContent-Length: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\nContent-Type: application/x-www-form-urlencoded\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 424
    const-string v1, "Host: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/ytremote/backend/browserchannel/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 425
    const-string v1, "\r\nUser-Agent: YouTubeRemote\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/ytremote/backend/browserchannel/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 423
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized d(Ljava/lang/String;)Lcom/google/android/ytremote/backend/browserchannel/h;
    .registers 5
    .parameter

    .prologue
    .line 449
    monitor-enter p0

    :try_start_1
    const-string v0, "RID=TBD"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RID="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/android/ytremote/backend/browserchannel/a;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 450
    iget-object v1, p0, Lcom/google/android/ytremote/backend/browserchannel/a;->b:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;

    invoke-virtual {v1, v0}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->a(Ljava/lang/String;)Lcom/google/android/ytremote/backend/browserchannel/h;

    move-result-object v0

    .line 451
    invoke-virtual {v0}, Lcom/google/android/ytremote/backend/browserchannel/h;->b()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2c

    .line 452
    iget v1, p0, Lcom/google/android/ytremote/backend/browserchannel/a;->o:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/ytremote/backend/browserchannel/a;->o:I
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2e

    .line 454
    :cond_2c
    monitor-exit p0

    return-object v0

    .line 449
    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Lcom/google/android/ytremote/backend/model/Method;Lcom/google/android/ytremote/backend/model/Params;)Lcom/google/android/ytremote/backend/browserchannel/h;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/ytremote/backend/browserchannel/a;->g:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "bind"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/ytremote/backend/browserchannel/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 346
    invoke-direct {p0, p1, p2}, Lcom/google/android/ytremote/backend/browserchannel/a;->b(Lcom/google/android/ytremote/backend/model/Method;Lcom/google/android/ytremote/backend/model/Params;)Ljava/lang/String;

    move-result-object v1

    .line 347
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "POST "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " HTTP/1.1\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v1}, Lcom/google/android/ytremote/backend/browserchannel/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 348
    sget-object v1, Lcom/google/android/ytremote/backend/browserchannel/a;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendJson: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-direct {p0, v0}, Lcom/google/android/ytremote/backend/browserchannel/a;->d(Ljava/lang/String;)Lcom/google/android/ytremote/backend/browserchannel/h;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .registers 5

    .prologue
    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/ytremote/backend/browserchannel/a;->g:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "bind"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/ytremote/backend/browserchannel/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/ytremote/backend/browserchannel/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "POST "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " HTTP/1.1\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/ytremote/backend/browserchannel/a;->l:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/android/ytremote/backend/browserchannel/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    sget-object v1, Lcom/google/android/ytremote/backend/browserchannel/a;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sending connect request: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-direct {p0, v0}, Lcom/google/android/ytremote/backend/browserchannel/a;->d(Ljava/lang/String;)Lcom/google/android/ytremote/backend/browserchannel/h;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lcom/google/android/ytremote/backend/browserchannel/a;->h:Lcom/google/android/ytremote/backend/browserchannel/ChunkStream;

    invoke-virtual {v0}, Lcom/google/android/ytremote/backend/browserchannel/h;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/ytremote/backend/browserchannel/ChunkStream;->a(I)V

    .line 197
    iget-object v1, p0, Lcom/google/android/ytremote/backend/browserchannel/a;->h:Lcom/google/android/ytremote/backend/browserchannel/ChunkStream;

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/ytremote/backend/browserchannel/h;->a()[B

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/ytremote/backend/browserchannel/ChunkStream;->a([C)I

    .line 198
    return-void
.end method

.method final a(I)V
    .registers 2
    .parameter

    .prologue
    .line 364
    iput p1, p0, Lcom/google/android/ytremote/backend/browserchannel/a;->e:I

    .line 365
    return-void
.end method

.method final a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 371
    iput-object p1, p0, Lcom/google/android/ytremote/backend/browserchannel/a;->m:Ljava/lang/String;

    .line 372
    return-void
.end method

.method public final a(Z)V
    .registers 5
    .parameter

    .prologue
    .line 313
    if-eqz p1, :cond_8a

    const-string v0, "1"

    .line 314
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/ytremote/backend/browserchannel/a;->g:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "bind?RID=rpc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&SID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/ytremote/backend/browserchannel/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&AID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/ytremote/backend/browserchannel/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 315
    const-string v2, "&CI="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&TYPE=xmlhttp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 314
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 318
    iget-object v1, p0, Lcom/google/android/ytremote/backend/browserchannel/a;->m:Ljava/lang/String;

    if-eqz v1, :cond_5e

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&gsessionid="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/ytremote/backend/browserchannel/a;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 321
    :cond_5e
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GET "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " HTTP/1.1\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/google/android/ytremote/backend/browserchannel/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    iget-object v1, p0, Lcom/google/android/ytremote/backend/browserchannel/a;->a:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;

    iget-object v2, p0, Lcom/google/android/ytremote/backend/browserchannel/a;->h:Lcom/google/android/ytremote/backend/browserchannel/ChunkStream;

    invoke-virtual {v1, v2}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->a(Lcom/google/android/ytremote/backend/browserchannel/g;)V

    .line 325
    iget-object v1, p0, Lcom/google/android/ytremote/backend/browserchannel/a;->a:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;

    invoke-virtual {v1, v0}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->a(Ljava/lang/String;)Lcom/google/android/ytremote/backend/browserchannel/h;

    .line 326
    return-void

    .line 313
    :cond_8a
    const-string v0, "0"

    goto/16 :goto_4
.end method

.method public final a(ZZ)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 209
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/ytremote/backend/browserchannel/a;->g:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "bind"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/ytremote/backend/browserchannel/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&TYPE=terminate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    if-eqz p2, :cond_41

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&ui"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    :cond_41
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GET "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " HTTP/1.1\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/google/android/ytremote/backend/browserchannel/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-direct {p0, v0}, Lcom/google/android/ytremote/backend/browserchannel/a;->d(Ljava/lang/String;)Lcom/google/android/ytremote/backend/browserchannel/h;
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_63} :catch_76

    .line 229
    :goto_63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/a;->c:Ljava/lang/String;

    .line 230
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/a;->b:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;

    invoke-virtual {v0}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->a()V

    .line 231
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/a;->a:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;

    invoke-virtual {v0}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->a()V

    .line 232
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/a;->i:Lcom/google/net/async/p;

    invoke-virtual {v0}, Lcom/google/net/async/p;->c()V

    .line 233
    return-void

    .line 225
    :catch_76
    move-exception v0

    .line 226
    sget-object v1, Lcom/google/android/ytremote/backend/browserchannel/a;->d:Ljava/lang/String;

    const-string v2, "Terminate request failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_63
.end method

.method public final b()Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/ytremote/backend/browserchannel/a;->g:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "test?VER=8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&TYPE=xmlhttp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GET "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " HTTP/1.1\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/google/android/ytremote/backend/browserchannel/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    new-array v1, v3, [Z

    aput-boolean v3, v1, v4

    .line 259
    new-instance v2, Lcom/google/android/ytremote/backend/browserchannel/b;

    invoke-direct {v2, p0, v1}, Lcom/google/android/ytremote/backend/browserchannel/b;-><init>(Lcom/google/android/ytremote/backend/browserchannel/a;[Z)V

    .line 285
    iget-object v3, p0, Lcom/google/android/ytremote/backend/browserchannel/a;->b:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;

    invoke-virtual {v3, v2}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->a(Lcom/google/android/ytremote/backend/browserchannel/g;)V

    .line 286
    iget-object v2, p0, Lcom/google/android/ytremote/backend/browserchannel/a;->b:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;

    invoke-virtual {v2, v0}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->a(Ljava/lang/String;)Lcom/google/android/ytremote/backend/browserchannel/h;

    .line 287
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/a;->b:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->a(Lcom/google/android/ytremote/backend/browserchannel/g;)V

    .line 288
    aget-boolean v0, v1, v4

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Session id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/ytremote/backend/browserchannel/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " GFE Session cookie: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/ytremote/backend/browserchannel/a;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
