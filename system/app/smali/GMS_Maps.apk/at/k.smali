.class public Lat/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lat/o;
.implements Lcom/google/googlenav/common/h;
.implements Lcom/google/googlenav/common/util/n;


# instance fields
.field private final a:Ljava/util/Hashtable;

.field private final b:Ljava/util/Hashtable;

.field private volatile c:Lat/l;

.field private final d:Ljava/util/Vector;

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lat/k;->d:Ljava/util/Vector;

    .line 116
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lat/k;->a:Ljava/util/Hashtable;

    .line 117
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lat/k;->b:Ljava/util/Hashtable;

    .line 118
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lat/k;->e:J

    .line 119
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lat/k;->f:J

    .line 120
    return-void
.end method

.method static synthetic a(Lat/k;)Ljava/util/Vector;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lat/k;->d:Ljava/util/Vector;

    return-object v0
.end method

.method private declared-synchronized a(Lat/P;Lat/n;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 276
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lat/k;->c(Lat/P;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 280
    iget-object v0, p0, Lat/k;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_24

    .line 289
    :goto_c
    monitor-exit p0

    return-void

    .line 284
    :cond_e
    :try_start_e
    iget-object v0, p0, Lat/k;->c:Lat/l;

    if-nez v0, :cond_19

    .line 285
    new-instance v0, Lat/l;

    invoke-direct {v0, p0}, Lat/l;-><init>(Lat/k;)V

    iput-object v0, p0, Lat/k;->c:Lat/l;

    .line 287
    :cond_19
    iget-object v0, p0, Lat/k;->c:Lat/l;

    invoke-virtual {v0, p2}, Lat/l;->a(Lat/n;)V

    .line 288
    iget-object v0, p0, Lat/k;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catchall {:try_start_e .. :try_end_23} :catchall_24

    goto :goto_c

    .line 276
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lat/k;)Ljava/util/Hashtable;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lat/k;->b:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic c(Lat/k;)Ljava/util/Hashtable;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lat/k;->a:Ljava/util/Hashtable;

    return-object v0
.end method

.method private c(Lat/P;)Z
    .registers 5
    .parameter

    .prologue
    .line 353
    invoke-virtual {p1}, Lat/P;->e()Lat/Y;

    move-result-object v0

    invoke-virtual {v0}, Lat/Y;->a()I

    move-result v2

    .line 354
    iget-object v0, p0, Lat/k;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_11
    if-ltz v1, :cond_2b

    .line 355
    iget-object v0, p0, Lat/k;->d:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/m;

    invoke-interface {v0}, Lat/m;->b()Lcom/google/googlenav/layer/m;

    move-result-object v0

    .line 359
    invoke-virtual {v0, v2}, Lcom/google/googlenav/layer/m;->b(I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 360
    const/4 v0, 0x1

    .line 363
    :goto_26
    return v0

    .line 354
    :cond_27
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_11

    .line 363
    :cond_2b
    const/4 v0, 0x0

    goto :goto_26
.end method


# virtual methods
.method public declared-synchronized a(Lat/P;)Lat/n;
    .registers 3
    .parameter

    .prologue
    .line 218
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v0}, Lat/k;->a(Lat/P;Z)Lat/n;
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_8

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lat/P;Z)Lat/n;
    .registers 13
    .parameter
    .parameter

    .prologue
    .line 237
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lat/k;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/n;

    .line 240
    iget-object v1, p0, Lat/k;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lat/n;

    .line 243
    if-eqz v0, :cond_4c

    .line 246
    iget-wide v2, p0, Lat/k;->e:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4a

    .line 247
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v2

    .line 248
    invoke-virtual {v0}, Lat/n;->a()J

    move-result-wide v4

    .line 249
    sub-long v6, v2, v4

    .line 250
    if-eqz p2, :cond_4a

    if-nez v1, :cond_4a

    const-wide/high16 v8, -0x8000

    cmp-long v1, v4, v8

    if-eqz v1, :cond_4a

    iget-wide v4, p0, Lat/k;->e:J

    cmp-long v1, v6, v4

    if-lez v1, :cond_4a

    iget-wide v4, p0, Lat/k;->f:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_47

    iget-object v1, p0, Lat/k;->c:Lat/l;

    if-eqz v1, :cond_4a

    .line 253
    :cond_47
    invoke-direct {p0, p1, v0}, Lat/k;->a(Lat/P;Lat/n;)V
    :try_end_4a
    .catchall {:try_start_1 .. :try_end_4a} :catchall_5d

    .line 270
    :cond_4a
    :goto_4a
    monitor-exit p0

    return-object v0

    .line 260
    :cond_4c
    if-eqz v1, :cond_50

    move-object v0, v1

    .line 261
    goto :goto_4a

    .line 264
    :cond_50
    if-nez p2, :cond_54

    .line 265
    const/4 v0, 0x0

    goto :goto_4a

    .line 268
    :cond_54
    :try_start_54
    new-instance v0, Lat/n;

    invoke-direct {v0, p1}, Lat/n;-><init>(Lat/P;)V

    .line 269
    invoke-direct {p0, p1, v0}, Lat/k;->a(Lat/P;Lat/n;)V
    :try_end_5c
    .catchall {:try_start_54 .. :try_end_5c} :catchall_5d

    goto :goto_4a

    .line 237
    :catchall_5d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lat/k;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 131
    iget-object v0, p0, Lat/k;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 132
    return-void
.end method

.method public a(Lat/m;)V
    .registers 8
    .parameter

    .prologue
    const-wide/16 v4, -0x1

    .line 144
    iget-object v0, p0, Lat/k;->d:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-interface {p1}, Lat/m;->b()Lcom/google/googlenav/layer/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->i()J

    move-result-wide v0

    .line 149
    cmp-long v2, v0, v4

    if-eqz v2, :cond_21

    iget-wide v2, p0, Lat/k;->e:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1f

    iget-wide v2, p0, Lat/k;->e:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_21

    .line 151
    :cond_1f
    iput-wide v0, p0, Lat/k;->e:J

    .line 154
    :cond_21
    invoke-virtual {p0}, Lat/k;->a()V

    .line 155
    return-void
.end method

.method public a(Ljava/lang/String;[Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 190
    iget-object v0, p0, Lat/k;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_1a

    .line 191
    iget-object v0, p0, Lat/k;->d:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/m;

    invoke-interface {v0, p1, p2}, Lat/m;->a(Ljava/lang/String;[Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 190
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    .line 193
    :cond_1a
    return-void
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 342
    invoke-virtual {p0}, Lat/k;->a()V

    .line 343
    return-void
.end method

.method public declared-synchronized b(Lat/P;)V
    .registers 4
    .parameter

    .prologue
    .line 330
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lat/k;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/n;

    .line 331
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lat/n;->e()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 332
    invoke-virtual {v0}, Lat/n;->d()V

    .line 333
    iget-object v0, p0, Lat/k;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 335
    :cond_19
    monitor-exit p0

    return-void

    .line 330
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lat/m;)V
    .registers 10
    .parameter

    .prologue
    const-wide/16 v6, -0x1

    .line 166
    iget-object v0, p0, Lat/k;->d:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 169
    iput-wide v6, p0, Lat/k;->e:J

    .line 170
    iget-object v0, p0, Lat/k;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_12
    if-ltz v1, :cond_3a

    .line 171
    iget-object v0, p0, Lat/k;->d:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/m;

    invoke-interface {v0}, Lat/m;->b()Lcom/google/googlenav/layer/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->i()J

    move-result-wide v2

    .line 172
    cmp-long v0, v2, v6

    if-eqz v0, :cond_36

    iget-wide v4, p0, Lat/k;->e:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_34

    iget-wide v4, p0, Lat/k;->e:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_36

    .line 174
    :cond_34
    iput-wide v2, p0, Lat/k;->e:J

    .line 170
    :cond_36
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_12

    .line 178
    :cond_3a
    invoke-virtual {p0}, Lat/k;->a()V

    .line 179
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lat/k;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public c()V
    .registers 3

    .prologue
    .line 201
    iget-object v0, p0, Lat/k;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_1a

    .line 202
    iget-object v0, p0, Lat/k;->d:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/m;

    invoke-interface {v0}, Lat/m;->c()V

    .line 201
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    .line 204
    :cond_1a
    return-void
.end method

.method public d()V
    .registers 1

    .prologue
    .line 210
    invoke-static {p0}, Lcom/google/googlenav/common/j;->c(Lcom/google/googlenav/common/h;)V

    .line 211
    return-void
.end method

.method public declared-synchronized e()V
    .registers 5

    .prologue
    .line 296
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lat/k;->c:Lat/l;

    if-eqz v0, :cond_22

    .line 297
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    iget-object v1, p0, Lat/k;->c:Lat/l;

    invoke-virtual {v0, v1}, Lac/h;->c(Lac/g;)V

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Lat/k;->c:Lat/l;

    .line 299
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lat/k;->e:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lat/k;->f:J
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 302
    :cond_22
    monitor-exit p0

    return-void

    .line 296
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()V
    .registers 10

    .prologue
    .line 312
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v2

    .line 313
    iget-object v0, p0, Lat/k;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    :cond_13
    :goto_13
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 314
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/P;

    .line 315
    iget-object v1, p0, Lat/k;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lat/n;

    .line 316
    invoke-virtual {v1}, Lat/n;->b()J

    move-result-wide v5

    .line 318
    const-wide/16 v7, 0xfa0

    add-long/2addr v5, v7

    cmp-long v1, v5, v2

    if-gez v1, :cond_13

    .line 319
    invoke-virtual {p0, v0}, Lat/k;->b(Lat/P;)V
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_36

    goto :goto_13

    .line 312
    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0

    .line 322
    :cond_39
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized g()Lcom/google/googlenav/common/util/l;
    .registers 4

    .prologue
    .line 566
    monitor-enter p0

    :try_start_1
    new-instance v1, Lcom/google/googlenav/common/util/l;

    const-string v0, "LayerService"

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/googlenav/common/util/l;-><init>(Ljava/lang/String;I)V

    .line 568
    iget-object v0, p0, Lat/k;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 569
    :goto_f
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 570
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/n;

    .line 571
    invoke-virtual {v0}, Lat/n;->g()Lcom/google/googlenav/common/util/l;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/common/util/l;->a(Lcom/google/googlenav/common/util/l;)Lcom/google/googlenav/common/util/l;

    move-result-object v1

    goto :goto_f

    .line 574
    :cond_24
    iget-object v0, p0, Lat/k;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 575
    :goto_2a
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 576
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/n;

    .line 577
    invoke-virtual {v0}, Lat/n;->g()Lcom/google/googlenav/common/util/l;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/common/util/l;->a(Lcom/google/googlenav/common/util/l;)Lcom/google/googlenav/common/util/l;
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_42

    move-result-object v0

    move-object v1, v0

    .line 578
    goto :goto_2a

    .line 580
    :cond_40
    monitor-exit p0

    return-object v1

    .line 566
    :catchall_42
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h()Z
    .registers 2

    .prologue
    .line 561
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lat/k;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_e

    move-result v0

    if-lez v0, :cond_c

    const/4 v0, 0x1

    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
