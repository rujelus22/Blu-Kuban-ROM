.class final Lcom/twitter/android/util/r;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/twitter/android/util/p;

.field private b:Ljava/util/HashMap;

.field private final c:J


# direct methods
.method constructor <init>(Lcom/twitter/android/util/p;J)V
    .registers 4

    iput-object p1, p0, Lcom/twitter/android/util/r;->a:Lcom/twitter/android/util/p;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-wide p2, p0, Lcom/twitter/android/util/r;->c:J

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    iget-object v0, p0, Lcom/twitter/android/util/r;->b:Ljava/util/HashMap;

    sget-boolean v1, Lcom/twitter/android/util/p;->a:Z

    if-eqz v1, :cond_1e

    const-string v1, "ImageCache"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Queueing "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_d0

    new-instance v6, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v6, v1}, Ljava/util/HashMap;-><init>(I)V

    iget-object v1, p0, Lcom/twitter/android/util/r;->a:Lcom/twitter/android/util/p;

    invoke-static {v1}, Lcom/twitter/android/util/p;->a(Lcom/twitter/android/util/p;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/android/network/n;->b(Landroid/content/Context;)Lcom/twitter/android/network/n;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3f
    :goto_3f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ce

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/util/s;

    iget-object v4, v0, Lcom/twitter/android/util/s;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/twitter/android/util/r;->a:Lcom/twitter/android/util/p;

    iget-wide v9, p0, Lcom/twitter/android/util/r;->c:J

    invoke-virtual {v1, v9, v10, v3, v4}, Lcom/twitter/android/util/p;->a(JLjava/lang/Object;Ljava/lang/String;)Lcom/twitter/android/util/o;

    move-result-object v1

    if-eqz v1, :cond_65

    invoke-virtual {v6, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3f

    :cond_65
    sget-boolean v2, Lcom/twitter/android/util/p;->a:Z

    if-eqz v2, :cond_7d

    const-string v2, "ImageCache"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "Fetch "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7d
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x1000

    invoke-direct {v5, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-static {v4}, Lcom/twitter/android/util/x;->b(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    if-eqz v2, :cond_3f

    new-instance v9, Lcom/twitter/android/network/c;

    new-instance v10, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v10, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    invoke-direct {v9, v7, v10, v5}, Lcom/twitter/android/network/c;-><init>(Lcom/twitter/android/network/d;Lorg/apache/http/client/methods/HttpRequestBase;Ljava/io/OutputStream;)V

    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Lcom/twitter/android/network/c;->a(I)Lcom/twitter/android/network/c;

    iget-boolean v0, v0, Lcom/twitter/android/util/s;->b:Z

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lcom/twitter/android/util/r;->a:Lcom/twitter/android/util/p;

    iget-wide v1, p0, Lcom/twitter/android/util/r;->c:J

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/util/p;->a(JLjava/lang/Object;Ljava/lang/String;[B)Lcom/twitter/android/util/o;

    move-result-object v0

    :goto_a8
    if-eqz v0, :cond_3f

    invoke-virtual {v6, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3f

    :cond_ae
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v2, p0, Lcom/twitter/android/util/r;->a:Lcom/twitter/android/util/p;

    invoke-static {v2}, Lcom/twitter/android/util/p;->b(Lcom/twitter/android/util/p;)I

    move-result v2

    iget-object v5, p0, Lcom/twitter/android/util/r;->a:Lcom/twitter/android/util/p;

    invoke-static {v5}, Lcom/twitter/android/util/p;->b(Lcom/twitter/android/util/p;)I

    move-result v5

    invoke-static {v0, v2, v5}, Lcom/twitter/android/util/f;->b([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_d2

    iget-object v0, p0, Lcom/twitter/android/util/r;->a:Lcom/twitter/android/util/p;

    invoke-virtual {v0, v3, v4}, Lcom/twitter/android/util/p;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/twitter/android/util/o;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/twitter/android/util/o;->a(Landroid/graphics/Bitmap;)V

    goto :goto_a8

    :cond_ce
    move-object v0, v6

    :goto_cf
    return-object v0

    :cond_d0
    const/4 v0, 0x0

    goto :goto_cf

    :cond_d2
    move-object v0, v1

    goto :goto_a8
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/twitter/android/util/r;->a:Lcom/twitter/android/util/p;

    invoke-virtual {v0, p1}, Lcom/twitter/android/util/p;->b(Ljava/util/HashMap;)V

    :cond_9
    return-void
.end method

.method protected final onPreExecute()V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/util/r;->a:Lcom/twitter/android/util/p;

    iget-object v1, v0, Lcom/twitter/android/util/p;->g:[I

    monitor-enter v1

    :try_start_5
    new-instance v0, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/twitter/android/util/r;->a:Lcom/twitter/android/util/p;

    iget-object v2, v2, Lcom/twitter/android/util/p;->e:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/util/r;->b:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/twitter/android/util/r;->b:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/twitter/android/util/r;->a:Lcom/twitter/android/util/p;

    iget-object v2, v2, Lcom/twitter/android/util/p;->e:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/twitter/android/util/r;->a:Lcom/twitter/android/util/p;

    iget-object v0, v0, Lcom/twitter/android/util/p;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_26

    return-void

    :catchall_26
    move-exception v0

    monitor-exit v1

    throw v0
.end method
