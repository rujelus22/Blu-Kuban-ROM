.class public final Lcom/coremobility/integration/i/a;
.super Ljava/lang/Thread;


# static fields
.field private static e:Ljava/util/Map;


# instance fields
.field a:Lcom/coremobility/integration/i/b;

.field private b:I

.field private c:Ljava/lang/Object;

.field private d:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/util/Map;

.field private h:Lcom/coremobility/integration/i/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/coremobility/integration/i/a;->e:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput v1, p0, Lcom/coremobility/integration/i/a;->b:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/coremobility/integration/i/a;->c:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/coremobility/integration/i/a;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/i/a;->a:Lcom/coremobility/integration/i/b;

    iput-object p1, p0, Lcom/coremobility/integration/i/a;->f:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/util/Map;)Lcom/coremobility/integration/i/d;
    .registers 10

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x0

    if-nez p1, :cond_13

    const-string v0, ""

    move-object v2, v0

    :goto_8
    :try_start_8
    invoke-direct {p0, v2}, Lcom/coremobility/integration/i/a;->a(Ljava/lang/String;)Ljava/net/URLConnection;

    move-result-object v0

    if-nez v0, :cond_5b

    const/4 v0, 0x2

    iput v0, p0, Lcom/coremobility/integration/i/a;->b:I
    :try_end_11
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_11} :catch_7b
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_11} :catch_108
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_11} :catch_111

    move-object v0, v1

    :goto_12
    return-object v0

    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "&"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    :cond_46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-ltz v0, :cond_55

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_55
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_8

    :cond_5b
    :try_start_5b
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v3, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V

    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V
    :try_end_6d
    .catch Ljavax/net/ssl/SSLException; {:try_start_5b .. :try_end_6d} :catch_80
    .catch Ljava/net/UnknownHostException; {:try_start_5b .. :try_end_6d} :catch_d6
    .catch Ljava/net/MalformedURLException; {:try_start_5b .. :try_end_6d} :catch_dd
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_6d} :catch_e7

    :goto_6d
    :try_start_6d
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_f1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "stream is null"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7b
    .catch Ljava/net/UnknownHostException; {:try_start_6d .. :try_end_7b} :catch_7b
    .catch Ljava/net/MalformedURLException; {:try_start_6d .. :try_end_7b} :catch_108
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_7b} :catch_111

    :catch_7b
    move-exception v0

    iput v7, p0, Lcom/coremobility/integration/i/a;->b:I

    move-object v0, v1

    goto :goto_12

    :catch_80
    move-exception v0

    const/16 v3, 0x17

    :try_start_83
    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/integration/e/d;->h()Z

    move-result v0

    if-nez v0, :cond_d0

    invoke-static {}, Lcom/coremobility/integration/e/d;->i()V
    :try_end_96
    .catch Ljava/net/UnknownHostException; {:try_start_83 .. :try_end_96} :catch_7b
    .catch Ljava/net/MalformedURLException; {:try_start_83 .. :try_end_96} :catch_108
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_96} :catch_111

    :try_start_96
    invoke-direct {p0, v2}, Lcom/coremobility/integration/i/a;->a(Ljava/lang/String;)Ljava/net/URLConnection;

    move-result-object v0

    if-nez v0, :cond_a2

    const/4 v0, 0x2

    iput v0, p0, Lcom/coremobility/integration/i/a;->b:I

    move-object v0, v1

    goto/16 :goto_12

    :cond_a2
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v3, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V

    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V
    :try_end_b4
    .catch Ljava/net/UnknownHostException; {:try_start_96 .. :try_end_b4} :catch_b5
    .catch Ljava/net/MalformedURLException; {:try_start_96 .. :try_end_b4} :catch_bc
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_b4} :catch_c6

    goto :goto_6d

    :catch_b5
    move-exception v0

    const/4 v0, 0x3

    :try_start_b7
    iput v0, p0, Lcom/coremobility/integration/i/a;->b:I

    move-object v0, v1

    goto/16 :goto_12

    :catch_bc
    move-exception v0

    const/4 v2, 0x2

    iput v2, p0, Lcom/coremobility/integration/i/a;->b:I

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v0, v1

    goto/16 :goto_12

    :catch_c6
    move-exception v0

    const/4 v2, 0x2

    iput v2, p0, Lcom/coremobility/integration/i/a;->b:I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto/16 :goto_12

    :cond_d0
    const/4 v0, 0x2

    iput v0, p0, Lcom/coremobility/integration/i/a;->b:I

    move-object v0, v1

    goto/16 :goto_12

    :catch_d6
    move-exception v0

    const/4 v0, 0x3

    iput v0, p0, Lcom/coremobility/integration/i/a;->b:I

    move-object v0, v1

    goto/16 :goto_12

    :catch_dd
    move-exception v0

    const/4 v2, 0x2

    iput v2, p0, Lcom/coremobility/integration/i/a;->b:I

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v0, v1

    goto/16 :goto_12

    :catch_e7
    move-exception v0

    const/4 v2, 0x2

    iput v2, p0, Lcom/coremobility/integration/i/a;->b:I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto/16 :goto_12

    :cond_f1
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "S"

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Lcom/coremobility/integration/i/a;->a(Ljava/net/URLConnection;[Ljava/lang/String;)V

    new-instance v0, Lcom/coremobility/integration/i/d;

    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v3}, Lcom/coremobility/integration/i/d;-><init>(Ljava/io/DataInputStream;)V
    :try_end_106
    .catch Ljava/net/UnknownHostException; {:try_start_b7 .. :try_end_106} :catch_7b
    .catch Ljava/net/MalformedURLException; {:try_start_b7 .. :try_end_106} :catch_108
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_106} :catch_111

    goto/16 :goto_12

    :catch_108
    move-exception v0

    iput v6, p0, Lcom/coremobility/integration/i/a;->b:I

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v0, v1

    goto/16 :goto_12

    :catch_111
    move-exception v0

    iput v6, p0, Lcom/coremobility/integration/i/a;->b:I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto/16 :goto_12
.end method

.method private a(Ljava/lang/String;)Ljava/net/URLConnection;
    .registers 6

    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/coremobility/integration/i/a;->f:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    instance-of v1, v2, Ljavax/net/ssl/HttpsURLConnection;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_4a

    if-eqz v1, :cond_1c

    :try_start_f
    invoke-static {}, Lcom/coremobility/integration/e/d;->h()Z

    move-result v1

    if-eqz v1, :cond_1c

    move-object v0, v2

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v1, v0

    invoke-static {v1}, Lcom/coremobility/integration/e/d;->a(Ljavax/net/ssl/HttpsURLConnection;)V
    :try_end_1c
    .catch Ljava/security/KeyManagementException; {:try_start_f .. :try_end_1c} :catch_45
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_f .. :try_end_1c} :catch_4d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1c} :catch_4a

    :cond_1c
    :goto_1c
    const/4 v1, 0x1

    :try_start_1d
    invoke-virtual {v2, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    invoke-static {}, Lcom/coremobility/integration/i/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2f

    const-string v3, "Cookie"

    invoke-virtual {v2, v3, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    const-string v1, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded"

    invoke-virtual {v2, v1, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Length"

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_44
    return-object v2

    :catch_45
    move-exception v1

    invoke-virtual {v1}, Ljava/security/KeyManagementException;->printStackTrace()V

    goto :goto_1c

    :catch_4a
    move-exception v1

    const/4 v2, 0x0

    goto :goto_44

    :catch_4d
    move-exception v1

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_51} :catch_4a

    goto :goto_1c
.end method

.method private static a(Ljava/net/URLConnection;[Ljava/lang/String;)V
    .registers 11

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    array-length v4, p1

    move v0, v1

    :goto_c
    if-ge v0, v4, :cond_16

    aget-object v5, p1, v0

    invoke-interface {v3, v5, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_16
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/coremobility/j/r;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1e

    const-string v5, "set-cookie"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_42
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v6, Ljava/util/StringTokenizer;

    const-string v7, ";"

    invoke-direct {v6, v0, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_55
    :goto_55
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    const-string v7, "="

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7d

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    :cond_7d
    if-eqz v0, :cond_55

    sget-object v0, Lcom/coremobility/integration/i/a;->e:Ljava/util/Map;

    invoke-interface {v0, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_55

    :cond_85
    return-void
.end method

.method private b()V
    .registers 3

    iget-object v0, p0, Lcom/coremobility/integration/i/a;->a:Lcom/coremobility/integration/i/b;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/coremobility/integration/i/a;->a:Lcom/coremobility/integration/i/b;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/coremobility/integration/i/b;->a(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/i/a;->a:Lcom/coremobility/integration/i/b;

    :cond_d
    return-void
.end method

.method private static c()Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/coremobility/integration/i/a;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/coremobility/integration/i/a;->e:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    :cond_37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/coremobility/integration/i/b;)V
    .registers 4

    iget-object v1, p0, Lcom/coremobility/integration/i/a;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/coremobility/integration/i/a;->a:Lcom/coremobility/integration/i/b;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/integration/i/a;->d:Z

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_a

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/util/Map;Lcom/coremobility/integration/i/c;)V
    .registers 3

    iput-object p1, p0, Lcom/coremobility/integration/i/a;->g:Ljava/util/Map;

    iput-object p2, p0, Lcom/coremobility/integration/i/a;->h:Lcom/coremobility/integration/i/c;

    return-void
.end method

.method public final a()Z
    .registers 3

    iget-object v1, p0, Lcom/coremobility/integration/i/a;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/coremobility/integration/i/a;->d:Z

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final run()V
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/coremobility/integration/i/a;->g:Ljava/util/Map;

    invoke-direct {p0, v1}, Lcom/coremobility/integration/i/a;->a(Ljava/util/Map;)Lcom/coremobility/integration/i/d;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_11

    move-result-object v0

    :goto_7
    invoke-virtual {p0}, Lcom/coremobility/integration/i/a;->a()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-direct {p0}, Lcom/coremobility/integration/i/a;->b()V

    :cond_10
    :goto_10
    return-void

    :catch_11
    move-exception v1

    const/4 v2, 0x2

    iput v2, p0, Lcom/coremobility/integration/i/a;->b:I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    :cond_19
    iget-object v1, p0, Lcom/coremobility/integration/i/a;->h:Lcom/coremobility/integration/i/c;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/coremobility/integration/i/a;->h:Lcom/coremobility/integration/i/c;

    iget v2, p0, Lcom/coremobility/integration/i/a;->b:I

    invoke-interface {v1, v0, v2}, Lcom/coremobility/integration/i/c;->a(Lcom/coremobility/integration/i/d;I)V

    :cond_24
    invoke-virtual {p0}, Lcom/coremobility/integration/i/a;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/coremobility/integration/i/a;->b()V

    goto :goto_10
.end method
