.class public abstract Lz/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:I

.field protected b:I

.field protected volatile c:Z

.field protected d:Z

.field protected e:[F

.field private f:Ljava/lang/Object;

.field private g:I

.field private h:I

.field private final i:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v1, p0, Lz/w;->a:I

    .line 32
    iput v1, p0, Lz/w;->b:I

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lz/w;->f:Ljava/lang/Object;

    .line 43
    iput v1, p0, Lz/w;->g:I

    .line 44
    iput v1, p0, Lz/w;->h:I

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lz/w;->c:Z

    .line 56
    iput-boolean v1, p0, Lz/w;->d:Z

    .line 61
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lz/w;->e:[F

    .line 67
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lz/w;->i:Ljava/util/List;

    .line 74
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v2, v2, v2, v0}, Lz/w;->a(FFFF)V

    .line 75
    return-void
.end method


# virtual methods
.method a()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 142
    iget-boolean v0, p0, Lz/w;->c:Z

    if-eqz v0, :cond_14

    .line 143
    iget-object v1, p0, Lz/w;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 144
    :try_start_8
    iget v0, p0, Lz/w;->g:I

    iput v0, p0, Lz/w;->a:I

    .line 145
    iget v0, p0, Lz/w;->h:I

    iput v0, p0, Lz/w;->b:I

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lz/w;->c:Z

    .line 147
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_3d

    .line 155
    :cond_14
    iget-object v0, p0, Lz/w;->e:[F

    aget v0, v0, v5

    iget-object v1, p0, Lz/w;->e:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lz/w;->e:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Lz/w;->e:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 156
    invoke-static {v5}, Landroid/opengl/GLES20;->glClearStencil(I)V

    .line 157
    const/16 v0, 0x4500

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 159
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 160
    const/16 v0, 0xb44

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 161
    return-void

    .line 147
    :catchall_3d
    move-exception v0

    :try_start_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method public a(FFFF)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    iget-boolean v0, p0, Lz/w;->d:Z

    if-eqz v0, :cond_7

    .line 83
    invoke-static {}, Lz/j;->c()V

    .line 85
    :cond_7
    iget-object v0, p0, Lz/w;->e:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 86
    iget-object v0, p0, Lz/w;->e:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 87
    iget-object v0, p0, Lz/w;->e:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 88
    iget-object v0, p0, Lz/w;->e:[F

    const/4 v1, 0x3

    aput p4, v0, v1

    .line 89
    return-void
.end method

.method protected a(II)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 190
    iget-object v1, p0, Lz/w;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 191
    :try_start_3
    iput p1, p0, Lz/w;->g:I

    .line 192
    iput p2, p0, Lz/w;->h:I

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lz/w;->c:Z

    .line 194
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_18

    .line 196
    iget-object v1, p0, Lz/w;->i:Ljava/util/List;

    monitor-enter v1

    .line 197
    :try_start_e
    iget-object v0, p0, Lz/w;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 204
    :cond_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_35

    .line 205
    return-void

    .line 194
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0

    .line 200
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lz/w;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz/d;

    .line 201
    iget v3, p0, Lz/w;->g:I

    iget v4, p0, Lz/w;->h:I

    invoke-virtual {v0, p0, v3, v4}, Lz/d;->a(Lz/w;II)V

    goto :goto_21

    .line 204
    :catchall_35
    move-exception v0

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_1b .. :try_end_37} :catchall_35

    throw v0
.end method

.method a(Lz/d;)V
    .registers 4
    .parameter

    .prologue
    .line 212
    iget-object v1, p0, Lz/w;->i:Ljava/util/List;

    monitor-enter v1

    .line 213
    :try_start_3
    iget-object v0, p0, Lz/w;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    monitor-exit v1

    .line 215
    return-void

    .line 214
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method a(Lz/j;Lz/i;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 128
    iget-boolean v0, p2, Lz/i;->e:Z

    iget-boolean v1, p0, Lz/w;->d:Z

    if-ne v0, v1, :cond_c

    iget-boolean v0, p2, Lz/i;->f:Z

    if-nez v0, :cond_c

    .line 129
    const/4 v0, 0x0

    .line 133
    :goto_b
    return v0

    .line 132
    :cond_c
    iget-boolean v0, p2, Lz/i;->e:Z

    iput-boolean v0, p0, Lz/w;->d:Z

    .line 133
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public b()I
    .registers 2

    .prologue
    .line 98
    iget v0, p0, Lz/w;->g:I

    return v0
.end method

.method b(Lz/d;)V
    .registers 4
    .parameter

    .prologue
    .line 222
    iget-object v1, p0, Lz/w;->i:Ljava/util/List;

    monitor-enter v1

    .line 223
    :try_start_3
    iget-object v0, p0, Lz/w;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 224
    monitor-exit v1

    .line 225
    return-void

    .line 224
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 108
    iget v0, p0, Lz/w;->h:I

    return v0
.end method

.method d()V
    .registers 1

    .prologue
    .line 169
    return-void
.end method
