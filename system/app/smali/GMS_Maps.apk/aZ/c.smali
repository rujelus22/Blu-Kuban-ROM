.class Laz/c;
.super LY/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Laz/a;


# direct methods
.method constructor <init>(Laz/a;LY/c;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 324
    iput-object p1, p0, Laz/c;->a:Laz/a;

    invoke-direct {p0, p2}, LY/b;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 8

    .prologue
    .line 328
    iget-object v2, p0, Laz/c;->a:Laz/a;

    monitor-enter v2

    .line 329
    :try_start_3
    new-instance v3, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lbo/r;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 330
    iget-object v0, p0, Laz/c;->a:Laz/a;

    invoke-static {v0}, Laz/a;->b(Laz/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laz/f;

    .line 331
    const/4 v4, 0x1

    invoke-static {v0}, Laz/f;->a(Laz/f;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_14

    .line 352
    :catchall_29
    move-exception v0

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v0

    .line 334
    :cond_2c
    :try_start_2c
    iget-object v0, p0, Laz/c;->a:Laz/a;

    invoke-static {v0}, Laz/a;->c(Laz/a;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    iget-object v1, p0, Laz/c;->a:Laz/a;

    invoke-static {v1}, Laz/a;->c(Laz/a;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    new-array v1, v1, [Laz/f;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laz/f;

    .line 336
    array-length v4, v0

    const/4 v1, 0x0

    :goto_46
    if-ge v1, v4, :cond_55

    aget-object v5, v0, v1

    .line 337
    const/4 v6, 0x1

    invoke-static {v5}, Laz/f;->a(Laz/f;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 336
    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    .line 340
    :cond_55
    iget-object v0, p0, Laz/c;->a:Laz/a;

    invoke-static {v0}, Laz/a;->a(Laz/a;)Laz/f;

    move-result-object v0

    if-eqz v0, :cond_6b

    .line 341
    const/4 v0, 0x1

    iget-object v1, p0, Laz/c;->a:Laz/a;

    invoke-static {v1}, Laz/a;->a(Laz/a;)Laz/f;

    move-result-object v1

    invoke-static {v1}, Laz/f;->a(Laz/f;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 344
    :cond_6b
    const/4 v0, 0x2

    iget-object v1, p0, Laz/c;->a:Laz/a;

    invoke-static {v1}, Laz/a;->d(Laz/a;)I

    move-result v1

    invoke-virtual {v3, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 345
    iget-object v0, p0, Laz/c;->a:Laz/a;

    invoke-static {v0}, Laz/a;->e(Laz/a;)Ln/am;

    move-result-object v0

    if-eqz v0, :cond_8b

    .line 346
    const/4 v0, 0x3

    iget-object v1, p0, Laz/c;->a:Laz/a;

    invoke-static {v1}, Laz/a;->e(Laz/a;)Ln/am;

    move-result-object v1

    invoke-virtual {v1}, Ln/am;->i()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 349
    :cond_8b
    const/4 v0, 0x4

    iget-object v1, p0, Laz/c;->a:Laz/a;

    invoke-static {v1}, Laz/a;->f(Laz/a;)J

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 352
    monitor-exit v2
    :try_end_96
    .catchall {:try_start_2c .. :try_end_96} :catchall_29

    .line 353
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    .line 355
    :try_start_9e
    invoke-virtual {v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->toByteArray()[B

    move-result-object v1

    sget-object v2, Laz/a;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/common/io/j;->b([BLjava/lang/String;)I
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a7} :catch_a8

    .line 359
    :goto_a7
    return-void

    .line 356
    :catch_a8
    move-exception v0

    goto :goto_a7
.end method
