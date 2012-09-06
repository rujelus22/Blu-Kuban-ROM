.class Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field private static final b:Ljava/lang/String;

.field private static c:Z

.field private static synthetic u:[I


# instance fields
.field private d:Ljava/net/InetSocketAddress;

.field private e:Ljava/io/ByteArrayOutputStream;

.field private f:I

.field private g:Ljava/io/ByteArrayOutputStream;

.field private h:Lcom/google/net/async/l;

.field private i:I

.field private final j:Landroid/content/Context;

.field private k:Ljava/util/Map;

.field private l:Lcom/google/net/async/p;

.field private m:Lcom/google/android/ytremote/backend/browserchannel/g;

.field private n:Ljava/io/ByteArrayOutputStream;

.field private o:Ljava/util/Map;

.field private p:Z

.field private final q:Ljava/util/concurrent/LinkedBlockingQueue;

.field private r:Ljava/io/ByteArrayOutputStream;

.field private s:I

.field private t:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 266
    const-class v0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->a:Ljava/util/logging/Logger;

    .line 267
    const-class v0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->b:Ljava/lang/String;

    .line 268
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->c:Z

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/net/async/p;Ljava/lang/String;I)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-object p2, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->l:Lcom/google/net/async/p;

    .line 307
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p3, p4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->d:Ljava/net/InetSocketAddress;

    .line 308
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->q:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->h:Lcom/google/net/async/l;

    .line 310
    sget-object v0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;->HEADER:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    iput-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->t:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    .line 311
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->p:Z

    .line 312
    iput-object p1, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->j:Landroid/content/Context;

    .line 313
    return-void
.end method

.method private a([BIIZ)I
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 762
    invoke-static {p1, p2, p3}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->b([BII)I

    move-result v1

    .line 763
    if-eq v1, v5, :cond_10b

    .line 764
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->n:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 765
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->n:Ljava/io/ByteArrayOutputStream;

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 766
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    if-eqz p4, :cond_71

    sget-object v0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;->BODY:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    iput-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->t:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->o:Ljava/util/Map;

    const-string v2, "transfer-encoding"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    const-string v0, "chunked"

    iget-object v2, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->o:Ljava/util/Map;

    const-string v3, "transfer-encoding"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    sget-object v0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;->CHUNK_SIZE:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    iput-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->t:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    .line 767
    :cond_42
    :goto_42
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->n:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 768
    add-int/lit8 p3, v1, 0x2

    .line 773
    :goto_49
    return p3

    .line 766
    :cond_4a
    new-instance v0, Lcom/google/android/ytremote/logic/exception/HttpConnectionException;

    const-string v1, "Unknown transfer-encoding"

    invoke-direct {v0, v1}, Lcom/google/android/ytremote/logic/exception/HttpConnectionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_52
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->o:Ljava/util/Map;

    const-string v2, "content-length"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->o:Ljava/util/Map;

    const-string v2, "content-length"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->i:I

    goto :goto_42

    :cond_71
    sget-object v0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;->DONE:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    iput-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->t:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    iput-boolean v7, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->p:Z

    goto :goto_42

    :cond_78
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v5, :cond_b8

    if-eqz p4, :cond_b8

    iget v3, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->s:I

    if-nez v3, :cond_b8

    const-string v2, "HTTP/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_42

    const-string v3, " "

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v5, :cond_42

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->s:I

    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->m:Lcom/google/android/ytremote/backend/browserchannel/g;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->m:Lcom/google/android/ytremote/backend/browserchannel/g;

    iget v2, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->s:I

    invoke-interface {v0, v2}, Lcom/google/android/ytremote/backend/browserchannel/g;->a(I)V

    goto :goto_42

    :cond_b8
    iget v3, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->s:I

    if-nez v3, :cond_c4

    new-instance v0, Lcom/google/android/ytremote/logic/exception/HttpConnectionException;

    const-string v1, "Received header fields without HTTP response code"

    invoke-direct {v0, v1}, Lcom/google/android/ytremote/logic/exception/HttpConnectionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c4
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "set-cookie"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_104

    const-string v0, ";"

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v6

    const-string v2, "="

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->k:Ljava/util/Map;

    aget-object v3, v0, v6

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aget-object v0, v0, v7

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_42

    :cond_104
    iget-object v2, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->o:Ljava/util/Map;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_42

    .line 772
    :cond_10b
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->n:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto/16 :goto_49
.end method

.method static synthetic a(Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;)Lcom/google/net/async/l;
    .registers 2
    .parameter

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->h:Lcom/google/net/async/l;

    return-object v0
.end method

.method private a([BII)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 531
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->r:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 532
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->m:Lcom/google/android/ytremote/backend/browserchannel/g;

    if-eqz v0, :cond_e

    .line 533
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->m:Lcom/google/android/ytremote/backend/browserchannel/g;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/ytremote/backend/browserchannel/g;->a([BII)V

    .line 535
    :cond_e
    return-void
.end method

.method private static b([BII)I
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 829
    const/4 v0, 0x0

    :goto_1
    add-int/lit8 v1, p2, -0x1

    if-lt v0, v1, :cond_7

    .line 834
    const/4 v0, -0x1

    :cond_6
    return v0

    .line 830
    :cond_7
    add-int v1, p1, v0

    aget-byte v1, p0, v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_19

    add-int v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aget-byte v1, p0, v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_6

    .line 829
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static synthetic b(Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;)Ljava/util/concurrent/LinkedBlockingQueue;
    .registers 2
    .parameter

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->q:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method private static synthetic b()[I
    .registers 3

    .prologue
    .line 38
    sget-object v0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->u:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;->values()[Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;->BODY:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    invoke-virtual {v1}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_5a

    :goto_15
    :try_start_15
    sget-object v1, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;->CHUNK_DATA:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    invoke-virtual {v1}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_58

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;->CHUNK_END:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    invoke-virtual {v1}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_56

    :goto_27
    :try_start_27
    sget-object v1, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;->CHUNK_SIZE:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    invoke-virtual {v1}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_54

    :goto_30
    :try_start_30
    sget-object v1, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;->DONE:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    invoke-virtual {v1}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_39} :catch_52

    :goto_39
    :try_start_39
    sget-object v1, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;->HEADER:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    invoke-virtual {v1}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_42} :catch_50

    :goto_42
    :try_start_42
    sget-object v1, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;->TRAILER:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    invoke-virtual {v1}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42 .. :try_end_4b} :catch_4e

    :goto_4b
    sput-object v0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->u:[I

    goto :goto_4

    :catch_4e
    move-exception v1

    goto :goto_4b

    :catch_50
    move-exception v1

    goto :goto_42

    :catch_52
    move-exception v1

    goto :goto_39

    :catch_54
    move-exception v1

    goto :goto_30

    :catch_56
    move-exception v1

    goto :goto_27

    :catch_58
    move-exception v1

    goto :goto_1e

    :catch_5a
    move-exception v1

    goto :goto_15
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Lcom/google/android/ytremote/backend/browserchannel/h;
    .registers 13
    .parameter

    .prologue
    const/16 v5, 0xa

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 350
    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/ytremote/a/d/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 351
    sget-object v0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No network connection - request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not sent."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    new-instance v0, Lcom/google/android/ytremote/backend/browserchannel/NetworkNotAvailableException;

    const-string v1, "No network connection"

    invoke-direct {v0, v1}, Lcom/google/android/ytremote/backend/browserchannel/NetworkNotAvailableException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_2f

    .line 350
    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 355
    :cond_32
    const/4 v0, 0x0

    :try_start_33
    iput v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->s:I

    .line 356
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->r:Ljava/io/ByteArrayOutputStream;

    .line 358
    sget-object v0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;->HEADER:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    iput-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->t:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    .line 359
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->f:I

    .line 360
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->p:Z

    .line 363
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->n:Ljava/io/ByteArrayOutputStream;

    .line 364
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->g:Ljava/io/ByteArrayOutputStream;

    .line 365
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->e:Ljava/io/ByteArrayOutputStream;

    .line 367
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->o:Ljava/util/Map;

    .line 368
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->k:Ljava/util/Map;

    .line 371
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->h:Lcom/google/net/async/l;

    if-nez v0, :cond_8f

    .line 372
    invoke-virtual {p0}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->a()V

    new-instance v0, Lcom/google/net/async/l;

    iget-object v1, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->l:Lcom/google/net/async/p;

    new-instance v2, Lcom/google/android/ytremote/backend/browserchannel/e;

    invoke-direct {v2, p0}, Lcom/google/android/ytremote/backend/browserchannel/e;-><init>(Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;)V

    invoke-direct {v0, v1, v2}, Lcom/google/net/async/l;-><init>(Lcom/google/net/async/u;Lcom/google/net/async/f;)V

    iput-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->h:Lcom/google/net/async/l;

    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->h:Lcom/google/net/async/l;

    iget-object v1, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->d:Ljava/net/InetSocketAddress;

    new-instance v2, Lcom/google/android/ytremote/backend/browserchannel/f;

    invoke-direct {v2, p0}, Lcom/google/android/ytremote/backend/browserchannel/f;-><init>(Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/net/async/l;->a(Ljava/net/InetSocketAddress;Lcom/google/net/async/n;)V

    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->h:Lcom/google/net/async/l;

    invoke-virtual {v0}, Lcom/google/net/async/l;->d()V

    .line 376
    :cond_8f
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->h:Lcom/google/net/async/l;

    invoke-virtual {v0}, Lcom/google/net/async/l;->c()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 377
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->h:Lcom/google/net/async/l;

    invoke-virtual {v0}, Lcom/google/net/async/l;->e()V

    .line 380
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 384
    :cond_a6
    iget-boolean v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->p:Z

    if-eqz v0, :cond_dd

    move v0, v4

    .line 482
    :goto_ab
    iget-object v2, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->h:Lcom/google/net/async/l;

    if-nez v2, :cond_325

    .line 483
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->q:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_333

    .line 484
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 485
    :goto_bc
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->q:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2e8

    .line 498
    new-instance v0, Lcom/google/android/ytremote/logic/exception/HttpConnectionException;

    .line 499
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Request completed with data still in the incoming queue:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 498
    invoke-direct {v0, v1}, Lcom/google/android/ytremote/logic/exception/HttpConnectionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_dd
    sget-object v0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;->BODY:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    iget-object v2, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->t:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    invoke-virtual {v0, v2}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f8

    iget v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->i:I

    if-nez v0, :cond_f8

    .line 387
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->q:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f8

    .line 390
    invoke-virtual {p0}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->a()V

    move v0, v3

    .line 392
    goto :goto_ab

    .line 398
    :cond_f8
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->q:Ljava/util/concurrent/LinkedBlockingQueue;

    const-wide/16 v6, 0x3c

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v7, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem;

    .line 405
    if-eqz v0, :cond_10c

    invoke-virtual {v0}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem;->c()Z

    move-result v2

    if-eqz v2, :cond_111

    .line 406
    :cond_10c
    invoke-virtual {p0}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->a()V

    move v0, v3

    .line 408
    goto :goto_ab

    .line 411
    :cond_111
    invoke-virtual {v0}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem;->d()Z

    move-result v2

    if-eqz v2, :cond_126

    .line 412
    invoke-virtual {p0}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->a()V

    .line 413
    new-instance v1, Lcom/google/android/ytremote/logic/exception/HttpConnectionException;

    const-string v2, "Error occurred in connection"

    invoke-virtual {v0}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem;->b()Ljava/lang/Exception;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/ytremote/logic/exception/HttpConnectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 417
    :cond_126
    invoke-virtual {v0}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 419
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 423
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    .line 424
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    move v6, v4

    .line 428
    :goto_13a
    if-eqz v2, :cond_a6

    .line 430
    sget-boolean v0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->c:Z

    if-eqz v0, :cond_18e

    .line 431
    sget-object v8, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->a:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, "PRE offset = "

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "; lengthRemaining = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 432
    const-string v9, "; responseState = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v9, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->t:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "; chunkLength = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v9, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->f:I

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 433
    const-string v9, "\nNext few bytes: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 434
    new-instance v10, Ljava/lang/String;

    if-ge v2, v5, :cond_242

    move v0, v2

    :goto_17a
    invoke-direct {v10, v7, v6, v0}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 435
    const-string v9, "\n-----------------------"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 431
    invoke-virtual {v8, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 437
    :cond_18e
    invoke-static {}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->b()[I

    move-result-object v0

    iget-object v8, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->t:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    invoke-virtual {v8}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;->ordinal()I

    move-result v8

    aget v0, v0, v8

    packed-switch v0, :pswitch_data_34e

    move v0, v2

    .line 461
    :goto_19e
    sget-boolean v8, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->c:Z

    if-eqz v8, :cond_1d7

    .line 462
    sget-object v8, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->a:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "POST ; responseState = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->t:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; consumedNow = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 463
    const-string v10, "\nconsumed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v7, v6, v0}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 464
    const-string v10, "\n-----------------------"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 462
    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 467
    :cond_1d7
    if-nez v0, :cond_2e4

    .line 469
    iget-object v8, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->t:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    sget-object v9, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;->BODY:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    if-ne v8, v9, :cond_1e3

    iget v8, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->i:I

    if-eqz v8, :cond_2e4

    .line 471
    :cond_1e3
    new-instance v0, Lcom/google/android/ytremote/logic/exception/HttpConnectionException;

    .line 472
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unable to process data in state "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->t:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\nlengthRemaining: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 473
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\ncontentLength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\noffset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 474
    const-string v2, "\nbytes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nRequest:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nResponse:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 475
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 472
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 471
    invoke-direct {v0, v1}, Lcom/google/android/ytremote/logic/exception/HttpConnectionException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_242
    move v0, v5

    .line 434
    goto/16 :goto_17a

    .line 439
    :pswitch_245
    const/4 v0, 0x1

    invoke-direct {p0, v7, v6, v2, v0}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->a([BIIZ)I

    move-result v0

    goto/16 :goto_19e

    .line 442
    :pswitch_24c
    iget v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->i:I

    iget-object v8, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->r:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    sub-int/2addr v0, v8

    if-lt v2, v0, :cond_34b

    iget v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->i:I

    iget-object v8, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->r:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    sub-int/2addr v0, v8

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->p:Z

    :goto_263
    invoke-direct {p0, v7, v6, v0}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->a([BII)V

    goto/16 :goto_19e

    :pswitch_268
    move v0, v2

    .line 447
    goto/16 :goto_19e

    .line 449
    :pswitch_26b
    const/4 v0, 0x0

    invoke-direct {p0, v7, v6, v2, v0}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->a([BIIZ)I

    move-result v0

    goto/16 :goto_19e

    .line 452
    :pswitch_272
    invoke-static {v7, v6, v2}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->b([BII)I

    move-result v0

    const/4 v8, -0x1

    if-eq v0, v8, :cond_2a3

    sget-object v8, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;->CHUNK_DATA:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    iput-object v8, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->t:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    iget-object v8, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->g:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v8, v7, v6, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v8, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->g:Ljava/io/ByteArrayOutputStream;

    const-string v9, "UTF-8"

    invoke-virtual {v8, v9}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->f:I

    iget v8, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->f:I

    if-nez v8, :cond_29a

    sget-object v8, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;->TRAILER:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    iput-object v8, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->t:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    :cond_29a
    iget-object v8, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->g:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->reset()V

    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_19e

    :cond_2a3
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->g:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v7, v6, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    move v0, v2

    goto/16 :goto_19e

    .line 455
    :pswitch_2ab
    iget v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->f:I

    if-lt v2, v0, :cond_348

    iget v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->f:I

    sget-object v8, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;->CHUNK_END:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    iput-object v8, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->t:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    :goto_2b5
    invoke-direct {p0, v7, v6, v0}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->a([BII)V

    iget v8, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->f:I

    sub-int/2addr v8, v0

    iput v8, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->f:I

    goto/16 :goto_19e

    .line 458
    :pswitch_2bf
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->e:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    add-int v8, v2, v0

    const/4 v9, 0x2

    if-lt v8, v9, :cond_2dc

    rsub-int/lit8 v0, v0, 0x2

    iget-object v8, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->e:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v8, v7, v6, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    sget-object v8, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;->CHUNK_SIZE:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    iput-object v8, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->t:Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$ResponseState;

    iget-object v8, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->e:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto/16 :goto_19e

    :cond_2dc
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->e:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v7, v6, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    move v0, v2

    goto/16 :goto_19e

    .line 477
    :cond_2e4
    add-int/2addr v6, v0

    .line 478
    sub-int/2addr v2, v0

    goto/16 :goto_13a

    .line 488
    :cond_2e8
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->q:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem;

    .line 490
    invoke-virtual {v0}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem;->c()Z

    move-result v2

    if-eqz v2, :cond_2fd

    .line 491
    const-string v0, "\nclosed event"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_bc

    .line 492
    :cond_2fd
    invoke-virtual {v0}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem;->d()Z

    move-result v2

    if-eqz v2, :cond_312

    .line 493
    const-string v2, "\nerror: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem;->b()Ljava/lang/Exception;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_bc

    .line 495
    :cond_312
    const-string v2, "\ndata: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection$IncomingItem;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_bc

    .line 501
    :cond_325
    iget-boolean v2, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->p:Z

    if-nez v2, :cond_333

    if-nez v0, :cond_333

    .line 502
    new-instance v0, Lcom/google/android/ytremote/logic/exception/HttpConnectionException;

    const-string v1, "Abrupt connection end"

    invoke-direct {v0, v1}, Lcom/google/android/ytremote/logic/exception/HttpConnectionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 505
    :cond_333
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->r:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 506
    new-instance v0, Lcom/google/android/ytremote/backend/browserchannel/h;

    iget-boolean v2, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->p:Z

    iget v3, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->s:I

    iget-object v5, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->o:Ljava/util/Map;

    iget-object v6, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->k:Ljava/util/Map;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/ytremote/backend/browserchannel/h;-><init>(Ljava/io/ByteArrayOutputStream;ZI[BLjava/util/Map;Ljava/util/Map;)V
    :try_end_346
    .catchall {:try_start_33 .. :try_end_346} :catchall_2f

    monitor-exit p0

    return-object v0

    :cond_348
    move v0, v2

    goto/16 :goto_2b5

    :cond_34b
    move v0, v2

    goto/16 :goto_263

    .line 437
    :pswitch_data_34e
    .packed-switch 0x1
        :pswitch_24c
        :pswitch_2ab
        :pswitch_2bf
        :pswitch_272
        :pswitch_268
        :pswitch_245
        :pswitch_26b
    .end packed-switch
.end method

.method public final a()V
    .registers 2

    .prologue
    .line 320
    :try_start_0
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->h:Lcom/google/net/async/l;

    if-eqz v0, :cond_c

    .line 321
    iget-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->h:Lcom/google/net/async/l;

    invoke-virtual {v0}, Lcom/google/net/async/l;->f()V

    .line 322
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->h:Lcom/google/net/async/l;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    .line 327
    :cond_c
    :goto_c
    return-void

    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method public final a(Lcom/google/android/ytremote/backend/browserchannel/g;)V
    .registers 2
    .parameter

    .prologue
    .line 518
    iput-object p1, p0, Lcom/google/android/ytremote/backend/browserchannel/HttpClientConnection;->m:Lcom/google/android/ytremote/backend/browserchannel/g;

    .line 519
    return-void
.end method
