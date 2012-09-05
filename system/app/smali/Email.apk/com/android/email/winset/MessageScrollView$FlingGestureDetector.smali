.class Lcom/android/email/winset/MessageScrollView$FlingGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MessageScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/winset/MessageScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FlingGestureDetector"
.end annotation


# instance fields
.field private final SWIPE_THRESHOLD_VELOCITY:I

.field private bGesturesEnabled:Z

.field final synthetic this$0:Lcom/android/email/winset/MessageScrollView;


# direct methods
.method public constructor <init>(Lcom/android/email/winset/MessageScrollView;)V
    .registers 3
    .parameter

    .prologue
    .line 732
    iput-object p1, p0, Lcom/android/email/winset/MessageScrollView$FlingGestureDetector;->this$0:Lcom/android/email/winset/MessageScrollView;

    .line 733
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 729
    const/16 v0, 0x96

    iput v0, p0, Lcom/android/email/winset/MessageScrollView$FlingGestureDetector;->SWIPE_THRESHOLD_VELOCITY:I

    .line 730
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/winset/MessageScrollView$FlingGestureDetector;->bGesturesEnabled:Z

    .line 734
    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 743
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 13
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 748
    iget-boolean v4, p0, Lcom/android/email/winset/MessageScrollView$FlingGestureDetector;->bGesturesEnabled:Z

    if-eqz v4, :cond_7a

    iget-object v4, p0, Lcom/android/email/winset/MessageScrollView$FlingGestureDetector;->this$0:Lcom/android/email/winset/MessageScrollView;

    #getter for: Lcom/android/email/winset/MessageScrollView;->mPreScrollX:I
    invoke-static {v4}, Lcom/android/email/winset/MessageScrollView;->access$000(Lcom/android/email/winset/MessageScrollView;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_7a

    .line 749
    iget-object v4, p0, Lcom/android/email/winset/MessageScrollView$FlingGestureDetector;->this$0:Lcom/android/email/winset/MessageScrollView;

    invoke-virtual {v4}, Lcom/android/email/winset/MessageScrollView;->getWidth()I

    move-result v4

    div-int/lit8 v2, v4, 0x3

    .line 750
    .local v2, nMinDistanceX:I
    iget-object v4, p0, Lcom/android/email/winset/MessageScrollView$FlingGestureDetector;->this$0:Lcom/android/email/winset/MessageScrollView;

    invoke-virtual {v4}, Lcom/android/email/winset/MessageScrollView;->getHeight()I

    move-result v4

    div-int/lit8 v3, v4, 0x3

    .line 751
    .local v3, nMinDistanceY:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 752
    .local v0, distanceX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 753
    .local v1, distanceY:I
    if-le v0, v2, :cond_b5

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x4316

    cmpl-float v4, v4, v5

    if-lez v4, :cond_b5

    if-le v0, v1, :cond_b5

    if-ge v1, v3, :cond_b5

    .line 755
    iget-object v4, p0, Lcom/android/email/winset/MessageScrollView$FlingGestureDetector;->this$0:Lcom/android/email/winset/MessageScrollView;

    #getter for: Lcom/android/email/winset/MessageScrollView;->mInMessageView:Z
    invoke-static {v4}, Lcom/android/email/winset/MessageScrollView;->access$100(Lcom/android/email/winset/MessageScrollView;)Z

    move-result v4

    if-eqz v4, :cond_a5

    iget-object v4, p0, Lcom/android/email/winset/MessageScrollView$FlingGestureDetector;->this$0:Lcom/android/email/winset/MessageScrollView;

    #getter for: Lcom/android/email/winset/MessageScrollView;->mIsMessageTab:Z
    invoke-static {v4}, Lcom/android/email/winset/MessageScrollView;->access$200(Lcom/android/email/winset/MessageScrollView;)Z

    move-result v4

    if-eqz v4, :cond_a5

    .line 756
    iget-object v4, p0, Lcom/android/email/winset/MessageScrollView$FlingGestureDetector;->this$0:Lcom/android/email/winset/MessageScrollView;

    #getter for: Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;
    invoke-static {v4}, Lcom/android/email/winset/MessageScrollView;->access$300(Lcom/android/email/winset/MessageScrollView;)Lcom/android/email/activity/MessageWebView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/email/activity/MessageWebView;->isCreateActionMode()Z

    move-result v4

    if-nez v4, :cond_7b

    iget-object v4, p0, Lcom/android/email/winset/MessageScrollView$FlingGestureDetector;->this$0:Lcom/android/email/winset/MessageScrollView;

    #getter for: Lcom/android/email/winset/MessageScrollView;->mPreCheckNext:Z
    invoke-static {v4}, Lcom/android/email/winset/MessageScrollView;->access$400(Lcom/android/email/winset/MessageScrollView;)Z

    move-result v4

    if-eqz v4, :cond_7b

    cmpg-float v4, p3, v6

    if-gez v4, :cond_7b

    .line 758
    iget-object v4, p0, Lcom/android/email/winset/MessageScrollView$FlingGestureDetector;->this$0:Lcom/android/email/winset/MessageScrollView;

    invoke-virtual {v4}, Lcom/android/email/winset/MessageScrollView;->onNext()V

    .line 776
    .end local v0           #distanceX:I
    .end local v1           #distanceY:I
    .end local v2           #nMinDistanceX:I
    .end local v3           #nMinDistanceY:I
    :cond_7a
    :goto_7a
    return v7

    .line 759
    .restart local v0       #distanceX:I
    .restart local v1       #distanceY:I
    .restart local v2       #nMinDistanceX:I
    .restart local v3       #nMinDistanceY:I
    :cond_7b
    iget-object v4, p0, Lcom/android/email/winset/MessageScrollView$FlingGestureDetector;->this$0:Lcom/android/email/winset/MessageScrollView;

    #getter for: Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;
    invoke-static {v4}, Lcom/android/email/winset/MessageScrollView;->access$300(Lcom/android/email/winset/MessageScrollView;)Lcom/android/email/activity/MessageWebView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/email/activity/MessageWebView;->isCreateActionMode()Z

    move-result v4

    if-nez v4, :cond_99

    iget-object v4, p0, Lcom/android/email/winset/MessageScrollView$FlingGestureDetector;->this$0:Lcom/android/email/winset/MessageScrollView;

    #getter for: Lcom/android/email/winset/MessageScrollView;->mPreCheckPrev:Z
    invoke-static {v4}, Lcom/android/email/winset/MessageScrollView;->access$500(Lcom/android/email/winset/MessageScrollView;)Z

    move-result v4

    if-eqz v4, :cond_99

    cmpl-float v4, p3, v6

    if-lez v4, :cond_99

    .line 761
    iget-object v4, p0, Lcom/android/email/winset/MessageScrollView$FlingGestureDetector;->this$0:Lcom/android/email/winset/MessageScrollView;

    invoke-virtual {v4}, Lcom/android/email/winset/MessageScrollView;->onPrevious()V

    goto :goto_7a

    .line 763
    :cond_99
    iget-object v4, p0, Lcom/android/email/winset/MessageScrollView$FlingGestureDetector;->this$0:Lcom/android/email/winset/MessageScrollView;

    #getter for: Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;
    invoke-static {v4}, Lcom/android/email/winset/MessageScrollView;->access$300(Lcom/android/email/winset/MessageScrollView;)Lcom/android/email/activity/MessageWebView;

    move-result-object v4

    neg-float v5, p3

    float-to-int v5, v5

    invoke-virtual {v4, v5, v7}, Lcom/android/email/activity/MessageWebView;->flingScroll(II)V

    goto :goto_7a

    .line 766
    :cond_a5
    cmpg-float v4, p3, v6

    if-gez v4, :cond_af

    .line 767
    iget-object v4, p0, Lcom/android/email/winset/MessageScrollView$FlingGestureDetector;->this$0:Lcom/android/email/winset/MessageScrollView;

    invoke-virtual {v4}, Lcom/android/email/winset/MessageScrollView;->onNext()V

    goto :goto_7a

    .line 769
    :cond_af
    iget-object v4, p0, Lcom/android/email/winset/MessageScrollView$FlingGestureDetector;->this$0:Lcom/android/email/winset/MessageScrollView;

    invoke-virtual {v4}, Lcom/android/email/winset/MessageScrollView;->onPrevious()V

    goto :goto_7a

    .line 772
    :cond_b5
    iget-object v4, p0, Lcom/android/email/winset/MessageScrollView$FlingGestureDetector;->this$0:Lcom/android/email/winset/MessageScrollView;

    #getter for: Lcom/android/email/winset/MessageScrollView;->mInMessageView:Z
    invoke-static {v4}, Lcom/android/email/winset/MessageScrollView;->access$100(Lcom/android/email/winset/MessageScrollView;)Z

    move-result v4

    if-eqz v4, :cond_7a

    iget-object v4, p0, Lcom/android/email/winset/MessageScrollView$FlingGestureDetector;->this$0:Lcom/android/email/winset/MessageScrollView;

    #getter for: Lcom/android/email/winset/MessageScrollView;->mIsMessageTab:Z
    invoke-static {v4}, Lcom/android/email/winset/MessageScrollView;->access$200(Lcom/android/email/winset/MessageScrollView;)Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 773
    iget-object v4, p0, Lcom/android/email/winset/MessageScrollView$FlingGestureDetector;->this$0:Lcom/android/email/winset/MessageScrollView;

    #getter for: Lcom/android/email/winset/MessageScrollView;->mMessageWebView:Lcom/android/email/activity/MessageWebView;
    invoke-static {v4}, Lcom/android/email/winset/MessageScrollView;->access$300(Lcom/android/email/winset/MessageScrollView;)Lcom/android/email/activity/MessageWebView;

    move-result-object v4

    neg-float v5, p3

    float-to-int v5, v5

    invoke-virtual {v4, v5, v7}, Lcom/android/email/activity/MessageWebView;->flingScroll(II)V

    goto :goto_7a
.end method
