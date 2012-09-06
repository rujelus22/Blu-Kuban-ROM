.class Lcom/google/android/apps/plus/views/ExpandingScrollView$1;
.super Ljava/lang/Object;
.source "ExpandingScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/views/ExpandingScrollView;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/views/ExpandingScrollView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/views/ExpandingScrollView;)V
    .registers 2
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView$1;->this$0:Lcom/google/android/apps/plus/views/ExpandingScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 193
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView$1;->this$0:Lcom/google/android/apps/plus/views/ExpandingScrollView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ExpandingScrollView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_16

    .line 194
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView$1;->this$0:Lcom/google/android/apps/plus/views/ExpandingScrollView;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/plus/views/ExpandingScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 195
    .local v0, child:Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 198
    .end local v0           #child:Landroid/view/View;
    :cond_16
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView$1;->this$0:Lcom/google/android/apps/plus/views/ExpandingScrollView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ExpandingScrollView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView$1;->this$0:Lcom/google/android/apps/plus/views/ExpandingScrollView;

    #getter for: Lcom/google/android/apps/plus/views/ExpandingScrollView;->mOriginalTranslationY:I
    invoke-static {v3}, Lcom/google/android/apps/plus/views/ExpandingScrollView;->access$200(Lcom/google/android/apps/plus/views/ExpandingScrollView;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-static {}, Lcom/google/android/apps/plus/views/ExpandingScrollView;->access$100()Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0x2ee

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 200
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView$1;->this$0:Lcom/google/android/apps/plus/views/ExpandingScrollView;

    const/4 v3, 0x0

    #setter for: Lcom/google/android/apps/plus/views/ExpandingScrollView;->mAnimateInRunnable:Ljava/lang/Runnable;
    invoke-static {v2, v3}, Lcom/google/android/apps/plus/views/ExpandingScrollView;->access$302(Lcom/google/android/apps/plus/views/ExpandingScrollView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 201
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView$1;->this$0:Lcom/google/android/apps/plus/views/ExpandingScrollView;

    const/4 v3, 0x1

    #setter for: Lcom/google/android/apps/plus/views/ExpandingScrollView;->mHasPlayedAnimation:Z
    invoke-static {v2, v3}, Lcom/google/android/apps/plus/views/ExpandingScrollView;->access$402(Lcom/google/android/apps/plus/views/ExpandingScrollView;Z)Z

    .line 203
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ExpandingScrollView$1;->this$0:Lcom/google/android/apps/plus/views/ExpandingScrollView;

    new-instance v3, Lcom/google/android/apps/plus/views/ExpandingScrollView$1$1;

    invoke-direct {v3, p0}, Lcom/google/android/apps/plus/views/ExpandingScrollView$1$1;-><init>(Lcom/google/android/apps/plus/views/ExpandingScrollView$1;)V

    const-wide/16 v4, 0x3b6

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/apps/plus/views/ExpandingScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 212
    return-void
.end method
