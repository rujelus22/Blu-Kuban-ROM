.class public Lcom/sprint/dsa/dss/DsaHttpClient;
.super Ljava/lang/Object;
.source "DsaHttpClient.java"


# static fields
.field public static final ALLOW_RETRY:Z = true

.field public static final TAG:Ljava/lang/String; = "SprintZone_DSA"

.field public static final TIMEOUT_SLOT0:I = 0x15f90

.field public static final TIMEOUT_SLOT1:I = 0x7530


# instance fields
.field private dsaClient:Lcom/sprint/dsa/dss/DsaClient;

.field private errorMessage:Ljava/lang/String;

.field private httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field public httpConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

.field private httpGet:Lorg/apache/http/client/methods/HttpGet;

.field private imagesToLoad:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private keepAliveTimer:Ljava/util/Timer;

.field private lastLoadUrl:Ljava/lang/String;

.field private loadingRes:Z

.field private proxyHost:Ljava/lang/String;

.field private proxyPort:I

.field private retryLoadCount:I

.field public runInUIThread:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean v5, p0, Lcom/sprint/dsa/dss/DsaHttpClient;->loadingRes:Z

    .line 49
    iput-object v4, p0, Lcom/sprint/dsa/dss/DsaHttpClient;->runInUIThread:Ljava/lang/Runnable;

    .line 50
    iput-object v4, p0, Lcom/sprint/dsa/dss/DsaHttpClient;->proxyHost:Ljava/lang/String;

    .line 51
    iput v5, p0, Lcom/sprint/dsa/dss/DsaHttpClient;->proxyPort:I

    .line 54
    iput-object v4, p0, Lcom/sprint/dsa/dss/DsaHttpClient;->errorMessage:Ljava/lang/String;

    .line 55
    iput-object v4, p0, Lcom/sprint/dsa/dss/DsaHttpClient;->httpGet:Lorg/apache/http/client/methods/HttpGet;

    .line 58
    iput-object v4, p0, Lcom/sprint/dsa/dss/DsaHttpClient;->lastLoadUrl:Ljava/lang/String;

    .line 59
    iput v5, p0, Lcom/sprint/dsa/dss/DsaHttpClient;->retryLoadCount:I

    .line 64
    if-eqz p1, :cond_1b

    .line 65
    check-cast p1, Lcom/sprint/dsa/dss/DsaClient;

    .end local p1
    iput-object p1, p0, Lcom/sprint/dsa/dss/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    .line 68
    :cond_1b
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v4, p0, Lcom/sprint/dsa/dss/DsaHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 69
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iput-object v4, p0, Lcom/sprint/dsa/dss/DsaHttpClient;->imagesToLoad:Ljava/util/Vector;

    .line 72
    :try_start_29
    iget-object v4, p0, Lcom/sprint/dsa/dss/DsaHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v4

    iput-object v4, p0, Lcom/sprint/dsa/dss/DsaHttpClient;->httpConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 73
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v3

    .line 74
    .local v3, ssl:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    new-instance v0, Lcom/sprint/dsa/dss/DsaAllowAllHostnameVerifier;

    invoke-direct {v0}, Lcom/sprint/dsa/dss/DsaAllowAllHostnameVerifier;-><init>()V

    .line 75
    .local v0, dsaAAHV:Lcom/sprint/dsa/dss/DsaAllowAllHostnameVerifier;
    invoke-virtual {v3, v0}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 76
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    const/16 v5, 0x1bb

    invoke-direct {v2, v4, v3, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 77
    .local v2, sch:Lorg/apache/http/conn/scheme/Scheme;
    iget-object v4, p0, Lcom/sprint/dsa/dss/DsaHttpClient;->httpConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-interface {v4}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_4f} :catch_50

    .line 81
    .end local v0           #dsaAAHV:Lcom/sprint/dsa/dss/DsaAllowAllHostnameVerifier;
    .end local v2           #sch:Lorg/apache/http/conn/scheme/Scheme;
    .end local v3           #ssl:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :goto_4f
    return-void

    .line 78
    :catch_50
    move-exception v1

    .line 79
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "SprintZone_DSA"

    const-string v5, "DsaHttpClient: error setting up SSL..."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f
.end method

.method static synthetic access$0(Lcom/sprint/dsa/dss/DsaHttpClient;)V
    .registers 1
    .parameter

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/sprint/dsa/dss/DsaHttpClient;->pingServer()V

    return-void
.end method

.method static synthetic access$1(Lcom/sprint/dsa/dss/DsaHttpClient;)Lcom/sprint/dsa/dss/DsaClient;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sprint/dsa/dss/DsaHttpClient;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sprint/dsa/dss/DsaHttpClient;->proxyHost:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/sprint/dsa/dss/DsaHttpClient;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 51
    iput p1, p0, Lcom/sprint/dsa/dss/DsaHttpClient;->proxyPort:I

    return-void
.end method

.method static synthetic access$4(Lcom/sprint/dsa/dss/DsaHttpClient;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaHttpClient;->proxyHost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/sprint/dsa/dss/DsaHttpClient;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sprint/dsa/dss/DsaHttpClient;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/sprint/dsa/dss/DsaHttpClient;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaHttpClient;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method private pingServer()V
    .registers 9

    .prologue
    .line 292
    :try_start_0
    new-instance v7, Ljava/net/DatagramSocket;

    invoke-direct {v7}, Ljava/net/DatagramSocket;-><init>()V

    .line 294
    .local v7, udpSocket:Ljava/net/DatagramSocket;
    const-string v2, "0"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 295
    .local v1, buf:[B
    new-instance v0, Ljava/net/DatagramPacket;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v7}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v4

    const/16 v5, 0x1b2

    invoke-direct/range {v0 .. v5}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    .line 296
    .local v0, dp:Ljava/net/DatagramPacket;
    invoke-virtual {v7, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 297
    invoke-virtual {v7}, Ljava/net/DatagramSocket;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 301
    .end local v0           #dp:Ljava/net/DatagramPacket;
    .end local v1           #buf:[B
    .end local v7           #udpSocket:Ljava/net/DatagramSocket;
    :goto_1e
    return-void

    .line 298
    :catch_1f
    move-exception v6

    .line 299
    .local v6, e:Ljava/io/IOException;
    const-string v2, "SprintZone_DSA"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DsaHttpClient.pingServer(): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e
.end method


# virtual methods
.method public convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 9
    .parameter "is"

    .prologue
    .line 304
    iget-object v4, p0, Lcom/sprint/dsa/dss/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-boolean v4, v4, Lcom/sprint/dsa/dss/DsaClient;->dsaDebug:Z

    if-eqz v4, :cond_d

    const-string v4, "SprintZone_DSA"

    const-string v5, "DsaHttpClient.convertStreamToString()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_d
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 307
    .local v2, reader:Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    .local v3, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/4 v1, 0x0

    .line 311
    .local v1, line:Ljava/lang/String;
    :goto_28
    :try_start_28
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_62
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_4d

    move-result-object v1

    if-nez v1, :cond_36

    .line 318
    :try_start_2e
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_70

    .line 323
    :goto_31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 312
    :cond_36
    :try_start_36
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4c
    .catchall {:try_start_36 .. :try_end_4c} :catchall_62
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_4c} :catch_4d

    goto :goto_28

    .line 314
    :catch_4d
    move-exception v0

    .line 315
    .local v0, e:Ljava/lang/Exception;
    :try_start_4e
    const-string v4, "SprintZone_DSA"

    const-string v5, "DsaHttpClient.converStreamToString()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_55
    .catchall {:try_start_4e .. :try_end_55} :catchall_62

    .line 318
    :try_start_55
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_31

    .line 319
    :catch_59
    move-exception v0

    .line 320
    .local v0, e:Ljava/io/IOException;
    const-string v4, "SprintZone_DSA"

    const-string v5, "DsaHttpClient.converStreamToString()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31

    .line 316
    .end local v0           #e:Ljava/io/IOException;
    :catchall_62
    move-exception v4

    .line 318
    :try_start_63
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_67

    .line 322
    :goto_66
    throw v4

    .line 319
    :catch_67
    move-exception v0

    .line 320
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "SprintZone_DSA"

    const-string v6, "DsaHttpClient.converStreamToString()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_66

    .line 319
    .end local v0           #e:Ljava/io/IOException;
    :catch_70
    move-exception v0

    .line 320
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "SprintZone_DSA"

    const-string v5, "DsaHttpClient.converStreamToString()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31
.end method

.method public execute(Ljava/lang/String;)V
    .registers 5
    .parameter "url"

    .prologue
    .line 334
    iput-object p1, p0, Lcom/sprint/dsa/dss/DsaHttpClient;->lastLoadUrl:Ljava/lang/String;

    .line 336
    iget-object v1, p0, Lcom/sprint/dsa/dss/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v1, v1, Lcom/sprint/dsa/dss/DsaClient;->dsaStateManager:Lcom/sprint/dsa/dss/StateManager;

    sget-object v2, Lcom/sprint/dsa/dss/StateManager$dsaBackgroundState;->DSA_LOADING_URL:Lcom/sprint/dsa/dss/StateManager$dsaBackgroundState;

    invoke-virtual {v1, v2}, Lcom/sprint/dsa/dss/StateManager;->setBGState(Lcom/sprint/dsa/dss/StateManager$dsaBackgroundState;)V

    .line 339
    new-instance v0, Lcom/sprint/dsa/dss/DsaHttpClient$2;

    invoke-direct {v0, p0, p1}, Lcom/sprint/dsa/dss/DsaHttpClient$2;-><init>(Lcom/sprint/dsa/dss/DsaHttpClient;Ljava/lang/String;)V

    .line 389
    .local v0, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 390
    return-void
.end method

.method public getResource(Ljava/lang/String;)V
    .registers 27
    .parameter "url"

    .prologue
    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->imagesToLoad:Ljava/util/Vector;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 470
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->loadingRes:Z

    move/from16 v21, v0

    if-eqz v21, :cond_16

    .line 525
    :goto_15
    return-void

    .line 474
    :cond_16
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sprint/dsa/dss/DsaHttpClient;->loadingRes:Z

    .line 475
    :goto_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->imagesToLoad:Ljava/util/Vector;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_33

    .line 524
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sprint/dsa/dss/DsaHttpClient;->loadingRes:Z

    goto :goto_15

    .line 477
    :cond_33
    :try_start_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->imagesToLoad:Ljava/util/Vector;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 478
    .local v6, curURL:Ljava/lang/String;
    new-instance v12, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v12, v6}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 480
    .local v12, get:Lorg/apache/http/client/methods/HttpGet;
    const/16 v21, 0x2f

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    .line 481
    .local v13, lastIndex:I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v13, v0, :cond_76

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->imagesToLoad:Ljava/util/Vector;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_5d} :catch_5e

    goto :goto_1e

    .line 519
    .end local v6           #curURL:Ljava/lang/String;
    .end local v12           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v13           #lastIndex:I
    :catch_5e
    move-exception v8

    .line 520
    .local v8, e:Ljava/lang/Exception;
    const-string v21, "SprintZone_DSA"

    const-string v22, "getResource"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 522
    .end local v8           #e:Ljava/lang/Exception;
    :goto_6a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->imagesToLoad:Ljava/util/Vector;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto :goto_1e

    .line 486
    .restart local v6       #curURL:Ljava/lang/String;
    .restart local v12       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v13       #lastIndex:I
    :cond_76
    :try_start_76
    const-string v21, "android.os.StrictMode"

    invoke-static/range {v21 .. v21}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v18

    .line 487
    .local v18, strictModeClass:Ljava/lang/Class;
    const-string v21, "android.os.StrictMode$ThreadPolicy"

    invoke-static/range {v21 .. v21}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v19

    .line 488
    .local v19, strictModeThreadPolicyClass:Ljava/lang/Class;
    const-string v21, "LAX"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 489
    .local v14, laxPolicy:Ljava/lang/Object;
    const-string v21, "setThreadPolicy"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v19, v22, v23

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    .line 490
    .local v15, method_setThreadPolicy:Ljava/lang/reflect/Method;
    const/16 v21, 0x0

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v14, v22, v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_bf} :catch_162

    .line 492
    .end local v14           #laxPolicy:Ljava/lang/Object;
    .end local v15           #method_setThreadPolicy:Ljava/lang/reflect/Method;
    .end local v18           #strictModeClass:Ljava/lang/Class;
    .end local v19           #strictModeThreadPolicyClass:Ljava/lang/Class;
    :goto_bf
    add-int/lit8 v21, v13, 0x1

    :try_start_c1
    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 493
    .local v16, resName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    move-object/from16 v21, v0

    const-string v22, "images"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lcom/sprint/dsa/dss/DsaClient;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v7

    .line 494
    .local v7, dir:Ljava/io/File;
    new-instance v20, Ljava/io/File;

    const-string v21, "images"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v7, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 495
    .local v20, subDir:Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->mkdirs()Z

    .line 496
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-direct {v10, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 497
    .local v10, f:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_ff

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->imagesToLoad:Ljava/util/Vector;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1e

    .line 501
    :cond_ff
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v17

    .line 503
    .local v17, resp:Lorg/apache/http/HttpResponse;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/sprint/dsa/dss/DsaClient;->dsaDebug:Z

    move/from16 v21, v0

    if-eqz v21, :cond_135

    .line 504
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    .line 505
    .local v9, entity:Lorg/apache/http/HttpEntity;
    const-string v21, "SprintZone_DSA"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "Response content length: "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 506
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v23

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 505
    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    .end local v9           #entity:Lorg/apache/http/HttpEntity;
    :cond_135
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 510
    .local v5, content:Ljava/io/InputStream;
    const/16 v21, 0x1000

    move/from16 v0, v21

    new-array v3, v0, [B

    .line 513
    .local v3, buffer:[B
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 514
    .local v11, fos:Ljava/io/FileOutputStream;
    :goto_148
    const/16 v21, -0x1

    invoke-virtual {v5, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, c:I
    move/from16 v0, v21

    if-ne v0, v4, :cond_15a

    .line 517
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->flush()V

    .line 518
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_6a

    .line 515
    :cond_15a
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v11, v3, v0, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_161
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_161} :catch_5e

    goto :goto_148

    .line 491
    .end local v3           #buffer:[B
    .end local v4           #c:I
    .end local v5           #content:Ljava/io/InputStream;
    .end local v7           #dir:Ljava/io/File;
    .end local v10           #f:Ljava/io/File;
    .end local v11           #fos:Ljava/io/FileOutputStream;
    .end local v16           #resName:Ljava/lang/String;
    .end local v17           #resp:Lorg/apache/http/HttpResponse;
    .end local v20           #subDir:Ljava/io/File;
    :catch_162
    move-exception v21

    goto/16 :goto_bf
.end method

.method protected handleResult(Ljava/lang/String;)V
    .registers 6
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 412
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaClient;->dsaStateManager:Lcom/sprint/dsa/dss/StateManager;

    invoke-virtual {v0}, Lcom/sprint/dsa/dss/StateManager;->getUIState()Lcom/sprint/dsa/dss/StateManager$dsaUIState;

    move-result-object v0

    sget-object v1, Lcom/sprint/dsa/dss/StateManager$dsaUIState;->DSA_DONE:Lcom/sprint/dsa/dss/StateManager$dsaUIState;

    if-ne v0, v1, :cond_14

    .line 414
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    invoke-virtual {v0, v3}, Lcom/sprint/dsa/dss/DsaClient;->close(I)V

    .line 459
    :goto_13
    return-void

    .line 419
    :cond_14
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaClient;->dsaStateManager:Lcom/sprint/dsa/dss/StateManager;

    sget-object v1, Lcom/sprint/dsa/dss/StateManager$dsaBackgroundState;->DSA_IDEAL:Lcom/sprint/dsa/dss/StateManager$dsaBackgroundState;

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/dss/StateManager;->setBGState(Lcom/sprint/dsa/dss/StateManager$dsaBackgroundState;)V

    .line 420
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-boolean v0, v0, Lcom/sprint/dsa/dss/DsaClient;->exitAction:Z

    if-eqz v0, :cond_87

    .line 421
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaClient;->option:Ljava/lang/String;

    const-string v1, "exit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_35

    .line 422
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    invoke-virtual {v0, v3}, Lcom/sprint/dsa/dss/DsaClient;->close(I)V

    goto :goto_13

    .line 423
    :cond_35
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaClient;->option:Ljava/lang/String;

    const-string v1, "dm_cifumo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_48

    .line 424
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/dss/DsaClient;->close(I)V

    goto :goto_13

    .line 425
    :cond_48
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaClient;->option:Ljava/lang/String;

    const-string v1, "dm_cidc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_5b

    .line 426
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/dss/DsaClient;->close(I)V

    goto :goto_13

    .line 427
    :cond_5b
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaClient;->option:Ljava/lang/String;

    const-string v1, "dm_ciprl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_6e

    .line 428
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/dss/DsaClient;->close(I)V

    goto :goto_13

    .line 429
    :cond_6e
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaClient;->option:Ljava/lang/String;

    const-string v1, "icq_report"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_81

    .line 430
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/dss/DsaClient;->close(I)V

    goto :goto_13

    .line 432
    :cond_81
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    invoke-virtual {v0, v3}, Lcom/sprint/dsa/dss/DsaClient;->close(I)V

    goto :goto_13

    .line 438
    :cond_87
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sprint/dsa/dss/DsaClient;->option:Ljava/lang/String;

    .line 439
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaHttpClient;->errorMessage:Ljava/lang/String;

    if-nez v0, :cond_99

    .line 442
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaClient;->dsaWebViewClient:Lcom/sprint/dsa/dss/DsaWebViewClient;

    invoke-virtual {v0, p1}, Lcom/sprint/dsa/dss/DsaWebViewClient;->loadData(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 448
    :cond_99
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    new-instance v1, Lcom/sprint/dsa/dss/DsaHttpClient$3;

    invoke-direct {v1, p0}, Lcom/sprint/dsa/dss/DsaHttpClient$3;-><init>(Lcom/sprint/dsa/dss/DsaHttpClient;)V

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/dss/DsaClient;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_13
.end method

.method public loadURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 25
    .parameter "url"

    .prologue
    .line 85
    if-nez p1, :cond_5

    const/16 v16, 0x0

    .line 211
    :goto_4
    return-object v16

    .line 87
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    move-object/from16 v20, v0

    const v21, 0x7f080037

    invoke-virtual/range {v20 .. v21}, Lcom/sprint/dsa/dss/DsaClient;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/sprint/dsa/dss/DsaClient;->setBusyText(Ljava/lang/String;)V

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaClient;->nextURL:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "stic"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_1a9

    .line 91
    const-string v19, "10.31.172.173"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sprint/dsa/dss/DsaHttpClient;->proxyHost:Ljava/lang/String;

    .line 92
    const/16 v19, 0x50

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sprint/dsa/dss/DsaHttpClient;->proxyPort:I

    .line 99
    :goto_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/sprint/dsa/dss/DsaClient;->SLOT0:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7b

    .line 100
    new-instance v12, Lorg/apache/http/HttpHost;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->proxyHost:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->proxyPort:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v12, v0, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 101
    .local v12, proxy:Lorg/apache/http/HttpHost;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v19

    const-string v20, "http.route.default-proxy"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v12}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 104
    .end local v12           #proxy:Lorg/apache/http/HttpHost;
    :cond_7b
    const/4 v9, 0x0

    .line 105
    .local v9, is:Ljava/io/InputStream;
    const/16 v16, 0x0

    .line 106
    .local v16, retString:Ljava/lang/String;
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sprint/dsa/dss/DsaHttpClient;->errorMessage:Ljava/lang/String;

    .line 108
    const/16 v18, 0x0

    .line 109
    .local v18, timeout:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/sprint/dsa/dss/DsaClient;->exitAction:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1e5

    .line 110
    const/16 v18, 0x64

    .line 114
    :goto_98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v19

    const-string v20, "http.connection.timeout"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-interface/range {v19 .. v21}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 118
    const/4 v10, 0x0

    .line 120
    .local v10, localUrl:Ljava/net/URL;
    :try_start_ac
    new-instance v10, Ljava/net/URL;

    .end local v10           #localUrl:Ljava/net/URL;
    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_b3} :catch_1fb

    .line 126
    .restart local v10       #localUrl:Ljava/net/URL;
    new-instance v17, Lorg/apache/http/HttpHost;

    invoke-virtual {v10}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v10}, Ljava/net/URL;->getPort()I

    move-result v20

    .line 127
    invoke-virtual {v10}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v21

    .line 126
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 128
    .local v17, targetHost:Lorg/apache/http/HttpHost;
    invoke-virtual {v10}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v13

    .line 129
    .local v13, query:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v11

    .line 130
    .local v11, path:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    .line 131
    .local v4, Protocol:Ljava/lang/String;
    const-string v19, "443"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 132
    .local v8, index:I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v8, v0, :cond_20b

    const-string v19, "https"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_20b

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "http"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v21, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "80"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v8, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/sprint/dsa/dss/DsaClient;->baseURL:Ljava/lang/String;

    .line 138
    :goto_12b
    if-nez v13, :cond_219

    .line 139
    new-instance v19, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v19

    invoke-direct {v0, v11}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sprint/dsa/dss/DsaHttpClient;->httpGet:Lorg/apache/http/client/methods/HttpGet;

    .line 143
    :goto_13a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->httpGet:Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/apache/http/client/methods/HttpGet;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v19

    const-string v20, "http.socket.timeout"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-interface/range {v19 .. v21}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/sprint/dsa/dss/DsaClient;->dsaDebug:Z

    move/from16 v19, v0

    if-eqz v19, :cond_179

    const-string v19, "SprintZone_DSA"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "DsaHttpClient.loadURL(): executing: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->httpGet:Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/apache/http/client/methods/HttpGet;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_179
    const/4 v14, 0x0

    .line 151
    .local v14, response:Lorg/apache/http/HttpResponse;
    :try_start_17a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->httpGet:Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    :try_end_18f
    .catch Ljava/lang/Exception; {:try_start_17a .. :try_end_18f} :catch_23f

    move-result-object v14

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/sprint/dsa/dss/DsaClient;->exitAction:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2f1

    .line 183
    const-string v19, "SprintZone_DSA"

    const-string v20, "DsaHttpClient.loadURL(): returning because of exit action..."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 93
    .end local v4           #Protocol:Ljava/lang/String;
    .end local v8           #index:I
    .end local v9           #is:Ljava/io/InputStream;
    .end local v10           #localUrl:Ljava/net/URL;
    .end local v11           #path:Ljava/lang/String;
    .end local v13           #query:Ljava/lang/String;
    .end local v14           #response:Lorg/apache/http/HttpResponse;
    .end local v16           #retString:Ljava/lang/String;
    .end local v17           #targetHost:Lorg/apache/http/HttpHost;
    .end local v18           #timeout:I
    :cond_1a9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaClient;->nextURL:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "dsa.spcsdns.net"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_1d5

    .line 94
    const-string v19, "144.226.247.31"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sprint/dsa/dss/DsaHttpClient;->proxyHost:Ljava/lang/String;

    .line 95
    const/16 v19, 0x50

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sprint/dsa/dss/DsaHttpClient;->proxyPort:I

    goto/16 :goto_45

    .line 97
    :cond_1d5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/sprint/dsa/dss/DsaClient;->SLOT0:Z

    goto/16 :goto_45

    .line 112
    .restart local v9       #is:Ljava/io/InputStream;
    .restart local v16       #retString:Ljava/lang/String;
    .restart local v18       #timeout:I
    :cond_1e5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/sprint/dsa/dss/DsaClient;->SLOT0:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1f8

    const v18, 0x15f90

    :goto_1f6
    goto/16 :goto_98

    :cond_1f8
    const/16 v18, 0x7530

    goto :goto_1f6

    .line 121
    :catch_1fb
    move-exception v5

    .line 122
    .local v5, e:Ljava/lang/Exception;
    const-string v19, "SprintZone_DSA"

    const-string v20, "DsaHttpClient.loadUrl(): error: "

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 135
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v4       #Protocol:Ljava/lang/String;
    .restart local v8       #index:I
    .restart local v10       #localUrl:Ljava/net/URL;
    .restart local v11       #path:Ljava/lang/String;
    .restart local v13       #query:Ljava/lang/String;
    .restart local v17       #targetHost:Lorg/apache/http/HttpHost;
    :cond_20b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/sprint/dsa/dss/DsaClient;->baseURL:Ljava/lang/String;

    goto/16 :goto_12b

    .line 141
    :cond_219
    new-instance v19, Lorg/apache/http/client/methods/HttpGet;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "?"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sprint/dsa/dss/DsaHttpClient;->httpGet:Lorg/apache/http/client/methods/HttpGet;

    goto/16 :goto_13a

    .line 152
    .restart local v14       #response:Lorg/apache/http/HttpResponse;
    :catch_23f
    move-exception v5

    .line 153
    .restart local v5       #e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/sprint/dsa/dss/DsaClient;->exitAction:Z

    move/from16 v19, v0

    if-nez v19, :cond_2d3

    .line 154
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 156
    .local v7, errMsg:Ljava/lang/String;
    if-nez v7, :cond_262

    invoke-virtual {v5}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v19

    if-eqz v19, :cond_262

    .line 157
    invoke-virtual {v5}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 159
    :cond_262
    if-eqz v7, :cond_28f

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x3c

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_28f

    .line 160
    new-instance v19, Ljava/lang/StringBuilder;

    const/16 v20, 0x0

    const/16 v21, 0x3c

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "..."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 162
    :cond_28f
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Network Error: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sprint/dsa/dss/DsaHttpClient;->errorMessage:Ljava/lang/String;

    .line 163
    const-string v19, "SprintZone_DSA"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->errorMessage:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    .end local v7           #errMsg:Ljava/lang/String;
    :goto_2b5
    const-string v19, "SprintZone_DSA"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "DsaHttpClient.loadURL(): returning prematurely because of error: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->errorMessage:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 165
    :cond_2d3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    move-object/from16 v20, v0

    const v21, 0x7f080039

    invoke-virtual/range {v20 .. v21}, Lcom/sprint/dsa/dss/DsaClient;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/sprint/dsa/dss/DsaClient;->setBusyText(Ljava/lang/String;)V

    .line 166
    const-string v19, "SprintZone_DSA"

    const-string v20, "DsaHttpClient.loadURL(): Exit Action"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b5

    .line 187
    .end local v5           #e:Ljava/lang/Exception;
    :cond_2f1
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    .line 188
    .local v15, retCode:I
    const/16 v19, 0xc8

    move/from16 v0, v19

    if-ne v15, v0, :cond_361

    .line 189
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 191
    .local v6, entity:Lorg/apache/http/HttpEntity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/sprint/dsa/dss/DsaClient;->dsaDebug:Z

    move/from16 v19, v0

    if-eqz v19, :cond_31e

    .line 192
    const-string v19, "SprintZone_DSA"

    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_31e
    if-eqz v6, :cond_346

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/sprint/dsa/dss/DsaClient;->dsaDebug:Z

    move/from16 v19, v0

    if-eqz v19, :cond_346

    .line 195
    const-string v19, "SprintZone_DSA"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Response content length: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v21

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 195
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_346
    if-eqz v6, :cond_34c

    .line 200
    :try_start_348
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_34b
    .catch Ljava/lang/Exception; {:try_start_348 .. :try_end_34b} :catch_354

    move-result-object v9

    .line 205
    :cond_34c
    :goto_34c
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sprint/dsa/dss/DsaHttpClient;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_4

    .line 201
    :catch_354
    move-exception v5

    .line 202
    .restart local v5       #e:Ljava/lang/Exception;
    const-string v19, "SprintZone_DSA"

    const-string v20, "DsaHttpClient.loadURL(): error"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_34c

    .line 207
    .end local v5           #e:Ljava/lang/Exception;
    .end local v6           #entity:Lorg/apache/http/HttpEntity;
    :cond_361
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Server Error:"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sprint/dsa/dss/DsaHttpClient;->errorMessage:Ljava/lang/String;

    .line 208
    const-string v19, "SprintZone_DSA"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "DsaHttpClient.loadURL(): "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->errorMessage:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method public retryLastUrl()Z
    .registers 2

    .prologue
    .line 462
    iget v0, p0, Lcom/sprint/dsa/dss/DsaHttpClient;->retryLoadCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sprint/dsa/dss/DsaHttpClient;->retryLoadCount:I

    .line 463
    iget-object v0, p0, Lcom/sprint/dsa/dss/DsaHttpClient;->lastLoadUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sprint/dsa/dss/DsaHttpClient;->execute(Ljava/lang/String;)V

    .line 464
    const/4 v0, 0x1

    return v0
.end method

.method public warmLoadURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 20
    .parameter "url"

    .prologue
    .line 216
    if-nez p1, :cond_4

    const/4 v15, 0x0

    .line 284
    :goto_3
    return-object v15

    .line 218
    :cond_4
    const-string v1, "stic"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_106

    .line 219
    const-string v1, "10.31.172.173"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->proxyHost:Ljava/lang/String;

    .line 220
    const/16 v1, 0x50

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->proxyPort:I

    .line 226
    :cond_1b
    :goto_1b
    new-instance v12, Lorg/apache/http/HttpHost;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->proxyHost:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->proxyPort:I

    invoke-direct {v12, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 227
    .local v12, proxy:Lorg/apache/http/HttpHost;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.route.default-proxy"

    invoke-interface {v1, v2, v12}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 229
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-boolean v1, v1, Lcom/sprint/dsa/dss/DsaClient;->dsaDebug:Z

    if-eqz v1, :cond_44

    const-string v1, "SprintZone_DSA"

    const-string v2, "Start warmLoadURL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_44
    const/4 v9, 0x0

    .line 232
    .local v9, is:Ljava/io/InputStream;
    const/4 v15, 0x0

    .line 233
    .local v15, retString:Ljava/lang/String;
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->errorMessage:Ljava/lang/String;

    .line 234
    const v17, 0x15f90

    .line 236
    .local v17, timeout:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.connection.timeout"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 238
    const/4 v10, 0x0

    .line 240
    .local v10, localUrl:Ljava/net/URL;
    :try_start_60
    new-instance v11, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_67} :catch_11f

    .end local v10           #localUrl:Ljava/net/URL;
    .local v11, localUrl:Ljava/net/URL;
    move-object v10, v11

    .line 244
    .end local v11           #localUrl:Ljava/net/URL;
    .restart local v10       #localUrl:Ljava/net/URL;
    :goto_68
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->keepAliveTimer:Ljava/util/Timer;

    .line 245
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->keepAliveTimer:Ljava/util/Timer;

    new-instance v2, Lcom/sprint/dsa/dss/DsaHttpClient$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/sprint/dsa/dss/DsaHttpClient$1;-><init>(Lcom/sprint/dsa/dss/DsaHttpClient;)V

    .line 250
    const-wide/16 v3, 0xfa0

    const-wide/16 v5, 0xfa0

    .line 245
    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 252
    new-instance v16, Lorg/apache/http/HttpHost;

    invoke-virtual {v10}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10}, Ljava/net/URL;->getPort()I

    move-result v2

    .line 253
    invoke-virtual {v10}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    .line 252
    move-object/from16 v0, v16

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 254
    .local v16, targetHost:Lorg/apache/http/HttpHost;
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->httpGet:Lorg/apache/http/client/methods/HttpGet;

    .line 256
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->dsaClient:Lcom/sprint/dsa/dss/DsaClient;

    iget-boolean v1, v1, Lcom/sprint/dsa/dss/DsaClient;->dsaDebug:Z

    if-eqz v1, :cond_c5

    const-string v1, "SprintZone_DSA"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "executing request: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->httpGet:Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpGet;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_c5
    const/4 v13, 0x0

    .line 259
    .local v13, response:Lorg/apache/http/HttpResponse;
    :try_start_c6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->httpGet:Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_d3} :catch_129

    move-result-object v13

    .line 264
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->keepAliveTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 266
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    .line 267
    .local v14, retCode:I
    const/16 v1, 0xc8

    if-ne v14, v1, :cond_13d

    .line 268
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 270
    .local v8, entity:Lorg/apache/http/HttpEntity;
    const-string v1, "SprintZone_DSA"

    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    if-eqz v8, :cond_fe

    .line 274
    :try_start_fa
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_fd} :catch_134

    move-result-object v9

    .line 279
    :cond_fe
    :goto_fe
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/sprint/dsa/dss/DsaHttpClient;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_3

    .line 221
    .end local v8           #entity:Lorg/apache/http/HttpEntity;
    .end local v9           #is:Ljava/io/InputStream;
    .end local v10           #localUrl:Ljava/net/URL;
    .end local v12           #proxy:Lorg/apache/http/HttpHost;
    .end local v13           #response:Lorg/apache/http/HttpResponse;
    .end local v14           #retCode:I
    .end local v15           #retString:Ljava/lang/String;
    .end local v16           #targetHost:Lorg/apache/http/HttpHost;
    .end local v17           #timeout:I
    :cond_106
    const-string v1, "dsa.spcsdns.net"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_1b

    .line 222
    const-string v1, "144.226.247.31"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->proxyHost:Ljava/lang/String;

    .line 223
    const/16 v1, 0x50

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->proxyPort:I

    goto/16 :goto_1b

    .line 241
    .restart local v9       #is:Ljava/io/InputStream;
    .restart local v10       #localUrl:Ljava/net/URL;
    .restart local v12       #proxy:Lorg/apache/http/HttpHost;
    .restart local v15       #retString:Ljava/lang/String;
    .restart local v17       #timeout:I
    :catch_11f
    move-exception v7

    .line 242
    .local v7, e:Ljava/lang/Exception;
    const-string v1, "SprintZone_DSA"

    const-string v2, "loadURL"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_68

    .line 260
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v13       #response:Lorg/apache/http/HttpResponse;
    .restart local v16       #targetHost:Lorg/apache/http/HttpHost;
    :catch_129
    move-exception v7

    .line 261
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v1, "SprintZone_DSA"

    const-string v2, "warmLoadURL"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 275
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v8       #entity:Lorg/apache/http/HttpEntity;
    .restart local v14       #retCode:I
    :catch_134
    move-exception v7

    .line 276
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v1, "SprintZone_DSA"

    const-string v2, "DsaHttpClient.warmLoadURL(): "

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_fe

    .line 281
    .end local v7           #e:Ljava/lang/Exception;
    .end local v8           #entity:Lorg/apache/http/HttpEntity;
    :cond_13d
    const-string v1, "SprintZone_DSA"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DsaHttpClient.warmLoadURL(): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sprint/dsa/dss/DsaHttpClient;->errorMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method
