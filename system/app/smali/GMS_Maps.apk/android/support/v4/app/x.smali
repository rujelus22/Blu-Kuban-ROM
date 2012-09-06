.class final Landroid/support/v4/app/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/b;


# instance fields
.field final a:I

.field final b:Landroid/os/Bundle;

.field c:Landroid/support/v4/app/v;

.field d:La/a;

.field e:Z

.field f:Z

.field g:Ljava/lang/Object;

.field h:Z

.field i:Z

.field j:Z

.field k:Z

.field l:Z

.field m:Z

.field n:Landroid/support/v4/app/x;

.field final synthetic o:Landroid/support/v4/app/w;


# virtual methods
.method a()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 233
    iget-boolean v0, p0, Landroid/support/v4/app/x;->i:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Landroid/support/v4/app/x;->j:Z

    if-eqz v0, :cond_c

    .line 237
    iput-boolean v3, p0, Landroid/support/v4/app/x;->h:Z

    .line 265
    :cond_b
    :goto_b
    return-void

    .line 241
    :cond_c
    iget-boolean v0, p0, Landroid/support/v4/app/x;->h:Z

    if-nez v0, :cond_b

    .line 246
    iput-boolean v3, p0, Landroid/support/v4/app/x;->h:Z

    .line 248
    sget-boolean v0, Landroid/support/v4/app/w;->a:Z

    if-eqz v0, :cond_2e

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Starting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_2e
    iget-object v0, p0, Landroid/support/v4/app/x;->d:La/a;

    if-nez v0, :cond_42

    iget-object v0, p0, Landroid/support/v4/app/x;->c:Landroid/support/v4/app/v;

    if-eqz v0, :cond_42

    .line 250
    iget-object v0, p0, Landroid/support/v4/app/x;->c:Landroid/support/v4/app/v;

    iget v1, p0, Landroid/support/v4/app/x;->a:I

    iget-object v2, p0, Landroid/support/v4/app/x;->b:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Landroid/support/v4/app/v;->a(ILandroid/os/Bundle;)La/a;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/x;->d:La/a;

    .line 252
    :cond_42
    iget-object v0, p0, Landroid/support/v4/app/x;->d:La/a;

    if-eqz v0, :cond_b

    .line 253
    iget-object v0, p0, Landroid/support/v4/app/x;->d:La/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_7d

    iget-object v0, p0, Landroid/support/v4/app/x;->d:La/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_7d

    .line 255
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object returned from onCreateLoader must not be a non-static inner member class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/app/x;->d:La/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_7d
    iget-boolean v0, p0, Landroid/support/v4/app/x;->m:Z

    if-nez v0, :cond_8a

    .line 260
    iget-object v0, p0, Landroid/support/v4/app/x;->d:La/a;

    iget v1, p0, Landroid/support/v4/app/x;->a:I

    invoke-virtual {v0, v1, p0}, La/a;->a(ILa/b;)V

    .line 261
    iput-boolean v3, p0, Landroid/support/v4/app/x;->m:Z

    .line 263
    :cond_8a
    iget-object v0, p0, Landroid/support/v4/app/x;->d:La/a;

    invoke-virtual {v0}, La/a;->a()V

    goto/16 :goto_b
.end method

.method a(La/a;Ljava/lang/Object;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 416
    iget-object v0, p0, Landroid/support/v4/app/x;->c:Landroid/support/v4/app/v;

    if-eqz v0, :cond_5e

    .line 417
    const/4 v0, 0x0

    .line 418
    iget-object v1, p0, Landroid/support/v4/app/x;->o:Landroid/support/v4/app/w;

    iget-object v1, v1, Landroid/support/v4/app/w;->d:Landroid/support/v4/app/FragmentActivity;

    if-eqz v1, :cond_6f

    .line 419
    iget-object v0, p0, Landroid/support/v4/app/x;->o:Landroid/support/v4/app/w;

    iget-object v0, v0, Landroid/support/v4/app/w;->d:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->s:Ljava/lang/String;

    .line 420
    iget-object v1, p0, Landroid/support/v4/app/x;->o:Landroid/support/v4/app/w;

    iget-object v1, v1, Landroid/support/v4/app/w;->d:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/m;

    const-string v2, "onLoadFinished"

    iput-object v2, v1, Landroid/support/v4/app/m;->s:Ljava/lang/String;

    move-object v1, v0

    .line 423
    :goto_1e
    :try_start_1e
    sget-boolean v0, Landroid/support/v4/app/w;->a:Z

    if-eqz v0, :cond_48

    const-string v0, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  onLoadFinished in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, p2}, La/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_48
    iget-object v0, p0, Landroid/support/v4/app/x;->c:Landroid/support/v4/app/v;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/app/v;->a(La/a;Ljava/lang/Object;)V
    :try_end_4d
    .catchall {:try_start_1e .. :try_end_4d} :catchall_5f

    .line 427
    iget-object v0, p0, Landroid/support/v4/app/x;->o:Landroid/support/v4/app/w;

    iget-object v0, v0, Landroid/support/v4/app/w;->d:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_5b

    .line 428
    iget-object v0, p0, Landroid/support/v4/app/x;->o:Landroid/support/v4/app/w;

    iget-object v0, v0, Landroid/support/v4/app/w;->d:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/m;

    iput-object v1, v0, Landroid/support/v4/app/m;->s:Ljava/lang/String;

    .line 431
    :cond_5b
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/x;->f:Z

    .line 433
    :cond_5e
    return-void

    .line 427
    :catchall_5f
    move-exception v0

    iget-object v2, p0, Landroid/support/v4/app/x;->o:Landroid/support/v4/app/w;

    iget-object v2, v2, Landroid/support/v4/app/w;->d:Landroid/support/v4/app/FragmentActivity;

    if-eqz v2, :cond_6e

    .line 428
    iget-object v2, p0, Landroid/support/v4/app/x;->o:Landroid/support/v4/app/w;

    iget-object v2, v2, Landroid/support/v4/app/w;->d:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/m;

    iput-object v1, v2, Landroid/support/v4/app/m;->s:Ljava/lang/String;

    :cond_6e
    throw v0

    :cond_6f
    move-object v1, v0

    goto :goto_1e
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 449
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/x;->a:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 450
    const-string v0, " mArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/x;->b:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 451
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCallbacks="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/x;->c:Landroid/support/v4/app/v;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 452
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoader="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/x;->d:La/a;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 453
    iget-object v0, p0, Landroid/support/v4/app/x;->d:La/a;

    if-eqz v0, :cond_4d

    .line 454
    iget-object v0, p0, Landroid/support/v4/app/x;->d:La/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, La/a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 456
    :cond_4d
    iget-boolean v0, p0, Landroid/support/v4/app/x;->e:Z

    if-nez v0, :cond_55

    iget-boolean v0, p0, Landroid/support/v4/app/x;->f:Z

    if-eqz v0, :cond_79

    .line 457
    :cond_55
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHaveData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/x;->e:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 458
    const-string v0, "  mDeliveredData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/x;->f:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 459
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/x;->g:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 461
    :cond_79
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/x;->h:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 462
    const-string v0, " mReportNextStart="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/x;->k:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 463
    const-string v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/x;->l:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 464
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/x;->i:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 465
    const-string v0, " mRetainingStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/x;->j:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 466
    const-string v0, " mListenerRegistered="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/x;->m:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 467
    iget-object v0, p0, Landroid/support/v4/app/x;->n:Landroid/support/v4/app/x;

    if-eqz v0, :cond_e9

    .line 468
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Loader "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Landroid/support/v4/app/x;->n:Landroid/support/v4/app/x;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Landroid/support/v4/app/x;->n:Landroid/support/v4/app/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/x;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 472
    :cond_e9
    return-void
.end method

.method b()V
    .registers 4

    .prologue
    .line 268
    sget-boolean v0, Landroid/support/v4/app/w;->a:Z

    if-eqz v0, :cond_1c

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Retaining: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_1c
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/x;->i:Z

    .line 270
    iget-boolean v0, p0, Landroid/support/v4/app/x;->h:Z

    iput-boolean v0, p0, Landroid/support/v4/app/x;->j:Z

    .line 271
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/x;->h:Z

    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/x;->c:Landroid/support/v4/app/v;

    .line 273
    return-void
.end method

.method c()V
    .registers 4

    .prologue
    .line 276
    iget-boolean v0, p0, Landroid/support/v4/app/x;->i:Z

    if-eqz v0, :cond_30

    .line 277
    sget-boolean v0, Landroid/support/v4/app/w;->a:Z

    if-eqz v0, :cond_20

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Finished Retaining: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_20
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/x;->i:Z

    .line 279
    iget-boolean v0, p0, Landroid/support/v4/app/x;->h:Z

    iget-boolean v1, p0, Landroid/support/v4/app/x;->j:Z

    if-eq v0, v1, :cond_30

    .line 280
    iget-boolean v0, p0, Landroid/support/v4/app/x;->h:Z

    if-nez v0, :cond_30

    .line 284
    invoke-virtual {p0}, Landroid/support/v4/app/x;->e()V

    .line 289
    :cond_30
    iget-boolean v0, p0, Landroid/support/v4/app/x;->h:Z

    if-eqz v0, :cond_43

    iget-boolean v0, p0, Landroid/support/v4/app/x;->e:Z

    if-eqz v0, :cond_43

    iget-boolean v0, p0, Landroid/support/v4/app/x;->k:Z

    if-nez v0, :cond_43

    .line 296
    iget-object v0, p0, Landroid/support/v4/app/x;->d:La/a;

    iget-object v1, p0, Landroid/support/v4/app/x;->g:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/x;->a(La/a;Ljava/lang/Object;)V

    .line 298
    :cond_43
    return-void
.end method

.method d()V
    .registers 3

    .prologue
    .line 301
    iget-boolean v0, p0, Landroid/support/v4/app/x;->h:Z

    if-eqz v0, :cond_16

    .line 302
    iget-boolean v0, p0, Landroid/support/v4/app/x;->k:Z

    if-eqz v0, :cond_16

    .line 303
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/x;->k:Z

    .line 304
    iget-boolean v0, p0, Landroid/support/v4/app/x;->e:Z

    if-eqz v0, :cond_16

    .line 305
    iget-object v0, p0, Landroid/support/v4/app/x;->d:La/a;

    iget-object v1, p0, Landroid/support/v4/app/x;->g:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/x;->a(La/a;Ljava/lang/Object;)V

    .line 309
    :cond_16
    return-void
.end method

.method e()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 312
    sget-boolean v0, Landroid/support/v4/app/w;->a:Z

    if-eqz v0, :cond_1d

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Stopping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_1d
    iput-boolean v3, p0, Landroid/support/v4/app/x;->h:Z

    .line 314
    iget-boolean v0, p0, Landroid/support/v4/app/x;->i:Z

    if-nez v0, :cond_37

    .line 315
    iget-object v0, p0, Landroid/support/v4/app/x;->d:La/a;

    if-eqz v0, :cond_37

    iget-boolean v0, p0, Landroid/support/v4/app/x;->m:Z

    if-eqz v0, :cond_37

    .line 317
    iput-boolean v3, p0, Landroid/support/v4/app/x;->m:Z

    .line 318
    iget-object v0, p0, Landroid/support/v4/app/x;->d:La/a;

    invoke-virtual {v0, p0}, La/a;->a(La/b;)V

    .line 319
    iget-object v0, p0, Landroid/support/v4/app/x;->d:La/a;

    invoke-virtual {v0}, La/a;->c()V

    .line 322
    :cond_37
    return-void
.end method

.method f()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 325
    sget-boolean v0, Landroid/support/v4/app/w;->a:Z

    if-eqz v0, :cond_1e

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Destroying: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_1e
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/x;->l:Z

    .line 327
    iget-boolean v0, p0, Landroid/support/v4/app/x;->f:Z

    .line 328
    iput-boolean v4, p0, Landroid/support/v4/app/x;->f:Z

    .line 329
    iget-object v1, p0, Landroid/support/v4/app/x;->c:Landroid/support/v4/app/v;

    if-eqz v1, :cond_7d

    iget-object v1, p0, Landroid/support/v4/app/x;->d:La/a;

    if-eqz v1, :cond_7d

    iget-boolean v1, p0, Landroid/support/v4/app/x;->e:Z

    if-eqz v1, :cond_7d

    if-eqz v0, :cond_7d

    .line 330
    sget-boolean v0, Landroid/support/v4/app/w;->a:Z

    if-eqz v0, :cond_4f

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Reseting: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_4f
    iget-object v0, p0, Landroid/support/v4/app/x;->o:Landroid/support/v4/app/w;

    iget-object v0, v0, Landroid/support/v4/app/w;->d:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_b1

    .line 333
    iget-object v0, p0, Landroid/support/v4/app/x;->o:Landroid/support/v4/app/w;

    iget-object v0, v0, Landroid/support/v4/app/w;->d:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->s:Ljava/lang/String;

    .line 334
    iget-object v1, p0, Landroid/support/v4/app/x;->o:Landroid/support/v4/app/w;

    iget-object v1, v1, Landroid/support/v4/app/w;->d:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/m;

    const-string v3, "onLoaderReset"

    iput-object v3, v1, Landroid/support/v4/app/m;->s:Ljava/lang/String;

    move-object v1, v0

    .line 337
    :goto_68
    :try_start_68
    iget-object v0, p0, Landroid/support/v4/app/x;->c:Landroid/support/v4/app/v;

    iget-object v3, p0, Landroid/support/v4/app/x;->d:La/a;

    invoke-interface {v0, v3}, Landroid/support/v4/app/v;->a(La/a;)V
    :try_end_6f
    .catchall {:try_start_68 .. :try_end_6f} :catchall_a1

    .line 339
    iget-object v0, p0, Landroid/support/v4/app/x;->o:Landroid/support/v4/app/w;

    iget-object v0, v0, Landroid/support/v4/app/w;->d:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_7d

    .line 340
    iget-object v0, p0, Landroid/support/v4/app/x;->o:Landroid/support/v4/app/w;

    iget-object v0, v0, Landroid/support/v4/app/w;->d:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/m;

    iput-object v1, v0, Landroid/support/v4/app/m;->s:Ljava/lang/String;

    .line 344
    :cond_7d
    iput-object v2, p0, Landroid/support/v4/app/x;->c:Landroid/support/v4/app/v;

    .line 345
    iput-object v2, p0, Landroid/support/v4/app/x;->g:Ljava/lang/Object;

    .line 346
    iput-boolean v4, p0, Landroid/support/v4/app/x;->e:Z

    .line 347
    iget-object v0, p0, Landroid/support/v4/app/x;->d:La/a;

    if-eqz v0, :cond_97

    .line 348
    iget-boolean v0, p0, Landroid/support/v4/app/x;->m:Z

    if-eqz v0, :cond_92

    .line 349
    iput-boolean v4, p0, Landroid/support/v4/app/x;->m:Z

    .line 350
    iget-object v0, p0, Landroid/support/v4/app/x;->d:La/a;

    invoke-virtual {v0, p0}, La/a;->a(La/b;)V

    .line 352
    :cond_92
    iget-object v0, p0, Landroid/support/v4/app/x;->d:La/a;

    invoke-virtual {v0}, La/a;->e()V

    .line 354
    :cond_97
    iget-object v0, p0, Landroid/support/v4/app/x;->n:Landroid/support/v4/app/x;

    if-eqz v0, :cond_a0

    .line 355
    iget-object v0, p0, Landroid/support/v4/app/x;->n:Landroid/support/v4/app/x;

    invoke-virtual {v0}, Landroid/support/v4/app/x;->f()V

    .line 357
    :cond_a0
    return-void

    .line 339
    :catchall_a1
    move-exception v0

    iget-object v2, p0, Landroid/support/v4/app/x;->o:Landroid/support/v4/app/w;

    iget-object v2, v2, Landroid/support/v4/app/w;->d:Landroid/support/v4/app/FragmentActivity;

    if-eqz v2, :cond_b0

    .line 340
    iget-object v2, p0, Landroid/support/v4/app/x;->o:Landroid/support/v4/app/w;

    iget-object v2, v2, Landroid/support/v4/app/w;->d:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/m;

    iput-object v1, v2, Landroid/support/v4/app/m;->s:Ljava/lang/String;

    :cond_b0
    throw v0

    :cond_b1
    move-object v1, v2

    goto :goto_68
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 438
    const-string v1, "LoaderInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    iget v1, p0, Landroid/support/v4/app/x;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 442
    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    iget-object v1, p0, Landroid/support/v4/app/x;->d:La/a;

    invoke-static {v1, v0}, Lc/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 444
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
