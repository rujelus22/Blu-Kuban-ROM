.class final Lcom/mobfox/video/sdk/bx;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/mobfox/video/sdk/bv;


# direct methods
.method private constructor <init>(Lcom/mobfox/video/sdk/bv;)V
    .registers 2

    iput-object p1, p0, Lcom/mobfox/video/sdk/bx;->a:Lcom/mobfox/video/sdk/bv;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mobfox/video/sdk/bv;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/mobfox/video/sdk/bx;-><init>(Lcom/mobfox/video/sdk/bv;)V

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v3, 0x3

    const/4 v0, 0x0

    aget-object v0, p1, v0

    :try_start_4
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_9} :catch_5c

    const-string v1, "MOBFOX"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_25

    const-string v1, "MOBFOX"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Checking URL redirect:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    :goto_35
    :try_start_35
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_ba
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3b} :catch_bf

    :try_start_3b
    const-string v2, "User-Agent"

    iget-object v4, p0, Lcom/mobfox/video/sdk/bx;->a:Lcom/mobfox/video/sdk/bv;

    invoke-static {v4}, Lcom/mobfox/video/sdk/bv;->a(Lcom/mobfox/video/sdk/bv;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v2, 0xc8

    if-ne v4, v2, :cond_62

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_55
    .catchall {:try_start_3b .. :try_end_55} :catchall_b1
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_55} :catch_a2

    :cond_55
    if-eqz v0, :cond_5a

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5a
    move-object v0, v1

    :cond_5b
    :goto_5b
    return-object v0

    :catch_5c
    move-exception v1

    if-nez v0, :cond_5b

    const-string v0, ""

    goto :goto_5b

    :cond_62
    :try_start_62
    const-string v2, "location"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_89

    const-string v2, "MOBFOX"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_81

    const-string v2, "MOBFOX"

    const-string v3, "URL redirect cycle detected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catchall {:try_start_62 .. :try_end_81} :catchall_b1
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_81} :catch_a2

    :cond_81
    if-eqz v0, :cond_86

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_86
    const-string v0, ""

    goto :goto_5b

    :cond_89
    :try_start_89
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_8e
    .catchall {:try_start_89 .. :try_end_8e} :catchall_b1
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8e} :catch_a2

    const/16 v5, 0x12e

    if-eq v4, v5, :cond_9e

    const/16 v5, 0x12d

    if-eq v4, v5, :cond_9e

    const/16 v5, 0x133

    if-eq v4, v5, :cond_9e

    const/16 v5, 0x12f

    if-ne v4, v5, :cond_55

    :cond_9e
    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_35

    :catch_a2
    move-exception v2

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_a6
    if-eqz v0, :cond_ae

    :goto_a8
    if-eqz v1, :cond_5b

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_5b

    :cond_ae
    :try_start_ae
    const-string v0, ""
    :try_end_b0
    .catchall {:try_start_ae .. :try_end_b0} :catchall_bc

    goto :goto_a8

    :catchall_b1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_b4
    if-eqz v2, :cond_b9

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b9
    throw v0

    :catchall_ba
    move-exception v0

    goto :goto_b4

    :catchall_bc
    move-exception v0

    move-object v2, v1

    goto :goto_b4

    :catch_bf
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_a6
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/mobfox/video/sdk/bx;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_c

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const-string p1, "about:blank"

    :cond_e
    const-string v0, "MOBFOX"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string v0, "MOBFOX"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Show URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    iget-object v0, p0, Lcom/mobfox/video/sdk/bx;->a:Lcom/mobfox/video/sdk/bv;

    invoke-static {v0}, Lcom/mobfox/video/sdk/bv;->b(Lcom/mobfox/video/sdk/bv;)Lcom/mobfox/video/sdk/by;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mobfox/video/sdk/by;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/bx;->a:Lcom/mobfox/video/sdk/bv;

    invoke-static {v0}, Lcom/mobfox/video/sdk/bv;->c(Lcom/mobfox/video/sdk/bv;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobfox/video/sdk/bx;->a:Lcom/mobfox/video/sdk/bv;

    invoke-virtual {v0}, Lcom/mobfox/video/sdk/bv;->requestLayout()V

    return-void
.end method
