.class final Landroid/support/v4/app/BackStackRecord;
.super Landroid/support/v4/app/FragmentTransaction;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/support/v4/app/FragmentManager$BackStackEntry;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/BackStackRecord$Op;
    }
.end annotation


# static fields
.field static final OP_ADD:I = 0x1

.field static final OP_HIDE:I = 0x4

.field static final OP_NULL:I = 0x0

.field static final OP_REMOVE:I = 0x3

.field static final OP_REPLACE:I = 0x2

.field static final OP_SHOW:I = 0x5

.field static final TAG:Ljava/lang/String; = "BackStackEntry"


# instance fields
.field mAddToBackStack:Z

.field mAllowAddToBackStack:Z

.field mBreadCrumbShortTitleRes:I

.field mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

.field mBreadCrumbTitleRes:I

.field mBreadCrumbTitleText:Ljava/lang/CharSequence;

.field mCommitted:Z

.field mEnterAnim:I

.field mExitAnim:I

.field mHead:Landroid/support/v4/app/BackStackRecord$Op;

.field mIndex:I

.field final mManager:Landroid/support/v4/app/FragmentManagerImpl;

.field mName:Ljava/lang/String;

.field mNumOp:I

.field mTail:Landroid/support/v4/app/BackStackRecord$Op;

.field mTransition:I

.field mTransitionStyle:I


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManagerImpl;)V
    .registers 3
    .parameter "manager"

    .prologue
    .line 262
    invoke-direct {p0}, Landroid/support/v4/app/FragmentTransaction;-><init>()V

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z

    .line 263
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 264
    return-void
.end method

.method private doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
    .registers 9
    .parameter "containerViewId"
    .parameter "fragment"
    .parameter "tag"
    .parameter "opcmd"

    .prologue
    .line 321
    iget-object v1, p2, Landroid/support/v4/app/Fragment;->mImmediateActivity:Landroid/support/v4/app/FragmentActivity;

    if-eqz v1, :cond_1d

    .line 322
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment already added: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 324
    :cond_1d
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v1, v1, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iput-object v1, p2, Landroid/support/v4/app/Fragment;->mImmediateActivity:Landroid/support/v4/app/FragmentActivity;

    .line 325
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iput-object v1, p2, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 327
    if-eqz p3, :cond_66

    .line 328
    iget-object v1, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v1, :cond_64

    iget-object v1, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    .line 329
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t change tag of fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " now "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 333
    :cond_64
    iput-object p3, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    .line 336
    :cond_66
    if-eqz p1, :cond_a3

    .line 337
    iget v1, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-eqz v1, :cond_9f

    iget v1, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-eq v1, p1, :cond_9f

    .line 338
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t change container ID of fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " now "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 342
    :cond_9f
    iput p1, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    iput p1, p2, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 345
    :cond_a3
    new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    .line 346
    .local v0, op:Landroid/support/v4/app/BackStackRecord$Op;
    iput p4, v0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    .line 347
    iput-object p2, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 348
    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 349
    return-void
.end method


# virtual methods
.method public add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .registers 5
    .parameter "containerViewId"
    .parameter "fragment"

    .prologue
    .line 311
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v4/app/BackStackRecord;->doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 312
    return-object p0
.end method

.method public add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .registers 5
    .parameter "containerViewId"
    .parameter "fragment"
    .parameter "tag"

    .prologue
    .line 316
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/app/BackStackRecord;->doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 317
    return-object p0
.end method

.method public add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .registers 5
    .parameter "fragment"
    .parameter "tag"

    .prologue
    .line 306
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/support/v4/app/BackStackRecord;->doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 307
    return-object p0
.end method

.method addOp(Landroid/support/v4/app/BackStackRecord$Op;)V
    .registers 3
    .parameter "op"

    .prologue
    .line 293
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    if-nez v0, :cond_17

    .line 294
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mTail:Landroid/support/v4/app/BackStackRecord$Op;

    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    .line 300
    :goto_8
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mEnterAnim:I

    iput v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    .line 301
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mExitAnim:I

    iput v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    .line 302
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mNumOp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/app/BackStackRecord;->mNumOp:I

    .line 303
    return-void

    .line 296
    :cond_17
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mTail:Landroid/support/v4/app/BackStackRecord$Op;

    iput-object v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->prev:Landroid/support/v4/app/BackStackRecord$Op;

    .line 297
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mTail:Landroid/support/v4/app/BackStackRecord$Op;

    iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;

    .line 298
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mTail:Landroid/support/v4/app/BackStackRecord$Op;

    goto :goto_8
.end method

.method public addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .registers 4
    .parameter "name"

    .prologue
    .line 421
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z

    if-nez v0, :cond_c

    .line 422
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    .line 426
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    .line 427
    return-object p0
.end method

.method bumpBackStackNesting(I)V
    .registers 8
    .parameter "amt"

    .prologue
    .line 468
    iget-boolean v3, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-nez v3, :cond_5

    .line 488
    :cond_4
    return-void

    .line 471
    :cond_5
    sget-boolean v3, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_2b

    const-string v3, "BackStackEntry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bump nesting in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_2b
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    .line 474
    .local v1, op:Landroid/support/v4/app/BackStackRecord$Op;
    :goto_2d
    if-eqz v1, :cond_4

    .line 475
    iget-object v3, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    iget v4, v3, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    add-int/2addr v4, p1

    iput v4, v3, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 476
    sget-boolean v3, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_62

    const-string v3, "BackStackEntry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bump nesting of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    iget v5, v5, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_62
    iget-object v3, v1, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-eqz v3, :cond_a8

    .line 479
    iget-object v3, v1, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_6e
    if-ltz v0, :cond_a8

    .line 480
    iget-object v3, v1, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 481
    .local v2, r:Landroid/support/v4/app/Fragment;
    iget v3, v2, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    add-int/2addr v3, p1

    iput v3, v2, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 482
    sget-boolean v3, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_a5

    const-string v3, "BackStackEntry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bump nesting of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_a5
    add-int/lit8 v0, v0, -0x1

    goto :goto_6e

    .line 486
    .end local v0           #i:I
    .end local v2           #r:Landroid/support/v4/app/Fragment;
    :cond_a8
    iget-object v1, v1, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;

    goto :goto_2d
.end method

.method public commit()I
    .registers 2

    .prologue
    .line 491
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->commitInternal(Z)I

    move-result v0

    return v0
.end method

.method public commitAllowingStateLoss()I
    .registers 2

    .prologue
    .line 495
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->commitInternal(Z)I

    move-result v0

    return v0
.end method

.method commitInternal(Z)I
    .registers 5
    .parameter "allowStateLoss"

    .prologue
    .line 499
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mCommitted:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "commit already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 500
    :cond_c
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

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

    .line 501
    :cond_28
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mCommitted:Z

    .line 502
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v0, :cond_3f

    .line 503
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentManagerImpl;->allocBackStackIndex(Landroid/support/v4/app/BackStackRecord;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    .line 507
    :goto_37
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    .line 508
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    return v0

    .line 505
    :cond_3f
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    goto :goto_37
.end method

.method public disallowAddToBackStack()Landroid/support/v4/app/FragmentTransaction;
    .registers 3

    .prologue
    .line 435
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v0, :cond_c

    .line 436
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This transaction is already being added to the back stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z

    .line 440
    return-object p0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11
    .parameter "prefix"
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 202
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "mName="

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 203
    const-string v4, " mIndex="

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 204
    const-string v4, " mCommitted="

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Landroid/support/v4/app/BackStackRecord;->mCommitted:Z

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 205
    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    if-eqz v4, :cond_44

    .line 206
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "mTransition=#"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 207
    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 208
    const-string v4, " mTransitionStyle=#"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 209
    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    :cond_44
    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mEnterAnim:I

    if-nez v4, :cond_4c

    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mExitAnim:I

    if-eqz v4, :cond_6b

    .line 212
    :cond_4c
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "mEnterAnim=#"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 213
    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mEnterAnim:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 214
    const-string v4, " mExitAnim=#"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 215
    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mExitAnim:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 217
    :cond_6b
    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    if-nez v4, :cond_73

    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_8e

    .line 218
    :cond_73
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "mBreadCrumbTitleRes=#"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 219
    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 220
    const-string v4, " mBreadCrumbTitleText="

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 221
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 223
    :cond_8e
    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    if-nez v4, :cond_96

    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_b1

    .line 224
    :cond_96
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 225
    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 226
    const-string v4, " mBreadCrumbShortTitleText="

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 227
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 230
    :cond_b1
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    if-eqz v4, :cond_167

    .line 231
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Operations:"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 232
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, innerPrefix:Ljava/lang/String;
    iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    .line 234
    .local v3, op:Landroid/support/v4/app/BackStackRecord$Op;
    const/4 v2, 0x0

    .line 235
    .local v2, num:I
    :goto_d3
    if-eqz v3, :cond_167

    .line 236
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  Op #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 237
    const-string v4, ":"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "cmd="

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 239
    const-string v4, " fragment="

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 240
    iget v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    if-nez v4, :cond_104

    iget v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    if-eqz v4, :cond_11b

    .line 241
    :cond_104
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "enterAnim="

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 242
    const-string v4, " exitAnim="

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 244
    :cond_11b
    iget-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-eqz v4, :cond_163

    iget-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_163

    .line 245
    const/4 v0, 0x0

    .local v0, i:I
    :goto_128
    iget-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_163

    .line 246
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 247
    iget-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_14d

    .line 248
    const-string v4, "Removed: "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 254
    :goto_141
    iget-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_128

    .line 250
    :cond_14d
    const-string v4, "Removed:"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 252
    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_141

    .line 257
    .end local v0           #i:I
    :cond_163
    iget-object v3, v3, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;

    goto/16 :goto_d3

    .line 260
    .end local v1           #innerPrefix:Ljava/lang/String;
    .end local v2           #num:I
    .end local v3           #op:Landroid/support/v4/app/BackStackRecord$Op;
    :cond_167
    return-void
.end method

.method public getBreadCrumbShortTitle()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 286
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    if-eqz v0, :cond_f

    .line 287
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget v1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 289
    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    goto :goto_e
.end method

.method public getBreadCrumbShortTitleRes()I
    .registers 2

    .prologue
    .line 275
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    return v0
.end method

.method public getBreadCrumbTitle()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 279
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    if-eqz v0, :cond_f

    .line 280
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget v1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 282
    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    goto :goto_e
.end method

.method public getBreadCrumbTitleRes()I
    .registers 2

    .prologue
    .line 271
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    return v0
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 267
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 650
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getTransition()I
    .registers 2

    .prologue
    .line 654
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    return v0
.end method

.method public getTransitionStyle()I
    .registers 2

    .prologue
    .line 658
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    return v0
.end method

.method public hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .registers 6
    .parameter "fragment"

    .prologue
    .line 379
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mImmediateActivity:Landroid/support/v4/app/FragmentActivity;

    if-nez v1, :cond_1d

    .line 380
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment not added: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 383
    :cond_1d
    new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    .line 384
    .local v0, op:Landroid/support/v4/app/BackStackRecord$Op;
    const/4 v1, 0x4

    iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    .line 385
    iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 386
    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 388
    return-object p0
.end method

.method public isAddToBackStackAllowed()Z
    .registers 2

    .prologue
    .line 431
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 662
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mNumOp:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public popFromBackStack(Z)V
    .registers 12
    .parameter "doStateMove"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v9, -0x1

    .line 587
    sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_1f

    const-string v4, "BackStackEntry"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "popFromBackStack: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_1f
    invoke-virtual {p0, v9}, Landroid/support/v4/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 591
    iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->mTail:Landroid/support/v4/app/BackStackRecord$Op;

    .line 592
    .local v3, op:Landroid/support/v4/app/BackStackRecord$Op;
    :goto_24
    if-eqz v3, :cond_bc

    .line 593
    iget v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    packed-switch v4, :pswitch_data_de

    .line 631
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown cmd: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 595
    :pswitch_46
    iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 596
    .local v0, f:Landroid/support/v4/app/Fragment;
    iput-object v8, v0, Landroid/support/v4/app/Fragment;->mImmediateActivity:Landroid/support/v4/app/FragmentActivity;

    .line 597
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    invoke-static {v5}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v5

    iget v6, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v4, v0, v5, v6}, Landroid/support/v4/app/FragmentManagerImpl;->removeFragment(Landroid/support/v4/app/Fragment;II)V

    .line 635
    :cond_57
    :goto_57
    iget-object v3, v3, Landroid/support/v4/app/BackStackRecord$Op;->prev:Landroid/support/v4/app/BackStackRecord$Op;

    goto :goto_24

    .line 602
    .end local v0           #f:Landroid/support/v4/app/Fragment;
    :pswitch_5a
    iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 603
    .restart local v0       #f:Landroid/support/v4/app/Fragment;
    iput-object v8, v0, Landroid/support/v4/app/Fragment;->mImmediateActivity:Landroid/support/v4/app/FragmentActivity;

    .line 604
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    invoke-static {v5}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v5

    iget v6, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v4, v0, v5, v6}, Landroid/support/v4/app/FragmentManagerImpl;->removeFragment(Landroid/support/v4/app/Fragment;II)V

    .line 607
    iget-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-eqz v4, :cond_57

    .line 608
    const/4 v1, 0x0

    .local v1, i:I
    :goto_70
    iget-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_57

    .line 609
    iget-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 610
    .local v2, old:Landroid/support/v4/app/Fragment;
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iput-object v4, v0, Landroid/support/v4/app/Fragment;->mImmediateActivity:Landroid/support/v4/app/FragmentActivity;

    .line 611
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v4, v2, v7}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 608
    add-int/lit8 v1, v1, 0x1

    goto :goto_70

    .line 616
    .end local v0           #f:Landroid/support/v4/app/Fragment;
    .end local v1           #i:I
    .end local v2           #old:Landroid/support/v4/app/Fragment;
    :pswitch_8e
    iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 617
    .restart local v0       #f:Landroid/support/v4/app/Fragment;
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iput-object v4, v0, Landroid/support/v4/app/Fragment;->mImmediateActivity:Landroid/support/v4/app/FragmentActivity;

    .line 618
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v4, v0, v7}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    goto :goto_57

    .line 621
    .end local v0           #f:Landroid/support/v4/app/Fragment;
    :pswitch_9c
    iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 622
    .restart local v0       #f:Landroid/support/v4/app/Fragment;
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    invoke-static {v5}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v5

    iget v6, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v4, v0, v5, v6}, Landroid/support/v4/app/FragmentManagerImpl;->showFragment(Landroid/support/v4/app/Fragment;II)V

    goto :goto_57

    .line 626
    .end local v0           #f:Landroid/support/v4/app/Fragment;
    :pswitch_ac
    iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 627
    .restart local v0       #f:Landroid/support/v4/app/Fragment;
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    invoke-static {v5}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v5

    iget v6, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v4, v0, v5, v6}, Landroid/support/v4/app/FragmentManagerImpl;->hideFragment(Landroid/support/v4/app/Fragment;II)V

    goto :goto_57

    .line 638
    .end local v0           #f:Landroid/support/v4/app/Fragment;
    :cond_bc
    if-eqz p1, :cond_d0

    .line 639
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v5, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    iget v6, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    invoke-static {v6}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v6

    iget v7, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    const/4 v8, 0x1

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IIIZ)V

    .line 643
    :cond_d0
    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    if-ltz v4, :cond_dd

    .line 644
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentManagerImpl;->freeBackStackIndex(I)V

    .line 645
    iput v9, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    .line 647
    :cond_dd
    return-void

    .line 593
    :pswitch_data_de
    .packed-switch 0x1
        :pswitch_46
        :pswitch_5a
        :pswitch_8e
        :pswitch_9c
        :pswitch_ac
    .end packed-switch
.end method

.method public remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .registers 6
    .parameter "fragment"

    .prologue
    .line 365
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mImmediateActivity:Landroid/support/v4/app/FragmentActivity;

    if-nez v1, :cond_1d

    .line 366
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment not added: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 368
    :cond_1d
    const/4 v1, 0x0

    iput-object v1, p1, Landroid/support/v4/app/Fragment;->mImmediateActivity:Landroid/support/v4/app/FragmentActivity;

    .line 370
    new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    .line 371
    .local v0, op:Landroid/support/v4/app/BackStackRecord$Op;
    const/4 v1, 0x3

    iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    .line 372
    iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 373
    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 375
    return-object p0
.end method

.method public replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .registers 4
    .parameter "containerViewId"
    .parameter "fragment"

    .prologue
    .line 352
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/app/BackStackRecord;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .registers 6
    .parameter "containerViewId"
    .parameter "fragment"
    .parameter "tag"

    .prologue
    .line 356
    if-nez p1, :cond_a

    .line 357
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must use non-zero containerViewId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_a
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/app/BackStackRecord;->doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 361
    return-object p0
.end method

.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 512
    sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_1e

    const-string v4, "BackStackEntry"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Run: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_1e
    iget-boolean v4, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v4, :cond_2e

    .line 515
    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    if-gez v4, :cond_2e

    .line 516
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "addToBackStack() called after commit()"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 520
    :cond_2e
    invoke-virtual {p0, v8}, Landroid/support/v4/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 522
    iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    .line 523
    .local v3, op:Landroid/support/v4/app/BackStackRecord$Op;
    :goto_33
    if-eqz v3, :cond_13d

    .line 524
    iget v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    packed-switch v4, :pswitch_data_154

    .line 571
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown cmd: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 526
    :pswitch_55
    iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 527
    .local v0, f:Landroid/support/v4/app/Fragment;
    iget v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    iput v4, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 528
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v4, v0, v7}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 575
    :goto_60
    iget-object v3, v3, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;

    goto :goto_33

    .line 531
    .end local v0           #f:Landroid/support/v4/app/Fragment;
    :pswitch_63
    iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 532
    .restart local v0       #f:Landroid/support/v4/app/Fragment;
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v4, :cond_ff

    .line 533
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6c
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_ff

    .line 534
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 535
    .local v2, old:Landroid/support/v4/app/Fragment;
    sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_a6

    const-string v4, "BackStackEntry"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OP_REPLACE: adding="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " old="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_a6
    iget v4, v2, Landroid/support/v4/app/Fragment;->mContainerId:I

    iget v5, v0, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-ne v4, v5, :cond_fb

    .line 538
    iget-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-nez v4, :cond_b7

    .line 539
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    .line 541
    :cond_b7
    iget-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    iget v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    iput v4, v2, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 543
    iget-boolean v4, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v4, :cond_f2

    .line 544
    iget v4, v2, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 545
    sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_f2

    const-string v4, "BackStackEntry"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bump nesting of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_f2
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    iget v6, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v4, v2, v5, v6}, Landroid/support/v4/app/FragmentManagerImpl;->removeFragment(Landroid/support/v4/app/Fragment;II)V

    .line 533
    :cond_fb
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6c

    .line 552
    .end local v1           #i:I
    .end local v2           #old:Landroid/support/v4/app/Fragment;
    :cond_ff
    iget v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    iput v4, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 553
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v4, v0, v7}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    goto/16 :goto_60

    .line 556
    .end local v0           #f:Landroid/support/v4/app/Fragment;
    :pswitch_10a
    iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 557
    .restart local v0       #f:Landroid/support/v4/app/Fragment;
    iget v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    iput v4, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 558
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    iget v6, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v4, v0, v5, v6}, Landroid/support/v4/app/FragmentManagerImpl;->removeFragment(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_60

    .line 561
    .end local v0           #f:Landroid/support/v4/app/Fragment;
    :pswitch_11b
    iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 562
    .restart local v0       #f:Landroid/support/v4/app/Fragment;
    iget v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    iput v4, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 563
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    iget v6, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v4, v0, v5, v6}, Landroid/support/v4/app/FragmentManagerImpl;->hideFragment(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_60

    .line 566
    .end local v0           #f:Landroid/support/v4/app/Fragment;
    :pswitch_12c
    iget-object v0, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 567
    .restart local v0       #f:Landroid/support/v4/app/Fragment;
    iget v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    iput v4, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 568
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    iget v6, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v4, v0, v5, v6}, Landroid/support/v4/app/FragmentManagerImpl;->showFragment(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_60

    .line 578
    .end local v0           #f:Landroid/support/v4/app/Fragment;
    :cond_13d
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v5, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    iget v6, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    iget v7, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IIIZ)V

    .line 581
    iget-boolean v4, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v4, :cond_153

    .line 582
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v4, p0}, Landroid/support/v4/app/FragmentManagerImpl;->addBackStackState(Landroid/support/v4/app/BackStackRecord;)V

    .line 584
    :cond_153
    return-void

    .line 524
    :pswitch_data_154
    .packed-switch 0x1
        :pswitch_55
        :pswitch_63
        :pswitch_10a
        :pswitch_11b
        :pswitch_12c
    .end packed-switch
.end method

.method public setBreadCrumbShortTitle(I)Landroid/support/v4/app/FragmentTransaction;
    .registers 3
    .parameter "res"

    .prologue
    .line 456
    iput p1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    .line 457
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 458
    return-object p0
.end method

.method public setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/FragmentTransaction;
    .registers 3
    .parameter "text"

    .prologue
    .line 462
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    .line 463
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 464
    return-object p0
.end method

.method public setBreadCrumbTitle(I)Landroid/support/v4/app/FragmentTransaction;
    .registers 3
    .parameter "res"

    .prologue
    .line 444
    iput p1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    .line 445
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 446
    return-object p0
.end method

.method public setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/FragmentTransaction;
    .registers 3
    .parameter "text"

    .prologue
    .line 450
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    .line 451
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 452
    return-object p0
.end method

.method public setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;
    .registers 3
    .parameter "enter"
    .parameter "exit"

    .prologue
    .line 405
    iput p1, p0, Landroid/support/v4/app/BackStackRecord;->mEnterAnim:I

    .line 406
    iput p2, p0, Landroid/support/v4/app/BackStackRecord;->mExitAnim:I

    .line 407
    return-object p0
.end method

.method public setTransition(I)Landroid/support/v4/app/FragmentTransaction;
    .registers 2
    .parameter "transition"

    .prologue
    .line 411
    iput p1, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    .line 412
    return-object p0
.end method

.method public setTransitionStyle(I)Landroid/support/v4/app/FragmentTransaction;
    .registers 2
    .parameter "styleRes"

    .prologue
    .line 416
    iput p1, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    .line 417
    return-object p0
.end method

.method public show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .registers 6
    .parameter "fragment"

    .prologue
    .line 392
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mImmediateActivity:Landroid/support/v4/app/FragmentActivity;

    if-nez v1, :cond_1d

    .line 393
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment not added: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 396
    :cond_1d
    new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    .line 397
    .local v0, op:Landroid/support/v4/app/BackStackRecord$Op;
    const/4 v1, 0x5

    iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    .line 398
    iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 399
    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 401
    return-object p0
.end method
