.class public Lat/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/common/util/n;


# instance fields
.field private final a:Lat/P;

.field private final b:Ljava/util/Hashtable;

.field private c:LS/f;

.field private d:J

.field private e:J

.field private f:Z


# direct methods
.method public constructor <init>(Lat/P;)V
    .registers 4
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lat/n;->e:J

    .line 60
    iput-object p1, p0, Lat/n;->a:Lat/P;

    .line 61
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lat/n;->b:Ljava/util/Hashtable;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lat/n;->f:Z

    .line 63
    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 72
    invoke-virtual {p0}, Lat/n;->f()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    :goto_12
    return-wide v0

    :cond_13
    iget-wide v0, p0, Lat/n;->e:J

    goto :goto_12
.end method

.method public a(Ljava/lang/String;J)Ljava/util/Hashtable;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 133
    const-wide/high16 v0, -0x8000

    cmp-long v0, p2, v0

    if-nez v0, :cond_1d

    .line 134
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lat/n;->d:J

    .line 138
    :goto_14
    iget-object v0, p0, Lat/n;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    return-object v0

    .line 136
    :cond_1d
    iput-wide p2, p0, Lat/n;->d:J

    goto :goto_14
.end method

.method public a(J)V
    .registers 3
    .parameter

    .prologue
    .line 81
    iput-wide p1, p0, Lat/n;->d:J

    .line 82
    return-void
.end method

.method public declared-synchronized a([BJ)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 267
    monitor-enter p0

    const-wide/high16 v0, -0x8000

    cmp-long v0, p2, v0

    if-nez v0, :cond_1f

    .line 268
    :try_start_7
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lat/n;->d:J

    .line 272
    :goto_15
    if-eqz p1, :cond_1a

    array-length v0, p1

    if-nez v0, :cond_25

    .line 273
    :cond_1a
    const/4 v0, 0x0

    iput-object v0, p0, Lat/n;->c:LS/f;
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_22

    .line 278
    :goto_1d
    monitor-exit p0

    return-void

    .line 270
    :cond_1f
    :try_start_1f
    iput-wide p2, p0, Lat/n;->d:J
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_22

    goto :goto_15

    .line 267
    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0

    .line 275
    :cond_25
    :try_start_25
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->n()LS/h;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, p1

    invoke-interface {v0, p1, v1, v2}, LS/h;->a([BII)LS/f;

    move-result-object v0

    iput-object v0, p0, Lat/n;->c:LS/f;
    :try_end_35
    .catchall {:try_start_25 .. :try_end_35} :catchall_22

    goto :goto_1d
.end method

.method public a([Lcom/google/googlenav/layer/j;J)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lat/n;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 159
    if-nez p1, :cond_b

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lat/n;->f:Z

    .line 166
    :goto_a
    return-void

    .line 165
    :cond_b
    invoke-virtual {p0, p1, p2, p3}, Lat/n;->b([Lcom/google/googlenav/layer/j;J)V

    goto :goto_a
.end method

.method public b()J
    .registers 3

    .prologue
    .line 77
    iget-wide v0, p0, Lat/n;->d:J

    return-wide v0
.end method

.method public declared-synchronized b(J)LS/f;
    .registers 5
    .parameter

    .prologue
    .line 245
    monitor-enter p0

    const-wide/high16 v0, -0x8000

    cmp-long v0, p1, v0

    if-nez v0, :cond_19

    .line 246
    :try_start_7
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lat/n;->d:J

    .line 250
    :goto_15
    iget-object v0, p0, Lat/n;->c:LS/f;
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_1c

    monitor-exit p0

    return-object v0

    .line 248
    :cond_19
    :try_start_19
    iput-wide p1, p0, Lat/n;->d:J
    :try_end_1b
    .catchall {:try_start_19 .. :try_end_1b} :catchall_1c

    goto :goto_15

    .line 245
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b([Lcom/google/googlenav/layer/j;J)V
    .registers 13
    .parameter
    .parameter

    .prologue
    .line 187
    if-nez p1, :cond_3

    .line 223
    :goto_2
    return-void

    .line 190
    :cond_3
    const-wide/high16 v0, -0x8000

    cmp-long v0, p2, v0

    if-nez v0, :cond_67

    .line 191
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lat/n;->d:J

    .line 195
    :goto_17
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_1b
    if-ltz v3, :cond_79

    .line 196
    aget-object v4, p1, v3

    .line 198
    invoke-virtual {v4}, Lcom/google/googlenav/layer/j;->g()[Lcom/google/googlenav/layer/o;

    move-result-object v5

    .line 199
    array-length v0, v5

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_27
    if-ltz v2, :cond_75

    .line 200
    aget-object v6, v5, v2

    .line 201
    iget-object v0, p0, Lat/n;->b:Ljava/util/Hashtable;

    invoke-virtual {v6}, Lcom/google/googlenav/layer/o;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 202
    const/4 v1, 0x0

    .line 204
    if-nez v0, :cond_6a

    .line 205
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 206
    iget-object v7, p0, Lat/n;->b:Ljava/util/Hashtable;

    invoke-virtual {v6}, Lcom/google/googlenav/layer/o;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :goto_48
    if-nez v1, :cond_63

    .line 213
    new-instance v1, Lcom/google/googlenav/W;

    invoke-direct {v1, v6, v4}, Lcom/google/googlenav/W;-><init>(Lcom/google/googlenav/layer/o;Lcom/google/googlenav/layer/j;)V

    .line 214
    iget-object v7, p0, Lat/n;->a:Lat/P;

    invoke-virtual {v7}, Lat/P;->e()Lat/Y;

    move-result-object v7

    invoke-virtual {v7}, Lat/Y;->a()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/google/googlenav/W;->f(I)V

    .line 215
    invoke-virtual {v6}, Lcom/google/googlenav/layer/o;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_63
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_27

    .line 193
    :cond_67
    iput-wide p2, p0, Lat/n;->d:J

    goto :goto_17

    .line 208
    :cond_6a
    invoke-virtual {v6}, Lcom/google/googlenav/layer/o;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/W;

    goto :goto_48

    .line 195
    :cond_75
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_1b

    .line 221
    :cond_79
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lat/n;->e:J

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lat/n;->f:Z

    goto/16 :goto_2
.end method

.method public c()Lat/P;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lat/n;->a:Lat/P;

    return-object v0
.end method

.method public declared-synchronized d()V
    .registers 2

    .prologue
    .line 96
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lat/n;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lat/n;->c:LS/f;

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lat/n;->f:Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 99
    monitor-exit p0

    return-void

    .line 96
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 105
    iget-boolean v0, p0, Lat/n;->f:Z

    return v0
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lat/n;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized g()Lcom/google/googlenav/common/util/l;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 281
    monitor-enter p0

    :try_start_2
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 283
    iget-object v0, p0, Lat/n;->c:LS/f;

    if-eqz v0, :cond_1a

    .line 284
    new-instance v0, Lcom/google/googlenav/common/util/l;

    const-string v3, "image"

    iget-object v4, p0, Lat/n;->c:LS/f;

    invoke-interface {v4}, LS/f;->g()I

    move-result v4

    invoke-direct {v0, v3, v4}, Lcom/google/googlenav/common/util/l;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_1a
    iget-object v0, p0, Lat/n;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v3

    .line 289
    :cond_20
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 290
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    .line 291
    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v4

    .line 292
    :goto_30
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 293
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/W;

    .line 294
    invoke-virtual {v0}, Lcom/google/googlenav/W;->g()Lcom/google/googlenav/common/util/l;

    move-result-object v0

    iget v0, v0, Lcom/google/googlenav/common/util/l;->b:I

    add-int/2addr v0, v1

    move v1, v0

    .line 295
    goto :goto_30

    .line 297
    :cond_45
    new-instance v0, Lcom/google/googlenav/common/util/l;

    const-string v3, "cache"

    invoke-direct {v0, v3, v1}, Lcom/google/googlenav/common/util/l;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    const/4 v0, 0x0

    .line 300
    new-instance v1, Lcom/google/googlenav/common/util/l;

    const-string v3, "LayerTile"

    invoke-direct {v1, v3, v0, v2}, Lcom/google/googlenav/common/util/l;-><init>(Ljava/lang/String;ILjava/util/List;)V
    :try_end_57
    .catchall {:try_start_2 .. :try_end_57} :catchall_59

    monitor-exit p0

    return-object v1

    .line 281
    :catchall_59
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public h()Z
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lat/n;->c:LS/f;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
