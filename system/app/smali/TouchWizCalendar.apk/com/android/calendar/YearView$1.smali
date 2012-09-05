.class Lcom/android/calendar/YearView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "YearView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/YearView;-><init>(Lcom/android/calendar/MonthActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/YearView;


# direct methods
.method constructor <init>(Lcom/android/calendar/YearView;)V
    .registers 2
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lcom/android/calendar/YearView$1;->this$0:Lcom/android/calendar/YearView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 427
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 14
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 355
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    sub-int v0, v7, v8

    .line 357
    .local v0, deltaX:I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 359
    .local v2, distanceX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    sub-int v1, v7, v8

    .line 361
    .local v1, deltaY:I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 365
    .local v3, distanceY:I
    iget-object v7, p0, Lcom/android/calendar/YearView$1;->this$0:Lcom/android/calendar/YearView;

    #getter for: Lcom/android/calendar/YearView;->mParentActivity:Lcom/android/calendar/MonthActivity;
    invoke-static {v7}, Lcom/android/calendar/YearView;->access$100(Lcom/android/calendar/YearView;)Lcom/android/calendar/MonthActivity;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/calendar/MonthActivity;->mIsSwitching:Z

    if-eqz v7, :cond_2d

    .line 403
    :cond_2c
    :goto_2c
    return v5

    .line 369
    :cond_2d
    sget v7, Lcom/android/calendar/Utils;->HORIZONTAL_SCROLL_THRESHOLD:I

    if-lt v2, v7, :cond_2c

    if-le v2, v3, :cond_2c

    .line 373
    const-string v7, "YearView"

    const-string v8, "onFling"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    new-instance v4, Landroid/text/format/Time;

    iget-object v7, p0, Lcom/android/calendar/YearView$1;->this$0:Lcom/android/calendar/YearView;

    #getter for: Lcom/android/calendar/YearView;->mParentActivity:Lcom/android/calendar/MonthActivity;
    invoke-static {v7}, Lcom/android/calendar/YearView;->access$100(Lcom/android/calendar/YearView;)Lcom/android/calendar/MonthActivity;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 377
    .local v4, time:Landroid/text/format/Time;
    if-lez v0, :cond_6d

    .line 379
    iget-object v7, p0, Lcom/android/calendar/YearView$1;->this$0:Lcom/android/calendar/YearView;

    #getter for: Lcom/android/calendar/YearView;->mTime:Landroid/text/format/Time;
    invoke-static {v7}, Lcom/android/calendar/YearView;->access$200(Lcom/android/calendar/YearView;)Landroid/text/format/Time;

    move-result-object v7

    iget v7, v7, Landroid/text/format/Time;->year:I

    const/16 v8, 0x76e

    if-eq v7, v8, :cond_2c

    .line 383
    iget-object v7, p0, Lcom/android/calendar/YearView$1;->this$0:Lcom/android/calendar/YearView;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Lcom/android/calendar/YearView;->getPrevNextTime(I)Landroid/text/format/Time;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 397
    :goto_62
    iget-object v7, p0, Lcom/android/calendar/YearView$1;->this$0:Lcom/android/calendar/YearView;

    #getter for: Lcom/android/calendar/YearView;->mParentActivity:Lcom/android/calendar/MonthActivity;
    invoke-static {v7}, Lcom/android/calendar/YearView;->access$100(Lcom/android/calendar/YearView;)Lcom/android/calendar/MonthActivity;

    move-result-object v7

    invoke-virtual {v7, v4, v6, v5}, Lcom/android/calendar/MonthActivity;->goTo(Landroid/text/format/Time;ZZ)V

    move v5, v6

    .line 399
    goto :goto_2c

    .line 387
    :cond_6d
    iget-object v7, p0, Lcom/android/calendar/YearView$1;->this$0:Lcom/android/calendar/YearView;

    #getter for: Lcom/android/calendar/YearView;->mTime:Landroid/text/format/Time;
    invoke-static {v7}, Lcom/android/calendar/YearView;->access$200(Lcom/android/calendar/YearView;)Landroid/text/format/Time;

    move-result-object v7

    iget v7, v7, Landroid/text/format/Time;->year:I

    const/16 v8, 0x7f4

    if-eq v7, v8, :cond_2c

    .line 391
    iget-object v7, p0, Lcom/android/calendar/YearView$1;->this$0:Lcom/android/calendar/YearView;

    invoke-virtual {v7, v6}, Lcom/android/calendar/YearView;->getPrevNextTime(I)Landroid/text/format/Time;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    goto :goto_62
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "e"

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x1

    .line 437
    iget-object v3, p0, Lcom/android/calendar/YearView$1;->this$0:Lcom/android/calendar/YearView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    #calls: Lcom/android/calendar/YearView;->getPressedRow(I)I
    invoke-static {v3, v4}, Lcom/android/calendar/YearView;->access$300(Lcom/android/calendar/YearView;I)I

    move-result v1

    .line 439
    .local v1, row:I
    iget-object v3, p0, Lcom/android/calendar/YearView$1;->this$0:Lcom/android/calendar/YearView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    #calls: Lcom/android/calendar/YearView;->getPressedColumn(I)I
    invoke-static {v3, v4}, Lcom/android/calendar/YearView;->access$400(Lcom/android/calendar/YearView;I)I

    move-result v0

    .line 443
    .local v0, col:I
    if-eq v1, v5, :cond_1c

    if-ne v0, v5, :cond_1e

    .line 445
    :cond_1c
    const/4 v2, 0x0

    .line 465
    :goto_1d
    return v2

    .line 449
    :cond_1e
    iget-object v3, p0, Lcom/android/calendar/YearView$1;->this$0:Lcom/android/calendar/YearView;

    #setter for: Lcom/android/calendar/YearView;->mFocusedRow:I
    invoke-static {v3, v1}, Lcom/android/calendar/YearView;->access$502(Lcom/android/calendar/YearView;I)I

    .line 451
    iget-object v3, p0, Lcom/android/calendar/YearView$1;->this$0:Lcom/android/calendar/YearView;

    #setter for: Lcom/android/calendar/YearView;->mFocusedColumn:I
    invoke-static {v3, v0}, Lcom/android/calendar/YearView;->access$602(Lcom/android/calendar/YearView;I)I

    .line 455
    iget-object v3, p0, Lcom/android/calendar/YearView$1;->this$0:Lcom/android/calendar/YearView;

    #setter for: Lcom/android/calendar/YearView;->mScreenMode:I
    invoke-static {v3, v2}, Lcom/android/calendar/YearView;->access$702(Lcom/android/calendar/YearView;I)I

    .line 457
    iget-object v3, p0, Lcom/android/calendar/YearView$1;->this$0:Lcom/android/calendar/YearView;

    iput-boolean v2, v3, Lcom/android/calendar/YearView;->mRedrawScreen:Z

    .line 459
    iget-object v3, p0, Lcom/android/calendar/YearView$1;->this$0:Lcom/android/calendar/YearView;

    invoke-virtual {v3}, Lcom/android/calendar/YearView;->invalidate()V

    .line 463
    iget-object v3, p0, Lcom/android/calendar/YearView$1;->this$0:Lcom/android/calendar/YearView;

    iget-object v4, p0, Lcom/android/calendar/YearView$1;->this$0:Lcom/android/calendar/YearView;

    #getter for: Lcom/android/calendar/YearView;->mSwitchToMonthView:Lcom/android/calendar/YearView$SwitchToMonthView;
    invoke-static {v4}, Lcom/android/calendar/YearView;->access$800(Lcom/android/calendar/YearView;)Lcom/android/calendar/YearView$SwitchToMonthView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/calendar/YearView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1d
.end method
