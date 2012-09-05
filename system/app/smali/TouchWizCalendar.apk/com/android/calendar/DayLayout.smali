.class public Lcom/android/calendar/DayLayout;
.super Landroid/widget/LinearLayout;
.source "DayLayout.java"

# interfaces
.implements Lcom/android/calendar/CalendarInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/DayLayout$DayLayoutGestureListener;
    }
.end annotation


# instance fields
.field private mAlldayNum:I

.field private mBaseDate:Landroid/text/format/Time;

.field private mContext:Landroid/content/Context;

.field private mDayLayoutGestureDetector:Landroid/view/GestureDetector;

.field private mDayView:Lcom/android/calendar/DayView;

.field private final mEventLoader:Lcom/android/calendar/EventLoader;

.field private mEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstJulianDay:I

.field private mUpdateTZ:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, -0x1

    .line 211
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 191
    new-instance v0, Lcom/android/calendar/DayLayout$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/DayLayout$1;-><init>(Lcom/android/calendar/DayLayout;)V

    iput-object v0, p0, Lcom/android/calendar/DayLayout;->mUpdateTZ:Ljava/lang/Runnable;

    .line 215
    iput-object p1, p0, Lcom/android/calendar/DayLayout;->mContext:Landroid/content/Context;

    move-object v0, p1

    .line 219
    check-cast v0, Lcom/android/calendar/CalendarActivity;

    iget-object v0, v0, Lcom/android/calendar/CalendarActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    iput-object v0, p0, Lcom/android/calendar/DayLayout;->mEventLoader:Lcom/android/calendar/EventLoader;

    .line 221
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/calendar/DayLayout;->setOrientation(I)V

    .line 225
    new-instance v1, Lcom/android/calendar/DayView;

    move-object v0, p1

    check-cast v0, Lcom/android/calendar/CalendarActivity;

    invoke-direct {v1, v0}, Lcom/android/calendar/DayView;-><init>(Lcom/android/calendar/CalendarActivity;)V

    iput-object v1, p0, Lcom/android/calendar/DayLayout;->mDayView:Lcom/android/calendar/DayView;

    .line 227
    iget-object v0, p0, Lcom/android/calendar/DayLayout;->mDayView:Lcom/android/calendar/DayView;

    const v1, 0x7f080016

    invoke-virtual {v0, v1}, Lcom/android/calendar/DayView;->setBackgroundColor(I)V

    .line 231
    iget-object v0, p0, Lcom/android/calendar/DayLayout;->mDayView:Lcom/android/calendar/DayView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f80

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/DayLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/calendar/DayLayout$DayLayoutGestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/calendar/DayLayout$DayLayoutGestureListener;-><init>(Lcom/android/calendar/DayLayout;Lcom/android/calendar/DayLayout$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/calendar/DayLayout;->mDayLayoutGestureDetector:Landroid/view/GestureDetector;

    .line 239
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/DayLayout;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/calendar/DayLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/DayLayout;)Landroid/text/format/Time;
    .registers 2
    .parameter "x0"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/calendar/DayLayout;->mBaseDate:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/DayLayout;Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 137
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/calendar/DayLayout;->doFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method private doFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 14
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 459
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    sub-int v0, v5, v8

    .line 461
    .local v0, deltaX:I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 463
    .local v2, distanceX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    sub-int v1, v5, v8

    .line 465
    .local v1, deltaY:I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 469
    .local v3, distanceY:I
    iget-object v5, p0, Lcom/android/calendar/DayLayout;->mDayView:Lcom/android/calendar/DayView;

    invoke-virtual {v5}, Lcom/android/calendar/DayView;->isBriefMode()Z

    move-result v5

    if-nez v5, :cond_69

    sget v5, Lcom/android/calendar/Utils;->HORIZONTAL_SCROLL_THRESHOLD:I

    if-lt v2, v5, :cond_69

    if-le v2, v3, :cond_69

    .line 473
    iget-object v5, p0, Lcom/android/calendar/DayLayout;->mDayView:Lcom/android/calendar/DayView;

    invoke-virtual {v5, v0}, Lcom/android/calendar/DayView;->checkSwitchView(I)Z

    move-result v5

    if-nez v5, :cond_3a

    move v5, v6

    .line 499
    :goto_39
    return v5

    .line 479
    :cond_3a
    new-instance v4, Landroid/text/format/Time;

    iget-object v5, p0, Lcom/android/calendar/DayLayout;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/calendar/DayLayout;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v5, v8}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 481
    .local v4, time:Landroid/text/format/Time;
    if-lez v0, :cond_5d

    .line 483
    iget-object v5, p0, Lcom/android/calendar/DayLayout;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v5, v7}, Lcom/android/calendar/CalendarActivity;->getNextDay(Z)J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 491
    :goto_54
    iget-object v5, p0, Lcom/android/calendar/DayLayout;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v5, v4, v6, v6}, Lcom/android/calendar/CalendarActivity;->goTo(Landroid/text/format/Time;ZZ)V

    move v5, v6

    .line 495
    goto :goto_39

    .line 487
    :cond_5d
    iget-object v5, p0, Lcom/android/calendar/DayLayout;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/android/calendar/CalendarActivity;

    invoke-virtual {v5, v6}, Lcom/android/calendar/CalendarActivity;->getNextDay(Z)J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Landroid/text/format/Time;->set(J)V

    goto :goto_54

    .end local v4           #time:Landroid/text/format/Time;
    :cond_69
    move v5, v7

    .line 499
    goto :goto_39
.end method


# virtual methods
.method public cleanup()V
    .registers 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/calendar/DayLayout;->mDayView:Lcom/android/calendar/DayView;

    invoke-virtual {v0}, Lcom/android/calendar/DayView;->cleanup()V

    .line 409
    return-void
.end method

.method public clearScreen()V
    .registers 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/calendar/DayLayout;->mEvents:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 287
    iget-object v0, p0, Lcom/android/calendar/DayLayout;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 289
    :cond_9
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendar/DayLayout;->mAlldayNum:I

    .line 291
    iget-object v0, p0, Lcom/android/calendar/DayLayout;->mDayView:Lcom/android/calendar/DayView;

    invoke-virtual {v0}, Lcom/android/calendar/DayView;->clearScreen()V

    .line 293
    return-void
.end method

.method public getDayView()Lcom/android/calendar/DayView;
    .registers 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/calendar/DayLayout;->mDayView:Lcom/android/calendar/DayView;

    return-object v0
.end method

.method public getEventList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/calendar/DayLayout;->mEvents:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSelectedTime()Landroid/text/format/Time;
    .registers 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/calendar/DayLayout;->mDayView:Lcom/android/calendar/DayView;

    invoke-virtual {v0}, Lcom/android/calendar/DayView;->getSelectedTime()Landroid/text/format/Time;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedTimeInMillis()J
    .registers 3

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/calendar/DayLayout;->mDayView:Lcom/android/calendar/DayView;

    invoke-virtual {v0}, Lcom/android/calendar/DayView;->getSelectedTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method initDate(Landroid/text/format/Time;)V
    .registers 6
    .parameter "time"

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/calendar/DayLayout;->mBaseDate:Landroid/text/format/Time;

    .line 277
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    iget-wide v2, p1, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/DayLayout;->mFirstJulianDay:I

    .line 279
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/calendar/DayLayout;->mDayLayoutGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 449
    const/4 v0, 0x1

    .line 451
    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_9
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/calendar/DayLayout;->mDayLayoutGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 435
    const/4 v0, 0x1

    .line 437
    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_9
.end method

.method public reloadCompleted(Ljava/util/ArrayList;Z)V
    .registers 6
    .parameter
    .parameter "doScroll"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 371
    .local p1, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    iput-object p1, p0, Lcom/android/calendar/DayLayout;->mEvents:Ljava/util/ArrayList;

    .line 375
    iget v0, p0, Lcom/android/calendar/DayLayout;->mFirstJulianDay:I

    iget v1, p0, Lcom/android/calendar/DayLayout;->mFirstJulianDay:I

    iget-object v2, p0, Lcom/android/calendar/DayLayout;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v1, v2}, Lcom/android/calendar/Utils;->setAllDayEvents(Ljava/util/ArrayList;IILandroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/DayLayout;->mAlldayNum:I

    .line 379
    if-nez p2, :cond_25

    .line 381
    iget-object v0, p0, Lcom/android/calendar/DayLayout;->mDayView:Lcom/android/calendar/DayView;

    invoke-virtual {v0, p1}, Lcom/android/calendar/DayView;->reloadEventAction(Ljava/util/ArrayList;)V

    .line 391
    :goto_15
    invoke-virtual {p0}, Lcom/android/calendar/DayLayout;->invalidate()V

    .line 393
    if-eqz p2, :cond_24

    .line 395
    iget-object v0, p0, Lcom/android/calendar/DayLayout;->mDayView:Lcom/android/calendar/DayView;

    invoke-virtual {v0}, Lcom/android/calendar/DayView;->computeEarliestStartHour()Z

    .line 397
    iget-object v0, p0, Lcom/android/calendar/DayLayout;->mDayView:Lcom/android/calendar/DayView;

    invoke-virtual {v0}, Lcom/android/calendar/DayView;->scrollToEventHour()V

    .line 401
    :cond_24
    return-void

    .line 385
    :cond_25
    iget-object v0, p0, Lcom/android/calendar/DayLayout;->mDayView:Lcom/android/calendar/DayView;

    invoke-virtual {v0, p1}, Lcom/android/calendar/DayView;->reloadEventActionForScroll(Ljava/util/ArrayList;)V

    goto :goto_15
.end method

.method public reloadEvents(Z)V
    .registers 10
    .parameter "doScroll"

    .prologue
    const/4 v1, 0x1

    .line 341
    new-instance v7, Landroid/text/format/Time;

    iget-object v0, p0, Lcom/android/calendar/DayLayout;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/calendar/DayLayout;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v0, v5}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 343
    .local v7, weekStart:Landroid/text/format/Time;
    iget-object v0, p0, Lcom/android/calendar/DayLayout;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 345
    invoke-static {v7}, Lcom/android/calendar/Utils;->setTimeToStartOfDay(Landroid/text/format/Time;)V

    .line 347
    invoke-virtual {v7, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    .line 353
    .local v3, millis:J
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 355
    .local v2, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    iget-object v0, p0, Lcom/android/calendar/DayLayout;->mEventLoader:Lcom/android/calendar/EventLoader;

    new-instance v5, Lcom/android/calendar/DayLayout$2;

    invoke-direct {v5, p0, v2, p1}, Lcom/android/calendar/DayLayout$2;-><init>(Lcom/android/calendar/DayLayout;Ljava/util/ArrayList;Z)V

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/EventLoader;->loadEventsInBackground(ILjava/util/ArrayList;JLjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 365
    return-void
.end method

.method public resetFirstHour()V
    .registers 1

    .prologue
    .line 922
    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "state"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/calendar/DayLayout;->mDayView:Lcom/android/calendar/DayView;

    invoke-virtual {v0, p1}, Lcom/android/calendar/DayView;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 327
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "state"

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/calendar/DayLayout;->mDayView:Lcom/android/calendar/DayView;

    invoke-virtual {v0, p1}, Lcom/android/calendar/DayView;->saveInstanceState(Landroid/os/Bundle;)V

    .line 335
    return-void
.end method

.method public setSelectedDay(Landroid/text/format/Time;)V
    .registers 3
    .parameter "time"

    .prologue
    .line 315
    invoke-virtual {p0, p1}, Lcom/android/calendar/DayLayout;->initDate(Landroid/text/format/Time;)V

    .line 317
    iget-object v0, p0, Lcom/android/calendar/DayLayout;->mDayView:Lcom/android/calendar/DayView;

    invoke-virtual {v0, p1}, Lcom/android/calendar/DayView;->setSelectedDay(Landroid/text/format/Time;)V

    .line 319
    return-void
.end method

.method public setSelectionMode(I)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 917
    return-void
.end method

.method public updateView()V
    .registers 2

    .prologue
    .line 905
    iget-object v0, p0, Lcom/android/calendar/DayLayout;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 907
    iget-object v0, p0, Lcom/android/calendar/DayLayout;->mDayView:Lcom/android/calendar/DayView;

    invoke-virtual {v0}, Lcom/android/calendar/DayView;->updateView()V

    .line 909
    return-void
.end method
