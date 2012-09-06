.class public Lcom/google/android/maps/driveabout/vector/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/cH;


# static fields
.field static final a:I


# instance fields
.field final b:Lcom/google/android/maps/driveabout/vector/K;

.field protected c:Lcom/google/android/maps/driveabout/vector/J;

.field private d:I

.field private e:J

.field private f:I

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x10

    :goto_8
    sput v0, Lcom/google/android/maps/driveabout/vector/I;->a:I

    return-void

    :cond_b
    const/16 v0, 0x14

    goto :goto_8
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/K;)V
    .registers 3
    .parameter

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/I;->m:Z

    .line 120
    sget v0, Lcom/google/android/maps/driveabout/vector/I;->a:I

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/I;->c(I)V

    .line 121
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/I;->b:Lcom/google/android/maps/driveabout/vector/K;

    .line 122
    return-void
.end method

.method private j()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 244
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/I;->k:I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/I;->j:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/I;->k:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 245
    const v1, 0x3e6b8520

    cmpg-float v1, v0, v1

    if-gez v1, :cond_24

    .line 246
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/I;->f:I

    int-to-float v0, v0

    const v1, 0x3f8ccccd

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/I;->c(I)V

    .line 250
    :cond_1d
    :goto_1d
    iput v2, p0, Lcom/google/android/maps/driveabout/vector/I;->l:I

    .line 251
    iput v2, p0, Lcom/google/android/maps/driveabout/vector/I;->j:I

    .line 252
    iput v2, p0, Lcom/google/android/maps/driveabout/vector/I;->k:I

    .line 253
    return-void

    .line 247
    :cond_24
    const v1, 0x3ebd70a4

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1d

    .line 248
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/I;->f:I

    int-to-float v0, v0

    const v1, 0x3f666666

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/I;->c(I)V

    goto :goto_1d
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/I;->d:I

    .line 153
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/I;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/I;->e:J

    .line 154
    return-void
.end method

.method public a(J)V
    .registers 4
    .parameter

    .prologue
    .line 366
    monitor-enter p0

    .line 367
    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/I;->c:Lcom/google/android/maps/driveabout/vector/J;

    if-eqz v0, :cond_a

    .line 368
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/I;->c:Lcom/google/android/maps/driveabout/vector/J;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/vector/J;->a(J)V

    .line 370
    :cond_a
    monitor-exit p0

    .line 371
    return-void

    .line 370
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/I;->g:Z

    .line 217
    return-void
.end method

.method public a(ZZ)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 288
    monitor-enter p0

    .line 289
    if-eqz p1, :cond_7

    .line 290
    const/4 v0, 0x1

    :try_start_4
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/I;->c(Z)V

    .line 292
    :cond_7
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/I;->c:Lcom/google/android/maps/driveabout/vector/J;

    if-eqz v0, :cond_17

    .line 293
    if-eqz p2, :cond_12

    .line 294
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/I;->c:Lcom/google/android/maps/driveabout/vector/J;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/J;->e()V

    .line 296
    :cond_12
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/I;->c:Lcom/google/android/maps/driveabout/vector/J;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/J;->f()V

    .line 298
    :cond_17
    monitor-exit p0

    .line 299
    return-void

    .line 298
    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public a(I)Z
    .registers 4
    .parameter

    .prologue
    .line 134
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/I;->d:I

    add-int/2addr v0, p1

    .line 138
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/I;->d:I

    if-eqz v1, :cond_c

    const v1, 0x88b8

    if-gt v0, v1, :cond_10

    .line 139
    :cond_c
    iput v0, p0, Lcom/google/android/maps/driveabout/vector/I;->d:I

    .line 140
    const/4 v0, 0x1

    .line 142
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public b()V
    .registers 7

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/I;->d()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/vector/I;->e:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v1, v0, 0x5

    .line 162
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/I;->g:Z

    if-eqz v0, :cond_61

    sget v0, Lcom/google/android/maps/driveabout/vector/I;->a:I

    .line 163
    :goto_10
    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/I;->h:Z

    if-eqz v2, :cond_16

    .line 164
    add-int/lit16 v0, v0, 0x1f4

    .line 167
    :cond_16
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/I;->c:Lcom/google/android/maps/driveabout/vector/J;

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/I;->c:Lcom/google/android/maps/driveabout/vector/J;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/J;->d()I

    .line 172
    :cond_1f
    const/16 v2, 0xf

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 173
    monitor-enter p0

    .line 174
    :try_start_26
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/I;->c:Lcom/google/android/maps/driveabout/vector/J;

    if-eqz v2, :cond_40

    .line 175
    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/I;->i:Z

    if-nez v2, :cond_80

    .line 176
    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/I;->g:Z

    if-eqz v2, :cond_64

    .line 177
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/I;->c:Lcom/google/android/maps/driveabout/vector/J;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/J;->f()V

    .line 182
    :cond_37
    :goto_37
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/I;->c:Lcom/google/android/maps/driveabout/vector/J;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/I;->d(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/vector/J;->a(I)V

    .line 188
    :cond_40
    :goto_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_26 .. :try_end_41} :catchall_89

    .line 199
    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/I;->h:Z

    if-nez v2, :cond_60

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/I;->g:Z

    if-nez v2, :cond_60

    .line 201
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/I;->j:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/I;->j:I

    .line 202
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/I;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/I;->k:I

    .line 203
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/I;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/I;->l:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_60

    .line 204
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/I;->j()V

    .line 207
    :cond_60
    return-void

    .line 162
    :cond_61
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/I;->f:I

    goto :goto_10

    .line 178
    :cond_64
    :try_start_64
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/I;->c:Lcom/google/android/maps/driveabout/vector/J;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/J;->g()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-eqz v2, :cond_37

    .line 179
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/I;->c:Lcom/google/android/maps/driveabout/vector/J;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/J;->g()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v0, v2

    goto :goto_37

    .line 184
    :cond_80
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/I;->c:Lcom/google/android/maps/driveabout/vector/J;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/J;->e()V

    .line 185
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/I;->i:Z

    goto :goto_40

    .line 188
    :catchall_89
    move-exception v0

    monitor-exit p0
    :try_end_8b
    .catchall {:try_start_64 .. :try_end_8b} :catchall_89

    throw v0
.end method

.method public b(I)V
    .registers 3
    .parameter

    .prologue
    .line 147
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/I;->d:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/I;->d:I

    .line 148
    return-void
.end method

.method public b(Z)V
    .registers 2
    .parameter

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/I;->h:Z

    .line 225
    return-void
.end method

.method public declared-synchronized c()V
    .registers 2

    .prologue
    .line 232
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/I;->i:Z

    .line 233
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/I;->c:Lcom/google/android/maps/driveabout/vector/J;

    if-eqz v0, :cond_d

    .line 234
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/I;->c:Lcom/google/android/maps/driveabout/vector/J;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/J;->e()V
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_f

    .line 236
    :cond_d
    monitor-exit p0

    return-void

    .line 232
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method c(I)V
    .registers 3
    .parameter

    .prologue
    .line 257
    sget v0, Lcom/google/android/maps/driveabout/vector/I;->a:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/I;->f:I

    .line 258
    return-void
.end method

.method public declared-synchronized c(Z)V
    .registers 3
    .parameter

    .prologue
    .line 338
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/I;->m:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 339
    monitor-exit p0

    return-void

    .line 338
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method d(I)I
    .registers 2
    .parameter

    .prologue
    .line 281
    return p1
.end method

.method d()J
    .registers 3

    .prologue
    .line 266
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public e()V
    .registers 2

    .prologue
    .line 307
    monitor-enter p0

    .line 308
    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/I;->c:Lcom/google/android/maps/driveabout/vector/J;

    if-eqz v0, :cond_c

    .line 309
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/I;->c:Lcom/google/android/maps/driveabout/vector/J;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/J;->b()V

    .line 313
    :goto_a
    monitor-exit p0

    .line 314
    return-void

    .line 311
    :cond_c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/I;->b:Lcom/google/android/maps/driveabout/vector/K;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/K;->d_()V

    goto :goto_a

    .line 313
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public f()V
    .registers 2

    .prologue
    .line 317
    monitor-enter p0

    .line 318
    :try_start_1
    new-instance v0, Lcom/google/android/maps/driveabout/vector/J;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/vector/J;-><init>(Lcom/google/android/maps/driveabout/vector/I;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/I;->c:Lcom/google/android/maps/driveabout/vector/J;

    .line 319
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/I;->c:Lcom/google/android/maps/driveabout/vector/J;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/J;->start()V

    .line 320
    monitor-exit p0

    .line 321
    return-void

    .line 320
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public g()V
    .registers 2

    .prologue
    .line 324
    monitor-enter p0

    .line 325
    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/I;->c:Lcom/google/android/maps/driveabout/vector/J;

    if-eqz v0, :cond_d

    .line 326
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/I;->c:Lcom/google/android/maps/driveabout/vector/J;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/J;->c()V

    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/I;->c:Lcom/google/android/maps/driveabout/vector/J;

    .line 329
    :cond_d
    monitor-exit p0

    .line 330
    return-void

    .line 329
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public declared-synchronized h()Z
    .registers 3

    .prologue
    .line 346
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/I;->m:Z

    .line 347
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/I;->m:Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 348
    monitor-exit p0

    return v0

    .line 346
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/I;->c:Lcom/google/android/maps/driveabout/vector/J;

    .line 378
    if-eqz v0, :cond_a

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/J;->a(Lcom/google/android/maps/driveabout/vector/J;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
