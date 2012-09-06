.class Lcom/android/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "LatinKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/keyboard/LatinKeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoubleTapListener"
.end annotation


# instance fields
.field private mProcessingShiftDoubleTapEvent:Z

.field final synthetic this$0:Lcom/android/inputmethod/keyboard/LatinKeyboardView;


# direct methods
.method private constructor <init>(Lcom/android/inputmethod/keyboard/LatinKeyboardView;)V
    .registers 3
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->this$0:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->mProcessingShiftDoubleTapEvent:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/inputmethod/keyboard/LatinKeyboardView;Lcom/android/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;-><init>(Lcom/android/inputmethod/keyboard/LatinKeyboardView;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter "firstDown"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 208
    iget-object v6, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->this$0:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v6}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v1

    .line 209
    .local v1, keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    instance-of v6, v1, Lcom/android/inputmethod/keyboard/LatinKeyboard;

    if-eqz v6, :cond_35

    .line 210
    check-cast v1, Lcom/android/inputmethod/keyboard/LatinKeyboard;

    .end local v1           #keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->isAlphaKeyboard()Z

    move-result v6

    if-eqz v6, :cond_35

    .line 211
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 212
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 213
    .local v0, id:I
    iget-object v6, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->this$0:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    #calls: Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getPointerTracker(I)Lcom/android/inputmethod/keyboard/PointerTracker;
    invoke-static {v6, v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->access$4(Lcom/android/inputmethod/keyboard/LatinKeyboardView;I)Lcom/android/inputmethod/keyboard/PointerTracker;

    move-result-object v3

    .line 215
    .local v3, tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v3, v6, v7}, Lcom/android/inputmethod/keyboard/PointerTracker;->isOnShiftKey(II)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 216
    iput-boolean v4, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->mProcessingShiftDoubleTapEvent:Z

    .line 221
    .end local v0           #id:I
    .end local v2           #pointerIndex:I
    .end local v3           #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    :goto_34
    return v4

    .line 220
    :cond_35
    iput-boolean v5, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->mProcessingShiftDoubleTapEvent:Z

    move v4, v5

    .line 221
    goto :goto_34
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "secondTap"

    .prologue
    .line 226
    iget-boolean v4, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->mProcessingShiftDoubleTapEvent:Z

    if-eqz v4, :cond_3d

    .line 227
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_3d

    .line 228
    move-object v2, p1

    .line 229
    .local v2, secondDown:Landroid/view/MotionEvent;
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 230
    .local v1, pointerIndex:I
    invoke-virtual {v2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 231
    .local v0, id:I
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->this$0:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    #calls: Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getPointerTracker(I)Lcom/android/inputmethod/keyboard/PointerTracker;
    invoke-static {v4, v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->access$4(Lcom/android/inputmethod/keyboard/LatinKeyboardView;I)Lcom/android/inputmethod/keyboard/PointerTracker;

    move-result-object v3

    .line 233
    .local v3, tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/android/inputmethod/keyboard/PointerTracker;->isOnShiftKey(II)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 237
    iget-object v4, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->this$0:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    iget-object v5, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->this$0:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    #getter for: Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mKeyTimerHandler:Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;
    invoke-static {v5}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->access$5(Lcom/android/inputmethod/keyboard/LatinKeyboardView;)Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/inputmethod/keyboard/LatinKeyboardView$KeyTimerHandler;->isIgnoringDoubleTap()Z

    move-result v5

    #calls: Lcom/android/inputmethod/keyboard/LatinKeyboardView;->onDoubleTapShiftKey(Lcom/android/inputmethod/keyboard/PointerTracker;Z)V
    invoke-static {v4, v3, v5}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->access$6(Lcom/android/inputmethod/keyboard/LatinKeyboardView;Lcom/android/inputmethod/keyboard/PointerTracker;Z)V

    .line 238
    const/4 v4, 0x1

    .line 243
    .end local v0           #id:I
    .end local v1           #pointerIndex:I
    .end local v2           #secondDown:Landroid/view/MotionEvent;
    .end local v3           #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    :goto_39
    return v4

    .line 241
    .restart local v0       #id:I
    .restart local v1       #pointerIndex:I
    .restart local v2       #secondDown:Landroid/view/MotionEvent;
    .restart local v3       #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    :cond_3a
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->mProcessingShiftDoubleTapEvent:Z

    .line 243
    .end local v0           #id:I
    .end local v1           #pointerIndex:I
    .end local v2           #secondDown:Landroid/view/MotionEvent;
    .end local v3           #tracker:Lcom/android/inputmethod/keyboard/PointerTracker;
    :cond_3d
    iget-boolean v4, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->mProcessingShiftDoubleTapEvent:Z

    goto :goto_39
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 15
    .parameter "me1"
    .parameter "me2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 168
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 169
    .local v0, absX:F
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 170
    .local v1, absY:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    sub-float v2, v8, v9

    .line 171
    .local v2, deltaX:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    sub-float v3, v8, v9

    .line 172
    .local v3, deltaY:F
    iget-object v8, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->this$0:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v8}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getWidth()I

    move-result v8

    div-int/lit8 v6, v8, 0x2

    .line 173
    .local v6, travelX:I
    iget-object v8, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->this$0:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v8}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getHeight()I

    move-result v8

    div-int/lit8 v7, v8, 0x2

    .line 174
    .local v7, travelY:I
    iget-object v8, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->this$0:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    #getter for: Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mSwipeTracker:Lcom/android/inputmethod/keyboard/SwipeTracker;
    invoke-static {v8}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->access$2(Lcom/android/inputmethod/keyboard/LatinKeyboardView;)Lcom/android/inputmethod/keyboard/SwipeTracker;

    move-result-object v8

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Lcom/android/inputmethod/keyboard/SwipeTracker;->computeCurrentVelocity(I)V

    .line 175
    iget-object v8, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->this$0:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    #getter for: Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mSwipeTracker:Lcom/android/inputmethod/keyboard/SwipeTracker;
    invoke-static {v8}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->access$2(Lcom/android/inputmethod/keyboard/LatinKeyboardView;)Lcom/android/inputmethod/keyboard/SwipeTracker;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/inputmethod/keyboard/SwipeTracker;->getXVelocity()F

    move-result v4

    .line 176
    .local v4, endingVelocityX:F
    iget-object v8, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->this$0:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    #getter for: Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mSwipeTracker:Lcom/android/inputmethod/keyboard/SwipeTracker;
    invoke-static {v8}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->access$2(Lcom/android/inputmethod/keyboard/LatinKeyboardView;)Lcom/android/inputmethod/keyboard/SwipeTracker;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/inputmethod/keyboard/SwipeTracker;->getYVelocity()F

    move-result v5

    .line 177
    .local v5, endingVelocityY:F
    sget v8, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mSwipeThreshold:I

    int-to-float v8, v8

    cmpl-float v8, p3, v8

    if-lez v8, :cond_72

    cmpg-float v8, v1, v0

    if-gez v8, :cond_72

    .line 178
    int-to-float v8, v6

    cmpl-float v8, v2, v8

    if-lez v8, :cond_72

    .line 179
    iget-object v8, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->this$0:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    #getter for: Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mDisambiguateSwipe:Z
    invoke-static {v8}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->access$3(Lcom/android/inputmethod/keyboard/LatinKeyboardView;)Z

    move-result v8

    if-eqz v8, :cond_ef

    const/high16 v8, 0x4080

    div-float v8, p3, v8

    cmpl-float v8, v4, v8

    if-ltz v8, :cond_ef

    .line 180
    iget-object v8, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->this$0:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v8}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->swipeRight()V

    .line 181
    const/4 v8, 0x1

    .line 202
    :goto_71
    return v8

    .line 183
    :cond_72
    sget v8, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mSwipeThreshold:I

    neg-int v8, v8

    int-to-float v8, v8

    cmpg-float v8, p3, v8

    if-gez v8, :cond_9b

    cmpg-float v8, v1, v0

    if-gez v8, :cond_9b

    .line 184
    neg-int v8, v6

    int-to-float v8, v8

    cmpg-float v8, v2, v8

    if-gez v8, :cond_9b

    .line 185
    iget-object v8, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->this$0:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    #getter for: Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mDisambiguateSwipe:Z
    invoke-static {v8}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->access$3(Lcom/android/inputmethod/keyboard/LatinKeyboardView;)Z

    move-result v8

    if-eqz v8, :cond_ef

    const/high16 v8, 0x4080

    div-float v8, p3, v8

    cmpg-float v8, v4, v8

    if-gtz v8, :cond_ef

    .line 186
    iget-object v8, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->this$0:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v8}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->swipeLeft()V

    .line 187
    const/4 v8, 0x1

    goto :goto_71

    .line 189
    :cond_9b
    sget v8, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mSwipeThreshold:I

    neg-int v8, v8

    int-to-float v8, v8

    cmpg-float v8, p4, v8

    if-gez v8, :cond_c4

    cmpg-float v8, v0, v1

    if-gez v8, :cond_c4

    .line 190
    neg-int v8, v7

    int-to-float v8, v8

    cmpg-float v8, v3, v8

    if-gez v8, :cond_c4

    .line 191
    iget-object v8, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->this$0:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    #getter for: Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mDisambiguateSwipe:Z
    invoke-static {v8}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->access$3(Lcom/android/inputmethod/keyboard/LatinKeyboardView;)Z

    move-result v8

    if-eqz v8, :cond_ef

    const/high16 v8, 0x4080

    div-float v8, p4, v8

    cmpg-float v8, v5, v8

    if-gtz v8, :cond_ef

    .line 192
    iget-object v8, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->this$0:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v8}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->swipeUp()V

    .line 193
    const/4 v8, 0x1

    goto :goto_71

    .line 195
    :cond_c4
    sget v8, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mSwipeThreshold:I

    int-to-float v8, v8

    cmpl-float v8, p4, v8

    if-lez v8, :cond_ef

    const/high16 v8, 0x4000

    div-float v8, v1, v8

    cmpg-float v8, v0, v8

    if-gez v8, :cond_ef

    .line 196
    int-to-float v8, v7

    cmpl-float v8, v3, v8

    if-lez v8, :cond_ef

    .line 197
    iget-object v8, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->this$0:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    #getter for: Lcom/android/inputmethod/keyboard/LatinKeyboardView;->mDisambiguateSwipe:Z
    invoke-static {v8}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->access$3(Lcom/android/inputmethod/keyboard/LatinKeyboardView;)Z

    move-result v8

    if-eqz v8, :cond_ef

    const/high16 v8, 0x4080

    div-float v8, p4, v8

    cmpl-float v8, v5, v8

    if-ltz v8, :cond_ef

    .line 198
    iget-object v8, p0, Lcom/android/inputmethod/keyboard/LatinKeyboardView$DoubleTapListener;->this$0:Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    invoke-virtual {v8}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->swipeDown()V

    .line 199
    const/4 v8, 0x1

    goto :goto_71

    .line 202
    :cond_ef
    const/4 v8, 0x0

    goto :goto_71
.end method
