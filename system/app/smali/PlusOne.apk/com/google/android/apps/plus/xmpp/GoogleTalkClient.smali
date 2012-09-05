.class public abstract Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;
.super Ljava/lang/Object;
.source "GoogleTalkClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/xmpp/GoogleTalkClient$1;,
        Lcom/google/android/apps/plus/xmpp/GoogleTalkClient$GoogleTalkThread;
    }
.end annotation


# instance fields
.field private mActive:Z

.field private final mAddress:Ljava/lang/String;

.field private final mBackendAddress:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mDebugModeEnabled:Z

.field private final mEsAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mGoogleToken:Ljava/lang/String;

.field private mJabberId:Ljava/lang/String;

.field private final mResource:Ljava/lang/String;

.field private mSocket:Ljava/net/Socket;

.field private mThread:Lcom/google/android/apps/plus/xmpp/GoogleTalkClient$GoogleTalkThread;

.field private mWriter:Ljava/io/BufferedWriter;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "account"
    .parameter "context"
    .parameter "address"
    .parameter "backendAddress"
    .parameter "resource"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mEsAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 61
    iput-object p2, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mContext:Landroid/content/Context;

    .line 62
    iput-object p3, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mAddress:Ljava/lang/String;

    .line 63
    iput-object p4, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mBackendAddress:Ljava/lang/String;

    .line 64
    iput-object p5, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mResource:Ljava/lang/String;

    .line 65
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mActive:Z

    .line 67
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 68
    .local v1, res:Landroid/content/res/Resources;
    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 69
    .local v0, prefs:Landroid/content/SharedPreferences;
    const v2, 0x7f07000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b0004

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mDebugModeEnabled:Z

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mGoogleToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mGoogleToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->onJidReceived(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mEsAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;)Ljava/net/Socket;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mSocket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;Ljava/net/Socket;)Ljava/net/Socket;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mSocket:Ljava/net/Socket;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;)V
    .registers 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->resetWriter()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->restartStream()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mDebugModeEnabled:Z

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;Ljava/lang/String;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->write(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->onProceedWithTlsReceived()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mResource:Ljava/lang/String;

    return-object v0
.end method

.method private closeSocket()V
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_9

    .line 131
    :try_start_4
    iget-object v0, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_d

    .line 135
    :cond_9
    :goto_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mSocket:Ljava/net/Socket;

    .line 136
    return-void

    .line 132
    :catch_d
    move-exception v0

    goto :goto_9
.end method

.method private onJidReceived(Ljava/lang/String;)V
    .registers 5
    .parameter "jid"

    .prologue
    .line 315
    iput-object p1, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mJabberId:Ljava/lang/String;

    .line 316
    const-string v0, "GoogleTalkClient"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 317
    const-string v0, "GoogleTalkClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_23
    iget-object v0, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mJabberId:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mJabberId:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mBackendAddress:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/xmpp/Commands;->subscribe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->write(Ljava/lang/String;)Z

    .line 321
    invoke-virtual {p0}, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->onConnected()V

    .line 322
    return-void
.end method

.method private onProceedWithTlsReceived()V
    .registers 9

    .prologue
    .line 296
    :try_start_0
    const-string v4, "TLS"

    invoke-static {v4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 297
    .local v0, context:Ljavax/net/ssl/SSLContext;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 298
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    .line 299
    .local v3, socketFactory:Ljavax/net/ssl/SSLSocketFactory;
    iget-object v4, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mSocket:Ljava/net/Socket;

    iget-object v5, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mSocket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getPort()I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v2

    .line 301
    .local v2, secureSocket:Ljava/net/Socket;
    iput-object v2, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mSocket:Ljava/net/Socket;

    .line 302
    iget-object v4, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mSocket:Ljava/net/Socket;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 303
    iget-object v4, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mSocket:Ljava/net/Socket;

    const v5, 0xea60

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 304
    check-cast v2, Ljavax/net/ssl/SSLSocket;

    .end local v2           #secureSocket:Ljava/net/Socket;
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 305
    invoke-direct {p0}, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->resetWriter()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3f} :catch_40

    .line 312
    .end local v0           #context:Ljavax/net/ssl/SSLContext;
    .end local v3           #socketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :goto_3f
    return-void

    .line 306
    :catch_40
    move-exception v1

    .line 307
    .local v1, exception:Ljava/lang/Exception;
    const-string v4, "GoogleTalkClient"

    const/4 v5, 0x5

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 308
    const-string v4, "GoogleTalkClient"

    const-string v5, "Exception while starting TLS"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_51
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->disconnect(I)V

    goto :goto_3f
.end method

.method private resetWriter()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mWriter:Ljava/io/BufferedWriter;

    .line 278
    return-void
.end method

.method private restartStream()V
    .registers 2

    .prologue
    .line 273
    invoke-static {}, Lcom/google/android/apps/plus/xmpp/Commands;->startStream()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->write(Ljava/lang/String;)Z

    .line 274
    return-void
.end method

.method private declared-synchronized write(Ljava/lang/String;)Z
    .registers 5
    .parameter "message"

    .prologue
    .line 282
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 283
    iget-object v1, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_25
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_e

    .line 284
    const/4 v1, 0x1

    .line 291
    :goto_c
    monitor-exit p0

    return v1

    .line 285
    :catch_e
    move-exception v0

    .line 286
    .local v0, exception:Ljava/io/IOException;
    :try_start_f
    const-string v1, "GoogleTalkClient"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 287
    const-string v1, "GoogleTalkClient"

    const-string v2, "IOException while writing message"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_1f
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->disconnect(I)V
    :try_end_23
    .catchall {:try_start_f .. :try_end_23} :catchall_25

    .line 291
    const/4 v1, 0x0

    goto :goto_c

    .line 282
    .end local v0           #exception:Ljava/io/IOException;
    :catchall_25
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public active()Z
    .registers 2

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mActive:Z

    return v0
.end method

.method public declared-synchronized connect()V
    .registers 2

    .prologue
    .line 83
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mActive:Z

    .line 84
    iget-object v0, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mThread:Lcom/google/android/apps/plus/xmpp/GoogleTalkClient$GoogleTalkThread;

    if-nez v0, :cond_14

    .line 85
    new-instance v0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient$GoogleTalkThread;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient$GoogleTalkThread;-><init>(Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mThread:Lcom/google/android/apps/plus/xmpp/GoogleTalkClient$GoogleTalkThread;

    .line 86
    iget-object v0, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mThread:Lcom/google/android/apps/plus/xmpp/GoogleTalkClient$GoogleTalkThread;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient$GoogleTalkThread;->start()V
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_16

    .line 88
    :cond_14
    monitor-exit p0

    return-void

    .line 83
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public disconnect()V
    .registers 2

    .prologue
    .line 95
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->disconnect(I)V

    .line 96
    return-void
.end method

.method public declared-synchronized disconnect(I)V
    .registers 5
    .parameter "reason"

    .prologue
    .line 99
    monitor-enter p0

    :try_start_1
    const-string v0, "GoogleTalkClient"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 100
    const-string v0, "GoogleTalkClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mActive:Z

    .line 103
    iget-object v0, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mThread:Lcom/google/android/apps/plus/xmpp/GoogleTalkClient$GoogleTalkThread;

    if-eqz v0, :cond_37

    .line 104
    iget-object v0, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mThread:Lcom/google/android/apps/plus/xmpp/GoogleTalkClient$GoogleTalkThread;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient$GoogleTalkThread;->setDisconnected()V

    .line 105
    invoke-direct {p0}, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->closeSocket()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mThread:Lcom/google/android/apps/plus/xmpp/GoogleTalkClient$GoogleTalkThread;

    .line 107
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->onDisconnected(I)V
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_39

    .line 109
    :cond_37
    monitor-exit p0

    return-void

    .line 99
    :catchall_39
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mEsAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected abstract onConnected()V
.end method

.method protected abstract onDisconnected(I)V
.end method

.method protected abstract onMessageReceived([B)V
.end method

.method public sendMessage([B)Z
    .registers 6
    .parameter "message"

    .prologue
    const/4 v0, 0x0

    .line 112
    iget-object v1, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mJabberId:Ljava/lang/String;

    if-eqz v1, :cond_1f

    .line 113
    iget-object v1, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mJabberId:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mJabberId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mAddress:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/google/android/apps/plus/xmpp/Commands;->push(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->write(Ljava/lang/String;)Z

    move-result v0

    .line 116
    :cond_1f
    return v0
.end method
