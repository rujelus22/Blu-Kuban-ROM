.class public final Lp;
.super LH;
.source "BackStackRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:I

.field public a:Ljava/lang/CharSequence;

.field public a:Ljava/lang/String;

.field public a:Lq;

.field final a:Lz;

.field public a:Z

.field b:I

.field public b:Ljava/lang/CharSequence;

.field b:Lq;

.field b:Z

.field c:I

.field c:Z

.field d:I

.field e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>(Lz;)V
    .registers 3
    .parameter

    .prologue
    .line 286
    invoke-direct {p0}, LH;-><init>()V

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lp;->b:Z

    .line 287
    iput-object p1, p0, Lp;->a:Lz;

    .line 288
    return-void
.end method

.method private a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 347
    iget-object v0, p0, Lp;->a:Lz;

    iput-object v0, p2, Landroid/support/v4/app/Fragment;->a:Lz;

    .line 349
    if-eqz p3, :cond_43

    .line 350
    iget-object v0, p2, Landroid/support/v4/app/Fragment;->b:Ljava/lang/String;

    if-eqz v0, :cond_41

    iget-object v0, p2, Landroid/support/v4/app/Fragment;->b:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 351
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

    iget-object v2, p2, Landroid/support/v4/app/Fragment;->b:Ljava/lang/String;

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

    .line 355
    :cond_41
    iput-object p3, p2, Landroid/support/v4/app/Fragment;->b:Ljava/lang/String;

    .line 358
    :cond_43
    if-eqz p1, :cond_80

    .line 359
    iget v0, p2, Landroid/support/v4/app/Fragment;->j:I

    if-eqz v0, :cond_7c

    iget v0, p2, Landroid/support/v4/app/Fragment;->j:I

    if-eq v0, p1, :cond_7c

    .line 360
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

    iget v2, p2, Landroid/support/v4/app/Fragment;->j:I

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

    .line 364
    :cond_7c
    iput p1, p2, Landroid/support/v4/app/Fragment;->j:I

    iput p1, p2, Landroid/support/v4/app/Fragment;->k:I

    .line 367
    :cond_80
    new-instance v0, Lq;

    invoke-direct {v0}, Lq;-><init>()V

    .line 368
    iput p4, v0, Lq;->a:I

    .line 369
    iput-object p2, v0, Lq;->a:Landroid/support/v4/app/Fragment;

    .line 370
    invoke-virtual {p0, v0}, Lp;->a(Lq;)V

    .line 371
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 525
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lp;->a(Z)I

    move-result v0

    return v0
.end method

.method a(Z)I
    .registers 5
    .parameter

    .prologue
    .line 533
    iget-boolean v0, p0, Lp;->c:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "commit already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 534
    :cond_c
    sget-boolean v0, Lz;->a:Z

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

    .line 535
    :cond_28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lp;->c:Z

    .line 536
    iget-boolean v0, p0, Lp;->a:Z

    if-eqz v0, :cond_3f

    .line 537
    iget-object v0, p0, Lp;->a:Lz;

    invoke-virtual {v0, p0}, Lz;->a(Lp;)I

    move-result v0

    iput v0, p0, Lp;->h:I

    .line 541
    :goto_37
    iget-object v0, p0, Lp;->a:Lz;

    invoke-virtual {v0, p0, p1}, Lz;->a(Ljava/lang/Runnable;Z)V

    .line 542
    iget v0, p0, Lp;->h:I

    return v0

    .line 539
    :cond_3f
    const/4 v0, -0x1

    iput v0, p0, Lp;->h:I

    goto :goto_37
.end method

.method public a(I)LH;
    .registers 2
    .parameter

    .prologue
    .line 445
    iput p1, p0, Lp;->f:I

    .line 446
    return-object p0
.end method

.method public a(II)LH;
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 432
    invoke-virtual {p0, p1, p2, v0, v0}, Lp;->a(IIII)LH;

    move-result-object v0

    return-object v0
.end method

.method public a(IIII)LH;
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 437
    iput p1, p0, Lp;->b:I

    .line 438
    iput p2, p0, Lp;->c:I

    .line 439
    iput p3, p0, Lp;->d:I

    .line 440
    iput p4, p0, Lp;->e:I

    .line 441
    return-object p0
.end method

.method public a(ILandroid/support/v4/app/Fragment;)LH;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 337
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lp;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 338
    return-object p0
.end method

.method public a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)LH;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 342
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lp;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 343
    return-object p0
.end method

.method public a(Landroid/support/v4/app/Fragment;)LH;
    .registers 4
    .parameter

    .prologue
    .line 387
    new-instance v0, Lq;

    invoke-direct {v0}, Lq;-><init>()V

    .line 388
    const/4 v1, 0x3

    iput v1, v0, Lq;->a:I

    .line 389
    iput-object p1, v0, Lq;->a:Landroid/support/v4/app/Fragment;

    .line 390
    invoke-virtual {p0, v0}, Lp;->a(Lq;)V

    .line 392
    return-object p0
.end method

.method public a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)LH;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 332
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lp;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 333
    return-object p0
.end method

.method public a(Ljava/lang/String;)LH;
    .registers 4
    .parameter

    .prologue
    .line 455
    iget-boolean v0, p0, Lp;->b:Z

    if-nez v0, :cond_c

    .line 456
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lp;->a:Z

    .line 460
    iput-object p1, p0, Lp;->a:Ljava/lang/String;

    .line 461
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 708
    iget-object v0, p0, Lp;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .registers 8
    .parameter

    .prologue
    .line 502
    iget-boolean v0, p0, Lp;->a:Z

    if-nez v0, :cond_5

    .line 522
    :cond_4
    return-void

    .line 505
    :cond_5
    sget-boolean v0, Lz;->a:Z

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

    .line 507
    :cond_2b
    iget-object v0, p0, Lp;->a:Lq;

    move-object v2, v0

    .line 508
    :goto_2e
    if-eqz v2, :cond_4

    .line 509
    iget-object v0, v2, Lq;->a:Landroid/support/v4/app/Fragment;

    iget v1, v0, Landroid/support/v4/app/Fragment;->i:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/support/v4/app/Fragment;->i:I

    .line 510
    sget-boolean v0, Lz;->a:Z

    if-eqz v0, :cond_63

    const-string v0, "BackStackEntry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bump nesting of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Lq;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Lq;->a:Landroid/support/v4/app/Fragment;

    iget v3, v3, Landroid/support/v4/app/Fragment;->i:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_63
    iget-object v0, v2, Lq;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_ab

    .line 513
    iget-object v0, v2, Lq;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_70
    if-ltz v1, :cond_ab

    .line 514
    iget-object v0, v2, Lq;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 515
    iget v3, v0, Landroid/support/v4/app/Fragment;->i:I

    add-int/2addr v3, p1

    iput v3, v0, Landroid/support/v4/app/Fragment;->i:I

    .line 516
    sget-boolean v3, Lz;->a:Z

    if-eqz v3, :cond_a7

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

    iget v0, v0, Landroid/support/v4/app/Fragment;->i:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_a7
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_70

    .line 520
    :cond_ab
    iget-object v0, v2, Lq;->a:Lq;

    move-object v2, v0

    goto :goto_2e
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 212
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mName="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lp;->a:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 213
    const-string v0, " mIndex="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lp;->h:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 214
    const-string v0, " mCommitted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lp;->c:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 215
    iget v0, p0, Lp;->f:I

    if-eqz v0, :cond_45

    .line 216
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransition=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 217
    iget v0, p0, Lp;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 218
    const-string v0, " mTransitionStyle=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 219
    iget v0, p0, Lp;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 221
    :cond_45
    iget v0, p0, Lp;->b:I

    if-nez v0, :cond_4d

    iget v0, p0, Lp;->c:I

    if-eqz v0, :cond_6c

    .line 222
    :cond_4d
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterAnim=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 223
    iget v0, p0, Lp;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 224
    const-string v0, " mExitAnim=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 225
    iget v0, p0, Lp;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 227
    :cond_6c
    iget v0, p0, Lp;->d:I

    if-nez v0, :cond_74

    iget v0, p0, Lp;->e:I

    if-eqz v0, :cond_93

    .line 228
    :cond_74
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPopEnterAnim=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 229
    iget v0, p0, Lp;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 230
    const-string v0, " mPopExitAnim=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 231
    iget v0, p0, Lp;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    :cond_93
    iget v0, p0, Lp;->i:I

    if-nez v0, :cond_9b

    iget-object v0, p0, Lp;->a:Ljava/lang/CharSequence;

    if-eqz v0, :cond_b6

    .line 234
    :cond_9b
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 235
    iget v0, p0, Lp;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 236
    const-string v0, " mBreadCrumbTitleText="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lp;->a:Ljava/lang/CharSequence;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 239
    :cond_b6
    iget v0, p0, Lp;->j:I

    if-nez v0, :cond_be

    iget-object v0, p0, Lp;->b:Ljava/lang/CharSequence;

    if-eqz v0, :cond_d9

    .line 240
    :cond_be
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 241
    iget v0, p0, Lp;->j:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 242
    const-string v0, " mBreadCrumbShortTitleText="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lp;->b:Ljava/lang/CharSequence;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 246
    :cond_d9
    iget-object v0, p0, Lp;->a:Lq;

    if-eqz v0, :cond_1bf

    .line 247
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Operations:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 249
    iget-object v0, p0, Lp;->a:Lq;

    move-object v2, v0

    .line 251
    :goto_fb
    if-eqz v2, :cond_1bf

    .line 252
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Op #"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 253
    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "cmd="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v2, Lq;->a:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 255
    const-string v0, " fragment="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v2, Lq;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 256
    iget v0, v2, Lq;->b:I

    if-nez v0, :cond_12c

    iget v0, v2, Lq;->c:I

    if-eqz v0, :cond_14b

    .line 257
    :cond_12c
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "enterAnim=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 258
    iget v0, v2, Lq;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 259
    const-string v0, " exitAnim=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 260
    iget v0, v2, Lq;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 262
    :cond_14b
    iget v0, v2, Lq;->d:I

    if-nez v0, :cond_153

    iget v0, v2, Lq;->e:I

    if-eqz v0, :cond_172

    .line 263
    :cond_153
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "popEnterAnim=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 264
    iget v0, v2, Lq;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 265
    const-string v0, " popExitAnim=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 266
    iget v0, v2, Lq;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 268
    :cond_172
    iget-object v0, v2, Lq;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_1ba

    iget-object v0, v2, Lq;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1ba

    move v0, v1

    .line 269
    :goto_17f
    iget-object v4, v2, Lq;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1ba

    .line 270
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 271
    iget-object v4, v2, Lq;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1a4

    .line 272
    const-string v4, "Removed: "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 278
    :goto_198
    iget-object v4, v2, Lq;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_17f

    .line 274
    :cond_1a4
    const-string v4, "Removed:"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 276
    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_198

    .line 281
    :cond_1ba
    iget-object v0, v2, Lq;->a:Lq;

    move-object v2, v0

    goto/16 :goto_fb

    .line 284
    :cond_1bf
    return-void
.end method

.method public a(Lq;)V
    .registers 3
    .parameter

    .prologue
    .line 317
    iget-object v0, p0, Lp;->a:Lq;

    if-nez v0, :cond_1f

    .line 318
    iput-object p1, p0, Lp;->b:Lq;

    iput-object p1, p0, Lp;->a:Lq;

    .line 324
    :goto_8
    iget v0, p0, Lp;->b:I

    iput v0, p1, Lq;->b:I

    .line 325
    iget v0, p0, Lp;->c:I

    iput v0, p1, Lq;->c:I

    .line 326
    iget v0, p0, Lp;->d:I

    iput v0, p1, Lq;->d:I

    .line 327
    iget v0, p0, Lp;->e:I

    iput v0, p1, Lq;->e:I

    .line 328
    iget v0, p0, Lp;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lp;->a:I

    .line 329
    return-void

    .line 320
    :cond_1f
    iget-object v0, p0, Lp;->b:Lq;

    iput-object v0, p1, Lq;->b:Lq;

    .line 321
    iget-object v0, p0, Lp;->b:Lq;

    iput-object p1, v0, Lq;->a:Lq;

    .line 322
    iput-object p1, p0, Lp;->b:Lq;

    goto :goto_8
.end method

.method public a(Z)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x0

    .line 631
    sget-boolean v0, Lz;->a:Z

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

    .line 633
    :cond_1e
    invoke-virtual {p0, v6}, Lp;->a(I)V

    .line 635
    iget-object v0, p0, Lp;->b:Lq;

    move-object v3, v0

    .line 636
    :goto_24
    if-eqz v3, :cond_ef

    .line 637
    iget v0, v3, Lq;->a:I

    packed-switch v0, :pswitch_data_112

    .line 689
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v3, Lq;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 639
    :pswitch_46
    iget-object v0, v3, Lq;->a:Landroid/support/v4/app/Fragment;

    .line 640
    iget v1, v3, Lq;->e:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->l:I

    .line 641
    iget-object v1, p0, Lp;->a:Lz;

    iget v4, p0, Lp;->f:I

    invoke-static {v4}, Lz;->a(I)I

    move-result v4

    iget v5, p0, Lp;->g:I

    invoke-virtual {v1, v0, v4, v5}, Lz;->a(Landroid/support/v4/app/Fragment;II)V

    .line 693
    :cond_59
    :goto_59
    iget-object v0, v3, Lq;->b:Lq;

    move-object v3, v0

    goto :goto_24

    .line 646
    :pswitch_5d
    iget-object v0, v3, Lq;->a:Landroid/support/v4/app/Fragment;

    .line 647
    iget v1, v3, Lq;->e:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->l:I

    .line 648
    iget-object v1, p0, Lp;->a:Lz;

    iget v4, p0, Lp;->f:I

    invoke-static {v4}, Lz;->a(I)I

    move-result v4

    iget v5, p0, Lp;->g:I

    invoke-virtual {v1, v0, v4, v5}, Lz;->a(Landroid/support/v4/app/Fragment;II)V

    .line 651
    iget-object v0, v3, Lq;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_59

    move v1, v2

    .line 652
    :goto_75
    iget-object v0, v3, Lq;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_59

    .line 653
    iget-object v0, v3, Lq;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 654
    iget v4, v3, Lq;->d:I

    iput v4, v0, Landroid/support/v4/app/Fragment;->l:I

    .line 655
    iget-object v4, p0, Lp;->a:Lz;

    invoke-virtual {v4, v0, v2}, Lz;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 652
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_75

    .line 660
    :pswitch_92
    iget-object v0, v3, Lq;->a:Landroid/support/v4/app/Fragment;

    .line 661
    iget v1, v3, Lq;->d:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->l:I

    .line 662
    iget-object v1, p0, Lp;->a:Lz;

    invoke-virtual {v1, v0, v2}, Lz;->a(Landroid/support/v4/app/Fragment;Z)V

    goto :goto_59

    .line 665
    :pswitch_9e
    iget-object v0, v3, Lq;->a:Landroid/support/v4/app/Fragment;

    .line 666
    iget v1, v3, Lq;->d:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->l:I

    .line 667
    iget-object v1, p0, Lp;->a:Lz;

    iget v4, p0, Lp;->f:I

    invoke-static {v4}, Lz;->a(I)I

    move-result v4

    iget v5, p0, Lp;->g:I

    invoke-virtual {v1, v0, v4, v5}, Lz;->c(Landroid/support/v4/app/Fragment;II)V

    goto :goto_59

    .line 671
    :pswitch_b2
    iget-object v0, v3, Lq;->a:Landroid/support/v4/app/Fragment;

    .line 672
    iget v1, v3, Lq;->e:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->l:I

    .line 673
    iget-object v1, p0, Lp;->a:Lz;

    iget v4, p0, Lp;->f:I

    invoke-static {v4}, Lz;->a(I)I

    move-result v4

    iget v5, p0, Lp;->g:I

    invoke-virtual {v1, v0, v4, v5}, Lz;->b(Landroid/support/v4/app/Fragment;II)V

    goto :goto_59

    .line 677
    :pswitch_c6
    iget-object v0, v3, Lq;->a:Landroid/support/v4/app/Fragment;

    .line 678
    iget v1, v3, Lq;->d:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->l:I

    .line 679
    iget-object v1, p0, Lp;->a:Lz;

    iget v4, p0, Lp;->f:I

    invoke-static {v4}, Lz;->a(I)I

    move-result v4

    iget v5, p0, Lp;->g:I

    invoke-virtual {v1, v0, v4, v5}, Lz;->e(Landroid/support/v4/app/Fragment;II)V

    goto :goto_59

    .line 683
    :pswitch_da
    iget-object v0, v3, Lq;->a:Landroid/support/v4/app/Fragment;

    .line 684
    iget v1, v3, Lq;->d:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->l:I

    .line 685
    iget-object v1, p0, Lp;->a:Lz;

    iget v4, p0, Lp;->f:I

    invoke-static {v4}, Lz;->a(I)I

    move-result v4

    iget v5, p0, Lp;->g:I

    invoke-virtual {v1, v0, v4, v5}, Lz;->d(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_59

    .line 696
    :cond_ef
    if-eqz p1, :cond_103

    .line 697
    iget-object v0, p0, Lp;->a:Lz;

    iget-object v1, p0, Lp;->a:Lz;

    iget v1, v1, Lz;->a:I

    iget v2, p0, Lp;->f:I

    invoke-static {v2}, Lz;->a(I)I

    move-result v2

    iget v3, p0, Lp;->g:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lz;->a(IIIZ)V

    .line 701
    :cond_103
    iget v0, p0, Lp;->h:I

    if-ltz v0, :cond_110

    .line 702
    iget-object v0, p0, Lp;->a:Lz;

    iget v1, p0, Lp;->h:I

    invoke-virtual {v0, v1}, Lz;->a(I)V

    .line 703
    iput v6, p0, Lp;->h:I

    .line 705
    :cond_110
    return-void

    .line 637
    nop

    :pswitch_data_112
    .packed-switch 0x1
        :pswitch_46
        :pswitch_5d
        :pswitch_92
        :pswitch_9e
        :pswitch_b2
        :pswitch_c6
        :pswitch_da
    .end packed-switch
.end method

.method public b()I
    .registers 2

    .prologue
    .line 529
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lp;->a(Z)I

    move-result v0

    return v0
.end method

.method public b(ILandroid/support/v4/app/Fragment;)LH;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 374
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lp;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)LH;

    move-result-object v0

    return-object v0
.end method

.method public b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)LH;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 378
    if-nez p1, :cond_a

    .line 379
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must use non-zero containerViewId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 382
    :cond_a
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Lp;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 383
    return-object p0
.end method

.method public b(Landroid/support/v4/app/Fragment;)LH;
    .registers 4
    .parameter

    .prologue
    .line 396
    new-instance v0, Lq;

    invoke-direct {v0}, Lq;-><init>()V

    .line 397
    const/4 v1, 0x4

    iput v1, v0, Lq;->a:I

    .line 398
    iput-object p1, v0, Lq;->a:Landroid/support/v4/app/Fragment;

    .line 399
    invoke-virtual {p0, v0}, Lp;->a(Lq;)V

    .line 401
    return-object p0
.end method

.method public c(Landroid/support/v4/app/Fragment;)LH;
    .registers 4
    .parameter

    .prologue
    .line 405
    new-instance v0, Lq;

    invoke-direct {v0}, Lq;-><init>()V

    .line 406
    const/4 v1, 0x5

    iput v1, v0, Lq;->a:I

    .line 407
    iput-object p1, v0, Lq;->a:Landroid/support/v4/app/Fragment;

    .line 408
    invoke-virtual {p0, v0}, Lp;->a(Lq;)V

    .line 410
    return-object p0
.end method

.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 546
    sget-boolean v0, Lz;->a:Z

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

    .line 548
    :cond_1e
    iget-boolean v0, p0, Lp;->a:Z

    if-eqz v0, :cond_2e

    .line 549
    iget v0, p0, Lp;->h:I

    if-gez v0, :cond_2e

    .line 550
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "addToBackStack() called after commit()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 554
    :cond_2e
    invoke-virtual {p0, v8}, Lp;->a(I)V

    .line 556
    iget-object v0, p0, Lp;->a:Lq;

    move-object v3, v0

    .line 557
    :goto_34
    if-eqz v3, :cond_162

    .line 558
    iget v0, v3, Lq;->a:I

    packed-switch v0, :pswitch_data_17a

    .line 615
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v3, Lq;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 560
    :pswitch_56
    iget-object v0, v3, Lq;->a:Landroid/support/v4/app/Fragment;

    .line 561
    iget v1, v3, Lq;->b:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->l:I

    .line 562
    iget-object v1, p0, Lp;->a:Lz;

    invoke-virtual {v1, v0, v2}, Lz;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 619
    :goto_61
    iget-object v0, v3, Lq;->a:Lq;

    move-object v3, v0

    goto :goto_34

    .line 565
    :pswitch_65
    iget-object v4, v3, Lq;->a:Landroid/support/v4/app/Fragment;

    .line 566
    iget-object v0, p0, Lp;->a:Lz;

    iget-object v0, v0, Lz;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_102

    move v1, v2

    .line 567
    :goto_6e
    iget-object v0, p0, Lp;->a:Lz;

    iget-object v0, v0, Lz;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_102

    .line 568
    iget-object v0, p0, Lp;->a:Lz;

    iget-object v0, v0, Lz;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 569
    sget-boolean v5, Lz;->a:Z

    if-eqz v5, :cond_a8

    const-string v5, "BackStackEntry"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OP_REPLACE: adding="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " old="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_a8
    iget v5, v0, Landroid/support/v4/app/Fragment;->k:I

    iget v6, v4, Landroid/support/v4/app/Fragment;->k:I

    if-ne v5, v6, :cond_fd

    .line 572
    iget-object v5, v3, Lq;->a:Ljava/util/ArrayList;

    if-nez v5, :cond_b9

    .line 573
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v3, Lq;->a:Ljava/util/ArrayList;

    .line 575
    :cond_b9
    iget-object v5, v3, Lq;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    iget v5, v3, Lq;->c:I

    iput v5, v0, Landroid/support/v4/app/Fragment;->l:I

    .line 577
    iget-boolean v5, p0, Lp;->a:Z

    if-eqz v5, :cond_f4

    .line 578
    iget v5, v0, Landroid/support/v4/app/Fragment;->i:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Landroid/support/v4/app/Fragment;->i:I

    .line 579
    sget-boolean v5, Lz;->a:Z

    if-eqz v5, :cond_f4

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

    iget v7, v0, Landroid/support/v4/app/Fragment;->i:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_f4
    iget-object v5, p0, Lp;->a:Lz;

    iget v6, p0, Lp;->f:I

    iget v7, p0, Lp;->g:I

    invoke-virtual {v5, v0, v6, v7}, Lz;->a(Landroid/support/v4/app/Fragment;II)V

    .line 567
    :cond_fd
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_6e

    .line 586
    :cond_102
    iget v0, v3, Lq;->b:I

    iput v0, v4, Landroid/support/v4/app/Fragment;->l:I

    .line 587
    iget-object v0, p0, Lp;->a:Lz;

    invoke-virtual {v0, v4, v2}, Lz;->a(Landroid/support/v4/app/Fragment;Z)V

    goto/16 :goto_61

    .line 590
    :pswitch_10d
    iget-object v0, v3, Lq;->a:Landroid/support/v4/app/Fragment;

    .line 591
    iget v1, v3, Lq;->c:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->l:I

    .line 592
    iget-object v1, p0, Lp;->a:Lz;

    iget v4, p0, Lp;->f:I

    iget v5, p0, Lp;->g:I

    invoke-virtual {v1, v0, v4, v5}, Lz;->a(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_61

    .line 595
    :pswitch_11e
    iget-object v0, v3, Lq;->a:Landroid/support/v4/app/Fragment;

    .line 596
    iget v1, v3, Lq;->c:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->l:I

    .line 597
    iget-object v1, p0, Lp;->a:Lz;

    iget v4, p0, Lp;->f:I

    iget v5, p0, Lp;->g:I

    invoke-virtual {v1, v0, v4, v5}, Lz;->b(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_61

    .line 600
    :pswitch_12f
    iget-object v0, v3, Lq;->a:Landroid/support/v4/app/Fragment;

    .line 601
    iget v1, v3, Lq;->b:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->l:I

    .line 602
    iget-object v1, p0, Lp;->a:Lz;

    iget v4, p0, Lp;->f:I

    iget v5, p0, Lp;->g:I

    invoke-virtual {v1, v0, v4, v5}, Lz;->c(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_61

    .line 605
    :pswitch_140
    iget-object v0, v3, Lq;->a:Landroid/support/v4/app/Fragment;

    .line 606
    iget v1, v3, Lq;->c:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->l:I

    .line 607
    iget-object v1, p0, Lp;->a:Lz;

    iget v4, p0, Lp;->f:I

    iget v5, p0, Lp;->g:I

    invoke-virtual {v1, v0, v4, v5}, Lz;->d(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_61

    .line 610
    :pswitch_151
    iget-object v0, v3, Lq;->a:Landroid/support/v4/app/Fragment;

    .line 611
    iget v1, v3, Lq;->b:I

    iput v1, v0, Landroid/support/v4/app/Fragment;->l:I

    .line 612
    iget-object v1, p0, Lp;->a:Lz;

    iget v4, p0, Lp;->f:I

    iget v5, p0, Lp;->g:I

    invoke-virtual {v1, v0, v4, v5}, Lz;->e(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_61

    .line 622
    :cond_162
    iget-object v0, p0, Lp;->a:Lz;

    iget-object v1, p0, Lp;->a:Lz;

    iget v1, v1, Lz;->a:I

    iget v2, p0, Lp;->f:I

    iget v3, p0, Lp;->g:I

    invoke-virtual {v0, v1, v2, v3, v8}, Lz;->a(IIIZ)V

    .line 625
    iget-boolean v0, p0, Lp;->a:Z

    if-eqz v0, :cond_178

    .line 626
    iget-object v0, p0, Lp;->a:Lz;

    invoke-virtual {v0, p0}, Lz;->a(Lp;)V

    .line 628
    :cond_178
    return-void

    .line 558
    nop

    :pswitch_data_17a
    .packed-switch 0x1
        :pswitch_56
        :pswitch_65
        :pswitch_10d
        :pswitch_11e
        :pswitch_12f
        :pswitch_140
        :pswitch_151
    .end packed-switch
.end method
