.class public Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;
.super Ljava/lang/Object;
.source "SR3Manager.java"

# interfaces
.implements Lcom/vlingo/client/core/recognizer/SRManager;


# instance fields
.field private connectionProvider:Lcom/vlingo/client/core/net/ConnectionProvider;

.field private ivClientMeta:Lcom/vlingo/client/core/recognizer/ClientMeta;

.field private ivCon:Lcom/vlingo/client/core/http/custom/VHttpConnection;

.field private final ivExecutor:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

.field private volatile ivLastGuttID:Ljava/lang/String;

.field private ivRequestId:I

.field private ivRequestListener:Lcom/vlingo/client/core/recognizer/SRRequestListener;

.field private ivSoftwareMeta:Lcom/vlingo/client/core/recognizer/SoftwareMeta;

.field private responseParser:Lcom/vlingo/client/core/recognizer/results/SRResponseParser;

.field serverDetails:Lcom/vlingo/client/core/recognizer/SRServerDetails;

.field private timings:Lcom/vlingo/client/core/recognizer/TimingRepository;


# direct methods
.method public constructor <init>(Lcom/vlingo/client/core/net/ConnectionProvider;Lcom/vlingo/client/core/recognizer/TimingRepository;)V
    .registers 6
    .parameter "connectionProvider"
    .parameter "timings"

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    const-string v1, "SR3Worker"

    invoke-direct {v0, v1}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->ivExecutor:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->ivRequestId:I

    .line 61
    iput-object v2, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->connectionProvider:Lcom/vlingo/client/core/net/ConnectionProvider;

    .line 64
    iput-object v2, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->responseParser:Lcom/vlingo/client/core/recognizer/results/SRResponseParser;

    .line 67
    iput-object p1, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->connectionProvider:Lcom/vlingo/client/core/net/ConnectionProvider;

    .line 68
    iput-object p2, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->timings:Lcom/vlingo/client/core/recognizer/TimingRepository;

    .line 69
    new-instance v0, Lcom/vlingo/client/core/recognizer/results/SRResponseParser;

    invoke-direct {v0}, Lcom/vlingo/client/core/recognizer/results/SRResponseParser;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->responseParser:Lcom/vlingo/client/core/recognizer/results/SRResponseParser;

    .line 70
    return-void
.end method

.method private getChunkingConnection()Lcom/vlingo/client/core/recognizer/sr3/ChunkingHttpConnection;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 144
    const-string v0, "pref.internal.asr_keepalive"

    invoke-static {v0}, Lcom/vlingo/client/core/settings/CoreSettingsProvider;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 145
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->ivCon:Lcom/vlingo/client/core/http/custom/VHttpConnection;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->ivCon:Lcom/vlingo/client/core/http/custom/VHttpConnection;

    invoke-virtual {v0}, Lcom/vlingo/client/core/http/custom/VHttpConnection;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 149
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->ivCon:Lcom/vlingo/client/core/http/custom/VHttpConnection;

    const-string v1, "POST"

    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->serverDetails:Lcom/vlingo/client/core/recognizer/SRServerDetails;

    invoke-interface {v2}, Lcom/vlingo/client/core/recognizer/SRServerDetails;->getASRURL()Lcom/vlingo/client/core/http/URL;

    move-result-object v2

    iget-object v2, v2, Lcom/vlingo/client/core/http/URL;->path:Ljava/lang/String;

    iget-object v3, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->ivClientMeta:Lcom/vlingo/client/core/recognizer/ClientMeta;

    iget-object v4, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->ivSoftwareMeta:Lcom/vlingo/client/core/recognizer/SoftwareMeta;

    iget v6, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->ivRequestId:I

    add-int/lit8 v8, v6, 0x1

    iput v8, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->ivRequestId:I

    invoke-static/range {v0 .. v6}, Lcom/vlingo/client/core/recognizer/sr3/ChunkingHttpConnection;->newConnection(Lcom/vlingo/client/core/http/custom/VHttpConnection;Ljava/lang/String;Ljava/lang/String;Lcom/vlingo/client/core/recognizer/ClientMeta;Lcom/vlingo/client/core/recognizer/SoftwareMeta;Ljava/util/Hashtable;I)Lcom/vlingo/client/core/recognizer/sr3/ChunkingHttpConnection;

    move-result-object v0

    .line 168
    :goto_2f
    return-object v0

    .line 153
    :cond_30
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->ivCon:Lcom/vlingo/client/core/http/custom/VHttpConnection;

    if-eqz v0, :cond_39

    .line 155
    :try_start_34
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->ivCon:Lcom/vlingo/client/core/http/custom/VHttpConnection;

    invoke-virtual {v0}, Lcom/vlingo/client/core/http/custom/VHttpConnection;->close()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_39} :catch_6c

    .line 161
    :cond_39
    :goto_39
    new-instance v0, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;

    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->connectionProvider:Lcom/vlingo/client/core/net/ConnectionProvider;

    invoke-static {v1}, Lcom/vlingo/client/core/http/custom/VConnectionFactory;->newInstance(Lcom/vlingo/client/core/net/ConnectionProvider;)Lcom/vlingo/client/core/http/custom/VConnectionFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->serverDetails:Lcom/vlingo/client/core/recognizer/SRServerDetails;

    invoke-interface {v2}, Lcom/vlingo/client/core/recognizer/SRServerDetails;->getASRURL()Lcom/vlingo/client/core/http/URL;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vlingo/client/core/http/custom/MultiplexHttpConnection;-><init>(Lcom/vlingo/client/core/http/custom/VConnectionFactory;Lcom/vlingo/client/core/http/URL;)V

    iput-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->ivCon:Lcom/vlingo/client/core/http/custom/VHttpConnection;

    .line 162
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->ivCon:Lcom/vlingo/client/core/http/custom/VHttpConnection;

    invoke-virtual {v0}, Lcom/vlingo/client/core/http/custom/VHttpConnection;->open()V

    .line 163
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->ivCon:Lcom/vlingo/client/core/http/custom/VHttpConnection;

    const-string v1, "POST"

    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->serverDetails:Lcom/vlingo/client/core/recognizer/SRServerDetails;

    invoke-interface {v2}, Lcom/vlingo/client/core/recognizer/SRServerDetails;->getASRURL()Lcom/vlingo/client/core/http/URL;

    move-result-object v2

    iget-object v2, v2, Lcom/vlingo/client/core/http/URL;->path:Ljava/lang/String;

    iget-object v3, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->ivClientMeta:Lcom/vlingo/client/core/recognizer/ClientMeta;

    iget-object v4, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->ivSoftwareMeta:Lcom/vlingo/client/core/recognizer/SoftwareMeta;

    iget v6, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->ivRequestId:I

    add-int/lit8 v8, v6, 0x1

    iput v8, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->ivRequestId:I

    invoke-static/range {v0 .. v6}, Lcom/vlingo/client/core/recognizer/sr3/ChunkingHttpConnection;->newConnection(Lcom/vlingo/client/core/http/custom/VHttpConnection;Ljava/lang/String;Ljava/lang/String;Lcom/vlingo/client/core/recognizer/ClientMeta;Lcom/vlingo/client/core/recognizer/SoftwareMeta;Ljava/util/Hashtable;I)Lcom/vlingo/client/core/recognizer/sr3/ChunkingHttpConnection;

    move-result-object v0

    goto :goto_2f

    .line 155
    :catch_6c
    move-exception v7

    .line 156
    .local v7, ex:Ljava/lang/Exception;
    const-string v0, "VLG_EXCEPTION"

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 168
    .end local v7           #ex:Ljava/lang/Exception;
    :cond_77
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->connectionProvider:Lcom/vlingo/client/core/net/ConnectionProvider;

    const-string v1, "POST"

    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->serverDetails:Lcom/vlingo/client/core/recognizer/SRServerDetails;

    invoke-interface {v2}, Lcom/vlingo/client/core/recognizer/SRServerDetails;->getASRURL()Lcom/vlingo/client/core/http/URL;

    move-result-object v2

    iget-object v3, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->ivClientMeta:Lcom/vlingo/client/core/recognizer/ClientMeta;

    iget-object v4, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->ivSoftwareMeta:Lcom/vlingo/client/core/recognizer/SoftwareMeta;

    iget v6, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->ivRequestId:I

    add-int/lit8 v8, v6, 0x1

    iput v8, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->ivRequestId:I

    invoke-static/range {v0 .. v6}, Lcom/vlingo/client/core/recognizer/sr3/ChunkingHttpConnection;->newConnection(Lcom/vlingo/client/core/net/ConnectionProvider;Ljava/lang/String;Lcom/vlingo/client/core/http/URL;Lcom/vlingo/client/core/recognizer/ClientMeta;Lcom/vlingo/client/core/recognizer/SoftwareMeta;Ljava/util/Hashtable;I)Lcom/vlingo/client/core/recognizer/sr3/ChunkingHttpConnection;

    move-result-object v0

    goto :goto_2f
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->ivExecutor:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    invoke-virtual {v0}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->shutdown()V

    .line 100
    return-void
.end method

.method public getConnection()Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-static {}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getInstance()Lcom/vlingo/client/core/common/ApplicationAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->isAudioStreamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 130
    invoke-direct {p0}, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->getChunkingConnection()Lcom/vlingo/client/core/recognizer/sr3/ChunkingHttpConnection;

    move-result-object v0

    .line 134
    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->connectionProvider:Lcom/vlingo/client/core/net/ConnectionProvider;

    const-string v1, "POST"

    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->serverDetails:Lcom/vlingo/client/core/recognizer/SRServerDetails;

    invoke-interface {v2}, Lcom/vlingo/client/core/recognizer/SRServerDetails;->getASRURL()Lcom/vlingo/client/core/http/URL;

    move-result-object v2

    iget-object v2, v2, Lcom/vlingo/client/core/http/URL;->url:Ljava/lang/String;

    iget-object v3, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->ivClientMeta:Lcom/vlingo/client/core/recognizer/ClientMeta;

    iget-object v4, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->ivSoftwareMeta:Lcom/vlingo/client/core/recognizer/SoftwareMeta;

    const/4 v5, 0x0

    iget v6, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->ivRequestId:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->ivRequestId:I

    invoke-static/range {v0 .. v6}, Lcom/vlingo/client/core/recognizer/sr3/StandardHttpConnection;->newConnection(Lcom/vlingo/client/core/net/ConnectionProvider;Ljava/lang/String;Ljava/lang/String;Lcom/vlingo/client/core/recognizer/ClientMeta;Lcom/vlingo/client/core/recognizer/SoftwareMeta;Ljava/util/Hashtable;I)Lcom/vlingo/client/core/recognizer/sr3/HttpConnectionAdapter;

    move-result-object v0

    goto :goto_e
.end method

.method public getLastGuttID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->ivLastGuttID:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseParser()Lcom/vlingo/client/core/recognizer/results/SRResponseParser;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->responseParser:Lcom/vlingo/client/core/recognizer/results/SRResponseParser;

    return-object v0
.end method

.method public getServerDetails()Lcom/vlingo/client/core/recognizer/SRServerDetails;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->serverDetails:Lcom/vlingo/client/core/recognizer/SRServerDetails;

    return-object v0
.end method

.method public init(Lcom/vlingo/client/core/recognizer/SRServerDetails;Lcom/vlingo/client/core/recognizer/SRRequestListener;Lcom/vlingo/client/core/recognizer/ClientMeta;Lcom/vlingo/client/core/recognizer/SoftwareMeta;)V
    .registers 7
    .parameter "serverDetails"
    .parameter "sl"
    .parameter "clientMeta"
    .parameter "softwareMeta"

    .prologue
    .line 77
    iput-object p2, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->ivRequestListener:Lcom/vlingo/client/core/recognizer/SRRequestListener;

    .line 78
    iput-object p3, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->ivClientMeta:Lcom/vlingo/client/core/recognizer/ClientMeta;

    .line 79
    iput-object p4, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->ivSoftwareMeta:Lcom/vlingo/client/core/recognizer/SoftwareMeta;

    .line 81
    invoke-virtual {p0, p1}, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->setServer(Lcom/vlingo/client/core/recognizer/SRServerDetails;)V

    .line 83
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->ivExecutor:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->setMaxPoolSize(I)V

    .line 84
    return-void
.end method

.method public newRequest(Lcom/vlingo/client/core/recognizer/SRContext;)Lcom/vlingo/client/core/recognizer/SRRequest;
    .registers 8
    .parameter "context"

    .prologue
    .line 107
    new-instance v0, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;

    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->ivClientMeta:Lcom/vlingo/client/core/recognizer/ClientMeta;

    iget-object v3, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->ivSoftwareMeta:Lcom/vlingo/client/core/recognizer/SoftwareMeta;

    iget-object v5, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->timings:Lcom/vlingo/client/core/recognizer/TimingRepository;

    move-object v1, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;-><init>(Lcom/vlingo/client/core/recognizer/SRContext;Lcom/vlingo/client/core/recognizer/ClientMeta;Lcom/vlingo/client/core/recognizer/SoftwareMeta;Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;Lcom/vlingo/client/core/recognizer/TimingRepository;)V

    .line 108
    .local v0, request:Lcom/vlingo/client/core/recognizer/sr3/SR3Request;
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->ivRequestListener:Lcom/vlingo/client/core/recognizer/SRRequestListener;

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/recognizer/sr3/SR3Request;->addListener(Lcom/vlingo/client/core/recognizer/SRRequestListener;)V

    .line 114
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->ivExecutor:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)Lcom/vlingo/client/core/util/Future;

    .line 115
    return-object v0
.end method

.method public readyForRecognition()Z
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->ivExecutor:Lcom/vlingo/client/core/util/ThreadPoolExecutor;

    invoke-virtual {v0}, Lcom/vlingo/client/core/util/ThreadPoolExecutor;->isBusy()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public sendStatistics(Lcom/vlingo/client/core/recognizer/SRStatistics;)V
    .registers 6
    .parameter "stats"

    .prologue
    .line 178
    new-instance v0, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;

    invoke-direct {v0}, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;-><init>()V

    .line 179
    .local v0, collection:Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;
    invoke-virtual {v0, p1}, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;->addStatistics(Lcom/vlingo/client/core/recognizer/SRStatistics;)V

    .line 180
    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->serverDetails:Lcom/vlingo/client/core/recognizer/SRServerDetails;

    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->ivClientMeta:Lcom/vlingo/client/core/recognizer/ClientMeta;

    iget-object v3, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->ivSoftwareMeta:Lcom/vlingo/client/core/recognizer/SoftwareMeta;

    invoke-virtual {v0, v1, v2, v3}, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;->schedule(Lcom/vlingo/client/core/recognizer/SRServerDetails;Lcom/vlingo/client/core/recognizer/ClientMeta;Lcom/vlingo/client/core/recognizer/SoftwareMeta;)V

    .line 181
    return-void
.end method

.method public sendStatsCollection(Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;)V
    .registers 5
    .parameter "collection"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->serverDetails:Lcom/vlingo/client/core/recognizer/SRServerDetails;

    iget-object v1, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->ivClientMeta:Lcom/vlingo/client/core/recognizer/ClientMeta;

    iget-object v2, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->ivSoftwareMeta:Lcom/vlingo/client/core/recognizer/SoftwareMeta;

    invoke-virtual {p1, v0, v1, v2}, Lcom/vlingo/client/core/recognizer/SRStatisticsCollection;->schedule(Lcom/vlingo/client/core/recognizer/SRServerDetails;Lcom/vlingo/client/core/recognizer/ClientMeta;Lcom/vlingo/client/core/recognizer/SoftwareMeta;)V

    .line 187
    return-void
.end method

.method public setConnectionProvider(Lcom/vlingo/client/core/net/ConnectionProvider;)V
    .registers 2
    .parameter "connectionProvider"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->connectionProvider:Lcom/vlingo/client/core/net/ConnectionProvider;

    .line 74
    return-void
.end method

.method setLastGuttID(Ljava/lang/String;)V
    .registers 2
    .parameter "guttID"

    .prologue
    .line 194
    iput-object p1, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->ivLastGuttID:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setServer(Lcom/vlingo/client/core/recognizer/SRServerDetails;)V
    .registers 2
    .parameter "serverDetails"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/vlingo/client/core/recognizer/sr3/SR3Manager;->serverDetails:Lcom/vlingo/client/core/recognizer/SRServerDetails;

    .line 92
    return-void
.end method
