.class final Landroid/support/v4/app/z;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ldbxyzptlk/a/f;


# instance fields
.field final a:I

.field final b:Landroid/os/Bundle;

.field c:Landroid/support/v4/app/x;

.field d:Ldbxyzptlk/a/d;

.field e:Z

.field f:Z

.field g:Ljava/lang/Object;

.field h:Z

.field i:Z

.field j:Z

.field k:Z

.field l:Z

.field m:Z

.field n:Landroid/support/v4/app/z;

.field final synthetic o:Landroid/support/v4/app/y;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/y;ILandroid/os/Bundle;Landroid/support/v4/app/x;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput p2, p0, Landroid/support/v4/app/z;->a:I

    .line 227
    iput-object p3, p0, Landroid/support/v4/app/z;->b:Landroid/os/Bundle;

    .line 228
    iput-object p4, p0, Landroid/support/v4/app/z;->c:Landroid/support/v4/app/x;

    .line 229
    return-void
.end method


# virtual methods
.method final a()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 232
    iget-boolean v0, p0, Landroid/support/v4/app/z;->i:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Landroid/support/v4/app/z;->j:Z

    if-eqz v0, :cond_c

    .line 236
    iput-boolean v3, p0, Landroid/support/v4/app/z;->h:Z

    .line 264
    :cond_b
    :goto_b
    return-void

    .line 240
    :cond_c
    iget-boolean v0, p0, Landroid/support/v4/app/z;->h:Z

    if-nez v0, :cond_b

    .line 245
    iput-boolean v3, p0, Landroid/support/v4/app/z;->h:Z

    .line 247
    sget-boolean v0, Landroid/support/v4/app/y;->a:Z

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

    .line 248
    :cond_2e
    iget-object v0, p0, Landroid/support/v4/app/z;->d:Ldbxyzptlk/a/d;

    if-nez v0, :cond_42

    iget-object v0, p0, Landroid/support/v4/app/z;->c:Landroid/support/v4/app/x;

    if-eqz v0, :cond_42

    .line 249
    iget-object v0, p0, Landroid/support/v4/app/z;->c:Landroid/support/v4/app/x;

    iget v1, p0, Landroid/support/v4/app/z;->a:I

    iget-object v2, p0, Landroid/support/v4/app/z;->b:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Landroid/support/v4/app/x;->a(ILandroid/os/Bundle;)Ldbxyzptlk/a/d;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/z;->d:Ldbxyzptlk/a/d;

    .line 251
    :cond_42
    iget-object v0, p0, Landroid/support/v4/app/z;->d:Ldbxyzptlk/a/d;

    if-eqz v0, :cond_b

    .line 252
    iget-object v0, p0, Landroid/support/v4/app/z;->d:Ldbxyzptlk/a/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_7d

    iget-object v0, p0, Landroid/support/v4/app/z;->d:Ldbxyzptlk/a/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_7d

    .line 254
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object returned from onCreateLoader must not be a non-static inner member class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/app/z;->d:Ldbxyzptlk/a/d;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_7d
    iget-boolean v0, p0, Landroid/support/v4/app/z;->m:Z

    if-nez v0, :cond_8a

    .line 259
    iget-object v0, p0, Landroid/support/v4/app/z;->d:Ldbxyzptlk/a/d;

    iget v1, p0, Landroid/support/v4/app/z;->a:I

    invoke-virtual {v0, v1, p0}, Ldbxyzptlk/a/d;->a(ILdbxyzptlk/a/f;)V

    .line 260
    iput-boolean v3, p0, Landroid/support/v4/app/z;->m:Z

    .line 262
    :cond_8a
    iget-object v0, p0, Landroid/support/v4/app/z;->d:Ldbxyzptlk/a/d;

    invoke-virtual {v0}, Ldbxyzptlk/a/d;->n()V

    goto/16 :goto_b
.end method

.method public final a(Ldbxyzptlk/a/d;Ljava/lang/Object;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 359
    sget-boolean v0, Landroid/support/v4/app/y;->a:Z

    if-eqz v0, :cond_1d

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadComplete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_1d
    iget-boolean v0, p0, Landroid/support/v4/app/z;->l:Z

    if-eqz v0, :cond_2d

    .line 362
    sget-boolean v0, Landroid/support/v4/app/y;->a:Z

    if-eqz v0, :cond_2c

    const-string v0, "LoaderManager"

    const-string v1, "  Ignoring load complete -- destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_2c
    :goto_2c
    return-void

    .line 366
    :cond_2d
    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/y;

    iget-object v0, v0, Landroid/support/v4/app/y;->b:Landroid/support/v4/app/t;

    iget v1, p0, Landroid/support/v4/app/z;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/t;->a(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_45

    .line 369
    sget-boolean v0, Landroid/support/v4/app/y;->a:Z

    if-eqz v0, :cond_2c

    const-string v0, "LoaderManager"

    const-string v1, "  Ignoring load complete -- not active"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 373
    :cond_45
    iget-object v0, p0, Landroid/support/v4/app/z;->n:Landroid/support/v4/app/z;

    .line 374
    if-eqz v0, :cond_79

    .line 378
    sget-boolean v1, Landroid/support/v4/app/y;->a:Z

    if-eqz v1, :cond_65

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Switching to pending loader: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_65
    iput-object v4, p0, Landroid/support/v4/app/z;->n:Landroid/support/v4/app/z;

    .line 380
    iget-object v1, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/y;

    iget-object v1, v1, Landroid/support/v4/app/y;->b:Landroid/support/v4/app/t;

    iget v2, p0, Landroid/support/v4/app/z;->a:I

    invoke-virtual {v1, v2, v4}, Landroid/support/v4/app/t;->b(ILjava/lang/Object;)V

    .line 381
    invoke-virtual {p0}, Landroid/support/v4/app/z;->f()V

    .line 382
    iget-object v1, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/y;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/y;->a(Landroid/support/v4/app/z;)V

    goto :goto_2c

    .line 388
    :cond_79
    iget-object v0, p0, Landroid/support/v4/app/z;->g:Ljava/lang/Object;

    if-ne v0, p2, :cond_81

    iget-boolean v0, p0, Landroid/support/v4/app/z;->e:Z

    if-nez v0, :cond_8d

    .line 389
    :cond_81
    iput-object p2, p0, Landroid/support/v4/app/z;->g:Ljava/lang/Object;

    .line 390
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/z;->e:Z

    .line 391
    iget-boolean v0, p0, Landroid/support/v4/app/z;->h:Z

    if-eqz v0, :cond_8d

    .line 392
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/z;->b(Ldbxyzptlk/a/d;Ljava/lang/Object;)V

    .line 402
    :cond_8d
    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/y;

    iget-object v0, v0, Landroid/support/v4/app/y;->c:Landroid/support/v4/app/t;

    iget v1, p0, Landroid/support/v4/app/z;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/t;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/z;

    .line 403
    if-eqz v0, :cond_ac

    if-eq v0, p0, :cond_ac

    .line 404
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/app/z;->f:Z

    .line 405
    invoke-virtual {v0}, Landroid/support/v4/app/z;->f()V

    .line 406
    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/y;

    iget-object v0, v0, Landroid/support/v4/app/y;->c:Landroid/support/v4/app/t;

    iget v1, p0, Landroid/support/v4/app/z;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/t;->c(I)V

    .line 409
    :cond_ac
    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/y;

    iget-object v0, v0, Landroid/support/v4/app/y;->d:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/y;

    invoke-virtual {v0}, Landroid/support/v4/app/y;->a()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 410
    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/y;

    iget-object v0, v0, Landroid/support/v4/app/y;->d:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->e()V

    goto/16 :goto_2c
.end method

.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 448
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/z;->a:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 449
    const-string v0, " mArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/z;->b:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 450
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCallbacks="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/z;->c:Landroid/support/v4/app/x;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 451
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoader="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/z;->d:Ldbxyzptlk/a/d;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 452
    iget-object v0, p0, Landroid/support/v4/app/z;->d:Ldbxyzptlk/a/d;

    if-eqz v0, :cond_4d

    .line 453
    iget-object v0, p0, Landroid/support/v4/app/z;->d:Ldbxyzptlk/a/d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Ldbxyzptlk/a/d;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 455
    :cond_4d
    iget-boolean v0, p0, Landroid/support/v4/app/z;->e:Z

    if-nez v0, :cond_55

    iget-boolean v0, p0, Landroid/support/v4/app/z;->f:Z

    if-eqz v0, :cond_79

    .line 456
    :cond_55
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHaveData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/z;->e:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 457
    const-string v0, "  mDeliveredData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/z;->f:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 458
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/z;->g:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 460
    :cond_79
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/z;->h:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 461
    const-string v0, " mReportNextStart="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/z;->k:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 462
    const-string v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/z;->l:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 463
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/z;->i:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 464
    const-string v0, " mRetainingStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/z;->j:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 465
    const-string v0, " mListenerRegistered="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/z;->m:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 466
    iget-object v0, p0, Landroid/support/v4/app/z;->n:Landroid/support/v4/app/z;

    if-eqz v0, :cond_e9

    .line 467
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Loader "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Landroid/support/v4/app/z;->n:Landroid/support/v4/app/z;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Landroid/support/v4/app/z;->n:Landroid/support/v4/app/z;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/z;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 471
    :cond_e9
    return-void
.end method

.method final b()V
    .registers 4

    .prologue
    .line 267
    sget-boolean v0, Landroid/support/v4/app/y;->a:Z

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

    .line 268
    :cond_1c
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/z;->i:Z

    .line 269
    iget-boolean v0, p0, Landroid/support/v4/app/z;->h:Z

    iput-boolean v0, p0, Landroid/support/v4/app/z;->j:Z

    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/z;->h:Z

    .line 271
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/z;->c:Landroid/support/v4/app/x;

    .line 272
    return-void
.end method

.method final b(Ldbxyzptlk/a/d;Ljava/lang/Object;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 415
    iget-object v0, p0, Landroid/support/v4/app/z;->c:Landroid/support/v4/app/x;

    if-eqz v0, :cond_5e

    .line 416
    const/4 v0, 0x0

    .line 417
    iget-object v1, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/y;

    iget-object v1, v1, Landroid/support/v4/app/y;->d:Landroid/support/v4/app/FragmentActivity;

    if-eqz v1, :cond_6f

    .line 418
    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/y;

    iget-object v0, v0, Landroid/support/v4/app/y;->d:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->s:Ljava/lang/String;

    .line 419
    iget-object v1, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/y;

    iget-object v1, v1, Landroid/support/v4/app/y;->d:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/l;

    const-string v2, "onLoadFinished"

    iput-object v2, v1, Landroid/support/v4/app/l;->s:Ljava/lang/String;

    move-object v1, v0

    .line 422
    :goto_1e
    :try_start_1e
    sget-boolean v0, Landroid/support/v4/app/y;->a:Z

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

    invoke-virtual {p1, p2}, Ldbxyzptlk/a/d;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_48
    iget-object v0, p0, Landroid/support/v4/app/z;->c:Landroid/support/v4/app/x;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/app/x;->a(Ldbxyzptlk/a/d;Ljava/lang/Object;)V
    :try_end_4d
    .catchall {:try_start_1e .. :try_end_4d} :catchall_5f

    .line 426
    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/y;

    iget-object v0, v0, Landroid/support/v4/app/y;->d:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_5b

    .line 427
    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/y;

    iget-object v0, v0, Landroid/support/v4/app/y;->d:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/l;

    iput-object v1, v0, Landroid/support/v4/app/l;->s:Ljava/lang/String;

    .line 430
    :cond_5b
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/z;->f:Z

    .line 432
    :cond_5e
    return-void

    .line 426
    :catchall_5f
    move-exception v0

    iget-object v2, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/y;

    iget-object v2, v2, Landroid/support/v4/app/y;->d:Landroid/support/v4/app/FragmentActivity;

    if-eqz v2, :cond_6e

    .line 427
    iget-object v2, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/y;

    iget-object v2, v2, Landroid/support/v4/app/y;->d:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/l;

    iput-object v1, v2, Landroid/support/v4/app/l;->s:Ljava/lang/String;

    :cond_6e
    throw v0

    :cond_6f
    move-object v1, v0

    goto :goto_1e
.end method

.method final c()V
    .registers 4

    .prologue
    .line 275
    iget-boolean v0, p0, Landroid/support/v4/app/z;->i:Z

    if-eqz v0, :cond_30

    .line 276
    sget-boolean v0, Landroid/support/v4/app/y;->a:Z

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

    .line 277
    :cond_20
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/z;->i:Z

    .line 278
    iget-boolean v0, p0, Landroid/support/v4/app/z;->h:Z

    iget-boolean v1, p0, Landroid/support/v4/app/z;->j:Z

    if-eq v0, v1, :cond_30

    .line 279
    iget-boolean v0, p0, Landroid/support/v4/app/z;->h:Z

    if-nez v0, :cond_30

    .line 283
    invoke-virtual {p0}, Landroid/support/v4/app/z;->e()V

    .line 288
    :cond_30
    iget-boolean v0, p0, Landroid/support/v4/app/z;->h:Z

    if-eqz v0, :cond_43

    iget-boolean v0, p0, Landroid/support/v4/app/z;->e:Z

    if-eqz v0, :cond_43

    iget-boolean v0, p0, Landroid/support/v4/app/z;->k:Z

    if-nez v0, :cond_43

    .line 295
    iget-object v0, p0, Landroid/support/v4/app/z;->d:Ldbxyzptlk/a/d;

    iget-object v1, p0, Landroid/support/v4/app/z;->g:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/z;->b(Ldbxyzptlk/a/d;Ljava/lang/Object;)V

    .line 297
    :cond_43
    return-void
.end method

.method final d()V
    .registers 3

    .prologue
    .line 300
    iget-boolean v0, p0, Landroid/support/v4/app/z;->h:Z

    if-eqz v0, :cond_16

    .line 301
    iget-boolean v0, p0, Landroid/support/v4/app/z;->k:Z

    if-eqz v0, :cond_16

    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/z;->k:Z

    .line 303
    iget-boolean v0, p0, Landroid/support/v4/app/z;->e:Z

    if-eqz v0, :cond_16

    .line 304
    iget-object v0, p0, Landroid/support/v4/app/z;->d:Ldbxyzptlk/a/d;

    iget-object v1, p0, Landroid/support/v4/app/z;->g:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/z;->b(Ldbxyzptlk/a/d;Ljava/lang/Object;)V

    .line 308
    :cond_16
    return-void
.end method

.method final e()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 311
    sget-boolean v0, Landroid/support/v4/app/y;->a:Z

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

    .line 312
    :cond_1d
    iput-boolean v3, p0, Landroid/support/v4/app/z;->h:Z

    .line 313
    iget-boolean v0, p0, Landroid/support/v4/app/z;->i:Z

    if-nez v0, :cond_37

    .line 314
    iget-object v0, p0, Landroid/support/v4/app/z;->d:Ldbxyzptlk/a/d;

    if-eqz v0, :cond_37

    iget-boolean v0, p0, Landroid/support/v4/app/z;->m:Z

    if-eqz v0, :cond_37

    .line 316
    iput-boolean v3, p0, Landroid/support/v4/app/z;->m:Z

    .line 317
    iget-object v0, p0, Landroid/support/v4/app/z;->d:Ldbxyzptlk/a/d;

    invoke-virtual {v0, p0}, Ldbxyzptlk/a/d;->a(Ldbxyzptlk/a/f;)V

    .line 318
    iget-object v0, p0, Landroid/support/v4/app/z;->d:Ldbxyzptlk/a/d;

    invoke-virtual {v0}, Ldbxyzptlk/a/d;->p()V

    .line 321
    :cond_37
    return-void
.end method

.method final f()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 324
    sget-boolean v0, Landroid/support/v4/app/y;->a:Z

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

    .line 325
    :cond_1e
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/z;->l:Z

    .line 326
    iget-boolean v0, p0, Landroid/support/v4/app/z;->f:Z

    .line 327
    iput-boolean v4, p0, Landroid/support/v4/app/z;->f:Z

    .line 328
    iget-object v1, p0, Landroid/support/v4/app/z;->c:Landroid/support/v4/app/x;

    if-eqz v1, :cond_7d

    iget-object v1, p0, Landroid/support/v4/app/z;->d:Ldbxyzptlk/a/d;

    if-eqz v1, :cond_7d

    iget-boolean v1, p0, Landroid/support/v4/app/z;->e:Z

    if-eqz v1, :cond_7d

    if-eqz v0, :cond_7d

    .line 329
    sget-boolean v0, Landroid/support/v4/app/y;->a:Z

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

    .line 331
    :cond_4f
    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/y;

    iget-object v0, v0, Landroid/support/v4/app/y;->d:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_b1

    .line 332
    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/y;

    iget-object v0, v0, Landroid/support/v4/app/y;->d:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->s:Ljava/lang/String;

    .line 333
    iget-object v1, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/y;

    iget-object v1, v1, Landroid/support/v4/app/y;->d:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/l;

    const-string v3, "onLoaderReset"

    iput-object v3, v1, Landroid/support/v4/app/l;->s:Ljava/lang/String;

    move-object v1, v0

    .line 336
    :goto_68
    :try_start_68
    iget-object v0, p0, Landroid/support/v4/app/z;->c:Landroid/support/v4/app/x;

    iget-object v3, p0, Landroid/support/v4/app/z;->d:Ldbxyzptlk/a/d;

    invoke-interface {v0, v3}, Landroid/support/v4/app/x;->a(Ldbxyzptlk/a/d;)V
    :try_end_6f
    .catchall {:try_start_68 .. :try_end_6f} :catchall_a1

    .line 338
    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/y;

    iget-object v0, v0, Landroid/support/v4/app/y;->d:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_7d

    .line 339
    iget-object v0, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/y;

    iget-object v0, v0, Landroid/support/v4/app/y;->d:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/l;

    iput-object v1, v0, Landroid/support/v4/app/l;->s:Ljava/lang/String;

    .line 343
    :cond_7d
    iput-object v2, p0, Landroid/support/v4/app/z;->c:Landroid/support/v4/app/x;

    .line 344
    iput-object v2, p0, Landroid/support/v4/app/z;->g:Ljava/lang/Object;

    .line 345
    iput-boolean v4, p0, Landroid/support/v4/app/z;->e:Z

    .line 346
    iget-object v0, p0, Landroid/support/v4/app/z;->d:Ldbxyzptlk/a/d;

    if-eqz v0, :cond_97

    .line 347
    iget-boolean v0, p0, Landroid/support/v4/app/z;->m:Z

    if-eqz v0, :cond_92

    .line 348
    iput-boolean v4, p0, Landroid/support/v4/app/z;->m:Z

    .line 349
    iget-object v0, p0, Landroid/support/v4/app/z;->d:Ldbxyzptlk/a/d;

    invoke-virtual {v0, p0}, Ldbxyzptlk/a/d;->a(Ldbxyzptlk/a/f;)V

    .line 351
    :cond_92
    iget-object v0, p0, Landroid/support/v4/app/z;->d:Ldbxyzptlk/a/d;

    invoke-virtual {v0}, Ldbxyzptlk/a/d;->s()V

    .line 353
    :cond_97
    iget-object v0, p0, Landroid/support/v4/app/z;->n:Landroid/support/v4/app/z;

    if-eqz v0, :cond_a0

    .line 354
    iget-object v0, p0, Landroid/support/v4/app/z;->n:Landroid/support/v4/app/z;

    invoke-virtual {v0}, Landroid/support/v4/app/z;->f()V

    .line 356
    :cond_a0
    return-void

    .line 338
    :catchall_a1
    move-exception v0

    iget-object v2, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/y;

    iget-object v2, v2, Landroid/support/v4/app/y;->d:Landroid/support/v4/app/FragmentActivity;

    if-eqz v2, :cond_b0

    .line 339
    iget-object v2, p0, Landroid/support/v4/app/z;->o:Landroid/support/v4/app/y;

    iget-object v2, v2, Landroid/support/v4/app/y;->d:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity;->b:Landroid/support/v4/app/l;

    iput-object v1, v2, Landroid/support/v4/app/l;->s:Ljava/lang/String;

    :cond_b0
    throw v0

    :cond_b1
    move-object v1, v2

    goto :goto_68
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 437
    const-string v1, "LoaderInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    iget v1, p0, Landroid/support/v4/app/z;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 441
    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    iget-object v1, p0, Landroid/support/v4/app/z;->d:Ldbxyzptlk/a/d;

    invoke-static {v1, v0}, Ldbxyzptlk/c/a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 443
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
