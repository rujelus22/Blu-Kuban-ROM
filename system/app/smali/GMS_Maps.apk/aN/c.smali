.class public abstract Lan/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lan/j;
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/util/concurrent/CopyOnWriteArrayList;

.field protected c:Lan/s;

.field protected d:Z

.field protected e:Z

.field protected volatile f:Z

.field protected final g:Ljava/lang/Object;

.field protected h:J


# direct methods
.method protected constructor <init>(Z)V
    .registers 4
    .parameter

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lan/c;->d:Z

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lan/c;->f:Z

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lan/c;->g:Ljava/lang/Object;

    .line 61
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lan/c;->h:J

    .line 73
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lan/c;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 77
    iput-boolean p1, p0, Lan/c;->e:Z

    .line 80
    invoke-direct {p0}, Lan/c;->u()V

    .line 81
    return-void
.end method

.method private a(Lan/s;)Lan/s;
    .registers 5
    .parameter

    .prologue
    .line 326
    if-eqz p1, :cond_3c

    .line 327
    invoke-virtual {p1}, Lan/s;->d()Z

    move-result v0

    if-nez v0, :cond_21

    .line 329
    new-instance v0, Lan/u;

    invoke-direct {v0}, Lan/u;-><init>()V

    invoke-virtual {v0, p1}, Lan/u;->a(Lan/s;)Lan/u;

    move-result-object v0

    invoke-virtual {p0}, Lan/c;->t()Lcom/google/googlenav/common/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lan/u;->a(J)Lan/u;

    move-result-object v0

    invoke-virtual {v0}, Lan/u;->b()Lan/s;

    move-result-object p1

    .line 334
    :cond_21
    invoke-virtual {p1}, Lan/s;->getProvider()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3c

    .line 336
    new-instance v0, Lan/u;

    invoke-direct {v0}, Lan/u;-><init>()V

    invoke-virtual {v0, p1}, Lan/u;->a(Lan/s;)Lan/u;

    move-result-object v0

    invoke-virtual {p0}, Lan/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lan/u;->a(Ljava/lang/String;)Lan/u;

    move-result-object v0

    invoke-virtual {v0}, Lan/u;->b()Lan/s;

    move-result-object p1

    .line 343
    :cond_3c
    iget-object v0, p0, Lan/c;->c:Lan/s;

    .line 344
    if-eqz p1, :cond_42

    .line 345
    iput-object p1, p0, Lan/c;->c:Lan/s;

    .line 347
    :cond_42
    const/4 v1, 0x1

    iput-boolean v1, p0, Lan/c;->e:Z

    .line 349
    return-object v0
.end method

.method private u()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 125
    iput-object v7, p0, Lan/c;->c:Lan/s;

    .line 127
    invoke-direct {p0}, Lan/c;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/common/j;->b(Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_5b

    .line 132
    :try_start_d
    invoke-interface {v0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v1

    .line 134
    invoke-virtual {p0}, Lan/c;->t()Lcom/google/googlenav/common/a;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/32 v5, 0xafc80

    cmp-long v3, v3, v5

    if-gez v3, :cond_4c

    .line 135
    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    move-result v3

    .line 136
    invoke-static {v0}, Lat/B;->a(Ljava/io/DataInput;)Lat/B;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_4c

    .line 138
    new-instance v4, Lan/u;

    invoke-direct {v4}, Lan/u;-><init>()V

    invoke-virtual {p0}, Lan/c;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lan/u;->a(Ljava/lang/String;)Lan/u;

    move-result-object v4

    invoke-virtual {v4, v0}, Lan/u;->a(Lat/B;)Lan/u;

    move-result-object v0

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lan/u;->a(F)Lan/u;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lan/u;->a(J)Lan/u;

    move-result-object v0

    invoke-virtual {v0}, Lan/u;->b()Lan/s;

    move-result-object v0

    invoke-virtual {p0, v0}, Lan/c;->b(Lan/s;)V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_4c} :catch_5c

    .line 150
    :cond_4c
    :goto_4c
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    invoke-direct {p0}, Lan/c;->v()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v7}, Lcom/google/googlenav/common/io/j;->a(Ljava/lang/String;[B)Z

    .line 153
    :cond_5b
    return-void

    .line 146
    :catch_5c
    move-exception v0

    goto :goto_4c
.end method

.method private v()Ljava/lang/String;
    .registers 3

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LastLocation_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private w()V
    .registers 5

    .prologue
    .line 163
    invoke-virtual {p0}, Lan/c;->o()Z

    move-result v0

    if-nez v0, :cond_7

    .line 178
    :goto_6
    return-void

    .line 167
    :cond_7
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 168
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 170
    :try_start_11
    iget-object v2, p0, Lan/c;->c:Lan/s;

    invoke-virtual {v2}, Lan/s;->getTime()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Ljava/io/DataOutput;->writeLong(J)V

    .line 171
    iget-object v2, p0, Lan/c;->c:Lan/s;

    invoke-virtual {v2}, Lan/s;->getAccuracy()F

    move-result v2

    float-to-int v2, v2

    invoke-interface {v1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 172
    iget-object v2, p0, Lan/c;->c:Lan/s;

    invoke-virtual {v2}, Lan/s;->a()Lat/B;

    move-result-object v2

    invoke-static {v2, v1}, Lat/B;->a(Lat/B;Ljava/io/DataOutput;)V

    .line 173
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v1

    invoke-direct {p0}, Lan/c;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/google/googlenav/common/io/j;->a(Ljava/lang/String;[B)Z
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_40} :catch_41

    goto :goto_6

    .line 175
    :catch_41
    move-exception v0

    goto :goto_6
.end method

.method private x()V
    .registers 5

    .prologue
    .line 182
    iget-boolean v0, p0, Lan/c;->e:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lan/c;->c:Lan/s;

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lan/c;->t()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    iget-object v2, p0, Lan/c;->c:Lan/s;

    invoke-virtual {v2}, Lan/s;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xafc80

    cmp-long v0, v0, v2

    if-lez v0, :cond_21

    .line 185
    invoke-virtual {p0}, Lan/c;->k()V

    .line 187
    :cond_21
    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public a(I)V
    .registers 5
    .parameter

    .prologue
    .line 354
    iget-object v1, p0, Lan/c;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v1

    .line 355
    :try_start_3
    iget-object v0, p0, Lan/c;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lan/q;

    .line 356
    invoke-interface {v0, p1, p0}, Lan/q;->a(ILan/j;)V

    goto :goto_9

    .line 358
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0

    :cond_1c
    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_19

    .line 359
    return-void
.end method

.method public a(Lan/q;)V
    .registers 3
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lan/c;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

.method protected abstract b()V
.end method

.method protected final b(Lan/s;)V
    .registers 6
    .parameter

    .prologue
    .line 315
    invoke-direct {p0, p1}, Lan/c;->a(Lan/s;)Lan/s;

    move-result-object v0

    .line 316
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lan/s;->a()Lat/B;

    move-result-object v0

    move-object v1, v0

    .line 317
    :goto_b
    iget-object v2, p0, Lan/c;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v2

    .line 318
    :try_start_e
    iget-object v0, p0, Lan/c;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lan/q;

    .line 319
    invoke-interface {v0, v1, p0}, Lan/q;->a(Lat/B;Lan/j;)V

    goto :goto_14

    .line 321
    :catchall_24
    move-exception v0

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_e .. :try_end_26} :catchall_24

    throw v0

    .line 316
    :cond_27
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_b

    .line 321
    :cond_2a
    :try_start_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_24

    .line 322
    return-void
.end method

.method protected abstract c()V
.end method

.method public d()Lan/s;
    .registers 2

    .prologue
    .line 448
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public h()Z
    .registers 2

    .prologue
    .line 236
    const/4 v0, 0x0

    return v0
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method protected j()I
    .registers 2

    .prologue
    .line 191
    invoke-direct {p0}, Lan/c;->x()V

    .line 192
    iget-boolean v0, p0, Lan/c;->e:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lan/c;->c:Lan/s;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lan/c;->c:Lan/s;

    invoke-virtual {v0}, Lan/s;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lan/c;->c:Lan/s;

    invoke-virtual {v0}, Lan/s;->getAccuracy()F

    move-result v0

    float-to-int v0, v0

    :goto_1a
    return v0

    :cond_1b
    const v0, 0x1869f

    goto :goto_1a
.end method

.method public k()V
    .registers 2

    .prologue
    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lan/c;->c:Lan/s;

    .line 206
    return-void
.end method

.method public l()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 211
    const/4 v0, 0x0

    return-object v0
.end method

.method public m()Z
    .registers 2

    .prologue
    .line 216
    iget-boolean v0, p0, Lan/c;->e:Z

    return v0
.end method

.method public n()Z
    .registers 2

    .prologue
    .line 231
    invoke-virtual {p0}, Lan/c;->f()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lan/c;->g()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public o()Z
    .registers 5

    .prologue
    .line 246
    iget-object v0, p0, Lan/c;->c:Lan/s;

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lan/c;->t()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    iget-object v2, p0, Lan/c;->c:Lan/s;

    invoke-virtual {v2}, Lan/s;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xafc80

    cmp-long v0, v0, v2

    if-gez v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public declared-synchronized p()V
    .registers 3

    .prologue
    .line 253
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lan/c;->f:Z

    if-nez v0, :cond_17

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lan/c;->f:Z

    .line 257
    iget-object v1, p0, Lan/c;->g:Ljava/lang/Object;

    monitor-enter v1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1c

    .line 258
    :try_start_b
    iget-object v0, p0, Lan/c;->g:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 259
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_19

    .line 261
    :try_start_11
    invoke-virtual {p0}, Lan/c;->b()V

    .line 262
    invoke-direct {p0}, Lan/c;->w()V
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_1c

    .line 264
    :cond_17
    monitor-exit p0

    return-void

    .line 259
    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    :try_start_1b
    throw v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1c

    .line 253
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized q()V
    .registers 3

    .prologue
    .line 268
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lan/c;->f:Z

    if-eqz v0, :cond_12

    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lan/c;->f:Z

    .line 272
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "BaseLocationProvider"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 274
    :cond_12
    monitor-exit p0

    return-void

    .line 268
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public r()Lan/s;
    .registers 2

    .prologue
    .line 363
    iget-object v0, p0, Lan/c;->c:Lan/s;

    return-object v0
.end method

.method public run()V
    .registers 2

    .prologue
    .line 285
    :try_start_0
    invoke-virtual {p0}, Lan/c;->c()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_4

    .line 289
    :goto_3
    return-void

    .line 286
    :catch_4
    move-exception v0

    .line 287
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lan/c;->a(I)V

    goto :goto_3
.end method

.method public s()Z
    .registers 2

    .prologue
    .line 374
    iget-boolean v0, p0, Lan/c;->e:Z

    return v0
.end method

.method public t()Lcom/google/googlenav/common/a;
    .registers 2

    .prologue
    .line 443
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 454
    iget-object v0, p0, Lan/c;->c:Lan/s;

    if-nez v0, :cond_7

    .line 455
    const-string v0, "null"

    .line 458
    :goto_6
    return-object v0

    .line 457
    :cond_7
    iget-object v0, p0, Lan/c;->c:Lan/s;

    invoke-virtual {v0}, Lan/s;->c()Z

    move-result v0

    if-eqz v0, :cond_8f

    const-string v0, ""

    .line 458
    :goto_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "point: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lan/c;->c:Lan/s;

    invoke-virtual {v2}, Lan/s;->a()Lat/B;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " azimuth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lan/c;->c:Lan/s;

    invoke-virtual {v2}, Lan/s;->getBearing()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " speed (m/s): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lan/c;->c:Lan/s;

    invoke-virtual {v2}, Lan/s;->getSpeed()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " accuracy (m): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lan/c;->c:Lan/s;

    invoke-virtual {v2}, Lan/s;->getAccuracy()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lastFix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lan/c;->c:Lan/s;

    invoke-virtual {v3}, Lan/s;->getTime()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lan/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lan/c;->e:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 457
    :cond_8f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lan/c;->c:Lan/s;

    invoke-virtual {v1}, Lan/s;->b()Ln/B;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_11
.end method
