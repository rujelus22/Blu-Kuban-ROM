.class public Lcom/android/email/activity/ThreePaneLayout;
.super Landroid/widget/LinearLayout;
.source "ThreePaneLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/ThreePaneLayout$1;,
        Lcom/android/email/activity/ThreePaneLayout$SavedState;,
        Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;,
        Lcom/android/email/activity/ThreePaneLayout$EmptyCallback;,
        Lcom/android/email/activity/ThreePaneLayout$Callback;
    }
.end annotation


# static fields
.field private static final INTERPOLATOR:Landroid/animation/TimeInterpolator;


# instance fields
.field private mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;

.field private mFirstSizeChangedDone:Z

.field private mFoggedGlass:Landroid/view/View;

.field private mInitialPaneState:I

.field private mLastAnimator:Landroid/animation/Animator;

.field private mLastAnimatorListener:Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;

.field private mLeftPane:Landroid/view/View;

.field private mMailboxListWidth:I

.field private mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

.field private mMessageListWidth:I

.field private mMiddlePane:Landroid/view/View;

.field private mPaneState:I

.field private mRightPane:Landroid/view/View;

.field private mShowHideViews:[[[Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 51
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fe0

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/android/email/activity/ThreePaneLayout;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, -0x1

    .line 146
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 78
    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    .line 81
    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    .line 122
    sget-object v0, Lcom/android/email/activity/ThreePaneLayout$EmptyCallback;->INSTANCE:Lcom/android/email/activity/ThreePaneLayout$Callback;

    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;

    .line 147
    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->initView()V

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, -0x1

    .line 141
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    .line 81
    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    .line 122
    sget-object v0, Lcom/android/email/activity/ThreePaneLayout$EmptyCallback;->INSTANCE:Lcom/android/email/activity/ThreePaneLayout$Callback;

    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;

    .line 142
    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->initView()V

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, -0x1

    .line 136
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    .line 81
    iput v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    .line 122
    sget-object v0, Lcom/android/email/activity/ThreePaneLayout$EmptyCallback;->INSTANCE:Lcom/android/email/activity/ThreePaneLayout$Callback;

    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;

    .line 137
    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->initView()V

    .line 138
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/ThreePaneLayout;)Lcom/android/email/activity/ThreePaneLayout$Callback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;

    return-object v0
.end method

.method private changePaneState(IZ)Z
    .registers 17
    .parameter "newState"
    .parameter "animate"

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->isPaneCollapsible()Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v1, 0x2

    if-ne p1, v1, :cond_a

    .line 334
    const/4 p1, 0x1

    .line 336
    :cond_a
    iget-boolean v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mFirstSizeChangedDone:Z

    if-nez v1, :cond_12

    .line 340
    iput p1, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    .line 341
    const/4 v1, 0x0

    .line 426
    :goto_11
    return v1

    .line 343
    :cond_12
    iget v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    if-ne p1, v1, :cond_18

    .line 344
    const/4 v1, 0x0

    goto :goto_11

    .line 347
    :cond_18
    iget v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1f

    .line 348
    const/16 p2, 0x0

    .line 351
    :cond_1f
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->getVisiblePanes()I

    move-result v6

    .line 352
    .local v6, previousVisiblePanes:I
    iput p1, p0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    .line 356
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->getMeasuredWidth()I

    move-result v10

    .line 363
    .local v10, totalWidth:I
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->isPaneCollapsible()Z

    move-result v1

    if-nez v1, :cond_a7

    .line 364
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    iget v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mMailboxListWidth:I

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 365
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    iget v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageListWidth:I

    sub-int v3, v10, v3

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 367
    iget v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    packed-switch v1, :pswitch_data_dc

    .line 381
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 370
    :pswitch_4a
    const-string v2, "moving to [mailbox list + message list]"

    .line 371
    .local v2, animatorLabel:Ljava/lang/String;
    const/4 v7, 0x0

    .line 372
    .local v7, expectedMailboxLeft:I
    iget v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMailboxListWidth:I

    sub-int v8, v10, v1

    .line 412
    .local v8, expectedMessageListWidth:I
    :goto_51
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mShowHideViews:[[[Landroid/view/View;

    iget v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    aget-object v9, v1, v3

    .line 413
    .local v9, showHideViews:[[Landroid/view/View;
    new-instance v0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;

    const/4 v1, 0x0

    aget-object v3, v9, v1

    const/4 v1, 0x1

    aget-object v4, v9, v1

    const/4 v1, 0x2

    aget-object v5, v9, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;-><init>(Lcom/android/email/activity/ThreePaneLayout;Ljava/lang/String;[Landroid/view/View;[Landroid/view/View;[Landroid/view/View;I)V

    .line 420
    .local v0, listener:Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;
    if-eqz p2, :cond_da

    const/16 v1, 0x96

    :goto_6a
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    const-string v5, "mailboxListLeftAnim"

    const/4 v11, 0x2

    new-array v11, v11, [I

    const/4 v12, 0x0

    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentMailboxLeft()I

    move-result v13

    aput v13, v11, v12

    const/4 v12, 0x1

    aput v7, v11, v12

    invoke-static {v5, v11}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "messageListWidthAnim"

    const/4 v11, 0x2

    new-array v11, v11, [I

    const/4 v12, 0x0

    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->getCurrentMessageListWidth()I

    move-result v13

    aput v13, v11, v12

    const/4 v12, 0x1

    aput v8, v11, v12

    invoke-static {v5, v11}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {p0, v1, v0, v3}, Lcom/android/email/activity/ThreePaneLayout;->startLayoutAnimation(ILcom/android/email/activity/ThreePaneLayout$AnimatorListener;[Landroid/animation/PropertyValuesHolder;)V

    .line 426
    const/4 v1, 0x1

    goto/16 :goto_11

    .line 376
    .end local v0           #listener:Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;
    .end local v2           #animatorLabel:Ljava/lang/String;
    .end local v7           #expectedMailboxLeft:I
    .end local v8           #expectedMessageListWidth:I
    .end local v9           #showHideViews:[[Landroid/view/View;
    :pswitch_9f
    const-string v2, "moving to [message list + message view]"

    .line 377
    .restart local v2       #animatorLabel:Ljava/lang/String;
    iget v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMailboxListWidth:I

    neg-int v7, v1

    .line 378
    .restart local v7       #expectedMailboxLeft:I
    iget v8, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageListWidth:I

    .line 379
    .restart local v8       #expectedMessageListWidth:I
    goto :goto_51

    .line 385
    .end local v2           #animatorLabel:Ljava/lang/String;
    .end local v7           #expectedMailboxLeft:I
    .end local v8           #expectedMessageListWidth:I
    :cond_a7
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    iget v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mMailboxListWidth:I

    invoke-direct {p0, v1, v3}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 386
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-direct {p0, v1, v10}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 388
    iget v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    packed-switch v1, :pswitch_data_e4

    .line 408
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 391
    :pswitch_be
    const-string v2, "moving to [mailbox list + message list]"

    .line 392
    .restart local v2       #animatorLabel:Ljava/lang/String;
    const/4 v7, 0x0

    .line 393
    .restart local v7       #expectedMailboxLeft:I
    iget v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMailboxListWidth:I

    sub-int v8, v10, v1

    .line 394
    .restart local v8       #expectedMessageListWidth:I
    goto :goto_51

    .line 397
    .end local v2           #animatorLabel:Ljava/lang/String;
    .end local v7           #expectedMailboxLeft:I
    .end local v8           #expectedMessageListWidth:I
    :pswitch_c6
    const-string v2, "moving to [message list + message view]"

    .line 398
    .restart local v2       #animatorLabel:Ljava/lang/String;
    iget v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMailboxListWidth:I

    neg-int v7, v1

    .line 399
    .restart local v7       #expectedMailboxLeft:I
    iget v8, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageListWidth:I

    .line 400
    .restart local v8       #expectedMessageListWidth:I
    goto :goto_51

    .line 403
    .end local v2           #animatorLabel:Ljava/lang/String;
    .end local v7           #expectedMailboxLeft:I
    .end local v8           #expectedMessageListWidth:I
    :pswitch_ce
    const-string v2, "moving to [message view]"

    .line 404
    .restart local v2       #animatorLabel:Ljava/lang/String;
    iget v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMailboxListWidth:I

    iget v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageListWidth:I

    add-int/2addr v1, v3

    neg-int v7, v1

    .line 405
    .restart local v7       #expectedMailboxLeft:I
    iget v8, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageListWidth:I

    .line 406
    .restart local v8       #expectedMessageListWidth:I
    goto/16 :goto_51

    .line 420
    .restart local v0       #listener:Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;
    .restart local v9       #showHideViews:[[Landroid/view/View;
    :cond_da
    const/4 v1, 0x0

    goto :goto_6a

    .line 367
    :pswitch_data_dc
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_9f
    .end packed-switch

    .line 388
    :pswitch_data_e4
    .packed-switch 0x0
        :pswitch_be
        :pswitch_ce
        :pswitch_c6
    .end packed-switch
.end method

.method private getCurrentMailboxLeft()I
    .registers 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    return v0
.end method

.method private getCurrentMessageListWidth()I
    .registers 2

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    return v0
.end method

.method private initView()V
    .registers 2

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/ThreePaneLayout;->setOrientation(I)V

    .line 153
    return-void
.end method

.method private onFirstSizeChanged()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 319
    iget v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    if-eq v0, v2, :cond_d

    .line 320
    iget v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZ)Z

    .line 321
    iput v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    .line 323
    :cond_d
    return-void
.end method

.method private setViewWidth(Landroid/view/View;I)V
    .registers 4
    .parameter "v"
    .parameter "value"

    .prologue
    .line 463
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 464
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->requestLayout()V

    .line 465
    return-void
.end method

.method private varargs startLayoutAnimation(ILcom/android/email/activity/ThreePaneLayout$AnimatorListener;[Landroid/animation/PropertyValuesHolder;)V
    .registers 8
    .parameter "duration"
    .parameter "listener"
    .parameter "values"

    .prologue
    .line 492
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLastAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_9

    .line 493
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLastAnimator:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 495
    :cond_9
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLastAnimatorListener:Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;

    if-eqz v1, :cond_12

    .line 502
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLastAnimatorListener:Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;

    invoke-virtual {v1}, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->cancel()V

    .line 505
    :cond_12
    invoke-static {p0, p3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 507
    .local v0, animator:Landroid/animation/ObjectAnimator;
    sget-object v1, Lcom/android/email/activity/ThreePaneLayout;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 508
    if-eqz p2, :cond_25

    .line 509
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 511
    :cond_25
    iput-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLastAnimator:Landroid/animation/Animator;

    .line 512
    iput-object p2, p0, Lcom/android/email/activity/ThreePaneLayout;->mLastAnimatorListener:Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;

    .line 513
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 514
    return-void
.end method


# virtual methods
.method public getLeftPaneId()I
    .registers 2

    .prologue
    .line 433
    const v0, 0x7f0e00c6

    return v0
.end method

.method public getMessageCommandButtons()Lcom/android/email/activity/MessageCommandButtonView;
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    return-object v0
.end method

.method public getMiddlePaneId()I
    .registers 2

    .prologue
    .line 440
    const v0, 0x7f0e00c7

    return v0
.end method

.method public getRightPaneId()I
    .registers 2

    .prologue
    .line 447
    const v0, 0x7f0e00c9

    return v0
.end method

.method public getVisiblePanes()I
    .registers 3

    .prologue
    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, ret:I
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_b

    or-int/lit8 v0, v0, 0x4

    .line 271
    :cond_b
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_15

    or-int/lit8 v0, v0, 0x2

    .line 272
    :cond_15
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1f

    or-int/lit8 v0, v0, 0x1

    .line 273
    :cond_1f
    return v0
.end method

.method public isLeftPaneVisible()Z
    .registers 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isPaneCollapsible()Z
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mFoggedGlass:Landroid/view/View;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 452
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 460
    :cond_8
    :goto_8
    return-void

    .line 454
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->isPaneCollapsible()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 457
    invoke-direct {p0, v1, v1}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZ)Z

    goto :goto_8

    .line 452
    nop

    :pswitch_data_14
    .packed-switch 0x7f0e00cb
        :pswitch_9
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .registers 10

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 157
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 159
    const v1, 0x7f0e00c6

    invoke-virtual {p0, v1}, Lcom/android/email/activity/ThreePaneLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    .line 160
    const v1, 0x7f0e00c7

    invoke-virtual {p0, v1}, Lcom/android/email/activity/ThreePaneLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    .line 161
    const v1, 0x7f0e00ca

    invoke-virtual {p0, v1}, Lcom/android/email/activity/ThreePaneLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MessageCommandButtonView;

    iput-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    .line 164
    const v1, 0x7f0e00cb

    invoke-virtual {p0, v1}, Lcom/android/email/activity/ThreePaneLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mFoggedGlass:Landroid/view/View;

    .line 165
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mFoggedGlass:Landroid/view/View;

    if-eqz v1, :cond_ba

    .line 166
    const v1, 0x7f0e00c8

    invoke-virtual {p0, v1}, Lcom/android/email/activity/ThreePaneLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    .line 167
    iget-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mFoggedGlass:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    :goto_3f
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->isPaneCollapsible()Z

    move-result v1

    if-nez v1, :cond_c5

    .line 173
    new-array v1, v8, [[[Landroid/view/View;

    new-array v2, v8, [[Landroid/view/View;

    new-array v3, v7, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    aput-object v4, v3, v6

    aput-object v3, v2, v5

    new-array v3, v6, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    aput-object v4, v3, v5

    aput-object v3, v2, v6

    new-array v3, v6, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    aput-object v4, v3, v5

    aput-object v3, v2, v7

    aput-object v2, v1, v5

    new-array v2, v8, [[Landroid/view/View;

    new-array v3, v8, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    aput-object v4, v3, v7

    aput-object v3, v2, v5

    new-array v3, v6, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    aput-object v4, v3, v5

    aput-object v3, v2, v6

    new-array v3, v5, [Landroid/view/View;

    aput-object v3, v2, v7

    aput-object v2, v1, v6

    new-array v2, v8, [[Landroid/view/View;

    new-array v3, v5, [Landroid/view/View;

    aput-object v3, v2, v5

    new-array v3, v5, [Landroid/view/View;

    aput-object v3, v2, v6

    new-array v3, v5, [Landroid/view/View;

    aput-object v3, v2, v7

    aput-object v2, v1, v7

    iput-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mShowHideViews:[[[Landroid/view/View;

    .line 216
    :goto_99
    iput v5, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    .line 218
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 219
    .local v0, resources:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMailboxListWidth:I

    .line 221
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageListWidth:I

    .line 222
    return-void

    .line 169
    .end local v0           #resources:Landroid/content/res/Resources;
    :cond_ba
    const v1, 0x7f0e00c9

    invoke-virtual {p0, v1}, Lcom/android/email/activity/ThreePaneLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    goto/16 :goto_3f

    .line 194
    :cond_c5
    new-array v1, v8, [[[Landroid/view/View;

    new-array v2, v8, [[Landroid/view/View;

    new-array v3, v7, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    aput-object v4, v3, v6

    aput-object v3, v2, v5

    new-array v3, v7, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mFoggedGlass:Landroid/view/View;

    aput-object v4, v3, v6

    aput-object v3, v2, v6

    new-array v3, v6, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    aput-object v4, v3, v5

    aput-object v3, v2, v7

    aput-object v2, v1, v5

    new-array v2, v8, [[Landroid/view/View;

    new-array v3, v7, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    aput-object v4, v3, v6

    aput-object v3, v2, v5

    new-array v3, v8, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mFoggedGlass:Landroid/view/View;

    aput-object v4, v3, v7

    aput-object v3, v2, v6

    new-array v3, v5, [Landroid/view/View;

    aput-object v3, v2, v7

    aput-object v2, v1, v6

    new-array v2, v8, [[Landroid/view/View;

    const/4 v3, 0x4

    new-array v3, v3, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mRightPane:Landroid/view/View;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mMessageCommandButtons:Lcom/android/email/activity/MessageCommandButtonView;

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mFoggedGlass:Landroid/view/View;

    aput-object v4, v3, v8

    aput-object v3, v2, v5

    new-array v3, v6, [Landroid/view/View;

    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    aput-object v4, v3, v5

    aput-object v3, v2, v6

    new-array v3, v5, [Landroid/view/View;

    aput-object v3, v2, v7

    aput-object v2, v1, v7

    iput-object v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mShowHideViews:[[[Landroid/view/View;

    goto/16 :goto_99
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .parameter "state"

    .prologue
    .line 250
    move-object v0, p1

    check-cast v0, Lcom/android/email/activity/ThreePaneLayout$SavedState;

    .line 251
    .local v0, ss:Lcom/android/email/activity/ThreePaneLayout$SavedState;
    invoke-virtual {v0}, Lcom/android/email/activity/ThreePaneLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 252
    iget v1, v0, Lcom/android/email/activity/ThreePaneLayout$SavedState;->mPaneState:I

    iput v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    .line 253
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 242
    new-instance v0, Lcom/android/email/activity/ThreePaneLayout$SavedState;

    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/email/activity/ThreePaneLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 243
    .local v0, ss:Lcom/android/email/activity/ThreePaneLayout$SavedState;
    iget v1, p0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    iput v1, v0, Lcom/android/email/activity/ThreePaneLayout$SavedState;->mPaneState:I

    .line 244
    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 6
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 257
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 258
    iget-boolean v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mFirstSizeChangedDone:Z

    if-nez v0, :cond_d

    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mFirstSizeChangedDone:Z

    .line 260
    invoke-direct {p0}, Lcom/android/email/activity/ThreePaneLayout;->onFirstSizeChanged()V

    .line 262
    :cond_d
    return-void
.end method

.method public setCallback(Lcom/android/email/activity/ThreePaneLayout$Callback;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 226
    if-nez p1, :cond_4

    sget-object p1, Lcom/android/email/activity/ThreePaneLayout$EmptyCallback;->INSTANCE:Lcom/android/email/activity/ThreePaneLayout$Callback;

    .end local p1
    :cond_4
    iput-object p1, p0, Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;

    .line 227
    return-void
.end method

.method public setMailboxListLeftAnim(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mLeftPane:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 472
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->requestLayout()V

    .line 473
    return-void
.end method

.method public setMessageListWidthAnim(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout;->mMiddlePane:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/android/email/activity/ThreePaneLayout;->setViewWidth(Landroid/view/View;I)V

    .line 477
    return-void
.end method

.method public showLeftPane()Z
    .registers 3

    .prologue
    .line 309
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZ)Z

    move-result v0

    return v0
.end method

.method public showRightPane()Z
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 329
    invoke-direct {p0, v0, v0}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZ)Z

    move-result v0

    return v0
.end method

.method public uncollapsePane()Z
    .registers 5

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 291
    invoke-virtual {p0}, Lcom/android/email/activity/ThreePaneLayout;->isPaneCollapsible()Z

    move-result v2

    if-nez v2, :cond_a

    .line 302
    :cond_9
    :goto_9
    return v0

    .line 295
    :cond_a
    iget v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mPaneState:I

    if-ne v2, v1, :cond_13

    .line 296
    invoke-direct {p0, v3, v1}, Lcom/android/email/activity/ThreePaneLayout;->changePaneState(IZ)Z

    move-result v0

    goto :goto_9

    .line 297
    :cond_13
    iget v2, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    if-ne v2, v1, :cond_9

    .line 298
    iput v3, p0, Lcom/android/email/activity/ThreePaneLayout;->mInitialPaneState:I

    move v0, v1

    .line 299
    goto :goto_9
.end method
