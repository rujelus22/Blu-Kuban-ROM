.class Lcom/android/inputmethod/latin/CandidateView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CandidateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/CandidateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/CandidateView;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/CandidateView;)V
    .registers 2
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/inputmethod/latin/CandidateView$2;->this$0:Lcom/android/inputmethod/latin/CandidateView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 5
    .parameter "me"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateView$2;->this$0:Lcom/android/inputmethod/latin/CandidateView;

    #getter for: Lcom/android/inputmethod/latin/CandidateView;->mSuggestions:Ljava/util/List;
    invoke-static {v0}, Lcom/android/inputmethod/latin/CandidateView;->access$300(Lcom/android/inputmethod/latin/CandidateView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_35

    .line 144
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/android/inputmethod/latin/CandidateView$2;->this$0:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/CandidateView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/inputmethod/latin/CandidateView$2;->this$0:Lcom/android/inputmethod/latin/CandidateView;

    #getter for: Lcom/android/inputmethod/latin/CandidateView;->mWordWidth:[I
    invoke-static {v1}, Lcom/android/inputmethod/latin/CandidateView;->access$400(Lcom/android/inputmethod/latin/CandidateView;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_35

    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateView$2;->this$0:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/CandidateView;->getScrollX()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_35

    .line 145
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateView$2;->this$0:Lcom/android/inputmethod/latin/CandidateView;

    #calls: Lcom/android/inputmethod/latin/CandidateView;->longPressFirstWord()V
    invoke-static {v0}, Lcom/android/inputmethod/latin/CandidateView;->access$500(Lcom/android/inputmethod/latin/CandidateView;)V

    .line 148
    :cond_35
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 10
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v4, 0x1

    .line 153
    iget-object v2, p0, Lcom/android/inputmethod/latin/CandidateView$2;->this$0:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/CandidateView;->getWidth()I

    move-result v1

    .line 154
    .local v1, width:I
    iget-object v2, p0, Lcom/android/inputmethod/latin/CandidateView$2;->this$0:Lcom/android/inputmethod/latin/CandidateView;

    #setter for: Lcom/android/inputmethod/latin/CandidateView;->mScrolled:Z
    invoke-static {v2, v4}, Lcom/android/inputmethod/latin/CandidateView;->access$602(Lcom/android/inputmethod/latin/CandidateView;Z)Z

    .line 155
    iget-object v2, p0, Lcom/android/inputmethod/latin/CandidateView$2;->this$0:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/CandidateView;->getScrollX()I

    move-result v0

    .line 156
    .local v0, scrollX:I
    float-to-int v2, p3

    add-int/2addr v0, v2

    .line 157
    if-gez v0, :cond_17

    .line 158
    const/4 v0, 0x0

    .line 160
    :cond_17
    const/4 v2, 0x0

    cmpl-float v2, p3, v2

    if-lez v2, :cond_28

    add-int v2, v0, v1

    iget-object v3, p0, Lcom/android/inputmethod/latin/CandidateView$2;->this$0:Lcom/android/inputmethod/latin/CandidateView;

    #getter for: Lcom/android/inputmethod/latin/CandidateView;->mTotalWidth:I
    invoke-static {v3}, Lcom/android/inputmethod/latin/CandidateView;->access$700(Lcom/android/inputmethod/latin/CandidateView;)I

    move-result v3

    if-le v2, v3, :cond_28

    .line 161
    float-to-int v2, p3

    sub-int/2addr v0, v2

    .line 163
    :cond_28
    iget-object v2, p0, Lcom/android/inputmethod/latin/CandidateView$2;->this$0:Lcom/android/inputmethod/latin/CandidateView;

    #setter for: Lcom/android/inputmethod/latin/CandidateView;->mTargetScrollX:I
    invoke-static {v2, v0}, Lcom/android/inputmethod/latin/CandidateView;->access$802(Lcom/android/inputmethod/latin/CandidateView;I)I

    .line 164
    iget-object v2, p0, Lcom/android/inputmethod/latin/CandidateView$2;->this$0:Lcom/android/inputmethod/latin/CandidateView;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/android/inputmethod/latin/CandidateView;->scrollTo(II)V

    .line 165
    iget-object v2, p0, Lcom/android/inputmethod/latin/CandidateView$2;->this$0:Lcom/android/inputmethod/latin/CandidateView;

    #calls: Lcom/android/inputmethod/latin/CandidateView;->hidePreview()V
    invoke-static {v2}, Lcom/android/inputmethod/latin/CandidateView;->access$900(Lcom/android/inputmethod/latin/CandidateView;)V

    .line 166
    iget-object v2, p0, Lcom/android/inputmethod/latin/CandidateView$2;->this$0:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/CandidateView;->invalidate()V

    .line 167
    return v4
.end method
