.class public Lcom/google/googlenav/prefetch/android/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaD/k;


# instance fields
.field private a:I

.field private volatile b:Z

.field private final c:Ljava/util/Map;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput v0, p0, Lcom/google/googlenav/prefetch/android/B;->a:I

    .line 75
    iput-boolean v0, p0, Lcom/google/googlenav/prefetch/android/B;->b:Z

    .line 91
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/prefetch/android/B;->c:Ljava/util/Map;

    .line 93
    return-void
.end method

.method public static a(Lat/B;)Ln/am;
    .registers 3
    .parameter

    .prologue
    .line 365
    invoke-virtual {p0}, Lat/B;->c()I

    move-result v0

    invoke-virtual {p0}, Lat/B;->e()I

    move-result v1

    invoke-static {v0, v1}, Ln/Q;->b(II)Ln/Q;

    move-result-object v0

    .line 368
    const/16 v1, 0xe

    invoke-static {v1, v0}, Ln/am;->a(ILn/Q;)Ln/am;

    move-result-object v0

    return-object v0
.end method

.method public static d()Lcom/google/googlenav/prefetch/android/B;
    .registers 1

    .prologue
    .line 99
    sget-object v0, Lcom/google/googlenav/prefetch/android/D;->a:Lcom/google/googlenav/prefetch/android/B;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 2

    .prologue
    .line 115
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/googlenav/prefetch/android/B;->b:Z

    if-nez v0, :cond_e

    .line 116
    invoke-virtual {p0}, Lcom/google/googlenav/prefetch/android/B;->h()V

    .line 117
    invoke-virtual {p0}, Lcom/google/googlenav/prefetch/android/B;->g()V

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/prefetch/android/B;->b:Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 120
    :cond_e
    monitor-exit p0

    return-void

    .line 115
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(I)V
    .registers 6
    .parameter

    .prologue
    .line 138
    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/B;->c:Ljava/util/Map;

    monitor-enter v1

    .line 139
    :try_start_3
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/B;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 140
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 141
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/B;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/prefetch/android/z;

    .line 142
    invoke-virtual {v0, p1}, Lcom/google/googlenav/prefetch/android/z;->c(I)V

    goto :goto_d

    .line 144
    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v0

    :cond_26
    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_23

    .line 146
    invoke-virtual {p0}, Lcom/google/googlenav/prefetch/android/B;->g()V

    .line 147
    return-void
.end method

.method public declared-synchronized a(Lat/B;ILjava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 219
    monitor-enter p0

    if-nez p1, :cond_5

    .line 250
    :cond_3
    :goto_3
    monitor-exit p0

    return-void

    .line 224
    :cond_5
    :try_start_5
    invoke-static {p1}, Lcom/google/googlenav/prefetch/android/B;->a(Lat/B;)Ln/am;

    move-result-object v1

    .line 225
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/B;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/prefetch/android/z;

    .line 226
    if-nez v0, :cond_18

    .line 227
    new-instance v0, Lcom/google/googlenav/prefetch/android/z;

    invoke-direct {v0, v1}, Lcom/google/googlenav/prefetch/android/z;-><init>(Ln/am;)V

    .line 231
    :cond_18
    if-eqz p3, :cond_1d

    .line 232
    invoke-virtual {v0, p3}, Lcom/google/googlenav/prefetch/android/z;->a(Ljava/lang/String;)V

    .line 236
    :cond_1d
    invoke-virtual {v0, p2}, Lcom/google/googlenav/prefetch/android/z;->b(I)V

    .line 237
    iget-object v2, p0, Lcom/google/googlenav/prefetch/android/B;->c:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget v0, p0, Lcom/google/googlenav/prefetch/android/B;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/prefetch/android/B;->a:I

    .line 240
    iget v0, p0, Lcom/google/googlenav/prefetch/android/B;->a:I

    const/16 v1, 0x32

    if-lt v0, v1, :cond_3

    .line 242
    new-instance v0, LY/b;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/prefetch/android/C;

    invoke-direct {v2, p0}, Lcom/google/googlenav/prefetch/android/C;-><init>(Lcom/google/googlenav/prefetch/android/B;)V

    invoke-direct {v0, v1, v2}, LY/b;-><init>(LY/c;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, LY/b;->g()V

    .line 248
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlenav/prefetch/android/B;->a:I
    :try_end_45
    .catchall {:try_start_5 .. :try_end_45} :catchall_46

    goto :goto_3

    .line 219
    :catchall_46
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .registers 9

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/google/googlenav/prefetch/android/B;->b:Z

    if-nez v0, :cond_5

    .line 310
    :goto_4
    return-void

    .line 292
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Lcom/google/googlenav/prefetch/android/B;->g()V

    .line 294
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v1

    .line 295
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 296
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 298
    new-instance v4, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/ag;->I:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 299
    iget-object v5, p0, Lcom/google/googlenav/prefetch/android/B;->c:Ljava/util/Map;

    monitor-enter v5
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_24} :catch_46

    .line 300
    :try_start_24
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/B;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/prefetch/android/z;

    .line 301
    const/4 v7, 0x1

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/z;->e()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {v4, v7, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_2e

    .line 303
    :catchall_43
    move-exception v0

    monitor-exit v5
    :try_end_45
    .catchall {:try_start_24 .. :try_end_45} :catchall_43

    :try_start_45
    throw v0
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_46} :catch_46

    .line 307
    :catch_46
    move-exception v0

    .line 308
    const-string v1, "TileHistoryTracker - error writing tile history"

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 303
    :cond_4d
    :try_start_4d
    monitor-exit v5
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_43

    .line 304
    :try_start_4e
    invoke-static {v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->a(Ljava/io/DataOutput;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 305
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v2, "TILE_HISTORY"

    invoke-interface {v1, v0, v2}, Lcom/google/googlenav/common/io/j;->b([BLjava/lang/String;)I
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_5a} :catch_46

    goto :goto_4
.end method

.method public declared-synchronized c()Ljava/util/Vector;
    .registers 6

    .prologue
    .line 124
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/googlenav/prefetch/android/B;->g()V

    .line 125
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/B;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/B;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/googlenav/prefetch/android/z;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/googlenav/prefetch/android/z;

    .line 127
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 129
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 130
    array-length v3, v0

    const/4 v1, 0x0

    :goto_26
    if-ge v1, v3, :cond_34

    aget-object v4, v0, v1

    .line 131
    invoke-virtual {v4}, Lcom/google/googlenav/prefetch/android/z;->a()Ln/am;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_36

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 133
    :cond_34
    monitor-exit p0

    return-object v2

    .line 124
    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()V
    .registers 2

    .prologue
    .line 205
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/googlenav/prefetch/android/B;->a(I)V

    .line 206
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/prefetch/android/B;->a(I)V

    .line 207
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/prefetch/android/B;->a(I)V

    .line 208
    return-void
.end method

.method public f()V
    .registers 2

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/google/googlenav/prefetch/android/B;->e()V

    .line 212
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/prefetch/android/B;->a(I)V

    .line 213
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/googlenav/prefetch/android/B;->a(I)V

    .line 214
    return-void
.end method

.method protected g()V
    .registers 5

    .prologue
    .line 265
    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/B;->c:Ljava/util/Map;

    monitor-enter v1

    .line 266
    :try_start_3
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/B;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 267
    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 268
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/B;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/prefetch/android/z;

    .line 271
    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/z;->c()V

    .line 273
    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/z;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 274
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_d

    .line 277
    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v0

    :cond_2f
    :try_start_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2c

    .line 278
    return-void
.end method

.method protected declared-synchronized h()V
    .registers 8

    .prologue
    .line 315
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/B;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 316
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_65

    move-result-object v1

    .line 318
    :try_start_e
    const-string v0, "TILE_HISTORY"

    invoke-interface {v1, v0}, Lcom/google/googlenav/common/io/j;->d(Ljava/lang/String;)[B

    move-result-object v0

    .line 319
    if-eqz v0, :cond_19

    array-length v2, v0
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_65
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_17} :catch_48

    if-nez v2, :cond_1b

    .line 348
    :cond_19
    :goto_19
    monitor-exit p0

    return-void

    .line 323
    :cond_1b
    :try_start_1b
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 324
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 325
    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/ag;->I:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v2, v0}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 327
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    .line 328
    const/4 v0, 0x0

    :goto_31
    if-ge v0, v3, :cond_5e

    .line 329
    const/4 v4, 0x1

    invoke-virtual {v2, v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 331
    invoke-static {v4}, Lcom/google/googlenav/prefetch/android/z;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/prefetch/android/z;

    move-result-object v4

    .line 332
    iget-object v5, p0, Lcom/google/googlenav/prefetch/android/B;->c:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/google/googlenav/prefetch/android/z;->a()Ln/am;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_45
    .catchall {:try_start_1b .. :try_end_45} :catchall_65
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_45} :catch_48

    .line 328
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 335
    :catch_48
    move-exception v0

    .line 337
    :try_start_49
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 338
    const-string v2, "TileHistoryTracker - error reading tile history"

    invoke-static {v2, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 340
    :cond_54
    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/B;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 341
    const-string v0, "TILE_HISTORY"

    invoke-interface {v1, v0}, Lcom/google/googlenav/common/io/j;->b(Ljava/lang/String;)Z

    .line 345
    :cond_5e
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z
    :try_end_61
    .catchall {:try_start_49 .. :try_end_61} :catchall_65

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_19

    .line 315
    :catchall_65
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .prologue
    const/16 v6, 0xa

    .line 373
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 374
    const-string v0, "Tile History"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {p0}, Lcom/google/googlenav/prefetch/android/B;->c()Ljava/util/Vector;

    move-result-object v4

    .line 376
    const/4 v0, 0x0

    move v2, v0

    :goto_12
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_5e

    .line 377
    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/am;

    .line 378
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "coords: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "score: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, p0, Lcom/google/googlenav/prefetch/android/B;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/prefetch/android/z;

    invoke-virtual {v1}, Lcom/google/googlenav/prefetch/android/z;->d()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/google/googlenav/prefetch/android/B;->c:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/prefetch/android/z;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/z;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 376
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_12

    .line 383
    :cond_5e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
