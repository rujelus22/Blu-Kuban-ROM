.class public Lr/L;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lt/f;

.field private final b:Lt/f;

.field private c:Lr/n;

.field private final d:Lcom/google/googlenav/common/a;

.field private e:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Ljava/util/Locale;Lcom/google/googlenav/common/a;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Lt/f;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lt/f;-><init>(I)V

    iput-object v0, p0, Lr/L;->a:Lt/f;

    .line 81
    new-instance v0, Lt/f;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lt/f;-><init>(I)V

    iput-object v0, p0, Lr/L;->b:Lt/f;

    .line 82
    iput-object p2, p0, Lr/L;->d:Lcom/google/googlenav/common/a;

    .line 83
    iput-object p1, p0, Lr/L;->e:Ljava/util/Locale;

    .line 84
    return-void
.end method

.method private a(Ln/p;Z)Ln/w;
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 129
    iget-object v2, p0, Lr/L;->b:Lt/f;

    monitor-enter v2

    .line 130
    :try_start_5
    iget-object v0, p0, Lr/L;->b:Lt/f;

    invoke-virtual {v0, p1}, Lt/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 131
    iget-object v0, p0, Lr/L;->b:Lt/f;

    invoke-virtual {v0, p1}, Lt/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/p;

    move-object p1, v0

    .line 133
    :cond_16
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_26

    .line 135
    iget-object v2, p0, Lr/L;->a:Lt/f;

    monitor-enter v2

    .line 136
    :try_start_1a
    iget-object v0, p0, Lr/L;->a:Lt/f;

    invoke-virtual {v0, p1}, Lt/f;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/w;

    .line 137
    if-eqz v0, :cond_29

    .line 138
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_32

    .line 184
    :cond_25
    :goto_25
    return-object v0

    .line 133
    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v0

    .line 140
    :cond_29
    :try_start_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_32

    .line 142
    if-eqz p2, :cond_30

    iget-object v0, p0, Lr/L;->c:Lr/n;

    if-nez v0, :cond_35

    :cond_30
    move-object v0, v1

    .line 143
    goto :goto_25

    .line 140
    :catchall_32
    move-exception v0

    :try_start_33
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v0

    .line 146
    :cond_35
    iget-object v0, p0, Lr/L;->c:Lr/n;

    invoke-virtual {p1}, Ln/p;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lr/n;->a(Ljava/lang/String;)Lr/q;

    move-result-object v0

    .line 147
    if-nez v0, :cond_43

    move-object v0, v1

    .line 148
    goto :goto_25

    .line 153
    :cond_43
    iget-object v2, v0, Lr/q;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v2, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ln/p;->b(Ljava/lang/String;)Ln/p;

    move-result-object v2

    .line 155
    if-nez v2, :cond_51

    move-object v0, v1

    .line 158
    goto :goto_25

    .line 160
    :cond_51
    invoke-virtual {p1, v2}, Ln/p;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a5

    .line 161
    iget-object v0, p0, Lr/L;->c:Lr/n;

    invoke-virtual {v2}, Ln/p;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lr/n;->a(Ljava/lang/String;)Lr/q;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_b7

    .line 163
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 164
    iget-object v1, v0, Lr/q;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ln/p;->b(Ljava/lang/String;)Ln/p;

    move-result-object v1

    .line 166
    invoke-virtual {v2, v1}, Ln/p;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9c

    .line 167
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_9c
    iget-object v1, p0, Lr/L;->b:Lt/f;

    monitor-enter v1

    .line 172
    :try_start_9f
    iget-object v3, p0, Lr/L;->b:Lt/f;

    invoke-virtual {v3, p1, v2}, Lt/f;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 173
    monitor-exit v1
    :try_end_a5
    .catchall {:try_start_9f .. :try_end_a5} :catchall_b4

    .line 179
    :cond_a5
    iget-object v1, v0, Lr/q;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    iget-wide v2, v0, Lr/q;->b:J

    invoke-static {v1, v2, v3}, Ln/w;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;J)Ln/w;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_25

    .line 181
    invoke-direct {p0, v0}, Lr/L;->b(Ln/w;)V

    goto/16 :goto_25

    .line 173
    :catchall_b4
    move-exception v0

    :try_start_b5
    monitor-exit v1
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_b4

    throw v0

    :cond_b7
    move-object v0, v1

    .line 175
    goto/16 :goto_25
.end method

.method private b(Ln/p;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 195
    iget-object v0, p0, Lr/L;->c:Lr/n;

    invoke-virtual {p1}, Ln/p;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lr/n;->a(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 197
    invoke-virtual {p2, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    .line 198
    if-nez v1, :cond_12

    .line 218
    :cond_11
    return-void

    .line 207
    :cond_12
    new-instance v2, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lbl/a;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 208
    invoke-virtual {p1}, Ln/p;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 210
    const/4 v0, 0x0

    :goto_21
    if-ge v0, v1, :cond_11

    .line 211
    invoke-virtual {p2, v6, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 212
    invoke-virtual {v3, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ln/p;->b(Ljava/lang/String;)Ln/p;

    move-result-object v3

    .line 214
    if-eqz v3, :cond_3a

    .line 215
    iget-object v4, p0, Lr/L;->c:Lr/n;

    invoke-virtual {v3}, Ln/p;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v2}, Lr/n;->a(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 210
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_21
.end method

.method private b(Ln/w;)V
    .registers 7
    .parameter

    .prologue
    .line 258
    invoke-virtual {p1}, Ln/w;->a()Ln/p;

    move-result-object v1

    .line 259
    iget-object v2, p0, Lr/L;->a:Lt/f;

    monitor-enter v2

    .line 260
    :try_start_7
    iget-object v0, p0, Lr/L;->a:Lt/f;

    invoke-virtual {v0, v1, p1}, Lt/f;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 261
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_31

    .line 262
    iget-object v2, p0, Lr/L;->b:Lt/f;

    monitor-enter v2

    .line 263
    :try_start_10
    invoke-virtual {p1}, Ln/w;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/x;

    .line 264
    iget-object v4, p0, Lr/L;->b:Lt/f;

    invoke-virtual {v0}, Ln/x;->b()Ln/p;

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Lt/f;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_18

    .line 266
    :catchall_2e
    move-exception v0

    monitor-exit v2
    :try_end_30
    .catchall {:try_start_10 .. :try_end_30} :catchall_2e

    throw v0

    .line 261
    :catchall_31
    move-exception v0

    :try_start_32
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v0

    .line 266
    :cond_34
    :try_start_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_2e

    .line 267
    return-void
.end method


# virtual methods
.method public a(Ln/p;)Ln/w;
    .registers 3
    .parameter

    .prologue
    .line 114
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lr/L;->a(Ln/p;Z)Ln/w;

    move-result-object v0

    return-object v0
.end method

.method public a(Ln/p;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ln/w;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 229
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ln/p;->b(Ljava/lang/String;)Ln/p;

    move-result-object v1

    .line 231
    if-eqz p1, :cond_e

    if-nez v1, :cond_f

    .line 247
    :cond_e
    :goto_e
    return-object v0

    .line 235
    :cond_f
    iget-object v2, p0, Lr/L;->d:Lcom/google/googlenav/common/a;

    invoke-interface {v2}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    .line 236
    iget-object v4, p0, Lr/L;->c:Lr/n;

    if-eqz v4, :cond_20

    .line 237
    invoke-direct {p0, v1, p2}, Lr/L;->b(Ln/p;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 240
    :cond_20
    invoke-static {p2, v2, v3}, Ln/w;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;J)Ln/w;

    move-result-object v1

    .line 241
    if-eqz v1, :cond_e

    .line 245
    invoke-direct {p0, v1}, Lr/L;->b(Ln/w;)V

    move-object v0, v1

    .line 247
    goto :goto_e
.end method

.method public a()V
    .registers 3

    .prologue
    .line 327
    iget-object v1, p0, Lr/L;->a:Lt/f;

    monitor-enter v1

    .line 328
    :try_start_3
    iget-object v0, p0, Lr/L;->a:Lt/f;

    invoke-virtual {v0}, Lt/f;->e()V

    .line 329
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_13

    .line 331
    iget-object v1, p0, Lr/L;->b:Lt/f;

    monitor-enter v1

    .line 332
    :try_start_c
    iget-object v0, p0, Lr/L;->b:Lt/f;

    invoke-virtual {v0}, Lt/f;->e()V

    .line 333
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_16

    .line 334
    return-void

    .line 329
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0

    .line 333
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public a(Ljava/io/File;)V
    .registers 9
    .parameter

    .prologue
    .line 93
    new-instance v0, Lr/n;

    iget-object v1, p0, Lr/L;->d:Lcom/google/googlenav/common/a;

    const-string v2, "bd"

    sget-object v3, Lbl/a;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    const/16 v4, 0xbb8

    const-wide/32 v5, 0x5265c00

    invoke-direct/range {v0 .. v6}, Lr/n;-><init>(Lcom/google/googlenav/common/a;Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBufType;IJ)V

    .line 97
    invoke-virtual {v0, p1}, Lr/n;->a(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 98
    iget-object v1, p0, Lr/L;->e:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Lr/n;->a(Ljava/util/Locale;)Z

    .line 99
    iput-object v0, p0, Lr/L;->c:Lr/n;

    .line 101
    :cond_1d
    return-void
.end method

.method public a(Ln/w;)Z
    .registers 3
    .parameter

    .prologue
    .line 289
    instance-of v0, p1, Lr/N;

    return v0
.end method

.method public b(Ln/p;)Ln/w;
    .registers 3
    .parameter

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lr/L;->a(Ln/p;Z)Ln/w;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .registers 3

    .prologue
    .line 340
    iget-object v1, p0, Lr/L;->a:Lt/f;

    monitor-enter v1

    .line 341
    :try_start_3
    iget-object v0, p0, Lr/L;->a:Lt/f;

    invoke-virtual {v0}, Lt/f;->e()V

    .line 342
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1c

    .line 344
    iget-object v1, p0, Lr/L;->b:Lt/f;

    monitor-enter v1

    .line 345
    :try_start_c
    iget-object v0, p0, Lr/L;->b:Lt/f;

    invoke-virtual {v0}, Lt/f;->e()V

    .line 346
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_1f

    .line 348
    iget-object v0, p0, Lr/L;->c:Lr/n;

    if-eqz v0, :cond_1b

    .line 349
    iget-object v0, p0, Lr/L;->c:Lr/n;

    invoke-virtual {v0}, Lr/n;->b()Z

    .line 351
    :cond_1b
    return-void

    .line 342
    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0

    .line 346
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public c()V
    .registers 3

    .prologue
    .line 357
    iget-object v1, p0, Lr/L;->a:Lt/f;

    monitor-enter v1

    .line 358
    :try_start_3
    iget-object v0, p0, Lr/L;->a:Lt/f;

    invoke-virtual {v0}, Lt/f;->e()V

    .line 359
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1c

    .line 361
    iget-object v1, p0, Lr/L;->b:Lt/f;

    monitor-enter v1

    .line 362
    :try_start_c
    iget-object v0, p0, Lr/L;->b:Lt/f;

    invoke-virtual {v0}, Lt/f;->e()V

    .line 363
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_1f

    .line 365
    iget-object v0, p0, Lr/L;->c:Lr/n;

    if-eqz v0, :cond_1b

    .line 366
    iget-object v0, p0, Lr/L;->c:Lr/n;

    invoke-virtual {v0}, Lr/n;->a()V

    .line 368
    :cond_1b
    return-void

    .line 359
    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0

    .line 363
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public c(Ln/p;)V
    .registers 5
    .parameter

    .prologue
    .line 275
    new-instance v0, Lr/N;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lr/N;-><init>(Ln/p;Lr/M;)V

    .line 278
    iget-object v1, p0, Lr/L;->a:Lt/f;

    monitor-enter v1

    .line 279
    :try_start_9
    iget-object v2, p0, Lr/L;->a:Lt/f;

    invoke-virtual {v2, p1, v0}, Lt/f;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 280
    monitor-exit v1

    .line 281
    return-void

    .line 280
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public d()J
    .registers 3

    .prologue
    .line 374
    iget-object v0, p0, Lr/L;->c:Lr/n;

    if-eqz v0, :cond_b

    .line 375
    iget-object v0, p0, Lr/L;->c:Lr/n;

    invoke-virtual {v0}, Lr/n;->c()J

    move-result-wide v0

    .line 378
    :goto_a
    return-wide v0

    :cond_b
    const-wide/16 v0, 0x0

    goto :goto_a
.end method
