.class public abstract Lcom/vlingo/client/core/http/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# static fields
.field protected static final DEFAULT_RETRY_COUNT:I

.field private static ImplClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field protected callback:Lcom/vlingo/client/core/http/HttpCallback;

.field protected volatile client:Lcom/vlingo/client/core/recognizer/ClientMeta;

.field private volatile cookie:Ljava/lang/Object;

.field protected volatile cookies:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile countRetries:I

.field protected data:[B

.field protected volatile extraHeaders:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile flagForRetry:Z

.field protected volatile gzipPostData:Z

.field private volatile m_Canceled:Z

.field protected volatile maxRetry:I

.field protected volatile method:Ljava/lang/String;

.field protected volatile software:Lcom/vlingo/client/core/recognizer/SoftwareMeta;

.field private volatile startTime:J

.field protected taskName:Ljava/lang/String;

.field protected volatile timeout:I

.field protected url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput-object v0, Lcom/vlingo/client/core/http/HttpRequest;->ImplClass:Ljava/lang/Class;

    return-void
.end method

.method protected constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean v1, p0, Lcom/vlingo/client/core/http/HttpRequest;->flagForRetry:Z

    .line 64
    iput v1, p0, Lcom/vlingo/client/core/http/HttpRequest;->countRetries:I

    .line 69
    iput-boolean v1, p0, Lcom/vlingo/client/core/http/HttpRequest;->m_Canceled:Z

    .line 105
    const-string v0, "POST"

    iput-object v0, p0, Lcom/vlingo/client/core/http/HttpRequest;->method:Ljava/lang/String;

    .line 106
    iput-object v2, p0, Lcom/vlingo/client/core/http/HttpRequest;->cookies:Ljava/util/Hashtable;

    .line 107
    iput-object v2, p0, Lcom/vlingo/client/core/http/HttpRequest;->extraHeaders:Ljava/util/Hashtable;

    .line 108
    invoke-static {}, Lcom/vlingo/client/core/recognizer/ClientMeta;->getInstance()Lcom/vlingo/client/core/recognizer/ClientMeta;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/core/http/HttpRequest;->client:Lcom/vlingo/client/core/recognizer/ClientMeta;

    .line 109
    invoke-static {}, Lcom/vlingo/client/core/recognizer/SoftwareMeta;->getInstance()Lcom/vlingo/client/core/recognizer/SoftwareMeta;

    move-result-object v0

    iput-object v0, p0, Lcom/vlingo/client/core/http/HttpRequest;->software:Lcom/vlingo/client/core/recognizer/SoftwareMeta;

    .line 110
    iput v1, p0, Lcom/vlingo/client/core/http/HttpRequest;->timeout:I

    .line 111
    iput v1, p0, Lcom/vlingo/client/core/http/HttpRequest;->maxRetry:I

    .line 112
    iput-boolean v1, p0, Lcom/vlingo/client/core/http/HttpRequest;->gzipPostData:Z

    .line 113
    return-void
.end method

.method public static declared-synchronized createRequest(Ljava/lang/String;Lcom/vlingo/client/core/http/HttpCallback;Ljava/lang/String;)Lcom/vlingo/client/core/http/HttpRequest;
    .registers 5
    .parameter "taskName"
    .parameter "callback"
    .parameter "url"

    .prologue
    .line 80
    const-class v0, Lcom/vlingo/client/core/http/HttpRequest;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    invoke-static {p0, p1, p2, v1}, Lcom/vlingo/client/core/http/HttpRequest;->createRequest(Ljava/lang/String;Lcom/vlingo/client/core/http/HttpCallback;Ljava/lang/String;[B)Lcom/vlingo/client/core/http/HttpRequest;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_a

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_a
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized createRequest(Ljava/lang/String;Lcom/vlingo/client/core/http/HttpCallback;Ljava/lang/String;[B)Lcom/vlingo/client/core/http/HttpRequest;
    .registers 10
    .parameter "taskName"
    .parameter "callback"
    .parameter "url"
    .parameter "data"

    .prologue
    .line 84
    const-class v3, Lcom/vlingo/client/core/http/HttpRequest;

    monitor-enter v3

    :try_start_3
    sget-object v2, Lcom/vlingo/client/core/http/HttpRequest;->ImplClass:Ljava/lang/Class;

    if-nez v2, :cond_12

    .line 85
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "HttpRequest implementation class is not set"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 84
    :catchall_f
    move-exception v2

    monitor-exit v3

    throw v2

    .line 87
    :cond_12
    const/4 v1, 0x0

    .line 89
    .local v1, request:Lcom/vlingo/client/core/http/HttpRequest;
    :try_start_13
    sget-object v2, Lcom/vlingo/client/core/http/HttpRequest;->ImplClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #request:Lcom/vlingo/client/core/http/HttpRequest;
    check-cast v1, Lcom/vlingo/client/core/http/HttpRequest;
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_f
    .catch Ljava/lang/InstantiationException; {:try_start_13 .. :try_end_1b} :catch_20
    .catch Ljava/lang/IllegalAccessException; {:try_start_13 .. :try_end_1b} :catch_3a

    .line 99
    .restart local v1       #request:Lcom/vlingo/client/core/http/HttpRequest;
    :try_start_1b
    invoke-virtual {v1, p0, p1, p2, p3}, Lcom/vlingo/client/core/http/HttpRequest;->init(Ljava/lang/String;Lcom/vlingo/client/core/http/HttpCallback;Ljava/lang/String;[B)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_f

    .line 100
    monitor-exit v3

    return-object v1

    .line 90
    .end local v1           #request:Lcom/vlingo/client/core/http/HttpRequest;
    :catch_20
    move-exception v0

    .line 93
    .local v0, ex:Ljava/lang/InstantiationException;
    :try_start_21
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HttpRequest InstantiationException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 94
    .end local v0           #ex:Ljava/lang/InstantiationException;
    :catch_3a
    move-exception v0

    .line 97
    .local v0, ex:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HttpRequest IllegalAccessException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_54
    .catchall {:try_start_21 .. :try_end_54} :catchall_f
.end method

.method public static declared-synchronized setHttpRequestImplClass(Ljava/lang/Class;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, implClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v1, Lcom/vlingo/client/core/http/HttpRequest;

    monitor-enter v1

    if-nez p0, :cond_10

    .line 73
    :try_start_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "HttpRequest clazz null"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_d

    .line 72
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0

    .line 74
    :cond_10
    :try_start_10
    const-class v0, Lcom/vlingo/client/core/http/HttpRequest;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 75
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HttpRequest invalid impl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_31
    sput-object p0, Lcom/vlingo/client/core/http/HttpRequest;->ImplClass:Ljava/lang/Class;
    :try_end_33
    .catchall {:try_start_10 .. :try_end_33} :catchall_d

    .line 77
    monitor-exit v1

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/core/http/HttpRequest;->m_Canceled:Z

    .line 128
    invoke-static {}, Lcom/vlingo/client/core/http/HttpManager;->getSharedInstance()Lcom/vlingo/client/core/http/HttpManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vlingo/client/core/http/HttpManager;->cancelRequest(Lcom/vlingo/client/core/http/HttpRequest;)V

    .line 129
    return-void
.end method

.method protected fetchResponse()Lcom/vlingo/client/core/http/HttpResponse;
    .registers 22

    .prologue
    .line 159
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/vlingo/client/core/http/HttpRequest;->flagForRetry:Z

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/vlingo/client/core/http/HttpRequest;->startTime:J

    .line 162
    const/4 v13, 0x0

    .line 163
    .local v13, hc:Ljavax/microedition/io/HttpConnection;
    const/4 v14, 0x0

    .line 164
    .local v14, inputstream:Ljava/io/InputStream;
    const/4 v12, 0x0

    .line 165
    .local v12, dos:Ljava/io/DataOutputStream;
    const/16 v17, 0x0

    .line 166
    .local v17, respData:[B
    const/16 v19, 0x0

    .line 167
    .local v19, responseCookies:Lcom/vlingo/client/core/http/cookies/CookieJar;
    const/16 v18, -0x1

    .line 169
    .local v18, responseCode:I
    :try_start_16
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/vlingo/client/core/http/HttpRequest;->m_Canceled:Z

    if-eqz v3, :cond_40

    .line 170
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Cancelled"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_6b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_24} :catch_24

    .line 232
    :catch_24
    move-exception v3

    .line 238
    if-eqz v14, :cond_2a

    .line 240
    :try_start_27
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_2a} :catch_171

    .line 245
    :cond_2a
    :goto_2a
    if-eqz v12, :cond_2f

    .line 247
    :try_start_2c
    invoke-virtual {v12}, Ljava/io/DataOutputStream;->close()V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2f} :catch_17d

    .line 252
    :cond_2f
    :goto_2f
    if-eqz v13, :cond_34

    .line 254
    :try_start_31
    invoke-interface {v13}, Ljavax/microedition/io/HttpConnection;->close()V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_34} :catch_189

    .line 269
    :cond_34
    :goto_34
    new-instance v3, Lcom/vlingo/client/core/http/HttpResponse;

    move/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v3, v0, v1, v2}, Lcom/vlingo/client/core/http/HttpResponse;-><init>(I[BLcom/vlingo/client/core/http/cookies/CookieJar;)V

    return-object v3

    .line 171
    :cond_40
    :try_start_40
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vlingo/client/core/http/HttpRequest;->method:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vlingo/client/core/http/HttpRequest;->url:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vlingo/client/core/http/HttpRequest;->cookies:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vlingo/client/core/http/HttpRequest;->extraHeaders:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/vlingo/client/core/http/HttpRequest;->client:Lcom/vlingo/client/core/recognizer/ClientMeta;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vlingo/client/core/http/HttpRequest;->software:Lcom/vlingo/client/core/recognizer/SoftwareMeta;

    invoke-static/range {v3 .. v9}, Lcom/vlingo/client/core/http/HttpUtil;->newHttpConnection(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Hashtable;Ljava/util/Hashtable;Lcom/vlingo/client/core/recognizer/ClientMeta;Lcom/vlingo/client/core/recognizer/SoftwareMeta;)Ljavax/microedition/io/HttpConnection;

    move-result-object v13

    .line 174
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/vlingo/client/core/http/HttpRequest;->m_Canceled:Z

    if-eqz v3, :cond_7c

    .line 175
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Cancelled"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_6b
    .catchall {:try_start_40 .. :try_end_6b} :catchall_6b
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_6b} :catch_24

    .line 238
    :catchall_6b
    move-exception v3

    if-eqz v14, :cond_71

    .line 240
    :try_start_6e
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_71} :catch_195

    .line 245
    :cond_71
    :goto_71
    if-eqz v12, :cond_76

    .line 247
    :try_start_73
    invoke-virtual {v12}, Ljava/io/DataOutputStream;->close()V
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_76} :catch_1a1

    .line 252
    :cond_76
    :goto_76
    if-eqz v13, :cond_7b

    .line 254
    :try_start_78
    invoke-interface {v13}, Ljavax/microedition/io/HttpConnection;->close()V
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_7b} :catch_1ad

    .line 257
    :cond_7b
    :goto_7b
    throw v3

    .line 176
    :cond_7c
    :try_start_7c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vlingo/client/core/http/HttpRequest;->method:Ljava/lang/String;

    const-string v4, "POST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vlingo/client/core/http/HttpRequest;->data:[B

    if-eqz v3, :cond_d4

    .line 180
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/vlingo/client/core/http/HttpRequest;->gzipPostData:Z

    if-eqz v3, :cond_a9

    .line 183
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vlingo/client/core/http/HttpRequest;->data:[B

    invoke-static {v3}, Lcom/vlingo/client/core/util/CompressUtils;->gzip([B)[B

    move-result-object v11

    .line 185
    .local v11, compressedData:[B
    if-eqz v11, :cond_a9

    .line 189
    const-string v3, "Content-Encoding"

    const-string v4, "deflate"

    invoke-interface {v13, v3, v4}, Ljavax/microedition/io/HttpConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/vlingo/client/core/http/HttpRequest;->data:[B

    .line 195
    .end local v11           #compressedData:[B
    :cond_a9
    const-string v3, "Content-Length"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vlingo/client/core/http/HttpRequest;->data:[B

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v13, v3, v4}, Ljavax/microedition/io/HttpConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const/4 v3, 0x0

    invoke-interface {v13, v3}, Ljavax/microedition/io/HttpConnection;->startRequest(Lcom/vlingo/client/core/http/custom/HttpRequest;)V

    .line 197
    invoke-interface {v13}, Ljavax/microedition/io/HttpConnection;->openDataOutputStream()Ljava/io/DataOutputStream;

    move-result-object v12

    .line 198
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/vlingo/client/core/http/HttpRequest;->m_Canceled:Z

    if-eqz v3, :cond_cd

    .line 199
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Cancelled"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 200
    :cond_cd
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vlingo/client/core/http/HttpRequest;->data:[B

    invoke-virtual {v12, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 203
    :cond_d4
    invoke-interface {v13}, Ljavax/microedition/io/HttpConnection;->getResponseCode()I

    move-result v18

    .line 204
    invoke-interface {v13}, Ljavax/microedition/io/HttpConnection;->getLength()I

    move-result v15

    .line 205
    .local v15, length:I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/vlingo/client/core/http/HttpRequest;->m_Canceled:Z

    if-eqz v3, :cond_ea

    .line 206
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Cancelled"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 211
    :cond_ea
    const/4 v3, 0x0

    invoke-interface {v13, v3}, Ljavax/microedition/io/HttpConnection;->startResponse(Lcom/vlingo/client/core/http/custom/HttpResponse;)V

    .line 212
    invoke-interface {v13}, Ljavax/microedition/io/HttpConnection;->openInputStream()Ljava/io/InputStream;

    move-result-object v14

    .line 213
    if-nez v14, :cond_fc

    .line 214
    new-instance v3, Ljava/io/IOException;

    const-string v4, "InputStream does not exist (check response code for error)"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 215
    :cond_fc
    const/4 v3, -0x1

    if-eq v15, v3, :cond_135

    .line 216
    new-array v0, v15, [B

    move-object/from16 v17, v0

    .line 217
    const/16 v16, 0x0

    .line 219
    .local v16, offset:I
    :cond_105
    sub-int v3, v15, v16

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v14, v0, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    .line 220
    .local v10, bytesRead:I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/vlingo/client/core/http/HttpRequest;->m_Canceled:Z

    if-eqz v3, :cond_11d

    .line 221
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Cancelled"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 222
    :cond_11d
    const/4 v3, -0x1

    if-ne v10, v3, :cond_12e

    .line 229
    .end local v10           #bytesRead:I
    .end local v16           #offset:I
    :goto_120
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/vlingo/client/core/http/HttpRequest;->m_Canceled:Z

    if-eqz v3, :cond_13a

    .line 230
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Cancelled"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 224
    .restart local v10       #bytesRead:I
    .restart local v16       #offset:I
    :cond_12e
    add-int v16, v16, v10

    .line 225
    move/from16 v0, v16

    if-gt v15, v0, :cond_105

    goto :goto_120

    .line 227
    .end local v10           #bytesRead:I
    .end local v16           #offset:I
    :cond_135
    invoke-static {v14}, Lcom/vlingo/client/core/http/HttpUtil;->readData(Ljava/io/InputStream;)[B

    move-result-object v17

    goto :goto_120

    .line 231
    :cond_13a
    invoke-static {v13}, Lcom/vlingo/client/core/http/cookies/CookieHandler;->extractCookies(Ljavax/microedition/io/HttpConnection;)Lcom/vlingo/client/core/http/cookies/CookieJar;
    :try_end_13d
    .catchall {:try_start_7c .. :try_end_13d} :catchall_6b
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_13d} :catch_24

    move-result-object v19

    .line 238
    if-eqz v14, :cond_143

    .line 240
    :try_start_140
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_143
    .catch Ljava/lang/Throwable; {:try_start_140 .. :try_end_143} :catch_15b

    .line 245
    :cond_143
    :goto_143
    if-eqz v12, :cond_148

    .line 247
    :try_start_145
    invoke-virtual {v12}, Ljava/io/DataOutputStream;->close()V
    :try_end_148
    .catch Ljava/lang/Throwable; {:try_start_145 .. :try_end_148} :catch_166

    .line 252
    :cond_148
    :goto_148
    if-eqz v13, :cond_34

    .line 254
    :try_start_14a
    invoke-interface {v13}, Ljavax/microedition/io/HttpConnection;->close()V
    :try_end_14d
    .catch Ljava/lang/Throwable; {:try_start_14a .. :try_end_14d} :catch_14f

    goto/16 :goto_34

    .line 255
    :catch_14f
    move-exception v20

    .line 256
    .local v20, t:Ljava/lang/Throwable;
    const-string v3, "VLG_EXCEPTION"

    invoke-static/range {v20 .. v20}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_34

    .line 241
    .end local v20           #t:Ljava/lang/Throwable;
    :catch_15b
    move-exception v20

    .line 242
    .restart local v20       #t:Ljava/lang/Throwable;
    const-string v3, "VLG_EXCEPTION"

    invoke-static/range {v20 .. v20}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_143

    .line 248
    .end local v20           #t:Ljava/lang/Throwable;
    :catch_166
    move-exception v20

    .line 249
    .restart local v20       #t:Ljava/lang/Throwable;
    const-string v3, "VLG_EXCEPTION"

    invoke-static/range {v20 .. v20}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_148

    .line 241
    .end local v15           #length:I
    .end local v20           #t:Ljava/lang/Throwable;
    :catch_171
    move-exception v20

    .line 242
    .restart local v20       #t:Ljava/lang/Throwable;
    const-string v3, "VLG_EXCEPTION"

    invoke-static/range {v20 .. v20}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a

    .line 248
    .end local v20           #t:Ljava/lang/Throwable;
    :catch_17d
    move-exception v20

    .line 249
    .restart local v20       #t:Ljava/lang/Throwable;
    const-string v3, "VLG_EXCEPTION"

    invoke-static/range {v20 .. v20}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2f

    .line 255
    .end local v20           #t:Ljava/lang/Throwable;
    :catch_189
    move-exception v20

    .line 256
    .restart local v20       #t:Ljava/lang/Throwable;
    const-string v3, "VLG_EXCEPTION"

    invoke-static/range {v20 .. v20}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_34

    .line 241
    .end local v20           #t:Ljava/lang/Throwable;
    :catch_195
    move-exception v20

    .line 242
    .restart local v20       #t:Ljava/lang/Throwable;
    const-string v4, "VLG_EXCEPTION"

    invoke-static/range {v20 .. v20}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_71

    .line 248
    .end local v20           #t:Ljava/lang/Throwable;
    :catch_1a1
    move-exception v20

    .line 249
    .restart local v20       #t:Ljava/lang/Throwable;
    const-string v4, "VLG_EXCEPTION"

    invoke-static/range {v20 .. v20}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_76

    .line 255
    .end local v20           #t:Ljava/lang/Throwable;
    :catch_1ad
    move-exception v20

    .line 256
    .restart local v20       #t:Ljava/lang/Throwable;
    const-string v4, "VLG_EXCEPTION"

    invoke-static/range {v20 .. v20}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7b
.end method

.method getCallback()Lcom/vlingo/client/core/http/HttpCallback;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/vlingo/client/core/http/HttpRequest;->callback:Lcom/vlingo/client/core/http/HttpCallback;

    return-object v0
.end method

.method public getCookie()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/vlingo/client/core/http/HttpRequest;->cookie:Ljava/lang/Object;

    return-object v0
.end method

.method public getElapsedTime()J
    .registers 5

    .prologue
    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/vlingo/client/core/http/HttpRequest;->startTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getMaxRetry()I
    .registers 2

    .prologue
    .line 321
    iget v0, p0, Lcom/vlingo/client/core/http/HttpRequest;->maxRetry:I

    return v0
.end method

.method public getTaskName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/vlingo/client/core/http/HttpRequest;->taskName:Ljava/lang/String;

    return-object v0
.end method

.method getTimeout()I
    .registers 2

    .prologue
    .line 152
    iget v0, p0, Lcom/vlingo/client/core/http/HttpRequest;->timeout:I

    return v0
.end method

.method protected init(Ljava/lang/String;Lcom/vlingo/client/core/http/HttpCallback;Ljava/lang/String;[B)V
    .registers 5
    .parameter "taskName"
    .parameter "callback"
    .parameter "url"
    .parameter "data"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/vlingo/client/core/http/HttpRequest;->taskName:Ljava/lang/String;

    .line 117
    iput-object p2, p0, Lcom/vlingo/client/core/http/HttpRequest;->callback:Lcom/vlingo/client/core/http/HttpCallback;

    .line 118
    iput-object p3, p0, Lcom/vlingo/client/core/http/HttpRequest;->url:Ljava/lang/String;

    .line 119
    iput-object p4, p0, Lcom/vlingo/client/core/http/HttpRequest;->data:[B

    .line 120
    return-void
.end method

.method public isGzipPostDataEnabled()Z
    .registers 2

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/vlingo/client/core/http/HttpRequest;->gzipPostData:Z

    return v0
.end method

.method isRetry()Z
    .registers 2

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/vlingo/client/core/http/HttpRequest;->flagForRetry:Z

    return v0
.end method

.method public markRetry()V
    .registers 3

    .prologue
    .line 308
    iget v0, p0, Lcom/vlingo/client/core/http/HttpRequest;->countRetries:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/vlingo/client/core/http/HttpRequest;->countRetries:I

    iget v1, p0, Lcom/vlingo/client/core/http/HttpRequest;->maxRetry:I

    if-ge v0, v1, :cond_e

    .line 309
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/core/http/HttpRequest;->flagForRetry:Z

    .line 314
    :goto_d
    return-void

    .line 311
    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/core/http/HttpRequest;->flagForRetry:Z

    .line 312
    invoke-virtual {p0}, Lcom/vlingo/client/core/http/HttpRequest;->notifyFailure()V

    goto :goto_d
.end method

.method protected notifyCancelled()V
    .registers 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/vlingo/client/core/http/HttpRequest;->callback:Lcom/vlingo/client/core/http/HttpCallback;

    invoke-interface {v0, p0}, Lcom/vlingo/client/core/http/HttpCallback;->onCancelled(Lcom/vlingo/client/core/http/HttpRequest;)V

    .line 283
    return-void
.end method

.method protected notifyFailure()V
    .registers 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/vlingo/client/core/http/HttpRequest;->callback:Lcom/vlingo/client/core/http/HttpCallback;

    invoke-interface {v0, p0}, Lcom/vlingo/client/core/http/HttpCallback;->onFailure(Lcom/vlingo/client/core/http/HttpRequest;)V

    .line 289
    return-void
.end method

.method protected notifyResponse(Lcom/vlingo/client/core/http/HttpResponse;)V
    .registers 3
    .parameter "response"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/vlingo/client/core/http/HttpRequest;->callback:Lcom/vlingo/client/core/http/HttpCallback;

    invoke-interface {v0, p0, p1}, Lcom/vlingo/client/core/http/HttpCallback;->onResponse(Lcom/vlingo/client/core/http/HttpRequest;Lcom/vlingo/client/core/http/HttpResponse;)V

    .line 301
    return-void
.end method

.method protected notifyTimeout()Z
    .registers 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/vlingo/client/core/http/HttpRequest;->callback:Lcom/vlingo/client/core/http/HttpCallback;

    invoke-interface {v0, p0}, Lcom/vlingo/client/core/http/HttpCallback;->onTimeout(Lcom/vlingo/client/core/http/HttpRequest;)Z

    move-result v0

    return v0
.end method

.method protected notifyWillExecute()V
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/vlingo/client/core/http/HttpRequest;->callback:Lcom/vlingo/client/core/http/HttpCallback;

    invoke-interface {v0, p0}, Lcom/vlingo/client/core/http/HttpCallback;->onWillExecuteRequest(Lcom/vlingo/client/core/http/HttpRequest;)V

    .line 277
    return-void
.end method

.method public reachedMaxRetryCount()Z
    .registers 3

    .prologue
    .line 317
    iget v0, p0, Lcom/vlingo/client/core/http/HttpRequest;->countRetries:I

    iget v1, p0, Lcom/vlingo/client/core/http/HttpRequest;->maxRetry:I

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public schedule()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-static {}, Lcom/vlingo/client/core/http/HttpManager;->getSharedInstance()Lcom/vlingo/client/core/http/HttpManager;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v1}, Lcom/vlingo/client/core/http/HttpManager;->doBackgroundRequest(Lcom/vlingo/client/core/http/HttpRequest;ZZ)V

    .line 137
    return-void
.end method

.method public schedule(JZZ)V
    .registers 11
    .parameter "delay"
    .parameter "highPriority"
    .parameter "ordered"

    .prologue
    .line 140
    invoke-static {}, Lcom/vlingo/client/core/http/HttpManager;->getSharedInstance()Lcom/vlingo/client/core/http/HttpManager;

    move-result-object v0

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/vlingo/client/core/http/HttpManager;->doBackgroundRequestLater(Lcom/vlingo/client/core/http/HttpRequest;JZZ)V

    .line 141
    return-void
.end method

.method public setClientMeta(Lcom/vlingo/client/core/recognizer/ClientMeta;)V
    .registers 2
    .parameter "client"

    .prologue
    .line 345
    iput-object p1, p0, Lcom/vlingo/client/core/http/HttpRequest;->client:Lcom/vlingo/client/core/recognizer/ClientMeta;

    .line 346
    return-void
.end method

.method public setCookie(Ljava/lang/Object;)V
    .registers 2
    .parameter "cookie"

    .prologue
    .line 329
    iput-object p1, p0, Lcom/vlingo/client/core/http/HttpRequest;->cookie:Ljava/lang/Object;

    .line 330
    return-void
.end method

.method public setCookies(Ljava/util/Hashtable;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 337
    .local p1, cookies:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/vlingo/client/core/http/HttpRequest;->cookies:Ljava/util/Hashtable;

    .line 338
    return-void
.end method

.method public setExtraHeaders(Ljava/util/Hashtable;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 341
    .local p1, extraHeaders:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/vlingo/client/core/http/HttpRequest;->extraHeaders:Ljava/util/Hashtable;

    .line 342
    return-void
.end method

.method public setGzipPostData(Z)V
    .registers 2
    .parameter "gzipPostData"

    .prologue
    .line 365
    iput-boolean p1, p0, Lcom/vlingo/client/core/http/HttpRequest;->gzipPostData:Z

    .line 366
    return-void
.end method

.method public setMaxRetry(I)V
    .registers 2
    .parameter "maxRetry"

    .prologue
    .line 357
    iput p1, p0, Lcom/vlingo/client/core/http/HttpRequest;->maxRetry:I

    .line 358
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .registers 2
    .parameter "method"

    .prologue
    .line 333
    iput-object p1, p0, Lcom/vlingo/client/core/http/HttpRequest;->method:Ljava/lang/String;

    .line 334
    return-void
.end method

.method public setSoftwareMeta(Lcom/vlingo/client/core/recognizer/SoftwareMeta;)V
    .registers 2
    .parameter "software"

    .prologue
    .line 349
    iput-object p1, p0, Lcom/vlingo/client/core/http/HttpRequest;->software:Lcom/vlingo/client/core/recognizer/SoftwareMeta;

    .line 350
    return-void
.end method

.method public setTimeout(I)V
    .registers 2
    .parameter "timeout"

    .prologue
    .line 353
    iput p1, p0, Lcom/vlingo/client/core/http/HttpRequest;->timeout:I

    .line 354
    return-void
.end method

.method public start()V
    .registers 2

    .prologue
    .line 132
    invoke-static {}, Lcom/vlingo/client/core/http/HttpManager;->getSharedInstance()Lcom/vlingo/client/core/http/HttpManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vlingo/client/core/http/HttpManager;->doRequestNow(Lcom/vlingo/client/core/http/HttpRequest;)V

    .line 133
    return-void
.end method
