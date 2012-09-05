.class Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "AxT9KeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->initGestureDetector()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)V
    .registers 2
    .parameter

    .prologue
    .line 1032
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 20
    .parameter "me1"
    .parameter "me2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPossiblePoly:Z

    if-nez v0, :cond_a

    if-eqz p1, :cond_a

    if-nez p2, :cond_c

    .line 1036
    :cond_a
    const/4 v0, 0x0

    .line 1097
    :goto_b
    return v0

    .line 1038
    :cond_c
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1039
    const/4 v0, 0x0

    goto :goto_b

    .line 1040
    :cond_18
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 1041
    .local v6, absX:F
    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 1042
    .local v7, absY:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float v8, v0, v1

    .line 1043
    .local v8, deltaX:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float v9, v0, v1

    .line 1044
    .local v9, deltaY:F
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getWidth()I

    move-result v0

    div-int/lit8 v13, v0, 0x2

    .line 1045
    .local v13, travelX:I
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getHeight()I

    move-result v0

    div-int/lit8 v14, v0, 0x2

    .line 1046
    .local v14, travelY:I
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSwipeTracker:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SwipeTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SwipeTracker;->computeCurrentVelocity(I)V

    .line 1047
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSwipeTracker:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SwipeTracker;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SwipeTracker;->getXVelocity()F

    move-result v10

    .line 1048
    .local v10, endingVelocityX:F
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSwipeTracker:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SwipeTracker;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SwipeTracker;->getYVelocity()F

    move-result v11

    .line 1049
    .local v11, endingVelocityY:F
    const/4 v12, 0x0

    .line 1064
    .local v12, sendDownKey:Z
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSwipeThreshold:I
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_a5

    cmpg-float v0, v7, v6

    if-gez v0, :cond_a5

    int-to-float v0, v13

    cmpl-float v0, v8, v0

    if-lez v0, :cond_a5

    .line 1065
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDisambiguateSwipe:Z
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->access$300(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)Z

    move-result v0

    if-eqz v0, :cond_9d

    const/high16 v0, 0x4080

    div-float v0, p3, v0

    cmpg-float v0, v10, v0

    if-gez v0, :cond_9d

    .line 1066
    const/4 v12, 0x1

    .line 1094
    :cond_83
    :goto_83
    if-eqz v12, :cond_9a

    .line 1095
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    iget v1, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDownKey:I

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    iget v2, v2, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mStartX:I

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    iget v3, v3, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mStartY:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->detectAndSendKey(IIIJ)V

    .line 1097
    :cond_9a
    const/4 v0, 0x0

    goto/16 :goto_b

    .line 1068
    :cond_9d
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->swipeRight()V

    .line 1069
    const/4 v0, 0x1

    goto/16 :goto_b

    .line 1071
    :cond_a5
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSwipeThreshold:I
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_d5

    cmpg-float v0, v7, v6

    if-gez v0, :cond_d5

    neg-int v0, v13

    int-to-float v0, v0

    cmpg-float v0, v8, v0

    if-gez v0, :cond_d5

    .line 1072
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDisambiguateSwipe:Z
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->access$300(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)Z

    move-result v0

    if-eqz v0, :cond_cd

    const/high16 v0, 0x4080

    div-float v0, p3, v0

    cmpl-float v0, v10, v0

    if-lez v0, :cond_cd

    .line 1073
    const/4 v12, 0x1

    goto :goto_83

    .line 1075
    :cond_cd
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->swipeLeft()V

    .line 1076
    const/4 v0, 0x1

    goto/16 :goto_b

    .line 1078
    :cond_d5
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSwipeThreshold:I
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    cmpg-float v0, p4, v0

    if-gez v0, :cond_105

    cmpg-float v0, v6, v7

    if-gez v0, :cond_105

    neg-int v0, v14

    int-to-float v0, v0

    cmpg-float v0, v9, v0

    if-gez v0, :cond_105

    .line 1079
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDisambiguateSwipe:Z
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->access$300(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)Z

    move-result v0

    if-eqz v0, :cond_fd

    const/high16 v0, 0x4080

    div-float v0, p4, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_fd

    .line 1080
    const/4 v12, 0x1

    goto :goto_83

    .line 1082
    :cond_fd
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->swipeUp()V

    .line 1083
    const/4 v0, 0x1

    goto/16 :goto_b

    .line 1085
    :cond_105
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSwipeThreshold:I
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_83

    const/high16 v0, 0x4000

    div-float v0, v7, v0

    cmpg-float v0, v6, v0

    if-gez v0, :cond_83

    int-to-float v0, v14

    cmpl-float v0, v9, v0

    if-lez v0, :cond_83

    .line 1086
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    #getter for: Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDisambiguateSwipe:Z
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->access$300(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)Z

    move-result v0

    if-eqz v0, :cond_130

    const/high16 v0, 0x4080

    div-float v0, p4, v0

    cmpg-float v0, v11, v0

    if-gez v0, :cond_130

    .line 1087
    const/4 v12, 0x1

    goto/16 :goto_83

    .line 1089
    :cond_130
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->swipeDown()V

    .line 1090
    const/4 v0, 0x1

    goto/16 :goto_b
.end method
