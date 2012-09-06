.class public LY/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected a:Ljava/util/Vector;

.field protected b:Ljava/util/Vector;

.field protected c:Ljava/lang/Object;

.field protected final d:Lcom/google/googlenav/common/a;

.field protected e:LX/d;

.field protected f:[Ljava/lang/Thread;

.field protected g:Ljava/lang/String;

.field protected h:Z

.field private i:I

.field private j:I

.field private k:I

.field private final l:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(LX/d;)V
    .registers 4
    .parameter

    .prologue
    .line 56
    const-string v0, "TaskRunner"

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, LY/c;-><init>(LX/d;Ljava/lang/String;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(LX/d;Ljava/lang/String;I)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LY/c;->a:Ljava/util/Vector;

    .line 32
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LY/c;->b:Ljava/util/Vector;

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LY/c;->c:Ljava/lang/Object;

    .line 40
    const/16 v0, 0x7f

    iput v0, p0, LY/c;->i:I

    .line 41
    const/16 v0, 0xff

    iput v0, p0, LY/c;->j:I

    .line 42
    iput v1, p0, LY/c;->k:I

    .line 52
    iput-boolean v1, p0, LY/c;->h:Z

    .line 66
    iput-object p1, p0, LY/c;->e:LX/d;

    .line 67
    iput-object p2, p0, LY/c;->g:Ljava/lang/String;

    .line 68
    new-array v0, p3, [Ljava/lang/Thread;

    iput-object v0, p0, LY/c;->f:[Ljava/lang/Thread;

    .line 69
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    iput-object v0, p0, LY/c;->d:Lcom/google/googlenav/common/a;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, LY/c;->l:Ljava/util/Hashtable;

    .line 79
    return-void
.end method


# virtual methods
.method a()I
    .registers 2

    .prologue
    .line 88
    iget v0, p0, LY/c;->i:I

    return v0
.end method

.method a(LY/a;)V
    .registers 4
    .parameter

    .prologue
    .line 158
    iget-object v1, p0, LY/c;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 159
    :try_start_3
    invoke-virtual {p1}, LY/a;->f()I

    move-result v0

    packed-switch v0, :pswitch_data_18

    .line 171
    :goto_a
    :pswitch_a
    monitor-exit v1

    .line 172
    return-void

    .line 161
    :pswitch_c
    invoke-virtual {p1}, LY/a;->h()V

    goto :goto_a

    .line 171
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0

    .line 165
    :pswitch_13
    const/4 v0, 0x4

    :try_start_14
    invoke-virtual {p1, v0}, LY/a;->a(I)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_10

    goto :goto_a

    .line 159
    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_c
        :pswitch_a
        :pswitch_a
        :pswitch_13
    .end packed-switch
.end method

.method a(LY/b;)V
    .registers 9
    .parameter

    .prologue
    .line 182
    iget-object v4, p0, LY/c;->c:Ljava/lang/Object;

    monitor-enter v4

    .line 184
    :try_start_3
    invoke-virtual {p1}, LY/b;->j()I

    move-result v5

    .line 185
    const/4 v3, 0x0

    .line 186
    iget-object v0, p0, LY/c;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    .line 187
    :goto_e
    if-ge v3, v1, :cond_2d

    .line 188
    add-int v0, v3, v1

    div-int/lit8 v2, v0, 0x2

    .line 189
    iget-object v0, p0, LY/c;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LY/b;

    invoke-virtual {v0}, LY/b;->j()I

    move-result v0

    if-gt v5, v0, :cond_2a

    .line 190
    add-int/lit8 v0, v2, 0x1

    move v6, v1

    move v1, v0

    move v0, v6

    :goto_27
    move v3, v1

    move v1, v0

    .line 194
    goto :goto_e

    :cond_2a
    move v0, v2

    move v1, v3

    .line 192
    goto :goto_27

    .line 196
    :cond_2d
    iget-object v0, p0, LY/c;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 197
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, LY/b;->a(I)V

    .line 198
    iget-object v0, p0, LY/c;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 199
    monitor-exit v4

    .line 200
    return-void

    .line 199
    :catchall_3d
    move-exception v0

    monitor-exit v4
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method a(LY/d;)V
    .registers 12
    .parameter

    .prologue
    .line 210
    iget-object v4, p0, LY/c;->c:Ljava/lang/Object;

    monitor-enter v4

    .line 213
    :try_start_3
    invoke-virtual {p1}, LY/d;->k()J

    move-result-wide v5

    .line 214
    const/4 v3, 0x0

    .line 215
    iget-object v0, p0, LY/c;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    .line 216
    :goto_e
    if-ge v3, v1, :cond_2f

    .line 217
    add-int v0, v3, v1

    div-int/lit8 v2, v0, 0x2

    .line 218
    iget-object v0, p0, LY/c;->b:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LY/d;

    invoke-virtual {v0}, LY/d;->k()J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-ltz v0, :cond_2c

    .line 219
    add-int/lit8 v0, v2, 0x1

    move v9, v1

    move v1, v0

    move v0, v9

    :goto_29
    move v3, v1

    move v1, v0

    .line 223
    goto :goto_e

    :cond_2c
    move v0, v2

    move v1, v3

    .line 221
    goto :goto_29

    .line 225
    :cond_2f
    iget-object v0, p0, LY/c;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 226
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, LY/d;->a(I)V

    .line 227
    iget-object v0, p0, LY/c;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 228
    monitor-exit v4

    .line 229
    return-void

    .line 228
    :catchall_3f
    move-exception v0

    monitor-exit v4
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw v0
.end method

.method public b(LY/a;)I
    .registers 4
    .parameter

    .prologue
    .line 243
    iget-object v1, p0, LY/c;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 244
    :try_start_3
    invoke-virtual {p1}, LY/a;->d()I

    move-result v0

    monitor-exit v1

    return v0

    .line 245
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method protected b()Z
    .registers 5

    .prologue
    .line 296
    iget-boolean v0, p0, LY/c;->h:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, LY/c;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 298
    :try_start_c
    iget-object v0, p0, LY/c;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 299
    iget-object v0, p0, LY/c;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_19} :catch_3c

    .line 311
    :cond_19
    :goto_19
    iget-boolean v0, p0, LY/c;->h:Z

    return v0

    .line 301
    :cond_1c
    :try_start_1c
    iget-object v0, p0, LY/c;->b:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LY/d;

    .line 302
    invoke-virtual {v0}, LY/d;->k()J

    move-result-wide v0

    iget-object v2, p0, LY/c;->d:Lcom/google/googlenav/common/a;

    invoke-interface {v2}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 303
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_19

    .line 304
    iget-object v2, p0, LY/c;->c:Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_3b
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_3b} :catch_3c

    goto :goto_19

    .line 307
    :catch_3c
    move-exception v0

    .line 308
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_19
.end method

.method protected c()LY/b;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 319
    const/4 v1, 0x0

    .line 322
    :goto_2
    iget-object v0, p0, LY/c;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 323
    iget-object v0, p0, LY/c;->b:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LY/d;

    .line 324
    invoke-virtual {v0}, LY/d;->k()J

    move-result-wide v2

    iget-object v4, p0, LY/c;->d:Lcom/google/googlenav/common/a;

    invoke-interface {v4}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 325
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2c

    .line 326
    iget-object v2, p0, LY/c;->b:Ljava/util/Vector;

    invoke-virtual {v2, v6}, Ljava/util/Vector;->removeElementAt(I)V

    .line 327
    invoke-virtual {p0, v0}, LY/c;->a(LY/b;)V

    goto :goto_2

    .line 334
    :cond_2c
    iget-object v0, p0, LY/c;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_46

    .line 335
    iget-object v0, p0, LY/c;->a:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LY/b;

    .line 336
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, LY/b;->a(I)V

    .line 337
    iget-object v1, p0, LY/c;->a:Ljava/util/Vector;

    invoke-virtual {v1, v6}, Ljava/util/Vector;->removeElementAt(I)V

    .line 340
    :goto_45
    return-object v0

    :cond_46
    move-object v0, v1

    goto :goto_45
.end method

.method c(LY/a;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 254
    iget-object v2, p0, LY/c;->c:Ljava/lang/Object;

    monitor-enter v2

    .line 255
    :try_start_5
    invoke-virtual {p1}, LY/a;->f()I

    move-result v3

    packed-switch v3, :pswitch_data_3a

    .line 276
    monitor-exit v2

    move v0, v1

    :goto_e
    return v0

    .line 258
    :pswitch_f
    iget-object v1, p0, LY/c;->b:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 259
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, LY/a;->a(I)V

    .line 260
    iget-object v1, p0, LY/c;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 261
    monitor-exit v2

    goto :goto_e

    .line 278
    :catchall_1f
    move-exception v0

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_1f

    throw v0

    .line 265
    :pswitch_22
    :try_start_22
    iget-object v1, p0, LY/c;->a:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 266
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, LY/a;->a(I)V

    .line 267
    iget-object v1, p0, LY/c;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 268
    monitor-exit v2

    goto :goto_e

    .line 272
    :pswitch_32
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LY/a;->a(I)V

    .line 273
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_22 .. :try_end_37} :catchall_1f

    move v0, v1

    goto :goto_e

    .line 255
    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_f
        :pswitch_22
        :pswitch_32
        :pswitch_32
    .end packed-switch
.end method

.method public d()V
    .registers 7

    .prologue
    .line 390
    iget-object v1, p0, LY/c;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 391
    :try_start_3
    iget-boolean v0, p0, LY/c;->h:Z

    if-nez v0, :cond_3d

    .line 392
    const/4 v0, 0x1

    iput-boolean v0, p0, LY/c;->h:Z

    .line 393
    const/4 v0, 0x0

    :goto_b
    iget-object v2, p0, LY/c;->f:[Ljava/lang/Thread;

    array-length v2, v2

    if-ge v0, v2, :cond_3d

    .line 394
    iget-object v2, p0, LY/c;->f:[Ljava/lang/Thread;

    iget-object v3, p0, LY/c;->e:LX/d;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, LY/c;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, p0}, LX/d;->a(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v3

    aput-object v3, v2, v0

    .line 395
    iget-object v2, p0, LY/c;->f:[Ljava/lang/Thread;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 393
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 398
    :cond_3d
    monitor-exit v1

    .line 399
    return-void

    .line 398
    :catchall_3f
    move-exception v0

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw v0
.end method

.method public e()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 409
    iget-object v1, p0, LY/c;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 410
    :try_start_4
    iget-boolean v2, p0, LY/c;->h:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1e

    .line 411
    const/4 v2, 0x0

    iput-boolean v2, p0, LY/c;->h:Z

    .line 412
    :goto_c
    iget-object v2, p0, LY/c;->f:[Ljava/lang/Thread;

    array-length v2, v2

    if-ge v0, v2, :cond_19

    .line 413
    iget-object v2, p0, LY/c;->f:[Ljava/lang/Thread;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 412
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 415
    :cond_19
    iget-object v0, p0, LY/c;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 417
    :cond_1e
    monitor-exit v1

    .line 418
    return-void

    .line 417
    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public run()V
    .registers 5

    .prologue
    .line 348
    const/4 v0, 0x0

    .line 353
    :cond_1
    :goto_1
    iget-object v1, p0, LY/c;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 356
    if-eqz v0, :cond_14

    .line 357
    :try_start_6
    invoke-virtual {v0}, LY/b;->f()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1c

    .line 358
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, LY/b;->a(I)V

    .line 359
    invoke-virtual {v0}, LY/b;->h()V

    .line 366
    :cond_14
    :goto_14
    invoke-virtual {p0}, LY/c;->b()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 367
    monitor-exit v1

    .line 381
    return-void

    .line 360
    :cond_1c
    invoke-virtual {v0}, LY/b;->f()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_14

    .line 361
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, LY/b;->a(I)V

    goto :goto_14

    .line 371
    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_28

    throw v0

    .line 370
    :cond_2b
    :try_start_2b
    invoke-virtual {p0}, LY/c;->c()LY/b;

    move-result-object v0

    .line 371
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_28

    .line 373
    if-eqz v0, :cond_1

    .line 375
    :try_start_32
    invoke-virtual {v0}, LY/b;->i()V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_1

    .line 376
    :catch_36
    move-exception v1

    .line 377
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 479
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
