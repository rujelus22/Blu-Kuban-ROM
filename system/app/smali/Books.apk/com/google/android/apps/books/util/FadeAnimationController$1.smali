.class Lcom/google/android/apps/books/util/FadeAnimationController$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FadeAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/util/FadeAnimationController;->setVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/util/FadeAnimationController;

.field final synthetic val$animator:Landroid/animation/Animator;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/util/FadeAnimationController;Landroid/animation/Animator;Z)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/android/apps/books/util/FadeAnimationController$1;->this$0:Lcom/google/android/apps/books/util/FadeAnimationController;

    iput-object p2, p0, Lcom/google/android/apps/books/util/FadeAnimationController$1;->val$animator:Landroid/animation/Animator;

    iput-boolean p3, p0, Lcom/google/android/apps/books/util/FadeAnimationController$1;->val$visible:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/books/util/FadeAnimationController$1;->val$animator:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/google/android/apps/books/util/FadeAnimationController$1;->this$0:Lcom/google/android/apps/books/util/FadeAnimationController;

    #getter for: Lcom/google/android/apps/books/util/FadeAnimationController;->mCurrentAnimator:Landroid/animation/Animator;
    invoke-static {v1}, Lcom/google/android/apps/books/util/FadeAnimationController;->access$000(Lcom/google/android/apps/books/util/FadeAnimationController;)Landroid/animation/Animator;

    move-result-object v1

    if-ne v0, v1, :cond_10

    .line 73
    iget-object v0, p0, Lcom/google/android/apps/books/util/FadeAnimationController$1;->this$0:Lcom/google/android/apps/books/util/FadeAnimationController;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/books/util/FadeAnimationController;->mCurrentAnimator:Landroid/animation/Animator;
    invoke-static {v0, v1}, Lcom/google/android/apps/books/util/FadeAnimationController;->access$002(Lcom/google/android/apps/books/util/FadeAnimationController;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 75
    :cond_10
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/apps/books/util/FadeAnimationController$1;->val$animator:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/google/android/apps/books/util/FadeAnimationController$1;->this$0:Lcom/google/android/apps/books/util/FadeAnimationController;

    #getter for: Lcom/google/android/apps/books/util/FadeAnimationController;->mCurrentAnimator:Landroid/animation/Animator;
    invoke-static {v1}, Lcom/google/android/apps/books/util/FadeAnimationController;->access$000(Lcom/google/android/apps/books/util/FadeAnimationController;)Landroid/animation/Animator;

    move-result-object v1

    if-ne v0, v1, :cond_1f

    .line 64
    iget-boolean v0, p0, Lcom/google/android/apps/books/util/FadeAnimationController$1;->val$visible:Z

    if-nez v0, :cond_19

    .line 65
    iget-object v0, p0, Lcom/google/android/apps/books/util/FadeAnimationController$1;->this$0:Lcom/google/android/apps/books/util/FadeAnimationController;

    #getter for: Lcom/google/android/apps/books/util/FadeAnimationController;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/apps/books/util/FadeAnimationController;->access$100(Lcom/google/android/apps/books/util/FadeAnimationController;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    :cond_19
    iget-object v0, p0, Lcom/google/android/apps/books/util/FadeAnimationController$1;->this$0:Lcom/google/android/apps/books/util/FadeAnimationController;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/books/util/FadeAnimationController;->mCurrentAnimator:Landroid/animation/Animator;
    invoke-static {v0, v1}, Lcom/google/android/apps/books/util/FadeAnimationController;->access$002(Lcom/google/android/apps/books/util/FadeAnimationController;Landroid/animation/Animator;)Landroid/animation/Animator;

    .line 69
    :cond_1f
    return-void
.end method
