.class Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MonthView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->init(Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;)V
    .registers 2
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView$2;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "e"

    .prologue
    const/4 v5, 0x1

    .line 215
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 216
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 217
    .local v3, y:I
    iget-object v4, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView$2;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;

    invoke-virtual {v4, v3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->getPressedRow(I)I

    move-result v1

    .line 218
    .local v1, row:I
    iget-object v4, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView$2;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;

    invoke-virtual {v4, v2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->getPressedColumn(I)I

    move-result v0

    .line 220
    .local v0, col:I
    if-eqz v0, :cond_36

    iget-object v4, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView$2;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mCursor:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;
    invoke-static {v4}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->access$100(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;)Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 221
    iget-object v4, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView$2;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mCursor:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;
    invoke-static {v4}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->access$100(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;)Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->isSelected(II)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 222
    iget-object v4, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView$2;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;

    #setter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mLaunchDayView:Z
    invoke-static {v4, v5}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->access$202(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;Z)Z

    .line 240
    :cond_36
    :goto_36
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    .line 223
    :cond_3b
    iget-object v4, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView$2;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mCursor:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;
    invoke-static {v4}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->access$100(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;)Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->isValid(II)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 234
    iget-object v4, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView$2;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mCursor:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;
    invoke-static {v4}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->access$100(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;)Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->setSelectedRowColumn(II)V

    .line 235
    iget-object v4, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView$2;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;

    #setter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mSelectionMode:I
    invoke-static {v4, v5}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->access$302(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;I)I

    .line 236
    iget-object v4, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView$2;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;

    #setter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mRedrawScreen:Z
    invoke-static {v4, v5}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->access$402(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;Z)Z

    .line 237
    iget-object v4, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView$2;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->invalidate()V

    goto :goto_36
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 7
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 297
    const-string v0, "MonthView"

    const-string v1, "onFling"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 246
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 247
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 7
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 304
    const-string v0, "MonthView"

    const-string v1, "onScroll"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 252
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 15
    .parameter "e"

    .prologue
    const/high16 v12, 0x1420

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 257
    iget-object v11, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView$2;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mLaunchDayView:Z
    invoke-static {v11}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->access$200(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;)Z

    move-result v11

    if-eqz v11, :cond_9d

    .line 258
    iget-object v11, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView$2;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mTempTime:Landroid/text/format/Time;
    invoke-static {v11}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->access$500(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;)Landroid/text/format/Time;

    move-result-object v8

    .line 259
    .local v8, time:Landroid/text/format/Time;
    iget-object v11, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView$2;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mViewCalendar:Landroid/text/format/Time;
    invoke-static {v11}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->access$600(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;)Landroid/text/format/Time;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 260
    iget-object v11, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView$2;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mCursor:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;
    invoke-static {v11}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->access$100(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;)Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v11

    iput v11, v8, Landroid/text/format/Time;->monthDay:I

    .line 261
    invoke-virtual {v8, v9}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    .line 263
    .local v4, millis:J
    iget v11, v8, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v11, -0x1

    .line 264
    .local v0, day:I
    iget-object v11, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView$2;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;

    invoke-virtual {v11, v10}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->playSoundEffect(I)V

    .line 265
    iget-object v11, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView$2;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;

    #setter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mLaunchDayView:Z
    invoke-static {v11, v10}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->access$202(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;Z)Z

    .line 266
    iget-object v11, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView$2;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mEventDays:[[I
    invoke-static {v11}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->access$700(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;)[[I

    move-result-object v11

    aget-object v11, v11, v0

    aget v10, v11, v10

    if-eqz v10, :cond_69

    .line 268
    new-instance v3, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 269
    .local v3, intent:Landroid/content/Intent;
    const-string v10, "com.android.calendar"

    iget-object v11, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView$2;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mDayViewClassName:Ljava/lang/String;
    invoke-static {v11}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->access$800(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    invoke-virtual {v3, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 273
    const-string v10, "beginTime"

    invoke-virtual {v3, v10, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 274
    iget-object v10, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView$2;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mParentActivity:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;
    invoke-static {v10}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->access$000(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;)Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;

    move-result-object v10

    invoke-virtual {v10, v3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;->startActivity(Landroid/content/Intent;)V

    .line 291
    .end local v0           #day:I
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #millis:J
    .end local v8           #time:Landroid/text/format/Time;
    :goto_68
    return v9

    .line 278
    .restart local v0       #day:I
    .restart local v4       #millis:J
    .restart local v8       #time:Landroid/text/format/Time;
    :cond_69
    iget-object v10, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView$2;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;

    invoke-virtual {v10}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->getSelectedTime()Landroid/text/format/Time;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    .line 279
    .local v6, startMillis:J
    const-wide/32 v10, 0x36ee80

    add-long v1, v6, v10

    .line 280
    .local v1, endMillis:J
    new-instance v3, Landroid/content/Intent;

    const-string v10, "android.intent.action.EDIT"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v10, "com.android.calendar"

    const-string v11, "com.android.calendar.EditEvent"

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    invoke-virtual {v3, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 285
    const-string v10, "beginTime"

    invoke-virtual {v3, v10, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 286
    const-string v10, "endTime"

    invoke-virtual {v3, v10, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 287
    iget-object v10, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView$2;->this$0:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;

    #getter for: Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->mParentActivity:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;
    invoke-static {v10}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->access$000(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;)Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;

    move-result-object v10

    invoke-virtual {v10, v3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_68

    .end local v0           #day:I
    .end local v1           #endMillis:J
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #millis:J
    .end local v6           #startMillis:J
    .end local v8           #time:Landroid/text/format/Time;
    :cond_9d
    move v9, v10

    .line 291
    goto :goto_68
.end method
