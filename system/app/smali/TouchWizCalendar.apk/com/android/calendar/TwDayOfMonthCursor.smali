.class public Lcom/android/calendar/TwDayOfMonthCursor;
.super Ljava/lang/Object;
.source "TwDayOfMonthCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/TwDayOfMonthCursor$OnCursorMoveListener;
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

.field private mOnCursorMoveListener:Lcom/android/calendar/TwDayOfMonthCursor$OnCursorMoveListener;

.field private mRow:I

.field private final mWeekStartDay:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 93
    const/4 v0, -0x1

    sput v0, Lcom/android/calendar/TwDayOfMonthCursor;->mPrevColumn:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 9
    .parameter "year"
    .parameter "month"
    .parameter "dayOfMonth"
    .parameter "weekStartDay"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 117
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/android/calendar/TwDayOfMonthCursor$OnCursorMoveListener;

    .line 121
    if-lt p4, v3, :cond_d

    const/4 v0, 0x7

    if-le p4, v0, :cond_13

    .line 123
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 127
    :cond_13
    iput p4, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mWeekStartDay:I

    .line 131
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mCalendar:Ljava/util/Calendar;

    .line 133
    iget-object v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->set(II)V

    .line 135
    iget-object v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 137
    iget-object v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 139
    iget-object v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 141
    iget-object v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 143
    iget-object v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 145
    iget-object v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 149
    invoke-direct {p0}, Lcom/android/calendar/TwDayOfMonthCursor;->recalculate()V

    .line 153
    invoke-virtual {p0, p3}, Lcom/android/calendar/TwDayOfMonthCursor;->getRowOf(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    .line 155
    invoke-virtual {p0, p3}, Lcom/android/calendar/TwDayOfMonthCursor;->getColumnOf(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    .line 157
    return-void
.end method

.method private recalculate()V
    .registers 7

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x2

    .line 429
    iget-object v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mNumDaysInMonth:I

    .line 433
    iget-object v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mCalendar:Ljava/util/Calendar;

    const/4 v3, -0x1

    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->add(II)V

    .line 435
    iget-object v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mNumDaysInPrevMonth:I

    .line 437
    iget-object v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mCalendar:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v2, v4, v3}, Ljava/util/Calendar;->add(II)V

    .line 441
    invoke-virtual {p0}, Lcom/android/calendar/TwDayOfMonthCursor;->getFirstDayOfMonth()I

    move-result v0

    .line 443
    .local v0, firstDayOfMonth:I
    iget v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mWeekStartDay:I

    sub-int v1, v0, v2

    .line 445
    .local v1, offset:I
    if-gez v1, :cond_2a

    .line 447
    add-int/lit8 v1, v1, 0x7

    .line 451
    :cond_2a
    iput v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mOffset:I

    .line 453
    return-void
.end method


# virtual methods
.method public down()Z
    .registers 4

    .prologue
    .line 629
    iget v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v1, v2}, Lcom/android/calendar/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 633
    iget v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    .line 635
    const/4 v0, 0x0

    .line 655
    .local v0, returnValue:Z
    :goto_13
    iget-object v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/android/calendar/TwDayOfMonthCursor$OnCursorMoveListener;

    if-eqz v1, :cond_1c

    .line 657
    iget-object v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/android/calendar/TwDayOfMonthCursor$OnCursorMoveListener;

    invoke-interface {v1}, Lcom/android/calendar/TwDayOfMonthCursor$OnCursorMoveListener;->onCusorMoved()V

    .line 661
    :cond_1c
    iget v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    sput v1, Lcom/android/calendar/TwDayOfMonthCursor;->mPrevColumn:I

    .line 663
    return v0

    .line 641
    .end local v0           #returnValue:Z
    :cond_21
    invoke-virtual {p0}, Lcom/android/calendar/TwDayOfMonthCursor;->nextMonth()V

    .line 643
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    .line 645
    :goto_27
    iget v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    iget v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v1, v2}, Lcom/android/calendar/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v1

    if-nez v1, :cond_38

    .line 647
    iget v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    goto :goto_27

    .line 651
    :cond_38
    const/4 v0, 0x1

    .restart local v0       #returnValue:Z
    goto :goto_13
.end method

.method public getColumnOf(I)I
    .registers 3
    .parameter "day"

    .prologue
    .line 327
    iget v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mOffset:I

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
    .line 285
    if-nez p2, :cond_12

    const/4 v0, 0x0

    .line 287
    .local v0, c:I
    :goto_3
    if-nez p1, :cond_15

    iget v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mOffset:I

    if-ge v0, v2, :cond_15

    .line 289
    iget v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mNumDaysInPrevMonth:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mOffset:I

    sub-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x1

    .line 299
    :cond_11
    :goto_11
    return v1

    .line 285
    .end local v0           #c:I
    :cond_12
    add-int/lit8 v0, p2, -0x1

    goto :goto_3

    .line 295
    .restart local v0       #c:I
    :cond_15
    mul-int/lit8 v2, p1, 0x7

    add-int/2addr v2, v0

    iget v3, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mOffset:I

    sub-int/2addr v2, v3

    add-int/lit8 v1, v2, 0x1

    .line 299
    .local v1, day:I
    iget v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mNumDaysInMonth:I

    if-le v1, v2, :cond_11

    iget v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mNumDaysInMonth:I

    sub-int/2addr v1, v2

    goto :goto_11
.end method

.method public getFirstDayOfMonth()I
    .registers 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMonth()I
    .registers 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getNumberOfDaysInMonth()I
    .registers 2

    .prologue
    .line 211
    iget v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mNumDaysInMonth:I

    return v0
.end method

.method public getRowOf(I)I
    .registers 3
    .parameter "day"

    .prologue
    .line 313
    iget v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mOffset:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public getSelectedColumn()I
    .registers 2

    .prologue
    .line 469
    iget v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    return v0
.end method

.method public getSelectedDayOfMonth()I
    .registers 3

    .prologue
    .line 493
    iget v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    iget v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/TwDayOfMonthCursor;->getDayAt(II)I

    move-result v0

    return v0
.end method

.method public getSelectedMonthOffset()I
    .registers 3

    .prologue
    .line 509
    iget v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    iget v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Lcom/android/calendar/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 511
    const/4 v0, 0x0

    .line 521
    :goto_b
    return v0

    .line 515
    :cond_c
    iget v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    if-nez v0, :cond_12

    .line 517
    const/4 v0, -0x1

    goto :goto_b

    .line 521
    :cond_12
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public getSelectedRow()I
    .registers 2

    .prologue
    .line 461
    iget v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    return v0
.end method

.method public getYear()I
    .registers 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mCalendar:Ljava/util/Calendar;

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
    .line 551
    iget v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    if-ne v0, p1, :cond_a

    iget v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    if-ne v0, p2, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isValid(II)Z
    .registers 6
    .parameter "row"
    .parameter "column"

    .prologue
    .line 813
    invoke-virtual {p0}, Lcom/android/calendar/TwDayOfMonthCursor;->getMonth()I

    move-result v0

    .line 815
    .local v0, month:I
    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v2

    if-nez v2, :cond_e

    .line 817
    if-nez p1, :cond_22

    .line 819
    add-int/lit8 v0, v0, -0x1

    .line 827
    :cond_e
    :goto_e
    invoke-virtual {p0}, Lcom/android/calendar/TwDayOfMonthCursor;->getYear()I

    move-result v1

    .line 829
    .local v1, year:I
    if-gez v0, :cond_18

    const/16 v2, 0x76e

    if-eq v1, v2, :cond_20

    :cond_18
    const/16 v2, 0xb

    if-le v0, v2, :cond_25

    const/16 v2, 0x7f4

    if-ne v1, v2, :cond_25

    .line 833
    :cond_20
    const/4 v2, 0x0

    .line 837
    :goto_21
    return v2

    .line 823
    .end local v1           #year:I
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 837
    .restart local v1       #year:I
    :cond_25
    const/4 v2, 0x1

    goto :goto_21
.end method

.method public isWithinCurrentMonth(II)Z
    .registers 8
    .parameter "row"
    .parameter "column"

    .prologue
    const/4 v2, 0x0

    .line 387
    if-nez p2, :cond_f

    move v0, v2

    .line 391
    .local v0, c:I
    :goto_4
    if-ltz p1, :cond_e

    if-ltz v0, :cond_e

    const/4 v3, 0x5

    if-gt p1, v3, :cond_e

    const/4 v3, 0x6

    if-le v0, v3, :cond_12

    .line 415
    :cond_e
    :goto_e
    return v2

    .line 387
    .end local v0           #c:I
    :cond_f
    add-int/lit8 v0, p2, -0x1

    goto :goto_4

    .line 399
    .restart local v0       #c:I
    :cond_12
    if-nez p1, :cond_18

    iget v3, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mOffset:I

    if-lt v0, v3, :cond_e

    .line 407
    :cond_18
    mul-int/lit8 v3, p1, 0x7

    add-int/2addr v3, v0

    iget v4, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mOffset:I

    sub-int/2addr v3, v4

    add-int/lit8 v1, v3, 0x1

    .line 409
    .local v1, day:I
    iget v3, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mNumDaysInMonth:I

    if-gt v1, v3, :cond_e

    .line 415
    const/4 v2, 0x1

    goto :goto_e
.end method

.method public left()Z
    .registers 5

    .prologue
    .line 685
    iget v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    if-nez v2, :cond_22

    .line 687
    iget v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    .line 689
    const/4 v2, 0x7

    iput v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    .line 699
    :goto_d
    iget v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    iget v3, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v2, v3}, Lcom/android/calendar/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 701
    const/4 v1, 0x0

    .line 719
    .local v1, returnValue:Z
    :goto_18
    iget-object v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/android/calendar/TwDayOfMonthCursor$OnCursorMoveListener;

    if-eqz v2, :cond_21

    .line 721
    iget-object v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/android/calendar/TwDayOfMonthCursor$OnCursorMoveListener;

    invoke-interface {v2}, Lcom/android/calendar/TwDayOfMonthCursor$OnCursorMoveListener;->onCusorMoved()V

    .line 725
    :cond_21
    return v1

    .line 693
    .end local v1           #returnValue:Z
    :cond_22
    iget v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    goto :goto_d

    .line 707
    :cond_29
    invoke-virtual {p0}, Lcom/android/calendar/TwDayOfMonthCursor;->previousMonth()V

    .line 709
    invoke-virtual {p0}, Lcom/android/calendar/TwDayOfMonthCursor;->getNumberOfDaysInMonth()I

    move-result v0

    .line 711
    .local v0, lastDay:I
    invoke-virtual {p0, v0}, Lcom/android/calendar/TwDayOfMonthCursor;->getRowOf(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    .line 713
    invoke-virtual {p0, v0}, Lcom/android/calendar/TwDayOfMonthCursor;->getColumnOf(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    .line 715
    const/4 v1, 0x1

    .restart local v1       #returnValue:Z
    goto :goto_18
.end method

.method public nextMonth()V
    .registers 4

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 359
    invoke-direct {p0}, Lcom/android/calendar/TwDayOfMonthCursor;->recalculate()V

    .line 361
    return-void
.end method

.method public previousMonth()V
    .registers 4

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 343
    invoke-direct {p0}, Lcom/android/calendar/TwDayOfMonthCursor;->recalculate()V

    .line 345
    return-void
.end method

.method public right()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 745
    iget v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_23

    .line 747
    iget v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    .line 749
    iput v3, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    .line 759
    :goto_e
    iget v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    iget v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v1, v2}, Lcom/android/calendar/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 761
    const/4 v0, 0x0

    .line 783
    .local v0, returnValue:Z
    :goto_19
    iget-object v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/android/calendar/TwDayOfMonthCursor$OnCursorMoveListener;

    if-eqz v1, :cond_22

    .line 785
    iget-object v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/android/calendar/TwDayOfMonthCursor$OnCursorMoveListener;

    invoke-interface {v1}, Lcom/android/calendar/TwDayOfMonthCursor$OnCursorMoveListener;->onCusorMoved()V

    .line 789
    :cond_22
    return v0

    .line 753
    .end local v0           #returnValue:Z
    :cond_23
    iget v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    goto :goto_e

    .line 767
    :cond_2a
    invoke-virtual {p0}, Lcom/android/calendar/TwDayOfMonthCursor;->nextMonth()V

    .line 769
    iput v3, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    .line 771
    iput v3, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    .line 773
    :goto_31
    iget v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    iget v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v1, v2}, Lcom/android/calendar/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v1

    if-nez v1, :cond_42

    .line 775
    iget v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    goto :goto_31

    .line 779
    :cond_42
    const/4 v0, 0x1

    .restart local v0       #returnValue:Z
    goto :goto_19
.end method

.method public setFirstMonth()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 369
    iget-object v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 371
    .local v0, year:I
    iget-object v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 373
    invoke-direct {p0}, Lcom/android/calendar/TwDayOfMonthCursor;->recalculate()V

    .line 375
    return-void
.end method

.method public setOnCursorMoveListener(Lcom/android/calendar/TwDayOfMonthCursor$OnCursorMoveListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 797
    iput-object p1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/android/calendar/TwDayOfMonthCursor$OnCursorMoveListener;

    .line 799
    return-void
.end method

.method public setSelectedDayOfMonth(I)V
    .registers 3
    .parameter "dayOfMonth"

    .prologue
    .line 529
    invoke-virtual {p0, p1}, Lcom/android/calendar/TwDayOfMonthCursor;->getRowOf(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    .line 531
    invoke-virtual {p0, p1}, Lcom/android/calendar/TwDayOfMonthCursor;->getColumnOf(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    .line 533
    sget v0, Lcom/android/calendar/TwDayOfMonthCursor;->mPrevColumn:I

    if-nez v0, :cond_16

    .line 535
    iget v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    .line 539
    :cond_16
    iget-object v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/android/calendar/TwDayOfMonthCursor$OnCursorMoveListener;

    if-eqz v0, :cond_1f

    .line 541
    iget-object v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/android/calendar/TwDayOfMonthCursor$OnCursorMoveListener;

    invoke-interface {v0}, Lcom/android/calendar/TwDayOfMonthCursor$OnCursorMoveListener;->onCusorMoved()V

    .line 545
    :cond_1f
    return-void
.end method

.method public setSelectedRowColumn(II)V
    .registers 4
    .parameter "row"
    .parameter "col"

    .prologue
    .line 477
    iput p1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    .line 479
    iput p2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    .line 481
    iget-object v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/android/calendar/TwDayOfMonthCursor$OnCursorMoveListener;

    if-eqz v0, :cond_d

    .line 483
    iget-object v0, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/android/calendar/TwDayOfMonthCursor$OnCursorMoveListener;

    invoke-interface {v0}, Lcom/android/calendar/TwDayOfMonthCursor$OnCursorMoveListener;->onCusorMoved()V

    .line 487
    :cond_d
    return-void
.end method

.method public up()Z
    .registers 4

    .prologue
    .line 573
    iget v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v1, v2}, Lcom/android/calendar/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 577
    iget v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    .line 579
    const/4 v0, 0x0

    .line 601
    .local v0, returnValue:Z
    :goto_13
    iget-object v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/android/calendar/TwDayOfMonthCursor$OnCursorMoveListener;

    if-eqz v1, :cond_1c

    .line 603
    iget-object v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/android/calendar/TwDayOfMonthCursor$OnCursorMoveListener;

    invoke-interface {v1}, Lcom/android/calendar/TwDayOfMonthCursor$OnCursorMoveListener;->onCusorMoved()V

    .line 607
    :cond_1c
    iget v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    sput v1, Lcom/android/calendar/TwDayOfMonthCursor;->mPrevColumn:I

    .line 609
    return v0

    .line 587
    .end local v0           #returnValue:Z
    :cond_21
    invoke-virtual {p0}, Lcom/android/calendar/TwDayOfMonthCursor;->previousMonth()V

    .line 589
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    .line 591
    :goto_27
    iget v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    iget v2, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v1, v2}, Lcom/android/calendar/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v1

    if-nez v1, :cond_38

    .line 593
    iget v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/calendar/TwDayOfMonthCursor;->mRow:I

    goto :goto_27

    .line 597
    :cond_38
    const/4 v0, 0x1

    .restart local v0       #returnValue:Z
    goto :goto_13
.end method
