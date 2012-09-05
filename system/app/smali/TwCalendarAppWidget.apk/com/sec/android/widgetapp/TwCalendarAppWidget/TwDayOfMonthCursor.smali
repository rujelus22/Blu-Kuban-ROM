.class public Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;
.super Ljava/lang/Object;
.source "TwDayOfMonthCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor$OnCursorMoveListener;
    }
.end annotation


# static fields
.field private static mPrevColumn:I


# instance fields
.field private mCalendar:Ljava/util/Calendar;

.field private mColumn:I

.field private mNumDaysInMonth:I

.field private mNumDaysInPrevMonth:I

.field private mOffset:I

.field private mOnCursorMoveListener:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor$OnCursorMoveListener;

.field private mRow:I

.field private final mWeekStartDay:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 70
    const/4 v0, -0x1

    sput v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mPrevColumn:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 10
    .parameter "year"
    .parameter "month"
    .parameter "dayOfMonth"
    .parameter "weekStartDay"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor$OnCursorMoveListener;

    .line 98
    if-lt p4, v4, :cond_d

    const/4 v1, 0x7

    if-le p4, v1, :cond_13

    .line 100
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 104
    :cond_13
    iput p4, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mWeekStartDay:I

    .line 108
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 110
    .local v0, temp:Landroid/text/format/Time;
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mCalendar:Ljava/util/Calendar;

    .line 112
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v4, p1}, Ljava/util/Calendar;->set(II)V

    .line 114
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 116
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 118
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mCalendar:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 120
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mCalendar:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 122
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mCalendar:Ljava/util/Calendar;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 124
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 128
    invoke-direct {p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->recalculate()V

    .line 132
    invoke-virtual {p0, p3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->getRowOf(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mRow:I

    .line 134
    invoke-virtual {p0, p3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->getColumnOf(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mColumn:I

    .line 136
    return-void
.end method

.method private recalculate()V
    .registers 7

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x2

    .line 396
    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mNumDaysInMonth:I

    .line 400
    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mCalendar:Ljava/util/Calendar;

    const/4 v3, -0x1

    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->add(II)V

    .line 402
    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mNumDaysInPrevMonth:I

    .line 404
    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mCalendar:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->add(II)V

    .line 408
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->getFirstDayOfMonth()I

    move-result v0

    .line 410
    .local v0, firstDayOfMonth:I
    iget v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mWeekStartDay:I

    sub-int v1, v0, v2

    .line 412
    .local v1, offset:I
    if-gez v1, :cond_2a

    .line 414
    add-int/lit8 v1, v1, 0x7

    .line 418
    :cond_2a
    iput v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mOffset:I

    .line 420
    return-void
.end method


# virtual methods
.method public getColumnOf(I)I
    .registers 3
    .parameter "day"

    .prologue
    .line 308
    iget v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mOffset:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getDayAt(II)I
    .registers 7
    .parameter "row"
    .parameter "column"

    .prologue
    .line 264
    if-nez p2, :cond_12

    const/4 v0, 0x0

    .line 266
    .local v0, c:I
    :goto_3
    if-nez p1, :cond_15

    iget v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mOffset:I

    if-ge v0, v2, :cond_15

    .line 268
    iget v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mNumDaysInPrevMonth:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mOffset:I

    sub-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x1

    .line 278
    :cond_11
    :goto_11
    return v1

    .line 264
    .end local v0           #c:I
    :cond_12
    add-int/lit8 v0, p2, -0x1

    goto :goto_3

    .line 274
    .restart local v0       #c:I
    :cond_15
    mul-int/lit8 v2, p1, 0x7

    add-int/2addr v2, v0

    iget v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mOffset:I

    sub-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x1

    .line 278
    .local v1, day:I
    iget v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mNumDaysInMonth:I

    if-le v1, v2, :cond_11

    iget v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mNumDaysInMonth:I

    sub-int/2addr v1, v2

    goto :goto_11
.end method

.method public getFirstDayOfMonth()I
    .registers 3

    .prologue
    .line 176
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMonth()I
    .registers 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getRowOf(I)I
    .registers 3
    .parameter "day"

    .prologue
    .line 294
    iget v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mOffset:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public getSelectedDayOfMonth()I
    .registers 3

    .prologue
    .line 458
    iget v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mRow:I

    iget v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->getDayAt(II)I

    move-result v0

    return v0
.end method

.method public getSelectedMonthOffset()I
    .registers 3

    .prologue
    .line 474
    iget v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mRow:I

    iget v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 476
    const/4 v0, 0x0

    .line 486
    :goto_b
    return v0

    .line 480
    :cond_c
    iget v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mRow:I

    if-nez v0, :cond_12

    .line 482
    const/4 v0, -0x1

    goto :goto_b

    .line 486
    :cond_12
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public getYear()I
    .registers 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public isSelected(II)Z
    .registers 4
    .parameter "row"
    .parameter "column"

    .prologue
    .line 516
    iget v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mRow:I

    if-ne v0, p1, :cond_a

    iget v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mColumn:I

    if-ne v0, p2, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isValid(II)Z
    .registers 10
    .parameter "row"
    .parameter "column"

    .prologue
    const/4 v6, 0x1

    .line 772
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 774
    .local v3, time:Landroid/text/format/Time;
    const-wide/16 v0, 0x0

    .line 776
    .local v0, millis:J
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->getMonth()I

    move-result v2

    .line 778
    .local v2, month:I
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v4

    if-nez v4, :cond_16

    .line 780
    if-nez p1, :cond_26

    .line 782
    add-int/lit8 v2, v2, -0x1

    .line 790
    :cond_16
    :goto_16
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->getDayAt(II)I

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->getYear()I

    move-result v5

    invoke-virtual {v3, v4, v2, v5}, Landroid/text/format/Time;->set(III)V

    .line 794
    invoke-virtual {v3, v6}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 812
    return v6

    .line 786
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_16
.end method

.method public isWithinCurrentMonth(II)Z
    .registers 8
    .parameter "row"
    .parameter "column"

    .prologue
    const/4 v2, 0x0

    .line 354
    if-nez p2, :cond_f

    move v0, v2

    .line 358
    .local v0, c:I
    :goto_4
    if-ltz p1, :cond_e

    if-ltz v0, :cond_e

    const/4 v3, 0x5

    if-gt p1, v3, :cond_e

    const/4 v3, 0x6

    if-le v0, v3, :cond_12

    .line 382
    :cond_e
    :goto_e
    return v2

    .line 354
    .end local v0           #c:I
    :cond_f
    add-int/lit8 v0, p2, -0x1

    goto :goto_4

    .line 366
    .restart local v0       #c:I
    :cond_12
    if-nez p1, :cond_18

    iget v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mOffset:I

    if-lt v0, v3, :cond_e

    .line 374
    :cond_18
    mul-int/lit8 v3, p1, 0x7

    add-int/2addr v3, v0

    iget v4, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mOffset:I

    sub-int/2addr v3, v4

    add-int/lit8 v1, v3, 0x1

    .line 376
    .local v1, day:I
    iget v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mNumDaysInMonth:I

    if-gt v1, v3, :cond_e

    .line 382
    const/4 v2, 0x1

    goto :goto_e
.end method

.method public setOnCursorMoveListener(Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor$OnCursorMoveListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 756
    iput-object p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor$OnCursorMoveListener;

    .line 758
    return-void
.end method

.method public setSelectedDayOfMonth(I)V
    .registers 3
    .parameter "dayOfMonth"

    .prologue
    .line 494
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->getRowOf(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mRow:I

    .line 496
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->getColumnOf(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mColumn:I

    .line 498
    sget v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mPrevColumn:I

    if-nez v0, :cond_16

    .line 500
    iget v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mColumn:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mColumn:I

    .line 504
    :cond_16
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor$OnCursorMoveListener;

    if-eqz v0, :cond_1f

    .line 506
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor$OnCursorMoveListener;

    invoke-interface {v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor$OnCursorMoveListener;->onCusorMoved()V

    .line 510
    :cond_1f
    return-void
.end method

.method public setSelectedRowColumn(II)V
    .registers 4
    .parameter "row"
    .parameter "col"

    .prologue
    .line 442
    iput p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mRow:I

    .line 444
    iput p2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mColumn:I

    .line 446
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor$OnCursorMoveListener;

    if-eqz v0, :cond_d

    .line 448
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor$OnCursorMoveListener;

    invoke-interface {v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDayOfMonthCursor$OnCursorMoveListener;->onCusorMoved()V

    .line 452
    :cond_d
    return-void
.end method
