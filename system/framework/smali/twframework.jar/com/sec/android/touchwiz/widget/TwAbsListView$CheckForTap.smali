.class final Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;
.super Ljava/lang/Object;
.source "TwAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;


# direct methods
.method constructor <init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;)V
    .registers 2
    .parameter

    .prologue
    .line 3038
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 3040
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v4, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    if-nez v4, :cond_9a

    .line 3041
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iput v7, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    .line 3042
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v5, v5, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v6, v6, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3043
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_9a

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-nez v4, :cond_9a

    .line 3044
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v5, 0x0

    iput v5, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mLayoutMode:I

    .line 3046
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-boolean v4, v4, Lcom/sec/android/touchwiz/widget/TwAdapterView;->mDataChanged:Z

    if-nez v4, :cond_a6

    .line 3047
    invoke-virtual {v0, v7}, Landroid/view/View;->setPressed(Z)V

    .line 3048
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v4, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->setPressed(Z)V

    .line 3049
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->layoutChildren()V

    .line 3050
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget v5, v5, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mMotionPosition:I

    invoke-virtual {v4, v5, v0}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->positionSelector(ILandroid/view/View;)V

    .line 3051
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->refreshDrawableState()V

    .line 3053
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    .line 3054
    .local v3, longPressTimeout:I
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->isLongClickable()Z

    move-result v2

    .line 3056
    .local v2, longClickable:Z
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_6e

    .line 3057
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v4, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3058
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_6e

    instance-of v4, v1, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v4, :cond_6e

    .line 3059
    if-eqz v2, :cond_9b

    .line 3060
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 3067
    :cond_6e
    :goto_6e
    if-eqz v2, :cond_a1

    .line 3068
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$500(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;

    move-result-object v4

    if-nez v4, :cond_85

    .line 3069
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    new-instance v5, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;-><init>(Lcom/sec/android/touchwiz/widget/TwAbsListView;Lcom/sec/android/touchwiz/widget/TwAbsListView$1;)V

    #setter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;
    invoke-static {v4, v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$502(Lcom/sec/android/touchwiz/widget/TwAbsListView;Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;)Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;

    .line 3071
    :cond_85
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;
    invoke-static {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$500(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;->rememberWindowAttachCount()V

    .line 3072
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    #getter for: Lcom/sec/android/touchwiz/widget/TwAbsListView;->mPendingCheckForLongPress:Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;
    invoke-static {v5}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->access$500(Lcom/sec/android/touchwiz/widget/TwAbsListView;)Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForLongPress;

    move-result-object v5

    int-to-long v6, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3081
    .end local v0           #child:Landroid/view/View;
    .end local v2           #longClickable:Z
    .end local v3           #longPressTimeout:I
    :cond_9a
    :goto_9a
    return-void

    .line 3062
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    .restart local v2       #longClickable:Z
    .restart local v3       #longPressTimeout:I
    :cond_9b
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_6e

    .line 3074
    :cond_a1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iput v8, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    goto :goto_9a

    .line 3077
    .end local v2           #longClickable:Z
    .end local v3           #longPressTimeout:I
    :cond_a6
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwAbsListView$CheckForTap;->this$0:Lcom/sec/android/touchwiz/widget/TwAbsListView;

    iput v8, v4, Lcom/sec/android/touchwiz/widget/TwAbsListView;->mTouchMode:I

    goto :goto_9a
.end method
