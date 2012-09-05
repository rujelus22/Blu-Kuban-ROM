.class public final Lcom/coremobility/integration/e/d;
.super Ljava/lang/Object;


# static fields
.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/security/KeyStore;

.field private static f:Z

.field private static g:Ljava/lang/Object;


# instance fields
.field public a:Ljava/net/HttpURLConnection;

.field private b:Landroid/os/PowerManager$WakeLock;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "smithmicro"

    sput-object v0, Lcom/coremobility/integration/e/d;->c:Ljava/lang/String;

    const-string v0, "smithmicro_ks"

    sput-object v0, Lcom/coremobility/integration/e/d;->d:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/integration/e/d;->e:Ljava/security/KeyStore;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/coremobility/integration/e/d;->f:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/coremobility/integration/e/d;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/coremobility/integration/e/d;->a:Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/coremobility/integration/e/d;->b:Landroid/os/PowerManager$WakeLock;

    iput-object v0, p0, Lcom/coremobility/integration/e/d;->h:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljavax/net/ssl/HttpsURLConnection;)V
    .registers 5

    const/4 v3, 0x0

    const/16 v0, 0x17

    const-string v1, "CM+HT Installing the trust manager"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    :try_start_b
    invoke-static {}, Lcom/coremobility/integration/e/d;->k()Ljava/security/KeyStore;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_2f

    move-result-object v0

    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    :try_start_17
    invoke-virtual {v1, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V
    :try_end_1a
    .catch Ljava/security/KeyStoreException; {:try_start_17 .. :try_end_1a} :catch_34

    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    invoke-virtual {v0, v3, v1, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :goto_2e
    return-void

    :catch_2f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2e

    :catch_34
    move-exception v0

    invoke-virtual {v0}, Ljava/security/KeyStoreException;->printStackTrace()V

    goto :goto_2e
.end method

.method public static h()Z
    .registers 2

    sget-object v1, Lcom/coremobility/integration/e/d;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/coremobility/integration/e/d;->f:Z

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static i()V
    .registers 2

    sget-object v1, Lcom/coremobility/integration/e/d;->g:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    sput-boolean v0, Lcom/coremobility/integration/e/d;->f:Z

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    return-void

    :catchall_8
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized k()Ljava/security/KeyStore;
    .registers 5

    const-class v1, Lcom/coremobility/integration/e/d;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/coremobility/integration/e/d;->e:Ljava/security/KeyStore;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/coremobility/integration/e/d;->e:Ljava/security/KeyStore;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_4e

    :goto_9
    monitor-exit v1

    return-object v0

    :cond_b
    :try_start_b
    const-string v0, "BKS"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    sput-object v0, Lcom/coremobility/integration/e/d;->e:Ljava/security/KeyStore;

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v2, Lcom/coremobility/integration/e/d;->d:Ljava/lang/String;

    const-string v3, "raw"

    const-string v4, "com.coremobility.app.vnotes"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2d

    const/4 v0, 0x0

    goto :goto_9

    :cond_2d
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_30
    .catchall {:try_start_b .. :try_end_30} :catchall_4e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_30} :catch_47

    move-result-object v2

    :try_start_31
    sget-object v0, Lcom/coremobility/integration/e/d;->e:Ljava/security/KeyStore;

    sget-object v3, Lcom/coremobility/integration/e/d;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_3c
    .catchall {:try_start_31 .. :try_end_3c} :catchall_42

    :try_start_3c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    sget-object v0, Lcom/coremobility/integration/e/d;->e:Ljava/security/KeyStore;

    goto :goto_9

    :catchall_42
    move-exception v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_47
    .catchall {:try_start_3c .. :try_end_47} :catchall_4e
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_47} :catch_47

    :catch_47
    move-exception v0

    :try_start_48
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
    :try_end_4e
    .catchall {:try_start_48 .. :try_end_4e} :catchall_4e

    :catchall_4e
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()V
    .registers 4

    iget-object v0, p0, Lcom/coremobility/integration/e/d;->b:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    const-string v2, "CM Http wakeup"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/integration/e/d;->b:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/coremobility/integration/e/d;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_4
.end method

.method public final a(Ljava/lang/String;III)V
    .registers 13

    const/4 v7, 0x1

    if-nez p1, :cond_4a

    const/4 v1, 0x0

    :goto_4
    :try_start_4
    iput-object v1, p0, Lcom/coremobility/integration/e/d;->h:Ljava/lang/String;

    iput p2, p0, Lcom/coremobility/integration/e/d;->i:I

    iput p3, p0, Lcom/coremobility/integration/e/d;->j:I

    iput p4, p0, Lcom/coremobility/integration/e/d;->k:I

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    move-result v4

    invoke-virtual {v1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_30

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_30

    if-lez v4, :cond_30

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_30
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    instance-of v1, v2, Ljava/net/HttpURLConnection;

    if-nez v1, :cond_50

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Not an HTTP connection"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_40} :catch_40

    :catch_40
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v2, Lcom/coremobility/integration/e;

    invoke-direct {v2, p1, v1}, Lcom/coremobility/integration/e;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :cond_4a
    :try_start_4a
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_50
    instance-of v1, v2, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_8d

    invoke-static {}, Lcom/coremobility/integration/e/d;->h()Z

    move-result v1

    if-eqz v1, :cond_61

    move-object v0, v2

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v1, v0

    invoke-static {v1}, Lcom/coremobility/integration/e/d;->a(Ljavax/net/ssl/HttpsURLConnection;)V

    :cond_61
    :goto_61
    check-cast v2, Ljava/net/HttpURLConnection;

    iput-object v2, p0, Lcom/coremobility/integration/e/d;->a:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lcom/coremobility/integration/e/d;->a:Ljava/net/HttpURLConnection;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    iget-object v1, p0, Lcom/coremobility/integration/e/d;->a:Ljava/net/HttpURLConnection;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    if-eq p2, v7, :cond_76

    const/4 v1, 0x3

    if-ne p2, v1, :cond_82

    :cond_76
    iget-object v1, p0, Lcom/coremobility/integration/e/d;->a:Ljava/net/HttpURLConnection;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    iget-object v1, p0, Lcom/coremobility/integration/e/d;->a:Ljava/net/HttpURLConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    :cond_82
    iget-object v1, p0, Lcom/coremobility/integration/e/d;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v1, p3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v1, p0, Lcom/coremobility/integration/e/d;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v1, p4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    return-void

    :cond_8d
    invoke-static {}, Lcom/coremobility/integration/c/a;->a()Z

    move-result v1

    if-nez v1, :cond_61

    invoke-static {}, Lcom/coremobility/f/m;->a()Lcom/coremobility/f/m;

    invoke-static {}, Lcom/coremobility/f/m;->f()I

    move-result v1

    if-ltz v1, :cond_b0

    if-eqz v1, :cond_61

    const/4 v3, 0x5

    if-eq v3, v1, :cond_61

    const/4 v3, 0x2

    if-eq v3, v1, :cond_61

    const/16 v3, 0xc

    if-eq v3, v1, :cond_61

    new-instance v1, Lcom/coremobility/integration/f;

    const-string v2, "WIFI CONNECTED"

    invoke-direct {v1, v2}, Lcom/coremobility/integration/f;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b0
    const/16 v1, 0x17

    const-string v3, "CM+HT ActiveNetwork none"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_ba} :catch_40

    goto :goto_61
.end method

.method public final a(Ljava/util/Hashtable;I)V
    .registers 11

    const/4 v7, 0x1

    const/16 v6, 0x1e

    const/16 v5, 0x17

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/coremobility/integration/e/d;->a:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    :try_start_b
    iget v0, p0, Lcom/coremobility/integration/e/d;->i:I

    if-ne v0, v7, :cond_5f

    iget-object v0, p0, Lcom/coremobility/integration/e/d;->a:Ljava/net/HttpURLConnection;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/integration/e/d;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    const/16 v0, 0x2e

    const-string v1, "HttpThead, setRequetMethod post"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_25
    if-eqz p1, :cond_f2

    invoke-virtual {p1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f2

    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :goto_31
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_f2

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/coremobility/integration/e/d;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v3, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_48} :catch_49
    .catch Ljavax/net/ssl/SSLException; {:try_start_b .. :try_end_48} :catch_7b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_48} :catch_b4

    goto :goto_31

    :catch_49
    move-exception v0

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/io/IOException;

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5f
    :try_start_5f
    iget v0, p0, Lcom/coremobility/integration/e/d;->i:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9c

    iget-object v0, p0, Lcom/coremobility/integration/e/d;->a:Ljava/net/HttpURLConnection;

    const-string v1, "PUT"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/integration/e/d;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    const/16 v0, 0x2e

    const-string v1, "HttpThead, setRequetMethod put"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_7a
    .catch Ljava/net/SocketTimeoutException; {:try_start_5f .. :try_end_7a} :catch_49
    .catch Ljavax/net/ssl/SSLException; {:try_start_5f .. :try_end_7a} :catch_7b
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_7a} :catch_b4

    goto :goto_25

    :catch_7b
    move-exception v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/integration/e/d;->h()Z

    move-result v0

    if-eqz v0, :cond_100

    const-string v0, "CM+HT http connect failed"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/io/IOException;

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9c
    :try_start_9c
    iget v0, p0, Lcom/coremobility/integration/e/d;->i:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_cf

    iget-object v0, p0, Lcom/coremobility/integration/e/d;->a:Ljava/net/HttpURLConnection;

    const-string v1, "DELETE"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v0, 0x2e

    const-string v1, "HttpThead, setRequetMethod delete"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_b2
    .catch Ljava/net/SocketTimeoutException; {:try_start_9c .. :try_end_b2} :catch_49
    .catch Ljavax/net/ssl/SSLException; {:try_start_9c .. :try_end_b2} :catch_7b
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_b2} :catch_b4

    goto/16 :goto_25

    :catch_b4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "CM+HT http connect failed"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/io/IOException;

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_cf
    :try_start_cf
    iget v0, p0, Lcom/coremobility/integration/e/d;->i:I

    if-nez v0, :cond_e6

    iget-object v0, p0, Lcom/coremobility/integration/e/d;->a:Ljava/net/HttpURLConnection;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v0, 0x2e

    const-string v1, "HttpThead, setRequetMethod get"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_25

    :cond_e6
    new-instance v0, Ljava/io/IOException;

    const/16 v1, 0x195

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f2
    iget-object v0, p0, Lcom/coremobility/integration/e/d;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_f7
    .catch Ljava/net/SocketTimeoutException; {:try_start_cf .. :try_end_f7} :catch_49
    .catch Ljavax/net/ssl/SSLException; {:try_start_cf .. :try_end_f7} :catch_7b
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_f7} :catch_b4

    :goto_f7
    const-string v0, "CM+HT http connected"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_100
    invoke-static {}, Lcom/coremobility/integration/e/d;->i()V

    :try_start_103
    invoke-virtual {p0}, Lcom/coremobility/integration/e/d;->c()V

    iget-object v0, p0, Lcom/coremobility/integration/e/d;->h:Ljava/lang/String;

    iget v1, p0, Lcom/coremobility/integration/e/d;->i:I

    iget v2, p0, Lcom/coremobility/integration/e/d;->j:I

    iget v3, p0, Lcom/coremobility/integration/e/d;->k:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/coremobility/integration/e/d;->a(Ljava/lang/String;III)V

    iget v0, p0, Lcom/coremobility/integration/e/d;->i:I

    if-ne v0, v7, :cond_16a

    iget-object v0, p0, Lcom/coremobility/integration/e/d;->a:Ljava/net/HttpURLConnection;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/integration/e/d;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    const/16 v0, 0x2e

    const-string v1, "HttpThead, setRequetMethod post"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_12b
    if-eqz p1, :cond_1c0

    invoke-virtual {p1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c0

    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :goto_137
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1c0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/coremobility/integration/e/d;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v3, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14e
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_14e} :catch_14f

    goto :goto_137

    :catch_14f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "CM+HT http connect failed"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/io/IOException;

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16a
    :try_start_16a
    iget v0, p0, Lcom/coremobility/integration/e/d;->i:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_186

    iget-object v0, p0, Lcom/coremobility/integration/e/d;->a:Ljava/net/HttpURLConnection;

    const-string v1, "PUT"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/integration/e/d;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    const/16 v0, 0x2e

    const-string v1, "HttpThead, setRequetMethod put"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_12b

    :cond_186
    iget v0, p0, Lcom/coremobility/integration/e/d;->i:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_19d

    iget-object v0, p0, Lcom/coremobility/integration/e/d;->a:Ljava/net/HttpURLConnection;

    const-string v1, "DELETE"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v0, 0x2e

    const-string v1, "HttpThead, setRequetMethod delete"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_12b

    :cond_19d
    iget v0, p0, Lcom/coremobility/integration/e/d;->i:I

    if-nez v0, :cond_1b4

    iget-object v0, p0, Lcom/coremobility/integration/e/d;->a:Ljava/net/HttpURLConnection;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v0, 0x2e

    const-string v1, "HttpThead, setRequetMethod get"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_12b

    :cond_1b4
    new-instance v0, Ljava/io/IOException;

    const/16 v1, 0x195

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c0
    iget-object v0, p0, Lcom/coremobility/integration/e/d;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_1c5
    .catch Ljava/lang/Exception; {:try_start_16a .. :try_end_1c5} :catch_14f

    goto/16 :goto_f7
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/coremobility/integration/e/d;->b:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/coremobility/integration/e/d;->b:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/e/d;->b:Landroid/os/PowerManager$WakeLock;

    :cond_c
    return-void
.end method

.method public final c()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/coremobility/integration/e/d;->a:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/coremobility/integration/e/d;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/e/d;->a:Ljava/net/HttpURLConnection;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    :cond_c
    return-void

    :catch_d
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Disconnection HTTP connection failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()I
    .registers 2

    iget-object v0, p0, Lcom/coremobility/integration/e/d;->a:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/coremobility/integration/e/d;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    goto :goto_5
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/coremobility/integration/e/d;->a:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/coremobility/integration/e/d;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public final f()Ljava/io/InputStream;
    .registers 4

    const/16 v0, 0x17

    const-string v1, "CM+HT in openInputStream"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/integration/e/d;->a:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/coremobility/integration/e/d;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_f
.end method

.method public final g()Ljava/io/OutputStream;
    .registers 4

    const/16 v0, 0x17

    const-string v1, "CM+HT in openOutputStream"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/integration/e/d;->a:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/coremobility/integration/e/d;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    goto :goto_f
.end method

.method public final j()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/coremobility/integration/e/d;->a:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/coremobility/integration/e/d;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    goto :goto_5
.end method
