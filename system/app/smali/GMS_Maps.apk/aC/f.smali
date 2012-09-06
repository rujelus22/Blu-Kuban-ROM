.class public Lac/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Ljava/lang/Object;

.field private f:Lac/h;

.field private g:Lcom/google/googlenav/common/a;


# direct methods
.method public constructor <init>(Lac/h;Lcom/google/googlenav/common/a;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lac/f;->a:I

    .line 141
    iput-object v1, p0, Lac/f;->b:Ljava/lang/String;

    .line 148
    iput-object v1, p0, Lac/f;->c:Ljava/lang/String;

    .line 182
    iput-object p1, p0, Lac/f;->f:Lac/h;

    .line 183
    iput-object p2, p0, Lac/f;->g:Lcom/google/googlenav/common/a;

    .line 184
    return-void
.end method

.method private a(Ljava/lang/String;III)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "|d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|fb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|lb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 353
    const-string v1, "u"

    invoke-direct {p0, v1, p1, v0}, Lac/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method private a(Ljava/lang/String;J)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "|d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 363
    const-string v1, "o"

    invoke-direct {p0, v1, p1, v0}, Lac/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "|r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 358
    const-string v1, "ns"

    invoke-direct {p0, v1, p1, v0}, Lac/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "|s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "|"

    :goto_17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 374
    const/16 v1, 0x40

    invoke-static {v1, p1, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 375
    return-void

    .line 371
    :cond_29
    const-string v0, ""

    goto :goto_17
.end method

.method private b(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 346
    const-string v0, "s"

    const-string v1, ""

    invoke-direct {p0, v0, p1, v1}, Lac/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 367
    const-string v0, "f"

    const-string v1, ""

    invoke-direct {p0, v0, p1, v1}, Lac/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method private c()Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 232
    iget-object v1, p0, Lac/f;->f:Lac/h;

    invoke-virtual {v1}, Lac/h;->l()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 244
    :cond_9
    :goto_9
    return v0

    .line 236
    :cond_a
    iget-object v1, p0, Lac/f;->g:Lcom/google/googlenav/common/a;

    invoke-interface {v1}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v1

    .line 237
    iget-object v3, p0, Lac/f;->f:Lac/h;

    invoke-virtual {v3}, Lac/h;->p()J

    move-result-wide v3

    iget-object v5, p0, Lac/f;->f:Lac/h;

    invoke-virtual {v5}, Lac/h;->o()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 239
    const-wide/high16 v5, -0x8000

    cmp-long v5, v3, v5

    if-eqz v5, :cond_2d

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1388

    cmp-long v1, v1, v3

    if-ltz v1, :cond_9

    .line 244
    :cond_2d
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private d()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 252
    monitor-enter p0

    .line 254
    :try_start_2
    iget-object v0, p0, Lac/f;->b:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 255
    monitor-exit p0

    .line 295
    :goto_7
    return-void

    .line 258
    :cond_8
    invoke-direct {p0}, Lac/f;->c()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 259
    iget-object v0, p0, Lac/f;->b:Ljava/lang/String;

    const-string v1, "a"

    invoke-direct {p0, v0, v1}, Lac/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lac/f;->b:Ljava/lang/String;

    .line 261
    monitor-exit p0

    goto :goto_7

    .line 291
    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_2 .. :try_end_1c} :catchall_1a

    throw v0

    .line 264
    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lac/f;->g:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    .line 266
    iget v2, p0, Lac/f;->a:I

    packed-switch v2, :pswitch_data_5c

    .line 288
    :goto_28
    iget-object v0, p0, Lac/f;->b:Ljava/lang/String;

    iput-object v0, p0, Lac/f;->c:Ljava/lang/String;

    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Lac/f;->b:Ljava/lang/String;

    .line 290
    const/4 v0, 0x1

    iput v0, p0, Lac/f;->a:I

    .line 291
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_1d .. :try_end_33} :catchall_1a

    .line 293
    iget-object v0, p0, Lac/f;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lac/f;->b(Ljava/lang/String;)V

    .line 294
    invoke-static {}, LaT/k;->a()LaT/k;

    move-result-object v0

    invoke-virtual {v0, v5}, LaT/k;->a(Z)V

    goto :goto_7

    .line 269
    :pswitch_40
    :try_start_40
    iget-object v0, p0, Lac/f;->b:Ljava/lang/String;

    const-string v1, "d"

    invoke-direct {p0, v0, v1}, Lac/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lac/f;->b:Ljava/lang/String;

    .line 271
    monitor-exit p0

    goto :goto_7

    .line 275
    :pswitch_4c
    iget-object v2, p0, Lac/f;->c:Ljava/lang/String;

    iget-wide v3, p0, Lac/f;->d:J

    sub-long/2addr v0, v3

    invoke-direct {p0, v2, v0, v1}, Lac/f;->a(Ljava/lang/String;J)V

    goto :goto_28

    .line 281
    :pswitch_55
    iget-object v0, p0, Lac/f;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lac/f;->c(Ljava/lang/String;)V
    :try_end_5a
    .catchall {:try_start_40 .. :try_end_5a} :catchall_1a

    goto :goto_28

    .line 266
    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_40
        :pswitch_4c
        :pswitch_55
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 222
    invoke-direct {p0}, Lac/f;->d()V

    .line 223
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 303
    monitor-enter p0

    .line 304
    :try_start_2
    iget v0, p0, Lac/f;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 306
    const/4 v0, 0x2

    iput v0, p0, Lac/f;->a:I

    .line 307
    iget-object v0, p0, Lac/f;->g:Lcom/google/googlenav/common/a;

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lac/f;->d:J

    .line 313
    :cond_12
    :goto_12
    monitor-exit p0

    .line 314
    return-void

    .line 308
    :cond_14
    iget v0, p0, Lac/f;->a:I

    if-ne v0, v2, :cond_12

    .line 310
    const/4 v0, 0x3

    iput v0, p0, Lac/f;->a:I

    .line 311
    iput-object p1, p0, Lac/f;->e:Ljava/lang/Object;

    goto :goto_12

    .line 313
    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_2 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public a(Ljava/lang/Object;JII)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 331
    monitor-enter p0

    .line 332
    :try_start_1
    iget v0, p0, Lac/f;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lac/f;->e:Ljava/lang/Object;

    if-eq v0, p1, :cond_c

    .line 333
    :cond_a
    monitor-exit p0

    .line 343
    :goto_b
    return-void

    .line 335
    :cond_c
    const/4 v0, 0x0

    iput v0, p0, Lac/f;->a:I

    .line 336
    iget-object v0, p0, Lac/f;->c:Ljava/lang/String;

    .line 337
    iget-wide v1, p0, Lac/f;->d:J

    .line 338
    const/4 v3, 0x0

    iput-object v3, p0, Lac/f;->e:Ljava/lang/Object;

    .line 339
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1e

    .line 341
    sub-long v1, p2, v1

    long-to-int v1, v1

    .line 342
    invoke-direct {p0, v0, v1, p4, p5}, Lac/f;->a(Ljava/lang/String;III)V

    goto :goto_b

    .line 339
    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 192
    invoke-virtual {p0}, Lac/f;->b()Z

    move-result v0

    if-nez v0, :cond_7

    .line 213
    :cond_6
    :goto_6
    return-void

    .line 197
    :cond_7
    const-string v0, "WiFi"

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 201
    monitor-enter p0

    .line 202
    :try_start_18
    iget-object v0, p0, Lac/f;->b:Ljava/lang/String;

    if-eqz v0, :cond_26

    .line 203
    const-string v0, "d"

    invoke-direct {p0, p1, v0}, Lac/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    monitor-exit p0

    goto :goto_6

    .line 208
    :catchall_23
    move-exception v0

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_23

    throw v0

    .line 207
    :cond_26
    :try_start_26
    iput-object p1, p0, Lac/f;->b:Ljava/lang/String;

    .line 208
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_23

    .line 210
    iget-object v0, p0, Lac/f;->f:Lac/h;

    invoke-virtual {v0}, Lac/h;->f()Z

    move-result v0

    if-nez v0, :cond_6

    .line 211
    invoke-direct {p0}, Lac/f;->d()V

    goto :goto_6
.end method

.method protected b()Z
    .registers 2

    .prologue
    .line 387
    const/4 v0, 0x1

    return v0
.end method
