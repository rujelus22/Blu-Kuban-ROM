.class final Landroid/support/v4/app/b;
.super Landroid/support/v4/app/t;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Landroid/support/v4/app/m;

.field b:Landroid/support/v4/app/c;

.field c:Landroid/support/v4/app/c;

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:I

.field k:Z

.field l:Z

.field m:Ljava/lang/String;

.field n:Z

.field o:I

.field p:I

.field q:Ljava/lang/CharSequence;

.field r:I

.field s:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/m;)V
    .registers 3
    .parameter

    .prologue
    .line 291
    invoke-direct {p0}, Landroid/support/v4/app/t;-><init>()V

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/b;->l:Z

    .line 292
    iput-object p1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/m;

    .line 293
    return-void
.end method

.method private a(ILandroid/support/v4/app/f;Ljava/lang/String;I)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 352
    iget-object v0, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/m;

    iput-object v0, p2, Landroid/support/v4/app/f;->s:Landroid/support/v4/app/m;

    .line 354
    if-eqz p3, :cond_43

    .line 355
    iget-object v0, p2, Landroid/support/v4/app/f;->w:Ljava/lang/String;

    if-eqz v0, :cond_41

    iget-object v0, p2, Landroid/support/v4/app/f;->w:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 356
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t change tag of fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Landroid/support/v4/app/f;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_41
    iput-object p3, p2, Landroid/support/v4/app/f;->w:Ljava/lang/String;

    .line 363
    :cond_43
    if-eqz p1, :cond_80

    .line 364
    iget v0, p2, Landroid/support/v4/app/f;->u:I

    if-eqz v0, :cond_7c

    iget v0, p2, Landroid/support/v4/app/f;->u:I

    if-eq v0, p1, :cond_7c

    .line 365
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t change container ID of fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/support/v4/app/f;->u:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_7c
    iput p1, p2, Landroid/support/v4/app/f;->u:I

    iput p1, p2, Landroid/support/v4/app/f;->v:I

    .line 372
    :cond_80
    new-instance v0, Landroid/support/v4/app/c;

    invoke-direct {v0}, Landroid/support/v4/app/c;-><init>()V

    .line 373
    iput p4, v0, Landroid/support/v4/app/c;->c:I

    .line 374
    iput-object p2, v0, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/f;

    .line 375
    invoke-virtual {p0, v0}, Landroid/support/v4/app/b;->a(Landroid/support/v4/app/c;)V

    .line 376
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 532
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/b;->a(Z)I

    move-result v0

    return v0
.end method

.method a(Z)I
    .registers 5
    .parameter

    .prologue
    .line 540
    iget-boolean v0, p0, Landroid/support/v4/app/b;->n:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "commit already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 541
    :cond_c
    sget-boolean v0, Landroid/support/v4/app/m;->a:Z

    if-eqz v0, :cond_28

    const-string v0, "BackStackEntry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Commit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_28
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/b;->n:Z

    .line 543
    iget-boolean v0, p0, Landroid/support/v4/app/b;->k:Z

    if-eqz v0, :cond_3f

    .line 544
    iget-object v0, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/m;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/m;->a(Landroid/support/v4/app/b;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/b;->o:I

    .line 548
    :goto_37
    iget-object v0, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/m;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/app/m;->a(Ljava/lang/Runnable;Z)V

    .line 549
    iget v0, p0, Landroid/support/v4/app/b;->o:I

    return v0

    .line 546
    :cond_3f
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/b;->o:I

    goto :goto_37
.end method

.method public a(ILandroid/support/v4/app/f;)Landroid/support/v4/app/t;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 342
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v4/app/b;->a(ILandroid/support/v4/app/f;Ljava/lang/String;I)V

    .line 343
    return-object p0
.end method

.method public a(Landroid/support/v4/app/f;)Landroid/support/v4/app/t;
    .registers 4
    .parameter

    .prologue
    .line 392
    new-instance v0, Landroid/support/v4/app/c;

    invoke-direct {v0}, Landroid/support/v4/app/c;-><init>()V

    .line 393
    const/4 v1, 0x3

    iput v1, v0, Landroid/support/v4/app/c;->c:I

    .line 394
    iput-object p1, v0, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/f;

    .line 395
    invoke-virtual {p0, v0}, Landroid/support/v4/app/b;->a(Landroid/support/v4/app/c;)V

    .line 397
    return-object p0
.end method

.method a(I)V
    .registers 8
    .parameter

    .prologue
    .line 507
    iget-boolean v0, p0, Landroid/support/v4/app/b;->k:Z

    if-nez v0, :cond_5

    .line 529
    :cond_4
    return-void

    .line 510
    :cond_5
    sget-boolean v0, Landroid/support/v4/app/m;->a:Z

    if-eqz v0, :cond_2b

    const-string v0, "BackStackEntry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bump nesting in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_2b
    iget-object v0, p0, Landroid/support/v4/app/b;->b:Landroid/support/v4/app/c;

    move-object v2, v0

    .line 513
    :goto_2e
    if-eqz v2, :cond_4

    .line 514
    iget-object v0, v2, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/f;

    if-eqz v0, :cond_67

    .line 515
    iget-object v0, v2, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/f;

    iget v1, v0, Landroid/support/v4/app/f;->r:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/support/v4/app/f;->r:I

    .line 516
    sget-boolean v0, Landroid/support/v4/app/m;->a:Z

    if-eqz v0, :cond_67

    const-string v0, "BackStackEntry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bump nesting of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/f;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/f;

    iget v3, v3, Landroid/support/v4/app/f;->r:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_67
    iget-object v0, v2, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_af

    .line 520
    iget-object v0, v2, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_74
    if-ltz v1, :cond_af

    .line 521
    iget-object v0, v2, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/f;

    .line 522
    iget v3, v0, Landroid/support/v4/app/f;->r:I

    add-int/2addr v3, p1

    iput v3, v0, Landroid/support/v4/app/f;->r:I

    .line 523
    sget-boolean v3, Landroid/support/v4/app/m;->a:Z

    if-eqz v3, :cond_ab

    const-string v3, "BackStackEntry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bump nesting of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v0, Landroid/support/v4/app/f;->r:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_ab
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_74

    .line 527
    :cond_af
    iget-object v0, v2, Landroid/support/v4/app/c;->a:Landroid/support/v4/app/c;

    move-object v2, v0

    goto/16 :goto_2e
.end method

.method a(Landroid/support/v4/app/c;)V
    .registers 3
    .parameter

    .prologue
    .line 322
    iget-object v0, p0, Landroid/support/v4/app/b;->b:Landroid/support/v4/app/c;

    if-nez v0, :cond_1f

    .line 323
    iput-object p1, p0, Landroid/support/v4/app/b;->c:Landroid/support/v4/app/c;

    iput-object p1, p0, Landroid/support/v4/app/b;->b:Landroid/support/v4/app/c;

    .line 329
    :goto_8
    iget v0, p0, Landroid/support/v4/app/b;->e:I

    iput v0, p1, Landroid/support/v4/app/c;->e:I

    .line 330
    iget v0, p0, Landroid/support/v4/app/b;->f:I

    iput v0, p1, Landroid/support/v4/app/c;->f:I

    .line 331
    iget v0, p0, Landroid/support/v4/app/b;->g:I

    iput v0, p1, Landroid/support/v4/app/c;->g:I

    .line 332
    iget v0, p0, Landroid/support/v4/app/b;->h:I

    iput v0, p1, Landroid/support/v4/app/c;->h:I

    .line 333
    iget v0, p0, Landroid/support/v4/app/b;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/app/b;->d:I

    .line 334
    return-void

    .line 325
    :cond_1f
    iget-object v0, p0, Landroid/support/v4/app/b;->c:Landroid/support/v4/app/c;

    iput-object v0, p1, Landroid/support/v4/app/c;->b:Landroid/support/v4/app/c;

    .line 326
    iget-object v0, p0, Landroid/support/v4/app/b;->c:Landroid/support/v4/app/c;

    iput-object p1, v0, Landroid/support/v4/app/c;->a:Landroid/support/v4/app/c;

    .line 327
    iput-object p1, p0, Landroid/support/v4/app/b;->c:Landroid/support/v4/app/c;

    goto :goto_8
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 217
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mName="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/b;->m:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 218
    const-string v0, " mIndex="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/b;->o:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 219
    const-string v0, " mCommitted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/b;->n:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 220
    iget v0, p0, Landroid/support/v4/app/b;->i:I

    if-eqz v0, :cond_45

    .line 221
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransition=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 222
    iget v0, p0, Landroid/support/v4/app/b;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 223
    const-string v0, " mTransitionStyle=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 224
    iget v0, p0, Landroid/support/v4/app/b;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 226
    :cond_45
    iget v0, p0, Landroid/support/v4/app/b;->e:I

    if-nez v0, :cond_4d

    iget v0, p0, Landroid/support/v4/app/b;->f:I

    if-eqz v0, :cond_6c

    .line 227
    :cond_4d
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterAnim=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 228
    iget v0, p0, Landroid/support/v4/app/b;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 229
    const-string v0, " mExitAnim=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 230
    iget v0, p0, Landroid/support/v4/app/b;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 232
    :cond_6c
    iget v0, p0, Landroid/support/v4/app/b;->g:I

    if-nez v0, :cond_74

    iget v0, p0, Landroid/support/v4/app/b;->h:I

    if-eqz v0, :cond_93

    .line 233
    :cond_74
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPopEnterAnim=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 234
    iget v0, p0, Landroid/support/v4/app/b;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 235
    const-string v0, " mPopExitAnim=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 236
    iget v0, p0, Landroid/support/v4/app/b;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 238
    :cond_93
    iget v0, p0, Landroid/support/v4/app/b;->p:I

    if-nez v0, :cond_9b

    iget-object v0, p0, Landroid/support/v4/app/b;->q:Ljava/lang/CharSequence;

    if-eqz v0, :cond_b6

    .line 239
    :cond_9b
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 240
    iget v0, p0, Landroid/support/v4/app/b;->p:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 241
    const-string v0, " mBreadCrumbTitleText="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Landroid/support/v4/app/b;->q:Ljava/lang/CharSequence;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 244
    :cond_b6
    iget v0, p0, Landroid/support/v4/app/b;->r:I

    if-nez v0, :cond_be

    iget-object v0, p0, Landroid/support/v4/app/b;->s:Ljava/lang/CharSequence;

    if-eqz v0, :cond_d9

    .line 245
    :cond_be
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 246
    iget v0, p0, Landroid/support/v4/app/b;->r:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 247
    const-string v0, " mBreadCrumbShortTitleText="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Landroid/support/v4/app/b;->s:Ljava/lang/CharSequence;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 251
    :cond_d9
    iget-object v0, p0, Landroid/support/v4/app/b;->b:Landroid/support/v4/app/c;

    if-eqz v0, :cond_1bf

    .line 252
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Operations:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 254
    iget-object v0, p0, Landroid/support/v4/app/b;->b:Landroid/support/v4/app/c;

    move-object v2, v0

    .line 256
    :goto_fb
    if-eqz v2, :cond_1bf

    .line 257
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Op #"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 258
    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "cmd="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v2, Landroid/support/v4/app/c;->c:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 260
    const-string v0, " fragment="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v2, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/f;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 261
    iget v0, v2, Landroid/support/v4/app/c;->e:I

    if-nez v0, :cond_12c

    iget v0, v2, Landroid/support/v4/app/c;->f:I

    if-eqz v0, :cond_14b

    .line 262
    :cond_12c
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "enterAnim=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 263
    iget v0, v2, Landroid/support/v4/app/c;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 264
    const-string v0, " exitAnim=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 265
    iget v0, v2, Landroid/support/v4/app/c;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 267
    :cond_14b
    iget v0, v2, Landroid/support/v4/app/c;->g:I

    if-nez v0, :cond_153

    iget v0, v2, Landroid/support/v4/app/c;->h:I

    if-eqz v0, :cond_172

    .line 268
    :cond_153
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "popEnterAnim=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 269
    iget v0, v2, Landroid/support/v4/app/c;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 270
    const-string v0, " popExitAnim=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 271
    iget v0, v2, Landroid/support/v4/app/c;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 273
    :cond_172
    iget-object v0, v2, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_1ba

    iget-object v0, v2, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1ba

    move v0, v1

    .line 274
    :goto_17f
    iget-object v4, v2, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1ba

    .line 275
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 276
    iget-object v4, v2, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1a4

    .line 277
    const-string v4, "Removed: "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 283
    :goto_198
    iget-object v4, v2, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_17f

    .line 279
    :cond_1a4
    const-string v4, "Removed:"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 281
    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_198

    .line 286
    :cond_1ba
    iget-object v0, v2, Landroid/support/v4/app/c;->a:Landroid/support/v4/app/c;

    move-object v2, v0

    goto/16 :goto_fb

    .line 289
    :cond_1bf
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 536
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/b;->a(Z)I

    move-result v0

    return v0
.end method

.method public b(Z)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 644
    sget-boolean v0, Landroid/support/v4/app/m;->a:Z

    if-eqz v0, :cond_1e

    const-string v0, "BackStackEntry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "popFromBackStack: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :cond_1e
    invoke-virtual {p0, v6}, Landroid/support/v4/app/b;->a(I)V

    .line 648
    iget-object v0, p0, Landroid/support/v4/app/b;->c:Landroid/support/v4/app/c;

    move-object v3, v0

    .line 649
    :goto_24
    if-eqz v3, :cond_f2

    .line 650
    iget v0, v3, Landroid/support/v4/app/c;->c:I

    packed-switch v0, :pswitch_data_114

    .line 704
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v3, Landroid/support/v4/app/c;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 652
    :pswitch_46
    iget-object v0, v3, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/f;

    .line 653
    iget v1, v3, Landroid/support/v4/app/c;->h:I

    iput v1, v0, Landroid/support/v4/app/f;->E:I

    .line 654
    iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/m;

    iget v4, p0, Landroid/support/v4/app/b;->i:I

    invoke-static {v4}, Landroid/support/v4/app/m;->c(I)I

    move-result v4

    iget v5, p0, Landroid/support/v4/app/b;->j:I

    invoke-virtual {v1, v0, v4, v5}, Landroid/support/v4/app/m;->a(Landroid/support/v4/app/f;II)V

    .line 708
    :cond_59
    :goto_59
    iget-object v0, v3, Landroid/support/v4/app/c;->b:Landroid/support/v4/app/c;

    move-object v3, v0

    goto :goto_24

    .line 659
    :pswitch_5d
    iget-object v0, v3, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/f;

    .line 660
    if-eqz v0, :cond_72

    .line 661
    iget v1, v3, Landroid/support/v4/app/c;->h:I

    iput v1, v0, Landroid/support/v4/app/f;->E:I

    .line 662
    iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/m;

    iget v4, p0, Landroid/support/v4/app/b;->i:I

    invoke-static {v4}, Landroid/support/v4/app/m;->c(I)I

    move-result v4

    iget v5, p0, Landroid/support/v4/app/b;->j:I

    invoke-virtual {v1, v0, v4, v5}, Landroid/support/v4/app/m;->a(Landroid/support/v4/app/f;II)V

    .line 666
    :cond_72
    iget-object v0, v3, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_59

    move v1, v2

    .line 667
    :goto_77
    iget-object v0, v3, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_59

    .line 668
    iget-object v0, v3, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/f;

    .line 669
    iget v4, v3, Landroid/support/v4/app/c;->g:I

    iput v4, v0, Landroid/support/v4/app/f;->E:I

    .line 670
    iget-object v4, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/m;

    invoke-virtual {v4, v0, v2}, Landroid/support/v4/app/m;->a(Landroid/support/v4/app/f;Z)V

    .line 667
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_77

    .line 675
    :pswitch_94
    iget-object v0, v3, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/f;

    .line 676
    iget v1, v3, Landroid/support/v4/app/c;->g:I

    iput v1, v0, Landroid/support/v4/app/f;->E:I

    .line 677
    iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/m;

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/m;->a(Landroid/support/v4/app/f;Z)V

    goto :goto_59

    .line 680
    :pswitch_a0
    iget-object v0, v3, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/f;

    .line 681
    iget v1, v3, Landroid/support/v4/app/c;->g:I

    iput v1, v0, Landroid/support/v4/app/f;->E:I

    .line 682
    iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/m;

    iget v4, p0, Landroid/support/v4/app/b;->i:I

    invoke-static {v4}, Landroid/support/v4/app/m;->c(I)I

    move-result v4

    iget v5, p0, Landroid/support/v4/app/b;->j:I

    invoke-virtual {v1, v0, v4, v5}, Landroid/support/v4/app/m;->c(Landroid/support/v4/app/f;II)V

    goto :goto_59

    .line 686
    :pswitch_b4
    iget-object v0, v3, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/f;

    .line 687
    iget v1, v3, Landroid/support/v4/app/c;->h:I

    iput v1, v0, Landroid/support/v4/app/f;->E:I

    .line 688
    iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/m;

    iget v4, p0, Landroid/support/v4/app/b;->i:I

    invoke-static {v4}, Landroid/support/v4/app/m;->c(I)I

    move-result v4

    iget v5, p0, Landroid/support/v4/app/b;->j:I

    invoke-virtual {v1, v0, v4, v5}, Landroid/support/v4/app/m;->b(Landroid/support/v4/app/f;II)V

    goto :goto_59

    .line 692
    :pswitch_c8
    iget-object v0, v3, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/f;

    .line 693
    iget v1, v3, Landroid/support/v4/app/c;->g:I

    iput v1, v0, Landroid/support/v4/app/f;->E:I

    .line 694
    iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/m;

    iget v4, p0, Landroid/support/v4/app/b;->i:I

    invoke-static {v4}, Landroid/support/v4/app/m;->c(I)I

    move-result v4

    iget v5, p0, Landroid/support/v4/app/b;->j:I

    invoke-virtual {v1, v0, v4, v5}, Landroid/support/v4/app/m;->e(Landroid/support/v4/app/f;II)V

    goto/16 :goto_59

    .line 698
    :pswitch_dd
    iget-object v0, v3, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/f;

    .line 699
    iget v1, v3, Landroid/support/v4/app/c;->g:I

    iput v1, v0, Landroid/support/v4/app/f;->E:I

    .line 700
    iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/m;

    iget v4, p0, Landroid/support/v4/app/b;->i:I

    invoke-static {v4}, Landroid/support/v4/app/m;->c(I)I

    move-result v4

    iget v5, p0, Landroid/support/v4/app/b;->j:I

    invoke-virtual {v1, v0, v4, v5}, Landroid/support/v4/app/m;->d(Landroid/support/v4/app/f;II)V

    goto/16 :goto_59

    .line 711
    :cond_f2
    if-eqz p1, :cond_106

    .line 712
    iget-object v0, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/m;

    iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/m;

    iget v1, v1, Landroid/support/v4/app/m;->n:I

    iget v2, p0, Landroid/support/v4/app/b;->i:I

    invoke-static {v2}, Landroid/support/v4/app/m;->c(I)I

    move-result v2

    iget v3, p0, Landroid/support/v4/app/b;->j:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/m;->a(IIIZ)V

    .line 716
    :cond_106
    iget v0, p0, Landroid/support/v4/app/b;->o:I

    if-ltz v0, :cond_113

    .line 717
    iget-object v0, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/m;

    iget v1, p0, Landroid/support/v4/app/b;->o:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/m;->b(I)V

    .line 718
    iput v6, p0, Landroid/support/v4/app/b;->o:I

    .line 720
    :cond_113
    return-void

    .line 650
    :pswitch_data_114
    .packed-switch 0x1
        :pswitch_46
        :pswitch_5d
        :pswitch_94
        :pswitch_a0
        :pswitch_b4
        :pswitch_c8
        :pswitch_dd
    .end packed-switch
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 723
    iget-object v0, p0, Landroid/support/v4/app/b;->m:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 553
    sget-boolean v0, Landroid/support/v4/app/m;->a:Z

    if-eqz v0, :cond_1e

    const-string v0, "BackStackEntry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Run: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_1e
    iget-boolean v0, p0, Landroid/support/v4/app/b;->k:Z

    if-eqz v0, :cond_2e

    .line 556
    iget v0, p0, Landroid/support/v4/app/b;->o:I

    if-gez v0, :cond_2e

    .line 557
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "addToBackStack() called after commit()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 561
    :cond_2e
    invoke-virtual {p0, v8}, Landroid/support/v4/app/b;->a(I)V

    .line 563
    iget-object v0, p0, Landroid/support/v4/app/b;->b:Landroid/support/v4/app/c;

    move-object v4, v0

    .line 564
    :goto_34
    if-eqz v4, :cond_16d

    .line 565
    iget v0, v4, Landroid/support/v4/app/c;->c:I

    packed-switch v0, :pswitch_data_184

    .line 628
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v4, Landroid/support/v4/app/c;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 567
    :pswitch_56
    iget-object v0, v4, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/f;

    .line 568
    iget v1, v4, Landroid/support/v4/app/c;->e:I

    iput v1, v0, Landroid/support/v4/app/f;->E:I

    .line 569
    iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/m;

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/m;->a(Landroid/support/v4/app/f;Z)V

    .line 632
    :cond_61
    :goto_61
    iget-object v0, v4, Landroid/support/v4/app/c;->a:Landroid/support/v4/app/c;

    move-object v4, v0

    goto :goto_34

    .line 572
    :pswitch_65
    iget-object v0, v4, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/f;

    .line 573
    iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/m;

    iget-object v1, v1, Landroid/support/v4/app/m;->g:Ljava/util/ArrayList;

    if-eqz v1, :cond_10a

    move v1, v2

    move-object v3, v0

    .line 574
    :goto_6f
    iget-object v0, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_10b

    .line 575
    iget-object v0, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/f;

    .line 576
    sget-boolean v5, Landroid/support/v4/app/m;->a:Z

    if-eqz v5, :cond_a9

    const-string v5, "BackStackEntry"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OP_REPLACE: adding="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " old="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_a9
    if-eqz v3, :cond_b1

    iget v5, v0, Landroid/support/v4/app/f;->v:I

    iget v6, v3, Landroid/support/v4/app/f;->v:I

    if-ne v5, v6, :cond_b6

    .line 579
    :cond_b1
    if-ne v0, v3, :cond_ba

    .line 580
    const/4 v3, 0x0

    iput-object v3, v4, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/f;

    .line 574
    :cond_b6
    :goto_b6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6f

    .line 582
    :cond_ba
    iget-object v5, v4, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    if-nez v5, :cond_c5

    .line 583
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    .line 585
    :cond_c5
    iget-object v5, v4, Landroid/support/v4/app/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    iget v5, v4, Landroid/support/v4/app/c;->f:I

    iput v5, v0, Landroid/support/v4/app/f;->E:I

    .line 587
    iget-boolean v5, p0, Landroid/support/v4/app/b;->k:Z

    if-eqz v5, :cond_100

    .line 588
    iget v5, v0, Landroid/support/v4/app/f;->r:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Landroid/support/v4/app/f;->r:I

    .line 589
    sget-boolean v5, Landroid/support/v4/app/m;->a:Z

    if-eqz v5, :cond_100

    const-string v5, "BackStackEntry"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bump nesting of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/support/v4/app/f;->r:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_100
    iget-object v5, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/m;

    iget v6, p0, Landroid/support/v4/app/b;->i:I

    iget v7, p0, Landroid/support/v4/app/b;->j:I

    invoke-virtual {v5, v0, v6, v7}, Landroid/support/v4/app/m;->a(Landroid/support/v4/app/f;II)V

    goto :goto_b6

    :cond_10a
    move-object v3, v0

    .line 597
    :cond_10b
    if-eqz v3, :cond_61

    .line 598
    iget v0, v4, Landroid/support/v4/app/c;->e:I

    iput v0, v3, Landroid/support/v4/app/f;->E:I

    .line 599
    iget-object v0, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/m;

    invoke-virtual {v0, v3, v2}, Landroid/support/v4/app/m;->a(Landroid/support/v4/app/f;Z)V

    goto/16 :goto_61

    .line 603
    :pswitch_118
    iget-object v0, v4, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/f;

    .line 604
    iget v1, v4, Landroid/support/v4/app/c;->f:I

    iput v1, v0, Landroid/support/v4/app/f;->E:I

    .line 605
    iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/m;

    iget v3, p0, Landroid/support/v4/app/b;->i:I

    iget v5, p0, Landroid/support/v4/app/b;->j:I

    invoke-virtual {v1, v0, v3, v5}, Landroid/support/v4/app/m;->a(Landroid/support/v4/app/f;II)V

    goto/16 :goto_61

    .line 608
    :pswitch_129
    iget-object v0, v4, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/f;

    .line 609
    iget v1, v4, Landroid/support/v4/app/c;->f:I

    iput v1, v0, Landroid/support/v4/app/f;->E:I

    .line 610
    iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/m;

    iget v3, p0, Landroid/support/v4/app/b;->i:I

    iget v5, p0, Landroid/support/v4/app/b;->j:I

    invoke-virtual {v1, v0, v3, v5}, Landroid/support/v4/app/m;->b(Landroid/support/v4/app/f;II)V

    goto/16 :goto_61

    .line 613
    :pswitch_13a
    iget-object v0, v4, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/f;

    .line 614
    iget v1, v4, Landroid/support/v4/app/c;->e:I

    iput v1, v0, Landroid/support/v4/app/f;->E:I

    .line 615
    iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/m;

    iget v3, p0, Landroid/support/v4/app/b;->i:I

    iget v5, p0, Landroid/support/v4/app/b;->j:I

    invoke-virtual {v1, v0, v3, v5}, Landroid/support/v4/app/m;->c(Landroid/support/v4/app/f;II)V

    goto/16 :goto_61

    .line 618
    :pswitch_14b
    iget-object v0, v4, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/f;

    .line 619
    iget v1, v4, Landroid/support/v4/app/c;->f:I

    iput v1, v0, Landroid/support/v4/app/f;->E:I

    .line 620
    iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/m;

    iget v3, p0, Landroid/support/v4/app/b;->i:I

    iget v5, p0, Landroid/support/v4/app/b;->j:I

    invoke-virtual {v1, v0, v3, v5}, Landroid/support/v4/app/m;->d(Landroid/support/v4/app/f;II)V

    goto/16 :goto_61

    .line 623
    :pswitch_15c
    iget-object v0, v4, Landroid/support/v4/app/c;->d:Landroid/support/v4/app/f;

    .line 624
    iget v1, v4, Landroid/support/v4/app/c;->e:I

    iput v1, v0, Landroid/support/v4/app/f;->E:I

    .line 625
    iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/m;

    iget v3, p0, Landroid/support/v4/app/b;->i:I

    iget v5, p0, Landroid/support/v4/app/b;->j:I

    invoke-virtual {v1, v0, v3, v5}, Landroid/support/v4/app/m;->e(Landroid/support/v4/app/f;II)V

    goto/16 :goto_61

    .line 635
    :cond_16d
    iget-object v0, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/m;

    iget-object v1, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/m;

    iget v1, v1, Landroid/support/v4/app/m;->n:I

    iget v2, p0, Landroid/support/v4/app/b;->i:I

    iget v3, p0, Landroid/support/v4/app/b;->j:I

    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/support/v4/app/m;->a(IIIZ)V

    .line 638
    iget-boolean v0, p0, Landroid/support/v4/app/b;->k:Z

    if-eqz v0, :cond_183

    .line 639
    iget-object v0, p0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/m;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/m;->b(Landroid/support/v4/app/b;)V

    .line 641
    :cond_183
    return-void

    .line 565
    :pswitch_data_184
    .packed-switch 0x1
        :pswitch_56
        :pswitch_65
        :pswitch_118
        :pswitch_129
        :pswitch_13a
        :pswitch_14b
        :pswitch_15c
    .end packed-switch
.end method
