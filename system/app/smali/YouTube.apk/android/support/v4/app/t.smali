.class final Landroid/support/v4/app/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/content/b;


# instance fields
.field final a:I

.field final b:Landroid/os/Bundle;

.field c:Landroid/support/v4/app/r;

.field d:Landroid/support/v4/content/a;

.field e:Z

.field f:Z

.field g:Ljava/lang/Object;

.field h:Z

.field i:Z

.field j:Z

.field k:Z

.field l:Z

.field m:Z

.field n:Landroid/support/v4/app/t;

.field final synthetic o:Landroid/support/v4/app/s;


# virtual methods
.method final a()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 312
    sget-boolean v0, Landroid/support/v4/app/s;->a:Z

    if-eqz v0, :cond_19

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  Stopping: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_19
    iput-boolean v3, p0, Landroid/support/v4/app/t;->h:Z

    .line 314
    iget-boolean v0, p0, Landroid/support/v4/app/t;->i:Z

    if-nez v0, :cond_33

    .line 315
    iget-object v0, p0, Landroid/support/v4/app/t;->d:Landroid/support/v4/content/a;

    if-eqz v0, :cond_33

    iget-boolean v0, p0, Landroid/support/v4/app/t;->m:Z

    if-eqz v0, :cond_33

    .line 317
    iput-boolean v3, p0, Landroid/support/v4/app/t;->m:Z

    .line 318
    iget-object v0, p0, Landroid/support/v4/app/t;->d:Landroid/support/v4/content/a;

    invoke-virtual {v0, p0}, Landroid/support/v4/content/a;->a(Landroid/support/v4/content/b;)V

    .line 319
    iget-object v0, p0, Landroid/support/v4/app/t;->d:Landroid/support/v4/content/a;

    invoke-virtual {v0}, Landroid/support/v4/content/a;->b()V

    .line 322
    :cond_33
    return-void
.end method

.method final a(Landroid/support/v4/content/a;Ljava/lang/Object;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 416
    iget-object v0, p0, Landroid/support/v4/app/t;->c:Landroid/support/v4/app/r;

    if-eqz v0, :cond_66

    .line 417
    const/4 v0, 0x0

    .line 418
    iget-object v1, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/s;

    iget-object v1, v1, Landroid/support/v4/app/s;->d:Landroid/support/v4/app/FragmentActivity;

    if-eqz v1, :cond_77

    .line 419
    iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/s;

    iget-object v0, v0, Landroid/support/v4/app/s;->d:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/j;

    iget-object v0, v0, Landroid/support/v4/app/j;->s:Ljava/lang/String;

    .line 420
    iget-object v1, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/s;

    iget-object v1, v1, Landroid/support/v4/app/s;->d:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/j;

    const-string v2, "onLoadFinished"

    iput-object v2, v1, Landroid/support/v4/app/j;->s:Ljava/lang/String;

    move-object v1, v0

    .line 423
    :goto_1e
    :try_start_1e
    sget-boolean v0, Landroid/support/v4/app/s;->a:Z

    if-eqz v0, :cond_53

    const-string v0, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  onLoadFinished in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x40

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p2, v3}, Landroid/support/v4/b/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_53
    iget-object v0, p0, Landroid/support/v4/app/t;->c:Landroid/support/v4/app/r;
    :try_end_55
    .catchall {:try_start_1e .. :try_end_55} :catchall_67

    .line 427
    iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/s;

    iget-object v0, v0, Landroid/support/v4/app/s;->d:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_63

    .line 428
    iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/s;

    iget-object v0, v0, Landroid/support/v4/app/s;->d:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/j;

    iput-object v1, v0, Landroid/support/v4/app/j;->s:Ljava/lang/String;

    .line 431
    :cond_63
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/t;->f:Z

    .line 433
    :cond_66
    return-void

    .line 427
    :catchall_67
    move-exception v0

    iget-object v2, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/s;

    iget-object v2, v2, Landroid/support/v4/app/s;->d:Landroid/support/v4/app/FragmentActivity;

    if-eqz v2, :cond_76

    .line 428
    iget-object v2, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/s;

    iget-object v2, v2, Landroid/support/v4/app/s;->d:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/j;

    iput-object v1, v2, Landroid/support/v4/app/j;->s:Ljava/lang/String;

    :cond_76
    throw v0

    :cond_77
    move-object v1, v0

    goto :goto_1e
.end method

.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 449
    :goto_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/t;->a:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 450
    const-string v0, " mArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/t;->b:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 451
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCallbacks="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/t;->c:Landroid/support/v4/app/r;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 452
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoader="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/t;->d:Landroid/support/v4/content/a;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 453
    iget-object v0, p0, Landroid/support/v4/app/t;->d:Landroid/support/v4/content/a;

    if-eqz v0, :cond_4d

    .line 454
    iget-object v0, p0, Landroid/support/v4/app/t;->d:Landroid/support/v4/content/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/support/v4/content/a;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 456
    :cond_4d
    iget-boolean v0, p0, Landroid/support/v4/app/t;->e:Z

    if-nez v0, :cond_55

    iget-boolean v0, p0, Landroid/support/v4/app/t;->f:Z

    if-eqz v0, :cond_79

    .line 457
    :cond_55
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHaveData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/t;->e:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 458
    const-string v0, "  mDeliveredData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/t;->f:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 459
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/t;->g:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 461
    :cond_79
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/t;->h:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 462
    const-string v0, " mReportNextStart="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/t;->k:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 463
    const-string v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/t;->l:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 464
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/t;->i:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 465
    const-string v0, " mRetainingStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/t;->j:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 466
    const-string v0, " mListenerRegistered="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/t;->m:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 467
    iget-object v0, p0, Landroid/support/v4/app/t;->n:Landroid/support/v4/app/t;

    if-eqz v0, :cond_e8

    .line 468
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Loader "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Landroid/support/v4/app/t;->n:Landroid/support/v4/app/t;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 470
    iget-object p0, p0, Landroid/support/v4/app/t;->n:Landroid/support/v4/app/t;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 472
    :cond_e8
    return-void
.end method

.method final b()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 325
    :goto_2
    sget-boolean v0, Landroid/support/v4/app/s;->a:Z

    if-eqz v0, :cond_1a

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "  Destroying: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_1a
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/t;->l:Z

    .line 327
    iget-boolean v0, p0, Landroid/support/v4/app/t;->f:Z

    .line 328
    iput-boolean v4, p0, Landroid/support/v4/app/t;->f:Z

    .line 329
    iget-object v1, p0, Landroid/support/v4/app/t;->c:Landroid/support/v4/app/r;

    if-eqz v1, :cond_72

    iget-object v1, p0, Landroid/support/v4/app/t;->d:Landroid/support/v4/content/a;

    if-eqz v1, :cond_72

    iget-boolean v1, p0, Landroid/support/v4/app/t;->e:Z

    if-eqz v1, :cond_72

    if-eqz v0, :cond_72

    .line 330
    sget-boolean v0, Landroid/support/v4/app/s;->a:Z

    if-eqz v0, :cond_47

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "  Reseting: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_47
    iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/s;

    iget-object v0, v0, Landroid/support/v4/app/s;->d:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_a5

    .line 333
    iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/s;

    iget-object v0, v0, Landroid/support/v4/app/s;->d:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/j;

    iget-object v0, v0, Landroid/support/v4/app/j;->s:Ljava/lang/String;

    .line 334
    iget-object v1, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/s;

    iget-object v1, v1, Landroid/support/v4/app/s;->d:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/j;

    const-string v3, "onLoaderReset"

    iput-object v3, v1, Landroid/support/v4/app/j;->s:Ljava/lang/String;

    move-object v1, v0

    .line 337
    :goto_60
    :try_start_60
    iget-object v0, p0, Landroid/support/v4/app/t;->c:Landroid/support/v4/app/r;

    iget-object v0, p0, Landroid/support/v4/app/t;->d:Landroid/support/v4/content/a;
    :try_end_64
    .catchall {:try_start_60 .. :try_end_64} :catchall_94

    .line 339
    iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/s;

    iget-object v0, v0, Landroid/support/v4/app/s;->d:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_72

    .line 340
    iget-object v0, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/s;

    iget-object v0, v0, Landroid/support/v4/app/s;->d:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/j;

    iput-object v1, v0, Landroid/support/v4/app/j;->s:Ljava/lang/String;

    .line 344
    :cond_72
    iput-object v2, p0, Landroid/support/v4/app/t;->c:Landroid/support/v4/app/r;

    .line 345
    iput-object v2, p0, Landroid/support/v4/app/t;->g:Ljava/lang/Object;

    .line 346
    iput-boolean v4, p0, Landroid/support/v4/app/t;->e:Z

    .line 347
    iget-object v0, p0, Landroid/support/v4/app/t;->d:Landroid/support/v4/content/a;

    if-eqz v0, :cond_8c

    .line 348
    iget-boolean v0, p0, Landroid/support/v4/app/t;->m:Z

    if-eqz v0, :cond_87

    .line 349
    iput-boolean v4, p0, Landroid/support/v4/app/t;->m:Z

    .line 350
    iget-object v0, p0, Landroid/support/v4/app/t;->d:Landroid/support/v4/content/a;

    invoke-virtual {v0, p0}, Landroid/support/v4/content/a;->a(Landroid/support/v4/content/b;)V

    .line 352
    :cond_87
    iget-object v0, p0, Landroid/support/v4/app/t;->d:Landroid/support/v4/content/a;

    invoke-virtual {v0}, Landroid/support/v4/content/a;->c()V

    .line 354
    :cond_8c
    iget-object v0, p0, Landroid/support/v4/app/t;->n:Landroid/support/v4/app/t;

    if-eqz v0, :cond_a4

    .line 355
    iget-object p0, p0, Landroid/support/v4/app/t;->n:Landroid/support/v4/app/t;

    goto/16 :goto_2

    .line 339
    :catchall_94
    move-exception v0

    iget-object v2, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/s;

    iget-object v2, v2, Landroid/support/v4/app/s;->d:Landroid/support/v4/app/FragmentActivity;

    if-eqz v2, :cond_a3

    .line 340
    iget-object v2, p0, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/s;

    iget-object v2, v2, Landroid/support/v4/app/s;->d:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/j;

    iput-object v1, v2, Landroid/support/v4/app/j;->s:Ljava/lang/String;

    :cond_a3
    throw v0

    .line 357
    :cond_a4
    return-void

    :cond_a5
    move-object v1, v2

    goto :goto_60
.end method

.method public final toString()Ljava/lang/String;
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
    iget v1, p0, Landroid/support/v4/app/t;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 442
    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    iget-object v1, p0, Landroid/support/v4/app/t;->d:Landroid/support/v4/content/a;

    invoke-static {v1, v0}, Landroid/support/v4/b/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 444
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
