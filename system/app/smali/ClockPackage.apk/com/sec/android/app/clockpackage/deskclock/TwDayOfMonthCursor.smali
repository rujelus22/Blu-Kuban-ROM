.class public Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;
.super Landroid/util/MonthDisplayHelper;
.source "TwDayOfMonthCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor$OnCursorMoveListener;
    }
.end annotation


# static fields
.field private static mPrevColumn:I


# instance fields
.field private mColumn:I

.field private mOnCursorMoveListener:Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor$OnCursorMoveListener;

.field private mRow:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const/4 v0, -0x1

    sput v0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mPrevColumn:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 6
    .parameter "year"
    .parameter "month"
    .parameter "dayOfMonth"
    .parameter "weekStartDay"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p4}, Landroid/util/MonthDisplayHelper;-><init>(III)V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor$OnCursorMoveListener;

    .line 35
    invoke-virtual {p0, p3}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->getRowOf(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mRow:I

    .line 36
    invoke-virtual {p0, p3}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->getColumnOf(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mColumn:I

    .line 37
    return-void
.end method


# virtual methods
.method public down()Z
    .registers 4

    .prologue
    .line 124
    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mRow:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 126
    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mRow:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mRow:I

    .line 127
    const/4 v0, 0x0

    .line 137
    .local v0, returnValue:Z
    :goto_13
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor$OnCursorMoveListener;

    if-eqz v1, :cond_1c

    .line 138
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor$OnCursorMoveListener;

    invoke-interface {v1}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor$OnCursorMoveListener;->onCusorMoved()V

    .line 140
    :cond_1c
    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mColumn:I

    sput v1, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mPrevColumn:I

    .line 141
    return v0

    .line 130
    .end local v0           #returnValue:Z
    :cond_21
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->nextMonth()V

    .line 131
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mRow:I

    .line 132
    :goto_27
    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mRow:I

    iget v2, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v1

    if-nez v1, :cond_38

    .line 133
    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mRow:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mRow:I

    goto :goto_27

    .line 135
    :cond_38
    const/4 v0, 0x1

    .restart local v0       #returnValue:Z
    goto :goto_13
.end method

.method public getColumnOf(I)I
    .registers 3
    .parameter "day"

    .prologue
    .line 233
    invoke-super {p0, p1}, Landroid/util/MonthDisplayHelper;->getColumnOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getDayAt(II)I
    .registers 5
    .parameter "row"
    .parameter "column"

    .prologue
    .line 222
    if-nez p2, :cond_8

    const/4 v0, 0x0

    .line 223
    .local v0, c:I
    :goto_3
    invoke-super {p0, p1, v0}, Landroid/util/MonthDisplayHelper;->getDayAt(II)I

    move-result v1

    return v1

    .line 222
    .end local v0           #c:I
    :cond_8
    add-int/lit8 v0, p2, -0x1

    goto :goto_3
.end method

.method public getSelectedColumn()I
    .registers 2

    .prologue
    .line 44
    iget v0, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mColumn:I

    return v0
.end method

.method public getSelectedDayOfMonth()I
    .registers 3

    .prologue
    .line 56
    iget v0, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mRow:I

    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->getDayAt(II)I

    move-result v0

    return v0
.end method

.method public getSelectedMonthOffset()I
    .registers 3

    .prologue
    .line 64
    iget v0, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mRow:I

    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 65
    const/4 v0, 0x0

    .line 70
    :goto_b
    return v0

    .line 67
    :cond_c
    iget v0, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mRow:I

    if-nez v0, :cond_12

    .line 68
    const/4 v0, -0x1

    goto :goto_b

    .line 70
    :cond_12
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public isSelected(II)Z
    .registers 4
    .parameter "row"
    .parameter "column"

    .prologue
    .line 85
    iget v0, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mRow:I

    if-ne v0, p1, :cond_a

    iget v0, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mColumn:I

    if-ne v0, p2, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isWithinCurrentMonth(II)Z
    .registers 5
    .parameter "row"
    .parameter "column"

    .prologue
    .line 243
    if-nez p2, :cond_8

    const/4 v0, 0x0

    .line 244
    .local v0, c:I
    :goto_3
    invoke-super {p0, p1, v0}, Landroid/util/MonthDisplayHelper;->isWithinCurrentMonth(II)Z

    move-result v1

    return v1

    .line 243
    .end local v0           #c:I
    :cond_8
    add-int/lit8 v0, p2, -0x1

    goto :goto_3
.end method

.method public left()Z
    .registers 5

    .prologue
    .line 152
    iget v2, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mColumn:I

    if-nez v2, :cond_22

    .line 153
    iget v2, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mRow:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mRow:I

    .line 154
    const/4 v2, 0x7

    iput v2, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mColumn:I

    .line 159
    :goto_d
    iget v2, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mRow:I

    iget v3, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 160
    const/4 v1, 0x0

    .line 169
    .local v1, returnValue:Z
    :goto_18
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor$OnCursorMoveListener;

    if-eqz v2, :cond_21

    .line 170
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor$OnCursorMoveListener;

    invoke-interface {v2}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor$OnCursorMoveListener;->onCusorMoved()V

    .line 172
    :cond_21
    return v1

    .line 156
    .end local v1           #returnValue:Z
    :cond_22
    iget v2, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mColumn:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mColumn:I

    goto :goto_d

    .line 163
    :cond_29
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->previousMonth()V

    .line 164
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->getNumberOfDaysInMonth()I

    move-result v0

    .line 165
    .local v0, lastDay:I
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->getRowOf(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mRow:I

    .line 166
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->getColumnOf(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mColumn:I

    .line 167
    const/4 v1, 0x1

    .restart local v1       #returnValue:Z
    goto :goto_18
.end method

.method public right()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 182
    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mColumn:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_23

    .line 183
    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mRow:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mRow:I

    .line 184
    iput v3, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mColumn:I

    .line 189
    :goto_e
    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mRow:I

    iget v2, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 190
    const/4 v0, 0x0

    .line 201
    .local v0, returnValue:Z
    :goto_19
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor$OnCursorMoveListener;

    if-eqz v1, :cond_22

    .line 202
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor$OnCursorMoveListener;

    invoke-interface {v1}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor$OnCursorMoveListener;->onCusorMoved()V

    .line 204
    :cond_22
    return v0

    .line 186
    .end local v0           #returnValue:Z
    :cond_23
    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mColumn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mColumn:I

    goto :goto_e

    .line 193
    :cond_2a
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->nextMonth()V

    .line 194
    iput v3, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mRow:I

    .line 195
    iput v3, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mColumn:I

    .line 196
    :goto_31
    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mRow:I

    iget v2, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v1

    if-nez v1, :cond_42

    .line 197
    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mColumn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mColumn:I

    goto :goto_31

    .line 199
    :cond_42
    const/4 v0, 0x1

    .restart local v0       #returnValue:Z
    goto :goto_19
.end method

.method public setOnCursorMoveListener(Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor$OnCursorMoveListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor$OnCursorMoveListener;

    .line 209
    return-void
.end method

.method public setSelectedDayOfMonth(I)V
    .registers 3
    .parameter "dayOfMonth"

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->getRowOf(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mRow:I

    .line 75
    invoke-virtual {p0, p1}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->getColumnOf(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mColumn:I

    .line 76
    sget v0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mPrevColumn:I

    if-nez v0, :cond_16

    .line 77
    iget v0, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mColumn:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mColumn:I

    .line 79
    :cond_16
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor$OnCursorMoveListener;

    if-eqz v0, :cond_1f

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor$OnCursorMoveListener;

    invoke-interface {v0}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor$OnCursorMoveListener;->onCusorMoved()V

    .line 82
    :cond_1f
    return-void
.end method

.method public up()Z
    .registers 4

    .prologue
    .line 96
    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mRow:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 98
    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mRow:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mRow:I

    .line 99
    const/4 v0, 0x0

    .line 110
    .local v0, returnValue:Z
    :goto_13
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor$OnCursorMoveListener;

    if-eqz v1, :cond_1c

    .line 111
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mOnCursorMoveListener:Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor$OnCursorMoveListener;

    invoke-interface {v1}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor$OnCursorMoveListener;->onCusorMoved()V

    .line 113
    :cond_1c
    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mColumn:I

    sput v1, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mPrevColumn:I

    .line 114
    return v0

    .line 103
    .end local v0           #returnValue:Z
    :cond_21
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->previousMonth()V

    .line 104
    const/4 v1, 0x5

    iput v1, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mRow:I

    .line 105
    :goto_27
    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mRow:I

    iget v2, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mColumn:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v1

    if-nez v1, :cond_38

    .line 106
    iget v1, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mRow:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/android/app/clockpackage/deskclock/TwDayOfMonthCursor;->mRow:I

    goto :goto_27

    .line 108
    :cond_38
    const/4 v0, 0x1

    .restart local v0       #returnValue:Z
    goto :goto_13
.end method
