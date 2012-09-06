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

.field static final OP_ATTACH:I = 0x7

.field static final OP_DETACH:I = 0x6

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

.field mPopEnterAnim:I

.field mPopExitAnim:I

.field mTail:Landroid/support/v4/app/BackStackRecord$Op;

.field mTransition:I

.field mTransitionStyle:I


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManagerImpl;)V
    .registers 3
    .parameter "manager"

    .prologue
    .line 286
    invoke-direct {p0}, Landroid/support/v4/app/FragmentTransaction;-><init>()V

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z

    .line 287
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 288
    return-void
.end method

.method private doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
    .registers 9
    .parameter "containerViewId"
    .parameter "fragment"
    .parameter "tag"
    .parameter "opcmd"

    .prologue
    .line 347
    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iput-object v1, p2, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 349
    if-eqz p3, :cond_43

    .line 350
    iget-object v1, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v1, :cond_41

    iget-object v1, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 351
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

    .line 355
    :cond_41
    iput-object p3, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    .line 358
    :cond_43
    if-eqz p1, :cond_80

    .line 359
    iget v1, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-eqz v1, :cond_7c

    iget v1, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-eq v1, p1, :cond_7c

    .line 360
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

    .line 364
    :cond_7c
    iput p1, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    iput p1, p2, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 367
    :cond_80
    new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    .line 368
    .local v0, op:Landroid/support/v4/app/BackStackRecord$Op;
    iput p4, v0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    .line 369
    iput-object p2, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 370
    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 371
    return-void
.end method


# virtual methods
.method public add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .registers 5
    .parameter "containerViewId"
    .parameter "fragment"

    .prologue
    .line 337
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v4/app/BackStackRecord;->doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 338
    return-object p0
.end method

.method public add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .registers 5
    .parameter "containerViewId"
    .parameter "fragment"
    .parameter "tag"

    .prologue
    .line 342
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/app/BackStackRecord;->doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 343
    return-object p0
.end method

.method public add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .registers 5
    .parameter "fragment"
    .parameter "tag"

    .prologue
    .line 332
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/support/v4/app/BackStackRecord;->doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 333
    return-object p0
.end method

.method addOp(Landroid/support/v4/app/BackStackRecord$Op;)V
    .registers 3
    .parameter "op"

    .prologue
    .line 317
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    if-nez v0, :cond_1f

    .line 318
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mTail:Landroid/support/v4/app/BackStackRecord$Op;

    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    .line 324
    :goto_8
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mEnterAnim:I

    iput v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    .line 325
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mExitAnim:I

    iput v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    .line 326
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mPopEnterAnim:I

    iput v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    .line 327
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mPopExitAnim:I

    iput v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    .line 328
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mNumOp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/app/BackStackRecord;->mNumOp:I

    .line 329
    return-void

    .line 320
    :cond_1f
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mTail:Landroid/support/v4/app/BackStackRecord$Op;

    iput-object v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->prev:Landroid/support/v4/app/BackStackRecord$Op;

    .line 321
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mTail:Landroid/support/v4/app/BackStackRecord$Op;

    iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;

    .line 322
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mTail:Landroid/support/v4/app/BackStackRecord$Op;

    goto :goto_8
.end method

.method public addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    .registers 4
    .parameter "name"

    .prologue
    .line 455
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z

    if-nez v0, :cond_c

    .line 456
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    .line 460
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    .line 461
    return-object p0
.end method

.method public attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .registers 4
    .parameter "fragment"

    .prologue
    .line 423
    new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    .line 424
    .local v0, op:Landroid/support/v4/app/BackStackRecord$Op;
    const/4 v1, 0x7

    iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    .line 425
    iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 426
    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 428
    return-object p0
.end method

.method bumpBackStackNesting(I)V
    .registers 6
    .parameter

    .prologue
    .line 502
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-nez v0, :cond_5

    .line 522
    :cond_4
    return-void

    .line 505
    :cond_5
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bump nesting in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 507
    :cond_25
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    .line 508
    :goto_27
    if-eqz v0, :cond_4

    .line 509
    iget-object v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    iget v2, v1, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    add-int/2addr v2, p1

    iput v2, v1, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 510
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_56

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bump nesting of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    iget v2, v2, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 512
    :cond_56
    iget-object v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-eqz v1, :cond_96

    .line 513
    iget-object v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_62
    if-ltz v1, :cond_96

    .line 514
    iget-object v2, v0, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v4/app/Fragment;

    .line 515
    iget v2, p0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    add-int/2addr v2, p1

    iput v2, p0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 516
    sget-boolean v2, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_93

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bump nesting of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 513
    :cond_93
    add-int/lit8 v1, v1, -0x1

    goto :goto_62

    .line 520
    :cond_96
    iget-object v0, v0, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;

    goto :goto_27
.end method

.method public commit()I
    .registers 2

    .prologue
    .line 525
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->commitInternal(Z)I

    move-result v0

    return v0
.end method

.method public commitAllowingStateLoss()I
    .registers 2

    .prologue
    .line 529
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->commitInternal(Z)I

    move-result v0

    return v0
.end method

.method commitInternal(Z)I
    .registers 4
    .parameter

    .prologue
    .line 533
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mCommitted:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "commit already called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 534
    :cond_c
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Commit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 535
    :cond_22
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mCommitted:Z

    .line 536
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v0, :cond_39

    .line 537
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentManagerImpl;->allocBackStackIndex(Landroid/support/v4/app/BackStackRecord;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    .line 541
    :goto_31
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    .line 542
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    return v0

    .line 539
    :cond_39
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    goto :goto_31
.end method

.method public detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .registers 4
    .parameter "fragment"

    .prologue
    .line 414
    new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    .line 415
    .local v0, op:Landroid/support/v4/app/BackStackRecord$Op;
    const/4 v1, 0x6

    iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    .line 416
    iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 417
    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 419
    return-object p0
.end method

.method public disallowAddToBackStack()Landroid/support/v4/app/FragmentTransaction;
    .registers 3

    .prologue
    .line 469
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v0, :cond_c

    .line 470
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This transaction is already being added to the back stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z

    .line 474
    return-object p0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11
    .parameter "prefix"
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 212
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "mName="

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 213
    const-string v4, " mIndex="

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 214
    const-string v4, " mCommitted="

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Landroid/support/v4/app/BackStackRecord;->mCommitted:Z

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 215
    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    if-eqz v4, :cond_44

    .line 216
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "mTransition=#"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 217
    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 218
    const-string v4, " mTransitionStyle=#"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 219
    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 221
    :cond_44
    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mEnterAnim:I

    if-nez v4, :cond_4c

    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mExitAnim:I

    if-eqz v4, :cond_6b

    .line 222
    :cond_4c
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "mEnterAnim=#"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 223
    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mEnterAnim:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 224
    const-string v4, " mExitAnim=#"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 225
    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mExitAnim:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 227
    :cond_6b
    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mPopEnterAnim:I

    if-nez v4, :cond_73

    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mPopExitAnim:I

    if-eqz v4, :cond_92

    .line 228
    :cond_73
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "mPopEnterAnim=#"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 229
    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mPopEnterAnim:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 230
    const-string v4, " mPopExitAnim=#"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 231
    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mPopExitAnim:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    :cond_92
    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    if-nez v4, :cond_9a

    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_b5

    .line 234
    :cond_9a
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "mBreadCrumbTitleRes=#"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 235
    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 236
    const-string v4, " mBreadCrumbTitleText="

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 237
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 239
    :cond_b5
    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    if-nez v4, :cond_bd

    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_d8

    .line 240
    :cond_bd
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 241
    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 242
    const-string v4, " mBreadCrumbShortTitleText="

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 243
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 246
    :cond_d8
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    if-eqz v4, :cond_1bd

    .line 247
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "Operations:"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 248
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, innerPrefix:Ljava/lang/String;
    iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    .line 250
    .local v3, op:Landroid/support/v4/app/BackStackRecord$Op;
    const/4 v2, 0x0

    .line 251
    .local v2, num:I
    :goto_fa
    if-eqz v3, :cond_1bd

    .line 252
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  Op #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 253
    const-string v4, ":"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "cmd="

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 255
    const-string v4, " fragment="

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 256
    iget v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    if-nez v4, :cond_12b

    iget v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    if-eqz v4, :cond_14a

    .line 257
    :cond_12b
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "enterAnim=#"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 258
    iget v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 259
    const-string v4, " exitAnim=#"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 260
    iget v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 262
    :cond_14a
    iget v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    if-nez v4, :cond_152

    iget v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    if-eqz v4, :cond_171

    .line 263
    :cond_152
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "popEnterAnim=#"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 264
    iget v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 265
    const-string v4, " popExitAnim=#"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 266
    iget v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 268
    :cond_171
    iget-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-eqz v4, :cond_1b9

    iget-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1b9

    .line 269
    const/4 v0, 0x0

    .local v0, i:I
    :goto_17e
    iget-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1b9

    .line 270
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 271
    iget-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1a3

    .line 272
    const-string v4, "Removed: "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 278
    :goto_197
    iget-object v4, v3, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_17e

    .line 274
    :cond_1a3
    const-string v4, "Removed:"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 276
    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_197

    .line 281
    .end local v0           #i:I
    :cond_1b9
    iget-object v3, v3, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;

    goto/16 :goto_fa

    .line 284
    .end local v1           #innerPrefix:Ljava/lang/String;
    .end local v2           #num:I
    .end local v3           #op:Landroid/support/v4/app/BackStackRecord$Op;
    :cond_1bd
    return-void
.end method

.method public getBreadCrumbShortTitle()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 310
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    if-eqz v0, :cond_f

    .line 311
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget v1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 313
    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    goto :goto_e
.end method

.method public getBreadCrumbShortTitleRes()I
    .registers 2

    .prologue
    .line 299
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    return v0
.end method

.method public getBreadCrumbTitle()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 303
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    if-eqz v0, :cond_f

    .line 304
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget v1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 306
    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    goto :goto_e
.end method

.method public getBreadCrumbTitleRes()I
    .registers 2

    .prologue
    .line 295
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    return v0
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 291
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 708
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getTransition()I
    .registers 2

    .prologue
    .line 712
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    return v0
.end method

.method public getTransitionStyle()I
    .registers 2

    .prologue
    .line 716
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    return v0
.end method

.method public hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .registers 4
    .parameter "fragment"

    .prologue
    .line 396
    new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    .line 397
    .local v0, op:Landroid/support/v4/app/BackStackRecord$Op;
    const/4 v1, 0x4

    iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    .line 398
    iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 399
    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 401
    return-object p0
.end method

.method public isAddToBackStackAllowed()Z
    .registers 2

    .prologue
    .line 465
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 720
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
    .registers 9
    .parameter

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 631
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "popFromBackStack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 633
    :cond_18
    invoke-virtual {p0, v6}, Landroid/support/v4/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 635
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mTail:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v1, v0

    .line 636
    :goto_1e
    if-eqz v1, :cond_e9

    .line 637
    iget v0, v1, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    packed-switch v0, :pswitch_data_10c

    .line 689
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown cmd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 639
    :pswitch_40
    iget-object v0, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 640
    iget v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    iput v2, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 641
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v3, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    invoke-static {v3}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v3

    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v2, v0, v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->removeFragment(Landroid/support/v4/app/Fragment;II)V

    .line 693
    :cond_53
    :goto_53
    iget-object v0, v1, Landroid/support/v4/app/BackStackRecord$Op;->prev:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v1, v0

    goto :goto_1e

    .line 646
    :pswitch_57
    iget-object v0, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 647
    iget v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    iput v2, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 648
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v3, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    invoke-static {v3}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v3

    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v2, v0, v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->removeFragment(Landroid/support/v4/app/Fragment;II)V

    .line 651
    iget-object v0, v1, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-eqz v0, :cond_53

    move v2, v5

    .line 652
    :goto_6f
    iget-object v0, v1, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_53

    .line 653
    iget-object v0, v1, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 654
    iget v3, v1, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    iput v3, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 655
    iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v3, v0, v5}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 652
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6f

    .line 660
    :pswitch_8c
    iget-object v0, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 661
    iget v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    iput v2, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 662
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v2, v0, v5}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    goto :goto_53

    .line 665
    :pswitch_98
    iget-object v0, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 666
    iget v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    iput v2, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 667
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v3, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    invoke-static {v3}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v3

    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v2, v0, v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->showFragment(Landroid/support/v4/app/Fragment;II)V

    goto :goto_53

    .line 671
    :pswitch_ac
    iget-object v0, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 672
    iget v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    iput v2, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 673
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v3, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    invoke-static {v3}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v3

    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v2, v0, v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->hideFragment(Landroid/support/v4/app/Fragment;II)V

    goto :goto_53

    .line 677
    :pswitch_c0
    iget-object v0, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 678
    iget v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    iput v2, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 679
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v3, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    invoke-static {v3}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v3

    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v2, v0, v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->attachFragment(Landroid/support/v4/app/Fragment;II)V

    goto :goto_53

    .line 683
    :pswitch_d4
    iget-object v0, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 684
    iget v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    iput v2, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 685
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v3, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    invoke-static {v3}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v3

    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v2, v0, v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->detachFragment(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_53

    .line 696
    :cond_e9
    if-eqz p1, :cond_fd

    .line 697
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v1, v1, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    iget v2, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    invoke-static {v2}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v2

    iget v3, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IIIZ)V

    .line 701
    :cond_fd
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    if-ltz v0, :cond_10a

    .line 702
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v1, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->freeBackStackIndex(I)V

    .line 703
    iput v6, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    .line 705
    :cond_10a
    return-void

    .line 637
    nop

    :pswitch_data_10c
    .packed-switch 0x1
        :pswitch_40
        :pswitch_57
        :pswitch_8c
        :pswitch_98
        :pswitch_ac
        :pswitch_c0
        :pswitch_d4
    .end packed-switch
.end method

.method public remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .registers 4
    .parameter "fragment"

    .prologue
    .line 387
    new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    .line 388
    .local v0, op:Landroid/support/v4/app/BackStackRecord$Op;
    const/4 v1, 0x3

    iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    .line 389
    iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 390
    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 392
    return-object p0
.end method

.method public replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .registers 4
    .parameter "containerViewId"
    .parameter "fragment"

    .prologue
    .line 374
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

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/app/BackStackRecord;->doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V

    .line 383
    return-object p0
.end method

.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 546
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Run: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 548
    :cond_18
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v0, :cond_28

    .line 549
    iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    if-gez v0, :cond_28

    .line 550
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "addToBackStack() called after commit()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 554
    :cond_28
    invoke-virtual {p0, v8}, Landroid/support/v4/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 556
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v1, v0

    .line 557
    :goto_2e
    if-eqz v1, :cond_150

    .line 558
    iget v0, v1, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    packed-switch v0, :pswitch_data_168

    .line 615
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown cmd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 560
    :pswitch_50
    iget-object v0, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 561
    iget v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    iput v2, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 562
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v2, v0, v7}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    .line 619
    :goto_5b
    iget-object v0, v1, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v1, v0

    goto :goto_2e

    .line 565
    :pswitch_5f
    iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 566
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v0, :cond_f0

    move v3, v7

    .line 567
    :goto_68
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_f0

    .line 568
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 569
    sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_9c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OP_REPLACE: adding="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " old="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 571
    :cond_9c
    iget v4, v0, Landroid/support/v4/app/Fragment;->mContainerId:I

    iget v5, v2, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-ne v4, v5, :cond_eb

    .line 572
    iget-object v4, v1, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-nez v4, :cond_ad

    .line 573
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    .line 575
    :cond_ad
    iget-object v4, v1, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    iget v4, v1, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    iput v4, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 577
    iget-boolean v4, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v4, :cond_e2

    .line 578
    iget v4, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 579
    sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_e2

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

    iget v5, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 582
    :cond_e2
    iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    iget v6, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v4, v0, v5, v6}, Landroid/support/v4/app/FragmentManagerImpl;->removeFragment(Landroid/support/v4/app/Fragment;II)V

    .line 567
    :cond_eb
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_68

    .line 586
    :cond_f0
    iget v0, v1, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    iput v0, v2, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 587
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, v2, v7}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V

    goto/16 :goto_5b

    .line 590
    :pswitch_fb
    iget-object v0, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 591
    iget v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    iput v2, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 592
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v3, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v2, v0, v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->removeFragment(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_5b

    .line 595
    :pswitch_10c
    iget-object v0, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 596
    iget v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    iput v2, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 597
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v3, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v2, v0, v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->hideFragment(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_5b

    .line 600
    :pswitch_11d
    iget-object v0, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 601
    iget v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    iput v2, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 602
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v3, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v2, v0, v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->showFragment(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_5b

    .line 605
    :pswitch_12e
    iget-object v0, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 606
    iget v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    iput v2, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 607
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v3, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v2, v0, v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->detachFragment(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_5b

    .line 610
    :pswitch_13f
    iget-object v0, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 611
    iget v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    iput v2, v0, Landroid/support/v4/app/Fragment;->mNextAnim:I

    .line 612
    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v3, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v2, v0, v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->attachFragment(Landroid/support/v4/app/Fragment;II)V

    goto/16 :goto_5b

    .line 622
    :cond_150
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget v1, v1, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    iget v2, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    iget v3, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IIIZ)V

    .line 625
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v0, :cond_166

    .line 626
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentManagerImpl;->addBackStackState(Landroid/support/v4/app/BackStackRecord;)V

    .line 628
    :cond_166
    return-void

    .line 558
    nop

    :pswitch_data_168
    .packed-switch 0x1
        :pswitch_50
        :pswitch_5f
        :pswitch_fb
        :pswitch_10c
        :pswitch_11d
        :pswitch_12e
        :pswitch_13f
    .end packed-switch
.end method

.method public setBreadCrumbShortTitle(I)Landroid/support/v4/app/FragmentTransaction;
    .registers 3
    .parameter "res"

    .prologue
    .line 490
    iput p1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    .line 491
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 492
    return-object p0
.end method

.method public setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/FragmentTransaction;
    .registers 3
    .parameter "text"

    .prologue
    .line 496
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    .line 497
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 498
    return-object p0
.end method

.method public setBreadCrumbTitle(I)Landroid/support/v4/app/FragmentTransaction;
    .registers 3
    .parameter "res"

    .prologue
    .line 478
    iput p1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    .line 479
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 480
    return-object p0
.end method

.method public setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/FragmentTransaction;
    .registers 3
    .parameter "text"

    .prologue
    .line 484
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    .line 485
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 486
    return-object p0
.end method

.method public setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;
    .registers 4
    .parameter "enter"
    .parameter "exit"

    .prologue
    const/4 v0, 0x0

    .line 432
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/support/v4/app/BackStackRecord;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;
    .registers 5
    .parameter "enter"
    .parameter "exit"
    .parameter "popEnter"
    .parameter "popExit"

    .prologue
    .line 437
    iput p1, p0, Landroid/support/v4/app/BackStackRecord;->mEnterAnim:I

    .line 438
    iput p2, p0, Landroid/support/v4/app/BackStackRecord;->mExitAnim:I

    .line 439
    iput p3, p0, Landroid/support/v4/app/BackStackRecord;->mPopEnterAnim:I

    .line 440
    iput p4, p0, Landroid/support/v4/app/BackStackRecord;->mPopExitAnim:I

    .line 441
    return-object p0
.end method

.method public setTransition(I)Landroid/support/v4/app/FragmentTransaction;
    .registers 2
    .parameter "transition"

    .prologue
    .line 445
    iput p1, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    .line 446
    return-object p0
.end method

.method public setTransitionStyle(I)Landroid/support/v4/app/FragmentTransaction;
    .registers 2
    .parameter "styleRes"

    .prologue
    .line 450
    iput p1, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    .line 451
    return-object p0
.end method

.method public show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
    .registers 4
    .parameter "fragment"

    .prologue
    .line 405
    new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;

    invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    .line 406
    .local v0, op:Landroid/support/v4/app/BackStackRecord$Op;
    const/4 v1, 0x5

    iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    .line 407
    iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 408
    invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 410
    return-object p0
.end method
