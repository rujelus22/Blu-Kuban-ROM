.class Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;
.super Ljava/lang/Object;
.source "ThreePaneLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/ThreePaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorListener"
.end annotation


# instance fields
.field private mCancelled:Z

.field private final mLogLabel:Ljava/lang/String;

.field private final mPreviousVisiblePanes:I

.field private final mViewsGone:[Landroid/view/View;

.field private final mViewsInvisible:[Landroid/view/View;

.field private final mViewsVisible:[Landroid/view/View;

.field final synthetic this$0:Lcom/android/email/activity/ThreePaneLayout;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/ThreePaneLayout;Ljava/lang/String;[Landroid/view/View;[Landroid/view/View;[Landroid/view/View;I)V
    .registers 7
    .parameter
    .parameter "logLabel"
    .parameter "viewsVisible"
    .parameter "viewsInvisible"
    .parameter "viewsGone"
    .parameter "previousVisiblePanes"

    .prologue
    .line 531
    iput-object p1, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->this$0:Lcom/android/email/activity/ThreePaneLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 532
    iput-object p2, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mLogLabel:Ljava/lang/String;

    .line 533
    iput-object p3, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mViewsVisible:[Landroid/view/View;

    .line 534
    iput-object p4, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mViewsInvisible:[Landroid/view/View;

    .line 535
    iput-object p5, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mViewsGone:[Landroid/view/View;

    .line 536
    iput p6, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mPreviousVisiblePanes:I

    .line 537
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 543
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 546
    const-string v0, "cancel"

    invoke-direct {p0, v0}, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->log(Ljava/lang/String;)V

    .line 547
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mCancelled:Z

    .line 548
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 580
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3
    .parameter "animation"

    .prologue
    .line 587
    iget-boolean v0, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mCancelled:Z

    if-eqz v0, :cond_5

    .line 591
    :goto_4
    return-void

    .line 590
    :cond_5
    const-string v0, "end"

    invoke-direct {p0, v0}, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->log(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 576
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 8
    .parameter "animation"

    .prologue
    .line 555
    const-string v4, "start"

    invoke-direct {p0, v4}, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->log(Ljava/lang/String;)V

    .line 556
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mViewsVisible:[Landroid/view/View;

    .local v0, arr$:[Landroid/view/View;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_9
    if-ge v1, v2, :cond_14

    aget-object v3, v0, v1

    .line 557
    .local v3, v:Landroid/view/View;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 556
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 565
    .end local v3           #v:Landroid/view/View;
    :cond_14
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mViewsInvisible:[Landroid/view/View;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_18
    if-ge v1, v2, :cond_23

    aget-object v3, v0, v1

    .line 566
    .restart local v3       #v:Landroid/view/View;
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 565
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 568
    .end local v3           #v:Landroid/view/View;
    :cond_23
    iget-object v0, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mViewsGone:[Landroid/view/View;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_27
    if-ge v1, v2, :cond_33

    aget-object v3, v0, v1

    .line 569
    .restart local v3       #v:Landroid/view/View;
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 568
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 571
    .end local v3           #v:Landroid/view/View;
    :cond_33
    iget-object v4, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->this$0:Lcom/android/email/activity/ThreePaneLayout;

    #getter for: Lcom/android/email/activity/ThreePaneLayout;->mCallback:Lcom/android/email/activity/ThreePaneLayout$Callback;
    invoke-static {v4}, Lcom/android/email/activity/ThreePaneLayout;->access$000(Lcom/android/email/activity/ThreePaneLayout;)Lcom/android/email/activity/ThreePaneLayout$Callback;

    move-result-object v4

    iget v5, p0, Lcom/android/email/activity/ThreePaneLayout$AnimatorListener;->mPreviousVisiblePanes:I

    invoke-interface {v4, v5}, Lcom/android/email/activity/ThreePaneLayout$Callback;->onVisiblePanesChanged(I)V

    .line 572
    return-void
.end method
