.class public Lr/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Locale;


# instance fields
.field private b:Lr/w;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/googlenav/common/a;

.field private final e:Ljava/util/Map;

.field private final f:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

.field private final g:I

.field private final h:J

.field private i:Lr/o;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 67
    new-instance v0, Ljava/util/Locale;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Lr/n;->a:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/common/a;Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBufType;IJ)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Lr/n;->d:Lcom/google/googlenav/common/a;

    .line 147
    iput-object p2, p0, Lr/n;->c:Ljava/lang/String;

    .line 148
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    .line 149
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lr/n;->e:Ljava/util/Map;

    .line 150
    iput-object p3, p0, Lr/n;->f:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 151
    iput p4, p0, Lr/n;->g:I

    .line 152
    iput-wide p5, p0, Lr/n;->h:J

    .line 153
    return-void
.end method

.method private a(J)J
    .registers 7
    .parameter

    .prologue
    .line 228
    iget-wide v0, p0, Lr/n;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const-wide/16 v0, -0x1

    :goto_a
    return-wide v0

    :cond_b
    iget-wide v0, p0, Lr/n;->h:J

    add-long/2addr v0, p1

    goto :goto_a
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .registers 12
    .parameter

    .prologue
    .line 408
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/cx;->b(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 410
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 411
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 413
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_16
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/p;

    .line 414
    iget-object v5, v0, Lr/p;->a:Ljava/lang/String;

    invoke-static {v5}, Lh/a;->a(Ljava/lang/String;)J

    move-result-wide v5

    .line 415
    iget-object v7, v0, Lr/p;->a:Ljava/lang/String;

    .line 418
    const/4 v8, -0x1

    :try_start_2b
    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 419
    iget-wide v8, v0, Lr/p;->c:J

    invoke-virtual {v3, v8, v9}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 420
    iget-object v0, v0, Lr/p;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 421
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_3b} :catch_4a

    .line 428
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 429
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 431
    invoke-static {v5, v6, v7, v0}, Lr/w;->a(JLjava/lang/String;[B)Lr/A;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 422
    :catch_4a
    move-exception v0

    .line 424
    const-string v2, "DiskProtoBufCache"

    invoke-static {v2, v0}, Lh/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 434
    :cond_50
    return-object v1
.end method

.method static synthetic a(Lr/n;)Z
    .registers 2
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Lr/n;->d()Z

    move-result v0

    return v0
.end method

.method private b(Ljava/util/List;)V
    .registers 7
    .parameter

    .prologue
    .line 443
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 444
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 446
    :try_start_a
    iget-object v0, p0, Lr/n;->b:Lr/w;

    invoke-virtual {v0, p1}, Lr/w;->a(Ljava/util/Collection;)I
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_1c

    .line 451
    :cond_f
    :goto_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long v0, v3, v1

    .line 452
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 456
    :cond_1b
    return-void

    .line 447
    :catch_1c
    move-exception v0

    .line 448
    const-string v3, "DiskProtoBufCache"

    invoke-static {v3, v0}, Lh/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method private declared-synchronized d()Z
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 475
    monitor-enter p0

    :try_start_2
    iget-object v2, p0, Lr/n;->e:Ljava/util/Map;

    monitor-enter v2
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_4e

    .line 476
    :try_start_5
    iget-object v0, p0, Lr/n;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 477
    const/4 v0, 0x0

    iput-object v0, p0, Lr/n;->i:Lr/o;

    .line 478
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_51

    move v0, v1

    .line 504
    :goto_12
    monitor-exit p0

    return v0

    .line 481
    :cond_14
    :try_start_14
    iget-object v0, p0, Lr/n;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/cx;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 482
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_51

    .line 484
    :try_start_1f
    invoke-direct {p0, v0}, Lr/n;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 485
    invoke-direct {p0, v2}, Lr/n;->b(Ljava/util/List;)V

    .line 489
    iget-object v2, p0, Lr/n;->e:Ljava/util/Map;

    monitor-enter v2
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_4e

    .line 490
    :try_start_29
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2d
    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/p;

    .line 493
    iget-object v4, p0, Lr/n;->e:Ljava/util/Map;

    iget-object v5, v0, Lr/p;->a:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v0, v4, :cond_2d

    .line 494
    iget-object v4, p0, Lr/n;->e:Ljava/util/Map;

    iget-object v0, v0, Lr/p;->a:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2d

    .line 502
    :catchall_4b
    move-exception v0

    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_29 .. :try_end_4d} :catchall_4b

    :try_start_4d
    throw v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4e

    .line 475
    :catchall_4e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 482
    :catchall_51
    move-exception v0

    :try_start_52
    monitor-exit v2
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    :try_start_53
    throw v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_4e

    .line 498
    :cond_54
    :try_start_54
    iget-object v0, p0, Lr/n;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 499
    const/4 v0, 0x0

    iput-object v0, p0, Lr/n;->i:Lr/o;

    .line 500
    monitor-exit v2

    move v0, v1

    goto :goto_12

    .line 502
    :cond_62
    monitor-exit v2
    :try_end_63
    .catchall {:try_start_54 .. :try_end_63} :catchall_4b

    .line 504
    const/4 v0, 0x0

    goto :goto_12
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lr/q;
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 263
    iget-object v0, p0, Lr/n;->b:Lr/w;

    if-nez v0, :cond_7

    move-object v0, v1

    .line 296
    :goto_6
    return-object v0

    .line 267
    :cond_7
    iget-object v0, p0, Lr/n;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/p;

    .line 268
    if-eqz v0, :cond_20

    .line 269
    new-instance v1, Lr/q;

    iget-object v2, v0, Lr/p;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    iget-wide v3, v0, Lr/p;->c:J

    invoke-direct {p0, v3, v4}, Lr/n;->a(J)J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lr/q;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;J)V

    move-object v0, v1

    goto :goto_6

    .line 272
    :cond_20
    invoke-static {p1}, Lh/a;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 273
    iget-object v0, p0, Lr/n;->b:Lr/w;

    invoke-virtual {v0, v2, v3, p1}, Lr/w;->a(JLjava/lang/String;)[B

    move-result-object v0

    .line 274
    if-nez v0, :cond_2e

    move-object v0, v1

    .line 275
    goto :goto_6

    .line 278
    :cond_2e
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 279
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 284
    :try_start_38
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    .line 285
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    .line 287
    new-instance v4, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    iget-object v5, p0, Lr/n;->f:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v4, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 288
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 289
    invoke-virtual {v4, v0, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;I)I

    .line 291
    new-instance v0, Lr/q;

    invoke-direct {p0, v2, v3}, Lr/n;->a(J)J

    move-result-wide v2

    invoke-direct {v0, v4, v2, v3}, Lr/q;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;J)V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_56} :catch_57

    goto :goto_6

    .line 292
    :catch_57
    move-exception v0

    .line 293
    const-string v2, "DiskProtoBufCache"

    invoke-static {v2, v0}, Lh/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 296
    goto :goto_6
.end method

.method public declared-synchronized a()V
    .registers 3

    .prologue
    .line 196
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lr/n;->b:Lr/w;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_17

    if-nez v0, :cond_7

    .line 206
    :goto_5
    monitor-exit p0

    return-void

    .line 201
    :cond_7
    :try_start_7
    invoke-direct {p0}, Lr/n;->d()Z

    .line 202
    iget-object v0, p0, Lr/n;->b:Lr/w;

    invoke-virtual {v0}, Lr/w;->g()V
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_17
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_f} :catch_10

    goto :goto_5

    .line 203
    :catch_10
    move-exception v0

    .line 204
    :try_start_11
    const-string v1, "DiskProtoBufCache"

    invoke-static {v1, v0}, Lh/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_17

    goto :goto_5

    .line 196
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 239
    iget-object v0, p0, Lr/n;->b:Lr/w;

    if-nez v0, :cond_5

    .line 253
    :goto_4
    return-void

    .line 243
    :cond_5
    iget-object v1, p0, Lr/n;->e:Ljava/util/Map;

    monitor-enter v1

    .line 244
    :try_start_8
    iget-object v0, p0, Lr/n;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v2, 0x80

    if-ge v0, v2, :cond_22

    .line 245
    iget-object v0, p0, Lr/n;->e:Ljava/util/Map;

    new-instance v2, Lr/p;

    iget-object v3, p0, Lr/n;->d:Lcom/google/googlenav/common/a;

    invoke-interface {v3}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v3

    invoke-direct {v2, p1, p2, v3, v4}, Lr/p;-><init>(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;J)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    :cond_22
    iget-object v0, p0, Lr/n;->i:Lr/o;

    if-nez v0, :cond_31

    .line 250
    new-instance v0, Lr/o;

    iget-object v2, p0, Lr/n;->c:Ljava/lang/String;

    iget v3, p0, Lr/n;->g:I

    invoke-direct {v0, v2, v3, p0}, Lr/o;-><init>(Ljava/lang/String;ILr/n;)V

    iput-object v0, p0, Lr/n;->i:Lr/o;

    .line 252
    :cond_31
    monitor-exit v1

    goto :goto_4

    :catchall_33
    move-exception v0

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_33

    throw v0
.end method

.method public a(Ljava/io/File;)Z
    .registers 10
    .parameter

    .prologue
    .line 163
    new-instance v4, Lr/v;

    invoke-direct {v4, p1}, Lr/v;-><init>(Ljava/io/File;)V

    .line 166
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 168
    :try_start_9
    iget-object v0, p0, Lr/n;->c:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v4, v1}, Lr/w;->a(Ljava/lang/String;Lr/Y;Lr/H;)Lr/w;
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_f} :catch_19

    move-result-object v0

    .line 181
    :goto_10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v6

    .line 183
    iput-object v0, p0, Lr/n;->b:Lr/w;

    .line 189
    const/4 v0, 0x1

    :goto_18
    return v0

    .line 170
    :catch_19
    move-exception v0

    .line 173
    :try_start_1a
    iget-object v0, p0, Lr/n;->c:Ljava/lang/String;

    const/16 v1, 0xffa

    const/4 v2, -0x1

    sget-object v3, Lr/n;->a:Ljava/util/Locale;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lr/w;->a(Ljava/lang/String;IILjava/util/Locale;Lr/Y;Lr/H;)Lr/w;
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_25} :catch_27

    move-result-object v0

    goto :goto_10

    .line 176
    :catch_27
    move-exception v0

    .line 177
    const-string v1, "DiskProtoBufCache"

    invoke-static {v1, v0}, Lh/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 178
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public declared-synchronized a(Ljava/util/Locale;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 313
    monitor-enter p0

    :try_start_3
    iget-object v2, p0, Lr/n;->b:Lr/w;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_30

    if-nez v2, :cond_9

    .line 331
    :goto_7
    monitor-exit p0

    return v0

    .line 317
    :cond_9
    :try_start_9
    iget-object v2, p0, Lr/n;->b:Lr/w;

    invoke-virtual {v2}, Lr/w;->c()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_30

    move-result v2

    if-eqz v2, :cond_17

    move v0, v1

    .line 318
    goto :goto_7

    .line 324
    :cond_17
    :try_start_17
    iget-object v2, p0, Lr/n;->b:Lr/w;

    iget-object v3, p0, Lr/n;->b:Lr/w;

    invoke-virtual {v3}, Lr/w;->a()I

    move-result v3

    invoke-virtual {v2, v3, p1}, Lr/w;->a(ILjava/util/Locale;)V

    .line 325
    iget-object v2, p0, Lr/n;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V
    :try_end_27
    .catchall {:try_start_17 .. :try_end_27} :catchall_30
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_27} :catch_29

    move v0, v1

    .line 331
    goto :goto_7

    .line 326
    :catch_29
    move-exception v1

    .line 327
    :try_start_2a
    const-string v2, "DiskProtoBufCache"

    invoke-static {v2, v1}, Lh/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_30

    goto :goto_7

    .line 313
    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 349
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lr/n;->b:Lr/w;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_27

    if-nez v1, :cond_8

    .line 359
    :goto_6
    monitor-exit p0

    return v0

    .line 354
    :cond_8
    :try_start_8
    iget-object v1, p0, Lr/n;->b:Lr/w;

    iget-object v2, p0, Lr/n;->b:Lr/w;

    invoke-virtual {v2}, Lr/w;->a()I

    move-result v2

    iget-object v3, p0, Lr/n;->b:Lr/w;

    invoke-virtual {v3}, Lr/w;->c()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lr/w;->a(ILjava/util/Locale;)V

    .line 355
    iget-object v1, p0, Lr/n;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_27
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_1e} :catch_20

    .line 356
    const/4 v0, 0x1

    goto :goto_6

    .line 357
    :catch_20
    move-exception v1

    .line 358
    :try_start_21
    const-string v2, "DiskProtoBufCache"

    invoke-static {v2, v1}, Lh/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_27

    goto :goto_6

    .line 349
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()J
    .registers 3

    .prologue
    .line 383
    iget-object v0, p0, Lr/n;->b:Lr/w;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Lr/n;->b:Lr/w;

    invoke-virtual {v0}, Lr/w;->e()J

    move-result-wide v0

    goto :goto_6
.end method
