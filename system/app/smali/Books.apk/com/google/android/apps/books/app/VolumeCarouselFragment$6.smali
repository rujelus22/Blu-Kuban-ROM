.class Lcom/google/android/apps/books/app/VolumeCarouselFragment$6;
.super Ljava/lang/Object;
.source "VolumeCarouselFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/VolumeCarouselFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 536
    iput-object p1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$6;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setFinalVisibility()V
    .registers 3

    .prologue
    .line 541
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$6;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    #getter for: Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mShowingOfflineUi:Z
    invoke-static {v0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$300(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 542
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$6;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    #getter for: Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mManageOfflineView:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$800(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 544
    :cond_13
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 552
    invoke-direct {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$6;->setFinalVisibility()V

    .line 553
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$6;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mManageOfflineViewAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$902(Lcom/google/android/apps/books/app/VolumeCarouselFragment;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 554
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 547
    invoke-direct {p0}, Lcom/google/android/apps/books/app/VolumeCarouselFragment$6;->setFinalVisibility()V

    .line 548
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$6;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/books/app/VolumeCarouselFragment;->mManageOfflineViewAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$902(Lcom/google/android/apps/books/app/VolumeCarouselFragment;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 549
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 556
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 538
    return-void
.end method
