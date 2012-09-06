.class final Landroid/support/v4/app/a;
.super Landroid/support/v4/app/p;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Landroid/support/v4/app/j;

.field b:Landroid/support/v4/app/b;

.field c:Landroid/support/v4/app/b;

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
.method public constructor <init>(Landroid/support/v4/app/j;)V
    .registers 3
    .parameter

    .prologue
    .line 291
    invoke-direct {p0}, Landroid/support/v4/app/p;-><init>()V

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/a;->l:Z

    .line 292
    iput-object p1, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/j;

    .line 293
    return-void
.end method

.method private b(Z)I
    .registers 5
    .parameter

    .prologue
    .line 540
    iget-boolean v0, p0, Landroid/support/v4/app/a;->n:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "commit already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 541
    :cond_c
    sget-boolean v0, Landroid/support/v4/app/j;->a:Z

    if-eqz v0, :cond_24

    const-string v0, "BackStackEntry"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Commit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_24
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/a;->n:Z

    .line 543
    iget-boolean v0, p0, Landroid/support/v4/app/a;->k:Z

    if-eqz v0, :cond_3b

    .line 544
    iget-object v0, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/j;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/j;->a(Landroid/support/v4/app/a;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/a;->o:I

    .line 548
    :goto_33
    iget-object v0, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/j;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/app/j;->a(Ljava/lang/Runnable;Z)V

    .line 549
    iget v0, p0, Landroid/support/v4/app/a;->o:I

    return v0

    .line 546
    :cond_3b
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/a;->o:I

    goto :goto_33
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 532
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/app/a;->b(Z)I

    move-result v0

    return v0
.end method

.method public final a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/p;
    .registers 4
    .parameter

    .prologue
    .line 392
    new-instance v0, Landroid/support/v4/app/b;

    invoke-direct {v0}, Landroid/support/v4/app/b;-><init>()V

    .line 393
    const/4 v1, 0x3

    iput v1, v0, Landroid/support/v4/app/b;->c:I

    .line 394
    iput-object p1, v0, Landroid/support/v4/app/b;->d:Landroid/support/v4/app/Fragment;

    .line 395
    invoke-virtual {p0, v0}, Landroid/support/v4/app/a;->a(Landroid/support/v4/app/b;)V

    .line 397
    return-object p0
.end method

.method public final a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/p;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 337
    iget-object v0, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/j;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->B:Landroid/support/v4/app/j;

    if-eqz p2, :cond_3f

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->F:Ljava/lang/String;

    if-eqz v0, :cond_3d

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->F:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t change tag of fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->F:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    iput-object p2, p1, Landroid/support/v4/app/Fragment;->F:Ljava/lang/String;

    :cond_3f
    new-instance v0, Landroid/support/v4/app/b;

    invoke-direct {v0}, Landroid/support/v4/app/b;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/support/v4/app/b;->c:I

    iput-object p1, v0, Landroid/support/v4/app/b;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, v0}, Landroid/support/v4/app/a;->a(Landroid/support/v4/app/b;)V

    .line 338
    return-object p0
.end method

.method final a(I)V
    .registers 8
    .parameter

    .prologue
    .line 507
    iget-boolean v0, p0, Landroid/support/v4/app/a;->k:Z

    if-nez v0, :cond_5

    .line 529
    :cond_4
    return-void

    .line 510
    :cond_5
    sget-boolean v0, Landroid/support/v4/app/j;->a:Z

    if-eqz v0, :cond_27

    const-string v0, "BackStackEntry"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bump nesting in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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
    :cond_27
    iget-object v0, p0, Landroid/support/v4/app/a;->b:Landroid/support/v4/app/b;

    move-object v2, v0

    .line 513
    :goto_2a
    if-eqz v2, :cond_4

    .line 514
    iget-object v0, v2, Landroid/support/v4/app/b;->d:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_5f

    .line 515
    iget-object v0, v2, Landroid/support/v4/app/b;->d:Landroid/support/v4/app/Fragment;

    iget v1, v0, Landroid/support/v4/app/Fragment;->A:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/support/v4/app/Fragment;->A:I

    .line 516
    sget-boolean v0, Landroid/support/v4/app/j;->a:Z

    if-eqz v0, :cond_5f

    const-string v0, "BackStackEntry"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Bump nesting of "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v2, Landroid/support/v4/app/b;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Landroid/support/v4/app/b;->d:Landroid/support/v4/app/Fragment;

    iget v3, v3, Landroid/support/v4/app/Fragment;->A:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_5f
    iget-object v0, v2, Landroid/support/v4/app/b;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_a3

    .line 520
    iget-object v0, v2, Landroid/support/v4/app/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_6c
    if-ltz v1, :cond_a3

    .line 521
    iget-object v0, v2, Landroid/support/v4/app/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 522
    iget v3, v0, Landroid/support/v4/app/Fragment;->A:I

    add-int/2addr v3, p1

    iput v3, v0, Landroid/support/v4/app/Fragment;->A:I

    .line 523
    sget-boolean v3, Landroid/support/v4/app/j;->a:Z

    if-eqz v3, :cond_9f

    const-string v3, "BackStackEntry"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bump nesting of "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v0, Landroid/support/v4/app/Fragment;->A:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_9f
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_6c

    .line 527
    :cond_a3
    iget-object v0, v2, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/b;

    move-object v2, v0

    goto :goto_2a
.end method

.method final a(Landroid/support/v4/app/b;)V
    .registers 3
    .parameter

    .prologue
    .line 322
    iget-object v0, p0, Landroid/support/v4/app/a;->b:Landroid/support/v4/app/b;

    if-nez v0, :cond_1f

    .line 323
    iput-object p1, p0, Landroid/support/v4/app/a;->c:Landroid/support/v4/app/b;

    iput-object p1, p0, Landroid/support/v4/app/a;->b:Landroid/support/v4/app/b;

    .line 329
    :goto_8
    iget v0, p0, Landroid/support/v4/app/a;->e:I

    iput v0, p1, Landroid/support/v4/app/b;->e:I

    .line 330
    iget v0, p0, Landroid/support/v4/app/a;->f:I

    iput v0, p1, Landroid/support/v4/app/b;->f:I

    .line 331
    iget v0, p0, Landroid/support/v4/app/a;->g:I

    iput v0, p1, Landroid/support/v4/app/b;->g:I

    .line 332
    iget v0, p0, Landroid/support/v4/app/a;->h:I

    iput v0, p1, Landroid/support/v4/app/b;->h:I

    .line 333
    iget v0, p0, Landroid/support/v4/app/a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/app/a;->d:I

    .line 334
    return-void

    .line 325
    :cond_1f
    iget-object v0, p0, Landroid/support/v4/app/a;->c:Landroid/support/v4/app/b;

    iput-object v0, p1, Landroid/support/v4/app/b;->b:Landroid/support/v4/app/b;

    .line 326
    iget-object v0, p0, Landroid/support/v4/app/a;->c:Landroid/support/v4/app/b;

    iput-object p1, v0, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/b;

    .line 327
    iput-object p1, p0, Landroid/support/v4/app/a;->c:Landroid/support/v4/app/b;

    goto :goto_8
.end method

.method public final a(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 217
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/a;->m:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 218
    const-string v0, " mIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/a;->o:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 219
    const-string v0, " mCommitted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/a;->n:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 220
    iget v0, p0, Landroid/support/v4/app/a;->i:I

    if-eqz v0, :cond_45

    .line 221
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransition=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 222
    iget v0, p0, Landroid/support/v4/app/a;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 223
    const-string v0, " mTransitionStyle=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 224
    iget v0, p0, Landroid/support/v4/app/a;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 226
    :cond_45
    iget v0, p0, Landroid/support/v4/app/a;->e:I

    if-nez v0, :cond_4d

    iget v0, p0, Landroid/support/v4/app/a;->f:I

    if-eqz v0, :cond_6c

    .line 227
    :cond_4d
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 228
    iget v0, p0, Landroid/support/v4/app/a;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 229
    const-string v0, " mExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 230
    iget v0, p0, Landroid/support/v4/app/a;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 232
    :cond_6c
    iget v0, p0, Landroid/support/v4/app/a;->g:I

    if-nez v0, :cond_74

    iget v0, p0, Landroid/support/v4/app/a;->h:I

    if-eqz v0, :cond_93

    .line 233
    :cond_74
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPopEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 234
    iget v0, p0, Landroid/support/v4/app/a;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 235
    const-string v0, " mPopExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 236
    iget v0, p0, Landroid/support/v4/app/a;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 238
    :cond_93
    iget v0, p0, Landroid/support/v4/app/a;->p:I

    if-nez v0, :cond_9b

    iget-object v0, p0, Landroid/support/v4/app/a;->q:Ljava/lang/CharSequence;

    if-eqz v0, :cond_b6

    .line 239
    :cond_9b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 240
    iget v0, p0, Landroid/support/v4/app/a;->p:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 241
    const-string v0, " mBreadCrumbTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Landroid/support/v4/app/a;->q:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 244
    :cond_b6
    iget v0, p0, Landroid/support/v4/app/a;->r:I

    if-nez v0, :cond_be

    iget-object v0, p0, Landroid/support/v4/app/a;->s:Ljava/lang/CharSequence;

    if-eqz v0, :cond_d9

    .line 245
    :cond_be
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 246
    iget v0, p0, Landroid/support/v4/app/a;->r:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 247
    const-string v0, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Landroid/support/v4/app/a;->s:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 251
    :cond_d9
    iget-object v0, p0, Landroid/support/v4/app/a;->b:Landroid/support/v4/app/b;

    if-eqz v0, :cond_1bf

    .line 252
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Operations:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

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
    iget-object v0, p0, Landroid/support/v4/app/a;->b:Landroid/support/v4/app/b;

    move-object v2, v0

    .line 255
    :goto_fb
    if-eqz v2, :cond_1bf

    .line 257
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Op #"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 258
    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "cmd="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v2, Landroid/support/v4/app/b;->c:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 260
    const-string v0, " fragment="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v2, Landroid/support/v4/app/b;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 261
    iget v0, v2, Landroid/support/v4/app/b;->e:I

    if-nez v0, :cond_12c

    iget v0, v2, Landroid/support/v4/app/b;->f:I

    if-eqz v0, :cond_14b

    .line 262
    :cond_12c
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "enterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 263
    iget v0, v2, Landroid/support/v4/app/b;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 264
    const-string v0, " exitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 265
    iget v0, v2, Landroid/support/v4/app/b;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 267
    :cond_14b
    iget v0, v2, Landroid/support/v4/app/b;->g:I

    if-nez v0, :cond_153

    iget v0, v2, Landroid/support/v4/app/b;->h:I

    if-eqz v0, :cond_172

    .line 268
    :cond_153
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "popEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 269
    iget v0, v2, Landroid/support/v4/app/b;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 270
    const-string v0, " popExitAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 271
    iget v0, v2, Landroid/support/v4/app/b;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 273
    :cond_172
    iget-object v0, v2, Landroid/support/v4/app/b;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_1ba

    iget-object v0, v2, Landroid/support/v4/app/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1ba

    move v0, v1

    .line 274
    :goto_17f
    iget-object v4, v2, Landroid/support/v4/app/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1ba

    .line 275
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 276
    iget-object v4, v2, Landroid/support/v4/app/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1a4

    .line 277
    const-string v4, "Removed: "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 283
    :goto_198
    iget-object v4, v2, Landroid/support/v4/app/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_17f

    .line 279
    :cond_1a4
    const-string v4, "Removed:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 281
    const-string v4, ": "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_198

    .line 286
    :cond_1ba
    iget-object v0, v2, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/b;

    move-object v2, v0

    goto/16 :goto_fb

    .line 289
    :cond_1bf
    return-void
.end method

.method public final a(Z)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 644
    sget-boolean v0, Landroid/support/v4/app/j;->a:Z

    if-eqz v0, :cond_1a

    const-string v0, "BackStackEntry"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "popFromBackStack: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :cond_1a
    invoke-virtual {p0, v6}, Landroid/support/v4/app/a;->a(I)V

    .line 648
    iget-object v0, p0, Landroid/support/v4/app/a;->c:Landroid/support/v4/app/b;

    move-object v3, v0

    .line 649
    :goto_20
    if-eqz v3, :cond_ea

    .line 650
    iget v0, v3, Landroid/support/v4/app/b;->c:I

    packed-switch v0, :pswitch_data_10c

    .line 704
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown cmd: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v3, Landroid/support/v4/app/b;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 652
    :pswitch_3e
    iget-object v0, v3, Landroid/support/v4/app/b;->d:Landroid/support/v4/app/Fragment;

    .line 653
    iget v1, v3, Landroid/support/v4/app/b;->h:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->N:I

    .line 654
    iget-object v1, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/j;

    iget v4, p0, Landroid/support/v4/app/a;->i:I

    invoke-static {v4}, Landroid/support/v4/app/j;->c(I)I

    move-result v4

    iget v5, p0, Landroid/support/v4/app/a;->j:I

    invoke-virtual {v1, v0, v4, v5}, Landroid/support/v4/app/j;->a(Landroid/support/v4/app/Fragment;II)V

    .line 708
    :cond_51
    :goto_51
    iget-object v0, v3, Landroid/support/v4/app/b;->b:Landroid/support/v4/app/b;

    move-object v3, v0

    goto :goto_20

    .line 659
    :pswitch_55
    iget-object v0, v3, Landroid/support/v4/app/b;->d:Landroid/support/v4/app/Fragment;

    .line 660
    if-eqz v0, :cond_6a

    .line 661
    iget v1, v3, Landroid/support/v4/app/b;->h:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->N:I

    .line 662
    iget-object v1, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/j;

    iget v4, p0, Landroid/support/v4/app/a;->i:I

    invoke-static {v4}, Landroid/support/v4/app/j;->c(I)I

    move-result v4

    iget v5, p0, Landroid/support/v4/app/a;->j:I

    invoke-virtual {v1, v0, v4, v5}, Landroid/support/v4/app/j;->a(Landroid/support/v4/app/Fragment;II)V

    .line 666
    :cond_6a
    iget-object v0, v3, Landroid/support/v4/app/b;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_51

    move v1, v2

    .line 667
    :goto_6f
    iget-object v0, v3, Landroid/support/v4/app/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_51

    .line 668
    iget-object v0, v3, Landroid/support/v4/app/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 669
    iget v4, v3, Landroid/support/v4/app/b;->g:I

    iput v4, v0, Landroid/support/v4/app/Fragment;->N:I

    .line 670
    iget-object v4, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/j;

    invoke-virtual {v4, v0, v2}, Landroid/support/v4/app/j;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 667
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6f

    .line 675
    :pswitch_8c
    iget-object v0, v3, Landroid/support/v4/app/b;->d:Landroid/support/v4/app/Fragment;

    .line 676
    iget v1, v3, Landroid/support/v4/app/b;->g:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->N:I

    .line 677
    iget-object v1, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/j;

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/j;->a(Landroid/support/v4/app/Fragment;Z)V

    goto :goto_51

    .line 680
    :pswitch_98
    iget-object v0, v3, Landroid/support/v4/app/b;->d:Landroid/support/v4/app/Fragment;

    .line 681
    iget v1, v3, Landroid/support/v4/app/b;->g:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->N:I

    .line 682
    iget-object v1, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/j;

    iget v4, p0, Landroid/support/v4/app/a;->i:I

    invoke-static {v4}, Landroid/support/v4/app/j;->c(I)I

    move-result v4

    iget v5, p0, Landroid/support/v4/app/a;->j:I

    invoke-virtual {v1, v0, v4, v5}, Landroid/support/v4/app/j;->c(Landroid/support/v4/app/Fragment;II)V

    goto :goto_51

    .line 686
    :pswitch_ac
    iget-object v0, v3, Landroid/support/v4/app/b;->d:Landroid/support/v4/app/Fragment;

    .line 687
    iget v1, v3, Landroid/support/v4/app/b;->h:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->N:I

    .line 688
    iget-object v1, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/j;

    iget v4, p0, Landroid/support/v4/app/a;->i:I

    invoke-static {v4}, Landroid/support/v4/app/j;->c(I)I

    move-result v4

    iget v5, p0, Landroid/support/v4/app/a;->j:I

    invoke-virtual {v1, v0, v4, v5}, Landroid/support/v4/app/j;->b(Landroid/support/v4/app/Fragment;II)V

    goto :goto_51

    .line 692
    :pswitch_c0
    iget-object v0, v3, Landroid/support/v4/app/b;->d:Landroid/support/v4/app/Fragment;

    .line 693
    iget v1, v3, Landroid/support/v4/app/b;->g:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->N:I

    .line 694
    iget-object v1, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/j;

    iget v4, p0, Landroid/support/v4/app/a;->i:I

    invoke-static {v4}, Landroid/support/v4/app/j;->c(I)I

    move-result v4

    iget v5, p0, Landroid/support/v4/app/a;->j:I

    invoke-virtual {v1, v0, v4, v5}, Landroid/support/v4/app/j;->e(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_51

    .line 698
    :pswitch_d5
    iget-object v0, v3, Landroid/support/v4/app/b;->d:Landroid/support/v4/app/Fragment;

    .line 699
    iget v1, v3, Landroid/support/v4/app/b;->g:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->N:I

    .line 700
    iget-object v1, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/j;

    iget v4, p0, Landroid/support/v4/app/a;->i:I

    invoke-static {v4}, Landroid/support/v4/app/j;->c(I)I

    move-result v4

    iget v5, p0, Landroid/support/v4/app/a;->j:I

    invoke-virtual {v1, v0, v4, v5}, Landroid/support/v4/app/j;->d(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_51

    .line 711
    :cond_ea
    if-eqz p1, :cond_fe

    .line 712
    iget-object v0, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/j;

    iget-object v1, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/j;

    iget v1, v1, Landroid/support/v4/app/j;->n:I

    iget v2, p0, Landroid/support/v4/app/a;->i:I

    invoke-static {v2}, Landroid/support/v4/app/j;->c(I)I

    move-result v2

    iget v3, p0, Landroid/support/v4/app/a;->j:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/j;->a(IIIZ)V

    .line 716
    :cond_fe
    iget v0, p0, Landroid/support/v4/app/a;->o:I

    if-ltz v0, :cond_10b

    .line 717
    iget-object v0, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/j;

    iget v1, p0, Landroid/support/v4/app/a;->o:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/j;->b(I)V

    .line 718
    iput v6, p0, Landroid/support/v4/app/a;->o:I

    .line 720
    :cond_10b
    return-void

    .line 650
    :pswitch_data_10c
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_55
        :pswitch_8c
        :pswitch_98
        :pswitch_ac
        :pswitch_c0
        :pswitch_d5
    .end packed-switch
.end method

.method public final b()I
    .registers 2

    .prologue
    .line 536
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/a;->b(Z)I

    move-result v0

    return v0
.end method

.method public final run()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 553
    sget-boolean v0, Landroid/support/v4/app/j;->a:Z

    if-eqz v0, :cond_1a

    const-string v0, "BackStackEntry"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Run: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_1a
    iget-boolean v0, p0, Landroid/support/v4/app/a;->k:Z

    if-eqz v0, :cond_2a

    .line 556
    iget v0, p0, Landroid/support/v4/app/a;->o:I

    if-gez v0, :cond_2a

    .line 557
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "addToBackStack() called after commit()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 561
    :cond_2a
    invoke-virtual {p0, v8}, Landroid/support/v4/app/a;->a(I)V

    .line 563
    iget-object v0, p0, Landroid/support/v4/app/a;->b:Landroid/support/v4/app/b;

    move-object v4, v0

    .line 564
    :goto_30
    if-eqz v4, :cond_15d

    .line 565
    iget v0, v4, Landroid/support/v4/app/b;->c:I

    packed-switch v0, :pswitch_data_174

    .line 628
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown cmd: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v4, Landroid/support/v4/app/b;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 567
    :pswitch_4e
    iget-object v0, v4, Landroid/support/v4/app/b;->d:Landroid/support/v4/app/Fragment;

    .line 568
    iget v1, v4, Landroid/support/v4/app/b;->e:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->N:I

    .line 569
    iget-object v1, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/j;

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/j;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 632
    :cond_59
    :goto_59
    iget-object v0, v4, Landroid/support/v4/app/b;->a:Landroid/support/v4/app/b;

    move-object v4, v0

    goto :goto_30

    .line 572
    :pswitch_5d
    iget-object v0, v4, Landroid/support/v4/app/b;->d:Landroid/support/v4/app/Fragment;

    .line 573
    iget-object v1, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/j;

    iget-object v1, v1, Landroid/support/v4/app/j;->g:Ljava/util/ArrayList;

    if-eqz v1, :cond_fa

    move v1, v2

    move-object v3, v0

    .line 574
    :goto_67
    iget-object v0, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/j;

    iget-object v0, v0, Landroid/support/v4/app/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_fb

    .line 575
    iget-object v0, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/j;

    iget-object v0, v0, Landroid/support/v4/app/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 576
    sget-boolean v5, Landroid/support/v4/app/j;->a:Z

    if-eqz v5, :cond_9d

    const-string v5, "BackStackEntry"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "OP_REPLACE: adding="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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
    :cond_9d
    if-eqz v3, :cond_a5

    iget v5, v0, Landroid/support/v4/app/Fragment;->E:I

    iget v6, v3, Landroid/support/v4/app/Fragment;->E:I

    if-ne v5, v6, :cond_aa

    .line 579
    :cond_a5
    if-ne v0, v3, :cond_ae

    .line 580
    const/4 v3, 0x0

    iput-object v3, v4, Landroid/support/v4/app/b;->d:Landroid/support/v4/app/Fragment;

    .line 574
    :cond_aa
    :goto_aa
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_67

    .line 582
    :cond_ae
    iget-object v5, v4, Landroid/support/v4/app/b;->i:Ljava/util/ArrayList;

    if-nez v5, :cond_b9

    .line 583
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Landroid/support/v4/app/b;->i:Ljava/util/ArrayList;

    .line 585
    :cond_b9
    iget-object v5, v4, Landroid/support/v4/app/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    iget v5, v4, Landroid/support/v4/app/b;->f:I

    iput v5, v0, Landroid/support/v4/app/Fragment;->N:I

    .line 587
    iget-boolean v5, p0, Landroid/support/v4/app/a;->k:Z

    if-eqz v5, :cond_f0

    .line 588
    iget v5, v0, Landroid/support/v4/app/Fragment;->A:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Landroid/support/v4/app/Fragment;->A:I

    .line 589
    sget-boolean v5, Landroid/support/v4/app/j;->a:Z

    if-eqz v5, :cond_f0

    const-string v5, "BackStackEntry"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Bump nesting of "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/support/v4/app/Fragment;->A:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_f0
    iget-object v5, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/j;

    iget v6, p0, Landroid/support/v4/app/a;->i:I

    iget v7, p0, Landroid/support/v4/app/a;->j:I

    invoke-virtual {v5, v0, v6, v7}, Landroid/support/v4/app/j;->a(Landroid/support/v4/app/Fragment;II)V

    goto :goto_aa

    :cond_fa
    move-object v3, v0

    .line 597
    :cond_fb
    if-eqz v3, :cond_59

    .line 598
    iget v0, v4, Landroid/support/v4/app/b;->e:I

    iput v0, v3, Landroid/support/v4/app/Fragment;->N:I

    .line 599
    iget-object v0, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/j;

    invoke-virtual {v0, v3, v2}, Landroid/support/v4/app/j;->a(Landroid/support/v4/app/Fragment;Z)V

    goto/16 :goto_59

    .line 603
    :pswitch_108
    iget-object v0, v4, Landroid/support/v4/app/b;->d:Landroid/support/v4/app/Fragment;

    .line 604
    iget v1, v4, Landroid/support/v4/app/b;->f:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->N:I

    .line 605
    iget-object v1, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/j;

    iget v3, p0, Landroid/support/v4/app/a;->i:I

    iget v5, p0, Landroid/support/v4/app/a;->j:I

    invoke-virtual {v1, v0, v3, v5}, Landroid/support/v4/app/j;->a(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_59

    .line 608
    :pswitch_119
    iget-object v0, v4, Landroid/support/v4/app/b;->d:Landroid/support/v4/app/Fragment;

    .line 609
    iget v1, v4, Landroid/support/v4/app/b;->f:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->N:I

    .line 610
    iget-object v1, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/j;

    iget v3, p0, Landroid/support/v4/app/a;->i:I

    iget v5, p0, Landroid/support/v4/app/a;->j:I

    invoke-virtual {v1, v0, v3, v5}, Landroid/support/v4/app/j;->b(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_59

    .line 613
    :pswitch_12a
    iget-object v0, v4, Landroid/support/v4/app/b;->d:Landroid/support/v4/app/Fragment;

    .line 614
    iget v1, v4, Landroid/support/v4/app/b;->e:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->N:I

    .line 615
    iget-object v1, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/j;

    iget v3, p0, Landroid/support/v4/app/a;->i:I

    iget v5, p0, Landroid/support/v4/app/a;->j:I

    invoke-virtual {v1, v0, v3, v5}, Landroid/support/v4/app/j;->c(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_59

    .line 618
    :pswitch_13b
    iget-object v0, v4, Landroid/support/v4/app/b;->d:Landroid/support/v4/app/Fragment;

    .line 619
    iget v1, v4, Landroid/support/v4/app/b;->f:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->N:I

    .line 620
    iget-object v1, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/j;

    iget v3, p0, Landroid/support/v4/app/a;->i:I

    iget v5, p0, Landroid/support/v4/app/a;->j:I

    invoke-virtual {v1, v0, v3, v5}, Landroid/support/v4/app/j;->d(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_59

    .line 623
    :pswitch_14c
    iget-object v0, v4, Landroid/support/v4/app/b;->d:Landroid/support/v4/app/Fragment;

    .line 624
    iget v1, v4, Landroid/support/v4/app/b;->e:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->N:I

    .line 625
    iget-object v1, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/j;

    iget v3, p0, Landroid/support/v4/app/a;->i:I

    iget v5, p0, Landroid/support/v4/app/a;->j:I

    invoke-virtual {v1, v0, v3, v5}, Landroid/support/v4/app/j;->e(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_59

    .line 635
    :cond_15d
    iget-object v0, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/j;

    iget-object v1, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/j;

    iget v1, v1, Landroid/support/v4/app/j;->n:I

    iget v2, p0, Landroid/support/v4/app/a;->i:I

    iget v3, p0, Landroid/support/v4/app/a;->j:I

    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/support/v4/app/j;->a(IIIZ)V

    .line 638
    iget-boolean v0, p0, Landroid/support/v4/app/a;->k:Z

    if-eqz v0, :cond_173

    .line 639
    iget-object v0, p0, Landroid/support/v4/app/a;->a:Landroid/support/v4/app/j;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/j;->b(Landroid/support/v4/app/a;)V

    .line 641
    :cond_173
    return-void

    .line 565
    :pswitch_data_174
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_5d
        :pswitch_108
        :pswitch_119
        :pswitch_12a
        :pswitch_13b
        :pswitch_14c
    .end packed-switch
.end method
