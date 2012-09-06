.class Lcom/google/commerce/wireless/topiary/I;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p1}, Lcom/google/commerce/wireless/topiary/X;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/commerce/wireless/topiary/I;->b:Ljava/lang/String;

    .line 28
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/commerce/wireless/topiary/I;->a:Landroid/net/Uri;

    .line 29
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 4
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/commerce/wireless/topiary/I;->a:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 80
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method private a(Lcom/google/commerce/wireless/topiary/J;Ljava/net/HttpURLConnection;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 123
    invoke-virtual {p1}, Lcom/google/commerce/wireless/topiary/J;->g()Lcom/google/commerce/wireless/topiary/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/commerce/wireless/topiary/K;->b()I

    move-result v0

    .line 124
    invoke-virtual {p1}, Lcom/google/commerce/wireless/topiary/J;->b()I

    move-result v1

    sub-int v0, v1, v0

    .line 125
    if-lez v0, :cond_14

    .line 126
    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 131
    :goto_13
    return-void

    .line 128
    :cond_14
    sget-object v0, Lcom/google/commerce/wireless/topiary/M;->i:Lcom/google/commerce/wireless/topiary/M;

    invoke-virtual {p1, v0}, Lcom/google/commerce/wireless/topiary/J;->a(Lcom/google/commerce/wireless/topiary/M;)V

    .line 129
    invoke-virtual {p1}, Lcom/google/commerce/wireless/topiary/J;->g()Lcom/google/commerce/wireless/topiary/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/commerce/wireless/topiary/K;->c()V

    goto :goto_13
.end method

.method private a(Ljava/io/Closeable;)V
    .registers 3
    .parameter

    .prologue
    .line 148
    if-eqz p1, :cond_5

    .line 150
    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 153
    :cond_5
    :goto_5
    return-void

    .line 151
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method private a(Ljava/net/HttpURLConnection;)V
    .registers 4
    .parameter

    .prologue
    .line 72
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 73
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_e

    .line 74
    new-instance v1, Lcom/google/commerce/wireless/topiary/n;

    invoke-direct {v1, v0}, Lcom/google/commerce/wireless/topiary/n;-><init>(I)V

    throw v1

    .line 76
    :cond_e
    return-void
.end method

.method private a(Lcom/google/commerce/wireless/topiary/J;Ljava/net/HttpURLConnection;Ljava/io/InputStream;)[B
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 136
    new-instance v0, Lcom/google/commerce/wireless/topiary/l;

    invoke-direct {v0, p3}, Lcom/google/commerce/wireless/topiary/l;-><init>(Ljava/io/InputStream;)V

    .line 139
    :goto_5
    invoke-virtual {v0}, Lcom/google/commerce/wireless/topiary/l;->a()[B

    move-result-object v1

    .line 140
    if-eqz v1, :cond_c

    .line 141
    return-object v1

    .line 143
    :cond_c
    invoke-direct {p0, p1, p2}, Lcom/google/commerce/wireless/topiary/I;->a(Lcom/google/commerce/wireless/topiary/J;Ljava/net/HttpURLConnection;)V

    goto :goto_5
.end method

.method private b(Lcom/google/commerce/wireless/topiary/J;Ljava/net/HttpURLConnection;[B)Ljava/io/InputStream;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-virtual {p1}, Lcom/google/commerce/wireless/topiary/J;->g()Lcom/google/commerce/wireless/topiary/K;

    move-result-object v2

    .line 87
    invoke-virtual {v2}, Lcom/google/commerce/wireless/topiary/K;->a()V

    .line 89
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 90
    const-string v0, "POST"

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 92
    const/4 v1, 0x0

    .line 94
    :try_start_11
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 95
    invoke-virtual {v1, p3}, Ljava/io/OutputStream;->write([B)V

    .line 96
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 98
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 99
    const/4 v0, 0x0

    .line 100
    :goto_21
    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v4

    .line 101
    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v5

    .line 102
    if-nez v4, :cond_41

    if-nez v5, :cond_41

    .line 107
    invoke-virtual {v2, v3}, Lcom/google/commerce/wireless/topiary/K;->a(Ljava/util/Map;)V

    .line 109
    invoke-direct {p0, p2}, Lcom/google/commerce/wireless/topiary/I;->a(Ljava/net/HttpURLConnection;)V

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/google/commerce/wireless/topiary/I;->a(Lcom/google/commerce/wireless/topiary/J;Ljava/net/HttpURLConnection;)V

    .line 113
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 114
    invoke-virtual {v2, v0}, Lcom/google/commerce/wireless/topiary/K;->a(Ljava/io/Closeable;)V
    :try_end_3d
    .catchall {:try_start_11 .. :try_end_3d} :catchall_47

    .line 117
    invoke-direct {p0, v1}, Lcom/google/commerce/wireless/topiary/I;->a(Ljava/io/Closeable;)V

    return-object v0

    .line 105
    :cond_41
    :try_start_41
    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_47

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 117
    :catchall_47
    move-exception v0

    invoke-direct {p0, v1}, Lcom/google/commerce/wireless/topiary/I;->a(Ljava/io/Closeable;)V

    throw v0
.end method


# virtual methods
.method public a(Lcom/google/commerce/wireless/topiary/J;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p2}, Lcom/google/commerce/wireless/topiary/I;->a(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v2

    .line 34
    const-string v0, "User-Agent"

    iget-object v1, p0, Lcom/google/commerce/wireless/topiary/I;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v0, "Accept"

    const-string v1, "application/x-protobuffer"

    invoke-virtual {v2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 40
    invoke-virtual {p1}, Lcom/google/commerce/wireless/topiary/J;->b()I

    move-result v0

    .line 41
    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 42
    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 44
    invoke-virtual {p1}, Lcom/google/commerce/wireless/topiary/J;->c()Ljava/util/Map;

    move-result-object v0

    .line 45
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 46
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    .line 49
    :cond_48
    return-object v2
.end method

.method public a(Lcom/google/commerce/wireless/topiary/J;Ljava/net/HttpURLConnection;[B)[B
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    const/4 v1, 0x0

    .line 57
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/commerce/wireless/topiary/I;->b(Lcom/google/commerce/wireless/topiary/J;Ljava/net/HttpURLConnection;[B)Ljava/io/InputStream;

    move-result-object v1

    .line 58
    invoke-direct {p0, p1, p2, v1}, Lcom/google/commerce/wireless/topiary/I;->a(Lcom/google/commerce/wireless/topiary/J;Ljava/net/HttpURLConnection;Ljava/io/InputStream;)[B
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_d

    move-result-object v0

    .line 60
    invoke-direct {p0, v1}, Lcom/google/commerce/wireless/topiary/I;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_d
    move-exception v0

    invoke-direct {p0, v1}, Lcom/google/commerce/wireless/topiary/I;->a(Ljava/io/Closeable;)V

    throw v0
.end method
