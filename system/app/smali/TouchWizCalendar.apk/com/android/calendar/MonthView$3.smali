.class Lcom/android/calendar/MonthView$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MonthView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/MonthView;->init(Lcom/android/calendar/MonthActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/MonthView;


# direct methods
.method constructor <init>(Lcom/android/calendar/MonthView;)V
    .registers 2
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 426
    iget-object v0, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mTempTime:Landroid/text/format/Time;
    invoke-static {v0}, Lcom/android/calendar/MonthView;->access$200(Lcom/android/calendar/MonthView;)Landroid/text/format/Time;

    move-result-object v0

    .line 427
    iget-object v1, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;
    invoke-static {v1}, Lcom/android/calendar/MonthView;->access$300(Lcom/android/calendar/MonthView;)Landroid/text/format/Time;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 428
    iget-object v1, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;
    invoke-static {v1}, Lcom/android/calendar/MonthView;->access$800(Lcom/android/calendar/MonthView;)Lcom/android/calendar/TwDayOfMonthCursor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v1

    iput v1, v0, Landroid/text/format/Time;->monthDay:I

    .line 429
    invoke-virtual {v0, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    .line 431
    iget-object v3, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v3, v4}, Lcom/android/calendar/MonthView;->playSoundEffect(I)V

    .line 432
    iget-object v3, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #setter for: Lcom/android/calendar/MonthView;->mLaunchDayView:Z
    invoke-static {v3, v4}, Lcom/android/calendar/MonthView;->access$602(Lcom/android/calendar/MonthView;Z)Z

    .line 433
    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v0, -0x1

    .line 434
    iget-object v3, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mEventDays:[[I
    invoke-static {v3}, Lcom/android/calendar/MonthView;->access$1300(Lcom/android/calendar/MonthView;)[[I

    move-result-object v3

    aget-object v0, v3, v0

    aget v0, v0, v4

    if-eqz v0, :cond_73

    .line 436
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 437
    iget-object v3, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v3}, Lcom/android/calendar/MonthView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mDetailedView:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/calendar/MonthView;->access$1400(Lcom/android/calendar/MonthView;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    const-string v3, "beginTime"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 439
    const-string v1, "startDayfromWhere"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 440
    const/high16 v1, 0x2002

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 441
    iget-object v1, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;
    invoke-static {v1}, Lcom/android/calendar/MonthView;->access$500(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/calendar/MonthActivity;->startActivity(Landroid/content/Intent;)V

    .line 442
    iget-object v0, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;
    invoke-static {v0}, Lcom/android/calendar/MonthView;->access$500(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/MonthActivity;->finish()V

    .line 463
    :cond_72
    :goto_72
    return v7

    .line 445
    :cond_73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 446
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 447
    iget-object v2, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v2, v1}, Lcom/android/calendar/MonthView;->getPressedRow(I)I

    move-result v1

    .line 448
    iget-object v2, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v2, v0}, Lcom/android/calendar/MonthView;->getPressedColumn(I)I

    move-result v0

    .line 450
    iget-object v2, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;
    invoke-static {v2}, Lcom/android/calendar/MonthView;->access$800(Lcom/android/calendar/MonthView;)Lcom/android/calendar/TwDayOfMonthCursor;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/android/calendar/TwDayOfMonthCursor;->isValid(II)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 451
    iget-object v2, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;
    invoke-static {v2}, Lcom/android/calendar/MonthView;->access$800(Lcom/android/calendar/MonthView;)Lcom/android/calendar/TwDayOfMonthCursor;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/android/calendar/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 453
    iget-object v0, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;
    invoke-static {v0}, Lcom/android/calendar/MonthView;->access$500(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/MonthActivity;->getSelectedTime()J

    move-result-wide v0

    .line 454
    const-wide/32 v2, 0x36ee80

    add-long/2addr v2, v0

    .line 455
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.EDIT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 456
    iget-object v5, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v5}, Lcom/android/calendar/MonthView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/android/calendar/EditEvent;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 457
    const-string v5, "beginTime"

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 458
    const-string v0, "endTime"

    invoke-virtual {v4, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 460
    iget-object v0, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;
    invoke-static {v0}, Lcom/android/calendar/MonthView;->access$500(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v0

    invoke-virtual {v0, v4, v7}, Lcom/android/calendar/MonthActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_72
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter "e"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 320
    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #setter for: Lcom/android/calendar/MonthView;->mLaunchDayView:Z
    invoke-static {v4, v5}, Lcom/android/calendar/MonthView;->access$602(Lcom/android/calendar/MonthView;Z)Z

    .line 321
    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #setter for: Lcom/android/calendar/MonthView;->mSelectionMode:I
    invoke-static {v4, v5}, Lcom/android/calendar/MonthView;->access$702(Lcom/android/calendar/MonthView;I)I

    .line 322
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 323
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 324
    .local v3, y:I
    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v4, v3}, Lcom/android/calendar/MonthView;->getPressedRow(I)I

    move-result v1

    .line 325
    .local v1, row:I
    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v4, v2}, Lcom/android/calendar/MonthView;->getPressedColumn(I)I

    move-result v0

    .line 331
    .local v0, col:I
    if-eqz v0, :cond_3a

    .line 332
    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;
    invoke-static {v4}, Lcom/android/calendar/MonthView;->access$800(Lcom/android/calendar/MonthView;)Lcom/android/calendar/TwDayOfMonthCursor;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Lcom/android/calendar/TwDayOfMonthCursor;->isSelected(II)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 333
    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #setter for: Lcom/android/calendar/MonthView;->mLaunchDayView:Z
    invoke-static {v4, v6}, Lcom/android/calendar/MonthView;->access$602(Lcom/android/calendar/MonthView;Z)Z

    .line 334
    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #setter for: Lcom/android/calendar/MonthView;->mSelectionMode:I
    invoke-static {v4, v6}, Lcom/android/calendar/MonthView;->access$702(Lcom/android/calendar/MonthView;I)I

    .line 359
    :cond_3a
    :goto_3a
    return v6

    .line 336
    :cond_3b
    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;
    invoke-static {v4}, Lcom/android/calendar/MonthView;->access$800(Lcom/android/calendar/MonthView;)Lcom/android/calendar/TwDayOfMonthCursor;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Lcom/android/calendar/TwDayOfMonthCursor;->isValid(II)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 337
    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;
    invoke-static {v4}, Lcom/android/calendar/MonthView;->access$800(Lcom/android/calendar/MonthView;)Lcom/android/calendar/TwDayOfMonthCursor;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Lcom/android/calendar/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v4

    if-nez v4, :cond_71

    .line 338
    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    iget-object v5, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;
    invoke-static {v5}, Lcom/android/calendar/MonthView;->access$800(Lcom/android/calendar/MonthView;)Lcom/android/calendar/TwDayOfMonthCursor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedRow()I

    move-result v5

    #setter for: Lcom/android/calendar/MonthView;->mPressedRow:I
    invoke-static {v4, v5}, Lcom/android/calendar/MonthView;->access$902(Lcom/android/calendar/MonthView;I)I

    .line 339
    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    iget-object v5, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;
    invoke-static {v5}, Lcom/android/calendar/MonthView;->access$800(Lcom/android/calendar/MonthView;)Lcom/android/calendar/TwDayOfMonthCursor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedColumn()I

    move-result v5

    #setter for: Lcom/android/calendar/MonthView;->mPressedCol:I
    invoke-static {v4, v5}, Lcom/android/calendar/MonthView;->access$1002(Lcom/android/calendar/MonthView;I)I

    .line 352
    :cond_71
    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;
    invoke-static {v4}, Lcom/android/calendar/MonthView;->access$800(Lcom/android/calendar/MonthView;)Lcom/android/calendar/TwDayOfMonthCursor;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Lcom/android/calendar/TwDayOfMonthCursor;->setSelectedRowColumn(II)V

    .line 353
    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #setter for: Lcom/android/calendar/MonthView;->mSelectionMode:I
    invoke-static {v4, v6}, Lcom/android/calendar/MonthView;->access$702(Lcom/android/calendar/MonthView;I)I

    .line 354
    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #setter for: Lcom/android/calendar/MonthView;->mRedrawScreen:Z
    invoke-static {v4, v6}, Lcom/android/calendar/MonthView;->access$1102(Lcom/android/calendar/MonthView;Z)Z

    .line 355
    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v4}, Lcom/android/calendar/MonthView;->invalidate()V

    .line 356
    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v4}, Lcom/android/calendar/MonthView;->requestFocus()Z

    goto :goto_3a
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 15
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 509
    if-eqz p1, :cond_6

    if-nez p2, :cond_7

    .line 542
    :cond_6
    :goto_6
    return v6

    .line 510
    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    sub-int v0, v8, v9

    .line 511
    .local v0, deltaX:I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 512
    .local v2, distanceX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    sub-int v1, v8, v9

    .line 513
    .local v1, deltaY:I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 515
    .local v3, distanceY:I
    :try_start_27
    iget-object v8, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;
    invoke-static {v8}, Lcom/android/calendar/MonthView;->access$500(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 517
    iget-object v8, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;
    invoke-static {v8}, Lcom/android/calendar/MonthView;->access$500(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v8

    if-ge v2, v3, :cond_38

    move v6, v7

    :cond_38
    iput-boolean v6, v8, Lcom/android/calendar/MonthActivity;->animateUpDown:Z

    .line 518
    sget v6, Lcom/android/calendar/Utils;->HORIZONTAL_SCROLL_THRESHOLD:I

    if-lt v3, v6, :cond_48

    iget-object v6, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;
    invoke-static {v6}, Lcom/android/calendar/MonthView;->access$500(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/calendar/MonthActivity;->animateUpDown:Z

    if-nez v6, :cond_5b

    :cond_48
    sget v6, Lcom/android/calendar/Utils;->VERTICAL_SCROLL_THRESHOLD:I

    if-lt v2, v6, :cond_56

    iget-object v6, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;
    invoke-static {v6}, Lcom/android/calendar/MonthView;->access$500(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/calendar/MonthActivity;->animateUpDown:Z
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_54} :catch_9c

    if-nez v6, :cond_56

    .line 542
    :cond_56
    :goto_56
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v6

    goto :goto_6

    .line 518
    :cond_5b
    :try_start_5b
    iget-object v6, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mIsWithinCurrentMonth:Z
    invoke-static {v6}, Lcom/android/calendar/MonthView;->access$1500(Lcom/android/calendar/MonthView;)Z

    move-result v6

    if-nez v6, :cond_56

    .line 522
    if-lez v1, :cond_6f

    iget-object v6, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;
    invoke-static {v6}, Lcom/android/calendar/MonthView;->access$500(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/calendar/MonthActivity;->animateUpDown:Z

    if-nez v6, :cond_7b

    :cond_6f
    if-lez v0, :cond_b6

    iget-object v6, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;
    invoke-static {v6}, Lcom/android/calendar/MonthView;->access$500(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/calendar/MonthActivity;->animateUpDown:Z

    if-nez v6, :cond_b6

    :cond_7b
    iget-object v6, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;
    invoke-static {v6}, Lcom/android/calendar/MonthView;->access$500(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/calendar/MonthActivity;->getPrevMonthButtonStatus()Z

    move-result v6

    if-eqz v6, :cond_b6

    .line 525
    iget-object v6, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Lcom/android/calendar/MonthView;->getPrevNextTime(I)Landroid/text/format/Time;

    move-result-object v5

    .line 526
    .local v5, time:Landroid/text/format/Time;
    if-eqz v5, :cond_56

    .line 527
    iget-object v6, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;
    invoke-static {v6}, Lcom/android/calendar/MonthView;->access$500(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v7, v8}, Lcom/android/calendar/MonthActivity;->goTo(Landroid/text/format/Time;ZZ)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_9b} :catch_9c

    goto :goto_56

    .line 536
    .end local v5           #time:Landroid/text/format/Time;
    :catch_9c
    move-exception v4

    .line 537
    .local v4, e:Ljava/lang/Exception;
    const-string v6, "INFO"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    .line 528
    .end local v4           #e:Ljava/lang/Exception;
    :cond_b6
    if-gez v1, :cond_c2

    :try_start_b8
    iget-object v6, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;
    invoke-static {v6}, Lcom/android/calendar/MonthView;->access$500(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/calendar/MonthActivity;->animateUpDown:Z

    if-nez v6, :cond_ce

    :cond_c2
    if-gez v0, :cond_56

    iget-object v6, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;
    invoke-static {v6}, Lcom/android/calendar/MonthView;->access$500(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/calendar/MonthActivity;->animateUpDown:Z

    if-nez v6, :cond_56

    :cond_ce
    iget-object v6, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;
    invoke-static {v6}, Lcom/android/calendar/MonthView;->access$500(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/calendar/MonthActivity;->getNextMonthButtonStatus()Z

    move-result v6

    if-eqz v6, :cond_56

    .line 531
    iget-object v6, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/calendar/MonthView;->getPrevNextTime(I)Landroid/text/format/Time;

    move-result-object v5

    .line 532
    .restart local v5       #time:Landroid/text/format/Time;
    if-eqz v5, :cond_56

    .line 533
    iget-object v6, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;
    invoke-static {v6}, Lcom/android/calendar/MonthView;->access$500(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v7, v8}, Lcom/android/calendar/MonthActivity;->goTo(Landroid/text/format/Time;ZZ)V
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_ee} :catch_9c

    goto/16 :goto_56
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 8
    .parameter "e"

    .prologue
    .line 365
    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    const/4 v5, 0x0

    #setter for: Lcom/android/calendar/MonthView;->mLaunchDayView:Z
    invoke-static {v4, v5}, Lcom/android/calendar/MonthView;->access$602(Lcom/android/calendar/MonthView;Z)Z

    .line 366
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 367
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 368
    .local v3, y:I
    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v4, v3}, Lcom/android/calendar/MonthView;->getPressedRow(I)I

    move-result v1

    .line 369
    .local v1, row:I
    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v4, v2}, Lcom/android/calendar/MonthView;->getPressedColumn(I)I

    move-result v0

    .line 371
    .local v0, col:I
    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;
    invoke-static {v4}, Lcom/android/calendar/MonthView;->access$800(Lcom/android/calendar/MonthView;)Lcom/android/calendar/TwDayOfMonthCursor;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Lcom/android/calendar/TwDayOfMonthCursor;->isValid(II)Z

    move-result v4

    if-nez v4, :cond_29

    .line 385
    :cond_28
    :goto_28
    return-void

    .line 374
    :cond_29
    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;
    invoke-static {v4}, Lcom/android/calendar/MonthView;->access$800(Lcom/android/calendar/MonthView;)Lcom/android/calendar/TwDayOfMonthCursor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedColumn()I

    move-result v0

    .line 375
    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;
    invoke-static {v4}, Lcom/android/calendar/MonthView;->access$800(Lcom/android/calendar/MonthView;)Lcom/android/calendar/TwDayOfMonthCursor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedRow()I

    move-result v1

    .line 377
    if-eqz v0, :cond_28

    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;
    invoke-static {v4}, Lcom/android/calendar/MonthView;->access$800(Lcom/android/calendar/MonthView;)Lcom/android/calendar/TwDayOfMonthCursor;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Lcom/android/calendar/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 378
    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    const/4 v5, 0x3

    #setter for: Lcom/android/calendar/MonthView;->mSelectionMode:I
    invoke-static {v4, v5}, Lcom/android/calendar/MonthView;->access$702(Lcom/android/calendar/MonthView;I)I

    .line 381
    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    const/4 v5, 0x1

    #setter for: Lcom/android/calendar/MonthView;->mRedrawScreen:Z
    invoke-static {v4, v5}, Lcom/android/calendar/MonthView;->access$1102(Lcom/android/calendar/MonthView;Z)Z

    .line 382
    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v4}, Lcom/android/calendar/MonthView;->invalidate()V

    .line 383
    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v4}, Lcom/android/calendar/MonthView;->showQuickAddDialog()V

    goto :goto_28
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 14
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v8, 0x5

    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 393
    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    const/4 v5, 0x0

    #setter for: Lcom/android/calendar/MonthView;->mLaunchDayView:Z
    invoke-static {v4, v5}, Lcom/android/calendar/MonthView;->access$602(Lcom/android/calendar/MonthView;Z)Z

    .line 394
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 395
    .local v2, x:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 396
    .local v3, y:I
    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v4, v3}, Lcom/android/calendar/MonthView;->getPressedRow(I)I

    move-result v1

    .line 397
    .local v1, row:I
    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v4, v2}, Lcom/android/calendar/MonthView;->getPressedColumn(I)I

    move-result v0

    .line 399
    .local v0, col:I
    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->MONTH_ROW_NUM:I
    invoke-static {v4}, Lcom/android/calendar/MonthView;->access$1200(Lcom/android/calendar/MonthView;)I

    move-result v4

    if-ne v4, v8, :cond_2a

    if-ne v1, v8, :cond_2a

    .line 420
    :cond_29
    :goto_29
    return v6

    .line 402
    :cond_2a
    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;
    invoke-static {v4}, Lcom/android/calendar/MonthView;->access$800(Lcom/android/calendar/MonthView;)Lcom/android/calendar/TwDayOfMonthCursor;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Lcom/android/calendar/TwDayOfMonthCursor;->isValid(II)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 405
    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;
    invoke-static {v4}, Lcom/android/calendar/MonthView;->access$800(Lcom/android/calendar/MonthView;)Lcom/android/calendar/TwDayOfMonthCursor;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Lcom/android/calendar/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v4

    if-eqz v4, :cond_78

    .line 406
    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #setter for: Lcom/android/calendar/MonthView;->mPressedRow:I
    invoke-static {v4, v7}, Lcom/android/calendar/MonthView;->access$902(Lcom/android/calendar/MonthView;I)I

    .line 407
    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #setter for: Lcom/android/calendar/MonthView;->mPressedCol:I
    invoke-static {v4, v7}, Lcom/android/calendar/MonthView;->access$1002(Lcom/android/calendar/MonthView;I)I

    .line 412
    :cond_4c
    :goto_4c
    if-eqz v0, :cond_68

    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;
    invoke-static {v4}, Lcom/android/calendar/MonthView;->access$800(Lcom/android/calendar/MonthView;)Lcom/android/calendar/TwDayOfMonthCursor;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Lcom/android/calendar/TwDayOfMonthCursor;->isValid(II)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 413
    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;
    invoke-static {v4}, Lcom/android/calendar/MonthView;->access$800(Lcom/android/calendar/MonthView;)Lcom/android/calendar/TwDayOfMonthCursor;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Lcom/android/calendar/TwDayOfMonthCursor;->setSelectedRowColumn(II)V

    .line 414
    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #setter for: Lcom/android/calendar/MonthView;->mSelectionMode:I
    invoke-static {v4, v6}, Lcom/android/calendar/MonthView;->access$702(Lcom/android/calendar/MonthView;I)I

    .line 416
    :cond_68
    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #setter for: Lcom/android/calendar/MonthView;->mRedrawScreen:Z
    invoke-static {v4, v6}, Lcom/android/calendar/MonthView;->access$1102(Lcom/android/calendar/MonthView;Z)Z

    .line 417
    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v4}, Lcom/android/calendar/MonthView;->invalidate()V

    .line 418
    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v4}, Lcom/android/calendar/MonthView;->requestFocus()Z

    goto :goto_29

    .line 408
    :cond_78
    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mPressedRow:I
    invoke-static {v4}, Lcom/android/calendar/MonthView;->access$900(Lcom/android/calendar/MonthView;)I

    move-result v4

    if-ne v4, v7, :cond_4c

    .line 409
    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    iget-object v5, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;
    invoke-static {v5}, Lcom/android/calendar/MonthView;->access$800(Lcom/android/calendar/MonthView;)Lcom/android/calendar/TwDayOfMonthCursor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedRow()I

    move-result v5

    #setter for: Lcom/android/calendar/MonthView;->mPressedRow:I
    invoke-static {v4, v5}, Lcom/android/calendar/MonthView;->access$902(Lcom/android/calendar/MonthView;I)I

    .line 410
    iget-object v4, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    iget-object v5, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;
    invoke-static {v5}, Lcom/android/calendar/MonthView;->access$800(Lcom/android/calendar/MonthView;)Lcom/android/calendar/TwDayOfMonthCursor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedColumn()I

    move-result v5

    #setter for: Lcom/android/calendar/MonthView;->mPressedCol:I
    invoke-static {v4, v5}, Lcom/android/calendar/MonthView;->access$1002(Lcom/android/calendar/MonthView;I)I

    goto :goto_4c
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 10
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 471
    iget-object v2, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mLaunchDayView:Z
    invoke-static {v2}, Lcom/android/calendar/MonthView;->access$600(Lcom/android/calendar/MonthView;)Z

    move-result v2

    if-eqz v2, :cond_b3

    .line 472
    iget-object v2, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mTempTime:Landroid/text/format/Time;
    invoke-static {v2}, Lcom/android/calendar/MonthView;->access$200(Lcom/android/calendar/MonthView;)Landroid/text/format/Time;

    move-result-object v2

    .line 473
    iget-object v3, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;
    invoke-static {v3}, Lcom/android/calendar/MonthView;->access$300(Lcom/android/calendar/MonthView;)Landroid/text/format/Time;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 474
    iget-object v3, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mCursor:Lcom/android/calendar/TwDayOfMonthCursor;
    invoke-static {v3}, Lcom/android/calendar/MonthView;->access$800(Lcom/android/calendar/MonthView;)Lcom/android/calendar/TwDayOfMonthCursor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/calendar/TwDayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v3

    iput v3, v2, Landroid/text/format/Time;->monthDay:I

    .line 475
    invoke-virtual {v2, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    .line 477
    iget-object v5, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v5, v1}, Lcom/android/calendar/MonthView;->playSoundEffect(I)V

    .line 478
    iget-object v5, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #setter for: Lcom/android/calendar/MonthView;->mLaunchDayView:Z
    invoke-static {v5, v1}, Lcom/android/calendar/MonthView;->access$602(Lcom/android/calendar/MonthView;Z)Z

    .line 479
    iget v2, v2, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v2, v2, -0x1

    .line 480
    iget-object v5, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mEventDays:[[I
    invoke-static {v5}, Lcom/android/calendar/MonthView;->access$1300(Lcom/android/calendar/MonthView;)[[I

    move-result-object v5

    aget-object v2, v5, v2

    aget v1, v2, v1

    if-eqz v1, :cond_7b

    .line 482
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 483
    iget-object v2, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v2}, Lcom/android/calendar/MonthView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v5, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mDetailedView:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/calendar/MonthView;->access$1400(Lcom/android/calendar/MonthView;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    const-string v2, "beginTime"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 485
    const-string v2, "startDayfromWhere"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 486
    const/high16 v2, 0x2002

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 487
    iget-object v2, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;
    invoke-static {v2}, Lcom/android/calendar/MonthView;->access$500(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/calendar/MonthActivity;->startActivity(Landroid/content/Intent;)V

    .line 488
    iget-object v1, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;
    invoke-static {v1}, Lcom/android/calendar/MonthView;->access$500(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/MonthActivity;->finish()V

    .line 503
    :goto_7a
    return v0

    .line 492
    :cond_7b
    iget-object v1, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;
    invoke-static {v1}, Lcom/android/calendar/MonthView;->access$500(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/MonthActivity;->getSelectedTime()J

    move-result-wide v1

    .line 493
    const-wide/32 v3, 0x36ee80

    add-long/2addr v3, v1

    .line 494
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.EDIT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 495
    iget-object v6, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    invoke-virtual {v6}, Lcom/android/calendar/MonthView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/android/calendar/EditEvent;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 496
    const-string v6, "beginTime"

    invoke-virtual {v5, v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 497
    const-string v1, "endTime"

    invoke-virtual {v5, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 499
    iget-object v1, p0, Lcom/android/calendar/MonthView$3;->this$0:Lcom/android/calendar/MonthView;

    #getter for: Lcom/android/calendar/MonthView;->mParentActivity:Lcom/android/calendar/MonthActivity;
    invoke-static {v1}, Lcom/android/calendar/MonthView;->access$500(Lcom/android/calendar/MonthView;)Lcom/android/calendar/MonthActivity;

    move-result-object v1

    invoke-virtual {v1, v5, v0}, Lcom/android/calendar/MonthActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_7a

    :cond_b3
    move v0, v1

    .line 503
    goto :goto_7a
.end method
