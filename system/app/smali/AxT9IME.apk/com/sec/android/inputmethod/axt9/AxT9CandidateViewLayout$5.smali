.class Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$5;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "AxT9CandidateViewLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->createNormalViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)V
    .registers 2
    .parameter

    .prologue
    .line 442
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 10
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v4, 0x1

    .line 445
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewNormal:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$2000(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$1200()I

    move-result v3

    mul-int/2addr v2, v3

    #setter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mTotalWidth:I
    invoke-static {v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$1902(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;I)I

    .line 446
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    #setter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mScrolled:Z
    invoke-static {v1, v4}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$002(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;Z)Z

    .line 447
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewNormal:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$2000(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v0

    .line 448
    .local v0, sx:I
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-lez v1, :cond_6c

    .line 449
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$1200()I

    move-result v1

    add-int/2addr v0, v1

    .line 454
    :goto_2e
    if-gez v0, :cond_31

    .line 455
    const/4 v0, 0x0

    .line 457
    :cond_31
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$1200()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mTotalWidth:I
    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$1900(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)I

    move-result v2

    if-le v1, v2, :cond_4a

    .line 458
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mTotalWidth:I
    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$1900(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)I

    move-result v1

    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$1200()I

    move-result v2

    sub-int v0, v1, v2

    .line 460
    :cond_4a
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mTotalWidth:I
    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$1900(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)I

    move-result v1

    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$1200()I

    move-result v2

    if-ge v1, v2, :cond_57

    .line 461
    const/4 v0, 0x0

    .line 464
    :cond_57
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->mCandidateViewNormal:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$2000(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->getScrollY()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->scrollTo(II)V

    .line 465
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->invalidate()V

    .line 467
    return v4

    .line 451
    :cond_6c
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$1200()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_2e
.end method
