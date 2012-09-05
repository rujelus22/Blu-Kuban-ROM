.class public Lcom/android/calendarcommon/RecurrenceProcessor;
.super Ljava/lang/Object;
.source "RecurrenceProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;
    }
.end annotation


# static fields
.field private static final DAYS_IN_YEAR_PRECEDING_MONTH:[I

.field private static final DAYS_PER_MONTH:[I


# instance fields
.field private Monthly_Lastday:Z

.field private Monthly_week_day:Z

.field private Monthly_weekend:Z

.field private mDays:Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;

.field private mGenerated:Landroid/text/format/Time;

.field private mIterator:Landroid/text/format/Time;

.field private mStringBuilder:Ljava/lang/StringBuilder;

.field private mUntil:Landroid/text/format/Time;

.field private yearly_anyday:Z

.field private yearly_first_second_third_fourth_day_of_month:Z

.field private yearly_lastday_of_month:Z

.field private yearly_weekday:Z

.field private yearly_weekend:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0xc

    .line 1559
    new-array v0, v1, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/android/calendarcommon/RecurrenceProcessor;->DAYS_PER_MONTH:[I

    .line 1561
    new-array v0, v1, [I

    fill-array-data v0, :array_2e

    sput-object v0, Lcom/android/calendarcommon/RecurrenceProcessor;->DAYS_IN_YEAR_PRECEDING_MONTH:[I

    return-void

    .line 1559
    nop

    :array_12
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
    .end array-data

    .line 1561
    :array_2e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0x97t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0xd4t 0x0t 0x0t 0x0t
        0xf3t 0x0t 0x0t 0x0t
        0x11t 0x1t 0x0t 0x0t
        0x30t 0x1t 0x0t 0x0t
        0x4et 0x1t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendarcommon/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    .line 29
    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendarcommon/RecurrenceProcessor;->mUntil:Landroid/text/format/Time;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/calendarcommon/RecurrenceProcessor;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 31
    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendarcommon/RecurrenceProcessor;->mGenerated:Landroid/text/format/Time;

    .line 32
    new-instance v0, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;

    invoke-direct {v0, v2}, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/calendarcommon/RecurrenceProcessor;->mDays:Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;

    .line 33
    iput-boolean v2, p0, Lcom/android/calendarcommon/RecurrenceProcessor;->Monthly_Lastday:Z

    .line 34
    iput-boolean v2, p0, Lcom/android/calendarcommon/RecurrenceProcessor;->Monthly_weekend:Z

    .line 35
    iput-boolean v2, p0, Lcom/android/calendarcommon/RecurrenceProcessor;->Monthly_week_day:Z

    .line 36
    iput-boolean v2, p0, Lcom/android/calendarcommon/RecurrenceProcessor;->yearly_anyday:Z

    .line 37
    iput-boolean v2, p0, Lcom/android/calendarcommon/RecurrenceProcessor;->yearly_weekday:Z

    .line 38
    iput-boolean v2, p0, Lcom/android/calendarcommon/RecurrenceProcessor;->yearly_weekend:Z

    .line 39
    iput-boolean v2, p0, Lcom/android/calendarcommon/RecurrenceProcessor;->yearly_first_second_third_fourth_day_of_month:Z

    .line 40
    iput-boolean v2, p0, Lcom/android/calendarcommon/RecurrenceProcessor;->yearly_lastday_of_month:Z

    .line 47
    return-void
.end method

.method private static filter(Lcom/android/calendarcommon/EventRecurrence;Landroid/text/format/Time;)I
    .registers 12
    .parameter "r"
    .parameter "iterator"

    .prologue
    .line 211
    iget v3, p0, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    .line 213
    .local v3, freq:I
    const/4 v6, 0x6

    if-lt v6, v3, :cond_19

    .line 215
    iget v6, p0, Lcom/android/calendarcommon/EventRecurrence;->bymonthCount:I

    if-lez v6, :cond_19

    .line 216
    iget-object v6, p0, Lcom/android/calendarcommon/EventRecurrence;->bymonth:[I

    iget v7, p0, Lcom/android/calendarcommon/EventRecurrence;->bymonthCount:I

    iget v8, p1, Landroid/text/format/Time;->month:I

    add-int/lit8 v8, v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/calendarcommon/RecurrenceProcessor;->listContains([III)Z

    move-result v2

    .line 218
    .local v2, found:Z
    if-nez v2, :cond_19

    .line 219
    const/4 v6, 0x1

    .line 323
    .end local v2           #found:Z
    :goto_18
    return v6

    .line 223
    :cond_19
    const/4 v6, 0x5

    if-lt v6, v3, :cond_36

    .line 226
    iget v6, p0, Lcom/android/calendarcommon/EventRecurrence;->byweeknoCount:I

    if-lez v6, :cond_36

    .line 227
    iget-object v6, p0, Lcom/android/calendarcommon/EventRecurrence;->byweekno:[I

    iget v7, p0, Lcom/android/calendarcommon/EventRecurrence;->byweeknoCount:I

    invoke-virtual {p1}, Landroid/text/format/Time;->getWeekNumber()I

    move-result v8

    const/16 v9, 0x9

    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendarcommon/RecurrenceProcessor;->listContains([IIII)Z

    move-result v2

    .line 230
    .restart local v2       #found:Z
    if-nez v2, :cond_36

    .line 231
    const/4 v6, 0x2

    goto :goto_18

    .line 235
    .end local v2           #found:Z
    :cond_36
    const/4 v6, 0x4

    if-lt v6, v3, :cond_7d

    .line 237
    iget v6, p0, Lcom/android/calendarcommon/EventRecurrence;->byyeardayCount:I

    if-lez v6, :cond_51

    .line 238
    iget-object v6, p0, Lcom/android/calendarcommon/EventRecurrence;->byyearday:[I

    iget v7, p0, Lcom/android/calendarcommon/EventRecurrence;->byyeardayCount:I

    iget v8, p1, Landroid/text/format/Time;->yearDay:I

    const/16 v9, 0x8

    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendarcommon/RecurrenceProcessor;->listContains([IIII)Z

    move-result v2

    .line 240
    .restart local v2       #found:Z
    if-nez v2, :cond_51

    .line 241
    const/4 v6, 0x3

    goto :goto_18

    .line 245
    .end local v2           #found:Z
    :cond_51
    iget v6, p0, Lcom/android/calendarcommon/EventRecurrence;->bymonthdayCount:I

    if-lez v6, :cond_68

    .line 246
    iget-object v6, p0, Lcom/android/calendarcommon/EventRecurrence;->bymonthday:[I

    iget v7, p0, Lcom/android/calendarcommon/EventRecurrence;->bymonthdayCount:I

    iget v8, p1, Landroid/text/format/Time;->monthDay:I

    const/4 v9, 0x4

    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendarcommon/RecurrenceProcessor;->listContains([IIII)Z

    move-result v2

    .line 249
    .restart local v2       #found:Z
    if-nez v2, :cond_68

    .line 250
    const/4 v6, 0x4

    goto :goto_18

    .line 256
    .end local v2           #found:Z
    :cond_68
    iget v6, p0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    if-lez v6, :cond_7d

    .line 257
    iget-object v1, p0, Lcom/android/calendarcommon/EventRecurrence;->byday:[I

    .line 258
    .local v1, a:[I
    iget v0, p0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    .line 259
    .local v0, N:I
    iget v6, p1, Landroid/text/format/Time;->weekDay:I

    invoke-static {v6}, Lcom/android/calendarcommon/EventRecurrence;->timeDay2Day(I)I

    move-result v5

    .line 260
    .local v5, v:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_77
    if-ge v4, v0, :cond_96

    .line 261
    aget v6, v1, v4

    if-ne v6, v5, :cond_93

    .line 268
    .end local v0           #N:I
    .end local v1           #a:[I
    .end local v4           #i:I
    .end local v5           #v:I
    :cond_7d
    const/4 v6, 0x3

    if-lt v6, v3, :cond_98

    .line 270
    iget-object v6, p0, Lcom/android/calendarcommon/EventRecurrence;->byhour:[I

    iget v7, p0, Lcom/android/calendarcommon/EventRecurrence;->byhourCount:I

    iget v8, p1, Landroid/text/format/Time;->hour:I

    const/4 v9, 0x3

    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendarcommon/RecurrenceProcessor;->listContains([IIII)Z

    move-result v2

    .line 273
    .restart local v2       #found:Z
    if-nez v2, :cond_98

    .line 274
    const/4 v6, 0x6

    goto :goto_18

    .line 260
    .end local v2           #found:Z
    .restart local v0       #N:I
    .restart local v1       #a:[I
    .restart local v4       #i:I
    .restart local v5       #v:I
    :cond_93
    add-int/lit8 v4, v4, 0x1

    goto :goto_77

    .line 265
    :cond_96
    const/4 v6, 0x5

    goto :goto_18

    .line 277
    .end local v0           #N:I
    .end local v1           #a:[I
    .end local v4           #i:I
    .end local v5           #v:I
    :cond_98
    const/4 v6, 0x2

    if-lt v6, v3, :cond_af

    .line 279
    iget-object v6, p0, Lcom/android/calendarcommon/EventRecurrence;->byminute:[I

    iget v7, p0, Lcom/android/calendarcommon/EventRecurrence;->byminuteCount:I

    iget v8, p1, Landroid/text/format/Time;->minute:I

    const/4 v9, 0x2

    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendarcommon/RecurrenceProcessor;->listContains([IIII)Z

    move-result v2

    .line 282
    .restart local v2       #found:Z
    if-nez v2, :cond_af

    .line 283
    const/4 v6, 0x7

    goto/16 :goto_18

    .line 286
    .end local v2           #found:Z
    :cond_af
    const/4 v6, 0x1

    if-lt v6, v3, :cond_c7

    .line 288
    iget-object v6, p0, Lcom/android/calendarcommon/EventRecurrence;->bysecond:[I

    iget v7, p0, Lcom/android/calendarcommon/EventRecurrence;->bysecondCount:I

    iget v8, p1, Landroid/text/format/Time;->second:I

    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendarcommon/RecurrenceProcessor;->listContains([IIII)Z

    move-result v2

    .line 291
    .restart local v2       #found:Z
    if-nez v2, :cond_c7

    .line 292
    const/16 v6, 0x8

    goto/16 :goto_18

    .line 296
    .end local v2           #found:Z
    :cond_c7
    iget v6, p0, Lcom/android/calendarcommon/EventRecurrence;->bysetposCount:I

    if-lez v6, :cond_ff

    .line 299
    const/4 v6, 0x6

    if-ne v3, v6, :cond_10f

    iget v6, p0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    if-lez v6, :cond_10f

    .line 301
    iget v6, p0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    add-int/lit8 v4, v6, -0x1

    .restart local v4       #i:I
    :goto_d6
    if-ltz v4, :cond_105

    .line 302
    iget-object v6, p0, Lcom/android/calendarcommon/EventRecurrence;->bydayNum:[I

    aget v6, v6, v4

    if-eqz v6, :cond_102

    .line 303
    const-string v6, "RecurrenceProcessor"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_ff

    .line 304
    const-string v6, "RecurrenceProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BYSETPOS not supported with these rules: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    .end local v4           #i:I
    :cond_ff
    :goto_ff
    const/4 v6, 0x0

    goto/16 :goto_18

    .line 301
    .restart local v4       #i:I
    :cond_102
    add-int/lit8 v4, v4, -0x1

    goto :goto_d6

    .line 309
    :cond_105
    invoke-static {p0, p1}, Lcom/android/calendarcommon/RecurrenceProcessor;->filterMonthlySetPos(Lcom/android/calendarcommon/EventRecurrence;Landroid/text/format/Time;)Z

    move-result v6

    if-nez v6, :cond_ff

    .line 311
    const/16 v6, 0x9

    goto/16 :goto_18

    .line 314
    .end local v4           #i:I
    :cond_10f
    const-string v6, "RecurrenceProcessor"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_ff

    .line 315
    const-string v6, "RecurrenceProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BYSETPOS not supported with these rules: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ff
.end method

.method private static filterMonthlySetPos(Lcom/android/calendarcommon/EventRecurrence;Landroid/text/format/Time;)Z
    .registers 15
    .parameter "r"
    .parameter "instance"

    .prologue
    const/4 v10, 0x1

    .line 342
    iget v11, p1, Landroid/text/format/Time;->weekDay:I

    iget v12, p1, Landroid/text/format/Time;->monthDay:I

    sub-int/2addr v11, v12

    add-int/lit8 v11, v11, 0x24

    rem-int/lit8 v5, v11, 0x7

    .line 348
    .local v5, dotw:I
    const/4 v0, 0x0

    .line 349
    .local v0, bydayMask:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_c
    iget v11, p0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    if-ge v6, v11, :cond_18

    .line 350
    iget-object v11, p0, Lcom/android/calendarcommon/EventRecurrence;->byday:[I

    aget v11, v11, v6

    or-int/2addr v0, v11

    .line 349
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 357
    :cond_18
    const/4 v11, 0x4

    invoke-virtual {p1, v11}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v8

    .line 358
    .local v8, maxDay:I
    new-array v2, v8, [I

    .line 359
    .local v2, daySet:[I
    const/4 v3, 0x0

    .line 361
    .local v3, daySetLength:I
    const/4 v9, 0x1

    .local v9, md:I
    move v4, v3

    .end local v3           #daySetLength:I
    .local v4, daySetLength:I
    :goto_22
    if-gt v9, v8, :cond_3a

    .line 364
    const/high16 v11, 0x1

    shl-int v1, v11, v5

    .line 365
    .local v1, dayBit:I
    and-int v11, v0, v1

    if-eqz v11, :cond_6d

    .line 366
    add-int/lit8 v3, v4, 0x1

    .end local v4           #daySetLength:I
    .restart local v3       #daySetLength:I
    aput v9, v2, v4

    .line 369
    :goto_30
    add-int/lit8 v5, v5, 0x1

    .line 370
    const/4 v11, 0x7

    if-ne v5, v11, :cond_36

    .line 371
    const/4 v5, 0x0

    .line 361
    :cond_36
    add-int/lit8 v9, v9, 0x1

    move v4, v3

    .end local v3           #daySetLength:I
    .restart local v4       #daySetLength:I
    goto :goto_22

    .line 378
    .end local v1           #dayBit:I
    :cond_3a
    iget v11, p0, Lcom/android/calendarcommon/EventRecurrence;->bysetposCount:I

    add-int/lit8 v6, v11, -0x1

    :goto_3e
    if-ltz v6, :cond_6b

    .line 379
    iget-object v11, p0, Lcom/android/calendarcommon/EventRecurrence;->bysetpos:[I

    aget v7, v11, v6

    .line 380
    .local v7, index:I
    if-lez v7, :cond_54

    .line 381
    if-le v7, v4, :cond_4b

    .line 378
    :cond_48
    add-int/lit8 v6, v6, -0x1

    goto :goto_3e

    .line 384
    :cond_4b
    add-int/lit8 v11, v7, -0x1

    aget v11, v2, v11

    iget v12, p1, Landroid/text/format/Time;->monthDay:I

    if-ne v11, v12, :cond_48

    .line 400
    .end local v7           #index:I
    :goto_53
    return v10

    .line 387
    .restart local v7       #index:I
    :cond_54
    if-gez v7, :cond_63

    .line 388
    add-int v11, v4, v7

    if-ltz v11, :cond_48

    .line 391
    add-int v11, v4, v7

    aget v11, v2, v11

    iget v12, p1, Landroid/text/format/Time;->monthDay:I

    if-ne v11, v12, :cond_48

    goto :goto_53

    .line 396
    :cond_63
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, "invalid bysetpos value"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 400
    .end local v7           #index:I
    :cond_6b
    const/4 v10, 0x0

    goto :goto_53

    .restart local v1       #dayBit:I
    :cond_6d
    move v3, v4

    .end local v4           #daySetLength:I
    .restart local v3       #daySetLength:I
    goto :goto_30
.end method

.method static isLeapYear(I)Z
    .registers 2
    .parameter "year"

    .prologue
    .line 1546
    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_e

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_c

    rem-int/lit16 v0, p0, 0x190

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static listContains([III)Z
    .registers 5
    .parameter "a"
    .parameter "N"
    .parameter "v"

    .prologue
    .line 166
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p1, :cond_c

    .line 167
    aget v1, p0, v0

    if-ne v1, p2, :cond_9

    .line 168
    const/4 v1, 0x1

    .line 171
    :goto_8
    return v1

    .line 166
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 171
    :cond_c
    const/4 v1, 0x0

    goto :goto_8
.end method

.method private static listContains([IIII)Z
    .registers 7
    .parameter "a"
    .parameter "N"
    .parameter "v"
    .parameter "max"

    .prologue
    const/4 v2, 0x1

    .line 184
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, p1, :cond_11

    .line 185
    aget v1, p0, v0

    .line 186
    .local v1, w:I
    if-lez v1, :cond_b

    .line 187
    if-ne v1, p2, :cond_e

    .line 197
    .end local v1           #w:I
    :cond_a
    :goto_a
    return v2

    .line 191
    .restart local v1       #w:I
    :cond_b
    add-int/2addr p3, v1

    .line 192
    if-eq p3, p2, :cond_a

    .line 184
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 197
    .end local v1           #w:I
    :cond_11
    const/4 v2, 0x0

    goto :goto_a
.end method

.method static monthLength(II)I
    .registers 5
    .parameter "year"
    .parameter "month"

    .prologue
    const/16 v1, 0x1c

    .line 1572
    sget-object v2, Lcom/android/calendarcommon/RecurrenceProcessor;->DAYS_PER_MONTH:[I

    aget v0, v2, p1

    .line 1573
    .local v0, n:I
    if-eq v0, v1, :cond_9

    .line 1576
    .end local v0           #n:I
    :goto_8
    return v0

    .restart local v0       #n:I
    :cond_9
    invoke-static {p0}, Lcom/android/calendarcommon/RecurrenceProcessor;->isLeapYear(I)Z

    move-result v2

    if-eqz v2, :cond_11

    const/16 v1, 0x1d

    :cond_11
    move v0, v1

    goto :goto_8
.end method

.method private static final normDateTimeComparisonValue(Landroid/text/format/Time;)J
    .registers 5
    .parameter "normalized"

    .prologue
    .line 1627
    iget v0, p0, Landroid/text/format/Time;->year:I

    int-to-long v0, v0

    const/16 v2, 0x1a

    shl-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->month:I

    shl-int/lit8 v2, v2, 0x16

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->monthDay:I

    shl-int/lit8 v2, v2, 0x11

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->hour:I

    shl-int/lit8 v2, v2, 0xc

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->minute:I

    shl-int/lit8 v2, v2, 0x6

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->second:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static final setTimeFromLongValue(Landroid/text/format/Time;J)V
    .registers 5
    .parameter "date"
    .parameter "val"

    .prologue
    .line 1633
    const/16 v0, 0x1a

    shr-long v0, p1, v0

    long-to-int v0, v0

    iput v0, p0, Landroid/text/format/Time;->year:I

    .line 1634
    const/16 v0, 0x16

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0xf

    iput v0, p0, Landroid/text/format/Time;->month:I

    .line 1635
    const/16 v0, 0x11

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0x1f

    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    .line 1636
    const/16 v0, 0xc

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0x1f

    iput v0, p0, Landroid/text/format/Time;->hour:I

    .line 1637
    const/4 v0, 0x6

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0x3f

    iput v0, p0, Landroid/text/format/Time;->minute:I

    .line 1638
    const-wide/16 v0, 0x3f

    and-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Landroid/text/format/Time;->second:I

    .line 1639
    return-void
.end method

.method static unsafeNormalize(Landroid/text/format/Time;)V
    .registers 16
    .parameter "date"

    .prologue
    const/16 v14, 0xc

    .line 1463
    iget v9, p0, Landroid/text/format/Time;->second:I

    .line 1464
    .local v9, second:I
    iget v5, p0, Landroid/text/format/Time;->minute:I

    .line 1465
    .local v5, minute:I
    iget v4, p0, Landroid/text/format/Time;->hour:I

    .line 1466
    .local v4, hour:I
    iget v7, p0, Landroid/text/format/Time;->monthDay:I

    .line 1467
    .local v7, monthDay:I
    iget v6, p0, Landroid/text/format/Time;->month:I

    .line 1468
    .local v6, month:I
    iget v10, p0, Landroid/text/format/Time;->year:I

    .line 1470
    .local v10, year:I
    if-gez v9, :cond_39

    add-int/lit8 v13, v9, -0x3b

    :goto_12
    div-int/lit8 v2, v13, 0x3c

    .line 1471
    .local v2, addMinutes:I
    mul-int/lit8 v13, v2, 0x3c

    sub-int/2addr v9, v13

    .line 1472
    add-int/2addr v5, v2

    .line 1473
    if-gez v5, :cond_3b

    add-int/lit8 v13, v5, -0x3b

    :goto_1c
    div-int/lit8 v1, v13, 0x3c

    .line 1474
    .local v1, addHours:I
    mul-int/lit8 v13, v1, 0x3c

    sub-int/2addr v5, v13

    .line 1475
    add-int/2addr v4, v1

    .line 1476
    if-gez v4, :cond_3d

    add-int/lit8 v13, v4, -0x17

    :goto_26
    div-int/lit8 v0, v13, 0x18

    .line 1477
    .local v0, addDays:I
    mul-int/lit8 v13, v0, 0x18

    sub-int/2addr v4, v13

    .line 1478
    add-int/2addr v7, v0

    .line 1483
    :goto_2c
    if-gtz v7, :cond_46

    .line 1491
    const/4 v13, 0x1

    if-le v6, v13, :cond_3f

    invoke-static {v10}, Lcom/android/calendarcommon/RecurrenceProcessor;->yearLength(I)I

    move-result v3

    .line 1492
    .local v3, days:I
    :goto_35
    add-int/2addr v7, v3

    .line 1493
    add-int/lit8 v10, v10, -0x1

    .line 1494
    goto :goto_2c

    .end local v0           #addDays:I
    .end local v1           #addHours:I
    .end local v2           #addMinutes:I
    .end local v3           #days:I
    :cond_39
    move v13, v9

    .line 1470
    goto :goto_12

    .restart local v2       #addMinutes:I
    :cond_3b
    move v13, v5

    .line 1473
    goto :goto_1c

    .restart local v1       #addHours:I
    :cond_3d
    move v13, v4

    .line 1476
    goto :goto_26

    .line 1491
    .restart local v0       #addDays:I
    :cond_3f
    add-int/lit8 v13, v10, -0x1

    invoke-static {v13}, Lcom/android/calendarcommon/RecurrenceProcessor;->yearLength(I)I

    move-result v3

    goto :goto_35

    .line 1496
    :cond_46
    if-gez v6, :cond_6d

    .line 1497
    add-int/lit8 v13, v6, 0x1

    div-int/lit8 v13, v13, 0xc

    add-int/lit8 v12, v13, -0x1

    .line 1498
    .local v12, years:I
    add-int/2addr v10, v12

    .line 1499
    mul-int/lit8 v13, v12, 0xc

    sub-int/2addr v6, v13

    .line 1509
    .end local v12           #years:I
    :cond_52
    :goto_52
    if-nez v6, :cond_5d

    .line 1510
    invoke-static {v10}, Lcom/android/calendarcommon/RecurrenceProcessor;->yearLength(I)I

    move-result v11

    .line 1511
    .local v11, yearLength:I
    if-le v7, v11, :cond_5d

    .line 1512
    add-int/lit8 v10, v10, 0x1

    .line 1513
    sub-int/2addr v7, v11

    .line 1516
    .end local v11           #yearLength:I
    :cond_5d
    invoke-static {v10, v6}, Lcom/android/calendarcommon/RecurrenceProcessor;->monthLength(II)I

    move-result v8

    .line 1517
    .local v8, monthLength:I
    if-le v7, v8, :cond_76

    .line 1518
    sub-int/2addr v7, v8

    .line 1519
    add-int/lit8 v6, v6, 0x1

    .line 1520
    if-lt v6, v14, :cond_52

    .line 1521
    add-int/lit8 v6, v6, -0xc

    .line 1522
    add-int/lit8 v10, v10, 0x1

    goto :goto_52

    .line 1500
    .end local v8           #monthLength:I
    :cond_6d
    if-lt v6, v14, :cond_52

    .line 1501
    div-int/lit8 v12, v6, 0xc

    .line 1502
    .restart local v12       #years:I
    add-int/2addr v10, v12

    .line 1503
    mul-int/lit8 v13, v12, 0xc

    sub-int/2addr v6, v13

    goto :goto_52

    .line 1529
    .end local v12           #years:I
    .restart local v8       #monthLength:I
    :cond_76
    iput v9, p0, Landroid/text/format/Time;->second:I

    .line 1530
    iput v5, p0, Landroid/text/format/Time;->minute:I

    .line 1531
    iput v4, p0, Landroid/text/format/Time;->hour:I

    .line 1532
    iput v7, p0, Landroid/text/format/Time;->monthDay:I

    .line 1533
    iput v6, p0, Landroid/text/format/Time;->month:I

    .line 1534
    iput v10, p0, Landroid/text/format/Time;->year:I

    .line 1535
    invoke-static {v10, v6, v7}, Lcom/android/calendarcommon/RecurrenceProcessor;->weekDay(III)I

    move-result v13

    iput v13, p0, Landroid/text/format/Time;->weekDay:I

    .line 1536
    invoke-static {v10, v6, v7}, Lcom/android/calendarcommon/RecurrenceProcessor;->yearDay(III)I

    move-result v13

    iput v13, p0, Landroid/text/format/Time;->yearDay:I

    .line 1537
    return-void
.end method

.method private static useBYX(III)Z
    .registers 4
    .parameter "freq"
    .parameter "freqConstant"
    .parameter "count"

    .prologue
    .line 426
    if-le p0, p1, :cond_6

    if-lez p2, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method static weekDay(III)I
    .registers 5
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 1589
    const/4 v0, 0x1

    if-gt p1, v0, :cond_7

    .line 1590
    add-int/lit8 p1, p1, 0xc

    .line 1591
    add-int/lit8 p0, p0, -0x1

    .line 1593
    :cond_7
    mul-int/lit8 v0, p1, 0xd

    add-int/lit8 v0, v0, -0xe

    div-int/lit8 v0, v0, 0x5

    add-int/2addr v0, p2

    add-int/2addr v0, p0

    div-int/lit8 v1, p0, 0x4

    add-int/2addr v0, v1

    div-int/lit8 v1, p0, 0x64

    sub-int/2addr v0, v1

    div-int/lit16 v1, p0, 0x190

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x7

    return v0
.end method

.method static yearDay(III)I
    .registers 5
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 1605
    sget-object v1, Lcom/android/calendarcommon/RecurrenceProcessor;->DAYS_IN_YEAR_PRECEDING_MONTH:[I

    aget v1, v1, p1

    add-int/2addr v1, p2

    add-int/lit8 v0, v1, -0x1

    .line 1606
    .local v0, yearDay:I
    const/4 v1, 0x2

    if-lt p1, v1, :cond_12

    invoke-static {p0}, Lcom/android/calendarcommon/RecurrenceProcessor;->isLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1607
    add-int/lit8 v0, v0, 0x1

    .line 1609
    :cond_12
    return v0
.end method

.method static yearLength(I)I
    .registers 2
    .parameter "year"

    .prologue
    .line 1556
    invoke-static {p0}, Lcom/android/calendarcommon/RecurrenceProcessor;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x16e

    :goto_8
    return v0

    :cond_9
    const/16 v0, 0x16d

    goto :goto_8
.end method


# virtual methods
.method public expand(Landroid/text/format/Time;Lcom/android/calendarcommon/EventRecurrence;JJZLjava/util/TreeSet;)V
    .registers 69
    .parameter "dtstart"
    .parameter "r"
    .parameter "rangeStartDateValue"
    .parameter "rangeEndDateValue"
    .parameter "add"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/format/Time;",
            "Lcom/android/calendarcommon/EventRecurrence;",
            "JJZ",
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon/DateException;
        }
    .end annotation

    .prologue
    .line 931
    .local p8, out:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/Long;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/calendarcommon/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 932
    invoke-static/range {p1 .. p1}, Lcom/android/calendarcommon/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v18

    .line 933
    .local v18, dtstartDateValue:J
    const/4 v15, 0x0

    .line 957
    .local v15, count:I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    move/from16 v56, v0

    const/16 v57, 0x6

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_1d2

    .line 958
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bysetpos:[I

    move-object/from16 v56, v0

    if-eqz v56, :cond_cc

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bysetposCount:I

    move/from16 v56, v0

    const/16 v57, 0x1

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_cc

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    move/from16 v56, v0

    const/16 v57, 0x1

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_cc

    .line 962
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bydayNum:[I

    move-object/from16 v56, v0

    const/16 v57, 0x0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bysetpos:[I

    move-object/from16 v58, v0

    const/16 v59, 0x0

    aget v58, v58, v59

    aput v58, v56, v57

    .line 1012
    :cond_4e
    :goto_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object/from16 v30, v0

    .line 1013
    .local v30, iterator:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mUntil:Landroid/text/format/Time;

    move-object/from16 v44, v0

    .line 1014
    .local v44, until:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mStringBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v41, v0

    .line 1015
    .local v41, sb:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mGenerated:Landroid/text/format/Time;

    .line 1016
    .local v3, generated:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mDays:Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;

    move-object/from16 v17, v0

    .line 1020
    .local v17, days:Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;
    :try_start_6a
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->setRecurrence(Lcom/android/calendarcommon/EventRecurrence;)V

    .line 1021
    const-wide v56, 0x7fffffffffffffffL

    cmp-long v56, p5, v56

    if-nez v56, :cond_330

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    move-object/from16 v56, v0

    if-nez v56, :cond_330

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->count:I

    move/from16 v56, v0

    if-nez v56, :cond_330

    .line 1022
    new-instance v56, Lcom/android/calendarcommon/DateException;

    const-string v57, "No range end provided for a recurrence that has no UNTIL or COUNT."

    invoke-direct/range {v56 .. v57}, Lcom/android/calendarcommon/DateException;-><init>(Ljava/lang/String;)V

    throw v56
    :try_end_92
    .catch Lcom/android/calendarcommon/DateException; {:try_start_6a .. :try_end_92} :catch_92
    .catch Ljava/lang/RuntimeException; {:try_start_6a .. :try_end_92} :catch_35c

    .line 1439
    :catch_92
    move-exception v20

    .line 1440
    .local v20, e:Lcom/android/calendarcommon/DateException;
    const-string v56, "RecurrenceProcessor"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "DateException with r="

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string v58, " rangeStart="

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string v58, " rangeEnd="

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    throw v20

    .line 963
    .end local v3           #generated:Landroid/text/format/Time;
    .end local v17           #days:Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;
    .end local v20           #e:Lcom/android/calendarcommon/DateException;
    .end local v30           #iterator:Landroid/text/format/Time;
    .end local v41           #sb:Ljava/lang/StringBuilder;
    .end local v44           #until:Landroid/text/format/Time;
    :cond_cc
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bysetpos:[I

    move-object/from16 v56, v0

    if-eqz v56, :cond_176

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bysetposCount:I

    move/from16 v56, v0

    const/16 v57, 0x1

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_176

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    move/from16 v56, v0

    const/16 v57, 0x7

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_176

    .line 965
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bysetpos:[I

    move-object/from16 v56, v0

    const/16 v57, 0x0

    aget v56, v56, v57

    const/16 v57, 0x1

    move/from16 v0, v56

    move/from16 v1, v57

    if-eq v0, v1, :cond_138

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bysetpos:[I

    move-object/from16 v56, v0

    const/16 v57, 0x0

    aget v56, v56, v57

    const/16 v57, 0x2

    move/from16 v0, v56

    move/from16 v1, v57

    if-eq v0, v1, :cond_138

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bysetpos:[I

    move-object/from16 v56, v0

    const/16 v57, 0x0

    aget v56, v56, v57

    const/16 v57, 0x3

    move/from16 v0, v56

    move/from16 v1, v57

    if-eq v0, v1, :cond_138

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bysetpos:[I

    move-object/from16 v56, v0

    const/16 v57, 0x0

    aget v56, v56, v57

    const/16 v57, 0x4

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_15a

    .line 968
    :cond_138
    const/16 v56, 0x1

    move/from16 v0, v56

    new-array v13, v0, [I

    .line 969
    .local v13, bymonthday:[I
    const/16 v56, 0x0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bysetpos:[I

    move-object/from16 v57, v0

    const/16 v58, 0x0

    aget v57, v57, v58

    aput v57, v13, v56

    .line 970
    move-object/from16 v0, p2

    iput-object v13, v0, Lcom/android/calendarcommon/EventRecurrence;->bymonthday:[I

    .line 971
    const/16 v56, 0x1

    move/from16 v0, v56

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/calendarcommon/EventRecurrence;->bymonthdayCount:I

    goto/16 :goto_4e

    .line 972
    .end local v13           #bymonthday:[I
    :cond_15a
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bysetpos:[I

    move-object/from16 v56, v0

    const/16 v57, 0x0

    aget v56, v56, v57

    const/16 v57, -0x1

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_4e

    .line 974
    const/16 v56, 0x1

    move/from16 v0, v56

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendarcommon/RecurrenceProcessor;->Monthly_Lastday:Z

    goto/16 :goto_4e

    .line 976
    :cond_176
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bysetpos:[I

    move-object/from16 v56, v0

    if-eqz v56, :cond_1a4

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bysetposCount:I

    move/from16 v56, v0

    const/16 v57, 0x1

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_1a4

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    move/from16 v56, v0

    const/16 v57, 0x2

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_1a4

    .line 979
    const/16 v56, 0x1

    move/from16 v0, v56

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendarcommon/RecurrenceProcessor;->Monthly_weekend:Z

    goto/16 :goto_4e

    .line 981
    :cond_1a4
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bysetpos:[I

    move-object/from16 v56, v0

    if-eqz v56, :cond_4e

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bysetposCount:I

    move/from16 v56, v0

    const/16 v57, 0x1

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_4e

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    move/from16 v56, v0

    const/16 v57, 0x5

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_4e

    .line 983
    const/16 v56, 0x1

    move/from16 v0, v56

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendarcommon/RecurrenceProcessor;->Monthly_week_day:Z

    goto/16 :goto_4e

    .line 985
    :cond_1d2
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    move/from16 v56, v0

    const/16 v57, 0x7

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_4e

    .line 986
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bysetpos:[I

    move-object/from16 v56, v0

    if-eqz v56, :cond_222

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bysetposCount:I

    move/from16 v56, v0

    const/16 v57, 0x1

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_222

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    move/from16 v56, v0

    const/16 v57, 0x1

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_222

    .line 988
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bydayNum:[I

    move-object/from16 v56, v0

    const/16 v57, 0x0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bysetpos:[I

    move-object/from16 v58, v0

    const/16 v59, 0x0

    aget v58, v58, v59

    aput v58, v56, v57

    .line 989
    const/16 v56, 0x1

    move/from16 v0, v56

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendarcommon/RecurrenceProcessor;->yearly_anyday:Z

    goto/16 :goto_4e

    .line 990
    :cond_222
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bysetpos:[I

    move-object/from16 v56, v0

    if-eqz v56, :cond_250

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bysetposCount:I

    move/from16 v56, v0

    const/16 v57, 0x1

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_250

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    move/from16 v56, v0

    const/16 v57, 0x5

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_250

    .line 992
    const/16 v56, 0x1

    move/from16 v0, v56

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendarcommon/RecurrenceProcessor;->yearly_weekday:Z

    goto/16 :goto_4e

    .line 993
    :cond_250
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bysetpos:[I

    move-object/from16 v56, v0

    if-eqz v56, :cond_27e

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bysetposCount:I

    move/from16 v56, v0

    const/16 v57, 0x1

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_27e

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    move/from16 v56, v0

    const/16 v57, 0x2

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_27e

    .line 995
    const/16 v56, 0x1

    move/from16 v0, v56

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendarcommon/RecurrenceProcessor;->yearly_weekend:Z

    goto/16 :goto_4e

    .line 996
    :cond_27e
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bysetpos:[I

    move-object/from16 v56, v0

    if-eqz v56, :cond_4e

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bysetposCount:I

    move/from16 v56, v0

    const/16 v57, 0x1

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_4e

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    move/from16 v56, v0

    const/16 v57, 0x7

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_4e

    .line 997
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bysetpos:[I

    move-object/from16 v56, v0

    const/16 v57, 0x0

    aget v56, v56, v57

    const/16 v57, 0x1

    move/from16 v0, v56

    move/from16 v1, v57

    if-eq v0, v1, :cond_2ea

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bysetpos:[I

    move-object/from16 v56, v0

    const/16 v57, 0x0

    aget v56, v56, v57

    const/16 v57, 0x2

    move/from16 v0, v56

    move/from16 v1, v57

    if-eq v0, v1, :cond_2ea

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bysetpos:[I

    move-object/from16 v56, v0

    const/16 v57, 0x0

    aget v56, v56, v57

    const/16 v57, 0x3

    move/from16 v0, v56

    move/from16 v1, v57

    if-eq v0, v1, :cond_2ea

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bysetpos:[I

    move-object/from16 v56, v0

    const/16 v57, 0x0

    aget v56, v56, v57

    const/16 v57, 0x4

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_314

    .line 1000
    :cond_2ea
    const/16 v56, 0x1

    move/from16 v0, v56

    new-array v13, v0, [I

    .line 1001
    .restart local v13       #bymonthday:[I
    const/16 v56, 0x0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bysetpos:[I

    move-object/from16 v57, v0

    const/16 v58, 0x0

    aget v57, v57, v58

    aput v57, v13, v56

    .line 1002
    move-object/from16 v0, p2

    iput-object v13, v0, Lcom/android/calendarcommon/EventRecurrence;->bymonthday:[I

    .line 1003
    const/16 v56, 0x1

    move/from16 v0, v56

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/calendarcommon/EventRecurrence;->bymonthdayCount:I

    .line 1004
    const/16 v56, 0x1

    move/from16 v0, v56

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendarcommon/RecurrenceProcessor;->yearly_first_second_third_fourth_day_of_month:Z

    goto/16 :goto_4e

    .line 1005
    .end local v13           #bymonthday:[I
    :cond_314
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bysetpos:[I

    move-object/from16 v56, v0

    const/16 v57, 0x0

    aget v56, v56, v57

    const/16 v57, -0x1

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_4e

    .line 1007
    const/16 v56, 0x1

    move/from16 v0, v56

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendarcommon/RecurrenceProcessor;->yearly_lastday_of_month:Z

    goto/16 :goto_4e

    .line 1028
    .restart local v3       #generated:Landroid/text/format/Time;
    .restart local v17       #days:Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;
    .restart local v30       #iterator:Landroid/text/format/Time;
    .restart local v41       #sb:Ljava/lang/StringBuilder;
    .restart local v44       #until:Landroid/text/format/Time;
    :cond_330
    :try_start_330
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->interval:I

    move/from16 v25, v0

    .line 1029
    .local v25, freqAmount:I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    move/from16 v24, v0

    .line 1030
    .local v24, freq:I
    packed-switch v24, :pswitch_data_84e

    .line 1058
    new-instance v56, Lcom/android/calendarcommon/DateException;

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "bad freq="

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-direct/range {v56 .. v57}, Lcom/android/calendarcommon/DateException;-><init>(Ljava/lang/String;)V

    throw v56
    :try_end_35c
    .catch Lcom/android/calendarcommon/DateException; {:try_start_330 .. :try_end_35c} :catch_92
    .catch Ljava/lang/RuntimeException; {:try_start_330 .. :try_end_35c} :catch_35c

    .line 1444
    .end local v24           #freq:I
    .end local v25           #freqAmount:I
    :catch_35c
    move-exception v43

    .line 1445
    .local v43, t:Ljava/lang/RuntimeException;
    const-string v56, "RecurrenceProcessor"

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "RuntimeException with r="

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string v58, " rangeStart="

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v57

    const-string v58, " rangeEnd="

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v56 .. v57}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    throw v43

    .line 1033
    .end local v43           #t:Ljava/lang/RuntimeException;
    .restart local v24       #freq:I
    .restart local v25       #freqAmount:I
    :pswitch_396
    const/16 v26, 0x1

    .line 1060
    .local v26, freqField:I
    :cond_398
    :goto_398
    if-gtz v25, :cond_39c

    .line 1061
    const/16 v25, 0x1

    .line 1064
    :cond_39c
    :try_start_39c
    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/calendarcommon/EventRecurrence;->bymonthCount:I

    .line 1065
    .local v12, bymonthCount:I
    const/16 v56, 0x6

    move/from16 v0, v24

    move/from16 v1, v56

    invoke-static {v0, v1, v12}, Lcom/android/calendarcommon/RecurrenceProcessor;->useBYX(III)Z

    move-result v52

    .line 1066
    .local v52, usebymonth:Z
    const/16 v56, 0x5

    move/from16 v0, v24

    move/from16 v1, v56

    if-lt v0, v1, :cond_52b

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    move/from16 v56, v0

    if-gtz v56, :cond_3c2

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bymonthdayCount:I

    move/from16 v56, v0

    if-lez v56, :cond_52b

    :cond_3c2
    const/16 v49, 0x1

    .line 1068
    .local v49, useDays:Z
    :goto_3c4
    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/calendarcommon/EventRecurrence;->byhourCount:I

    .line 1069
    .local v10, byhourCount:I
    const/16 v56, 0x3

    move/from16 v0, v24

    move/from16 v1, v56

    invoke-static {v0, v1, v10}, Lcom/android/calendarcommon/RecurrenceProcessor;->useBYX(III)Z

    move-result v50

    .line 1070
    .local v50, usebyhour:Z
    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/calendarcommon/EventRecurrence;->byminuteCount:I

    .line 1071
    .local v11, byminuteCount:I
    const/16 v56, 0x2

    move/from16 v0, v24

    move/from16 v1, v56

    invoke-static {v0, v1, v11}, Lcom/android/calendarcommon/RecurrenceProcessor;->useBYX(III)Z

    move-result v51

    .line 1072
    .local v51, usebyminute:Z
    move-object/from16 v0, p2

    iget v14, v0, Lcom/android/calendarcommon/EventRecurrence;->bysecondCount:I

    .line 1073
    .local v14, bysecondCount:I
    const/16 v56, 0x1

    move/from16 v0, v24

    move/from16 v1, v56

    invoke-static {v0, v1, v14}, Lcom/android/calendarcommon/RecurrenceProcessor;->useBYX(III)Z

    move-result v53

    .line 1076
    .local v53, usebysecond:Z
    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1077
    const/16 v56, 0x5

    move/from16 v0, v26

    move/from16 v1, v56

    if-ne v0, v1, :cond_407

    .line 1078
    if-eqz v49, :cond_407

    .line 1084
    const/16 v56, 0x1

    move/from16 v0, v56

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 1089
    :cond_407
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    move-object/from16 v56, v0

    if-eqz v56, :cond_52f

    .line 1091
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    move-object/from16 v47, v0

    .line 1095
    .local v47, untilStr:Ljava/lang/String;
    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->length()I

    move-result v56

    const/16 v57, 0xf

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_438

    .line 1096
    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v56

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const/16 v57, 0x5a

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    .line 1099
    :cond_438
    move-object/from16 v0, v44

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1100
    move-object/from16 v0, v44

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v56, v0

    const/16 v57, 0x7f4

    move/from16 v0, v56

    move/from16 v1, v57

    if-le v0, v1, :cond_465

    .line 1101
    const/16 v56, 0x7f4

    move/from16 v0, v56

    move-object/from16 v1, v44

    iput v0, v1, Landroid/text/format/Time;->year:I

    .line 1102
    const/16 v56, 0xb

    move/from16 v0, v56

    move-object/from16 v1, v44

    iput v0, v1, Landroid/text/format/Time;->month:I

    .line 1103
    const/16 v56, 0x1f

    move/from16 v0, v56

    move-object/from16 v1, v44

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 1109
    :cond_465
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v56, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 1110
    invoke-static/range {v44 .. v44}, Lcom/android/calendarcommon/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v45

    .line 1122
    .end local v47           #untilStr:Ljava/lang/String;
    .local v45, untilDateValue:J
    :goto_476
    const/16 v56, 0xf

    move-object/from16 v0, v41

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 1123
    const/16 v56, 0xf

    move-object/from16 v0, v41

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1132
    const/16 v21, 0x0

    .line 1133
    .local v21, eventEnded:Z
    const/16 v22, 0x0

    .line 1136
    .local v22, failsafe:I
    :cond_48c
    const/16 v38, 0x0

    .line 1142
    .local v38, monthIndex:I
    invoke-static/range {v30 .. v30}, Lcom/android/calendarcommon/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 1144
    move-object/from16 v0, v30

    iget v9, v0, Landroid/text/format/Time;->year:I

    .line 1145
    .local v9, iteratorYear:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v56, v0

    add-int/lit8 v34, v56, 0x1

    .line 1146
    .local v34, iteratorMonth:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v31, v0

    .line 1147
    .local v31, iteratorDay:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v32, v0

    .line 1148
    .local v32, iteratorHour:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v33, v0

    .line 1149
    .local v33, iteratorMinute:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 v35, v0

    .line 1156
    .local v35, iteratorSecond:I
    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1159
    iget v0, v3, Landroid/text/format/Time;->year:I

    move/from16 v56, v0

    const/16 v57, 0x7f4

    move/from16 v0, v56

    move/from16 v1, v57

    if-le v0, v1, :cond_55f

    .line 1430
    :cond_4c6
    const/16 v56, 0x0

    move/from16 v0, v56

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendarcommon/RecurrenceProcessor;->Monthly_Lastday:Z

    .line 1431
    const/16 v56, 0x0

    move/from16 v0, v56

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendarcommon/RecurrenceProcessor;->Monthly_weekend:Z

    .line 1432
    const/16 v56, 0x0

    move/from16 v0, v56

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendarcommon/RecurrenceProcessor;->Monthly_week_day:Z

    .line 1433
    const/16 v56, 0x0

    move/from16 v0, v56

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendarcommon/RecurrenceProcessor;->yearly_anyday:Z

    .line 1434
    const/16 v56, 0x0

    move/from16 v0, v56

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendarcommon/RecurrenceProcessor;->yearly_weekday:Z

    .line 1435
    const/16 v56, 0x0

    move/from16 v0, v56

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendarcommon/RecurrenceProcessor;->yearly_weekend:Z

    .line 1436
    const/16 v56, 0x0

    move/from16 v0, v56

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendarcommon/RecurrenceProcessor;->yearly_lastday_of_month:Z

    .line 1437
    const/16 v56, 0x0

    move/from16 v0, v56

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/calendarcommon/RecurrenceProcessor;->yearly_first_second_third_fourth_day_of_month:Z

    .line 1449
    return-void

    .line 1036
    .end local v9           #iteratorYear:I
    .end local v10           #byhourCount:I
    .end local v11           #byminuteCount:I
    .end local v12           #bymonthCount:I
    .end local v14           #bysecondCount:I
    .end local v21           #eventEnded:Z
    .end local v22           #failsafe:I
    .end local v26           #freqField:I
    .end local v31           #iteratorDay:I
    .end local v32           #iteratorHour:I
    .end local v33           #iteratorMinute:I
    .end local v34           #iteratorMonth:I
    .end local v35           #iteratorSecond:I
    .end local v38           #monthIndex:I
    .end local v45           #untilDateValue:J
    .end local v49           #useDays:Z
    .end local v50           #usebyhour:Z
    .end local v51           #usebyminute:Z
    .end local v52           #usebymonth:Z
    .end local v53           #usebysecond:Z
    :pswitch_507
    const/16 v26, 0x2

    .line 1037
    .restart local v26       #freqField:I
    goto/16 :goto_398

    .line 1039
    .end local v26           #freqField:I
    :pswitch_50b
    const/16 v26, 0x3

    .line 1040
    .restart local v26       #freqField:I
    goto/16 :goto_398

    .line 1042
    .end local v26           #freqField:I
    :pswitch_50f
    const/16 v26, 0x4

    .line 1043
    .restart local v26       #freqField:I
    goto/16 :goto_398

    .line 1045
    .end local v26           #freqField:I
    :pswitch_513
    const/16 v26, 0x4

    .line 1046
    .restart local v26       #freqField:I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->interval:I

    move/from16 v56, v0

    mul-int/lit8 v25, v56, 0x7

    .line 1047
    if-gtz v25, :cond_398

    .line 1048
    const/16 v25, 0x7

    goto/16 :goto_398

    .line 1052
    .end local v26           #freqField:I
    :pswitch_523
    const/16 v26, 0x5

    .line 1053
    .restart local v26       #freqField:I
    goto/16 :goto_398

    .line 1055
    .end local v26           #freqField:I
    :pswitch_527
    const/16 v26, 0x6

    .line 1056
    .restart local v26       #freqField:I
    goto/16 :goto_398

    .line 1066
    .restart local v12       #bymonthCount:I
    .restart local v52       #usebymonth:Z
    :cond_52b
    const/16 v49, 0x0

    goto/16 :goto_3c4

    .line 1113
    .restart local v10       #byhourCount:I
    .restart local v11       #byminuteCount:I
    .restart local v14       #bysecondCount:I
    .restart local v49       #useDays:Z
    .restart local v50       #usebyhour:Z
    .restart local v51       #usebyminute:Z
    .restart local v53       #usebysecond:Z
    :cond_52f
    new-instance v48, Landroid/text/format/Time;

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 1114
    .local v48, untilTime:Landroid/text/format/Time;
    const/16 v56, 0x7f4

    move/from16 v0, v56

    move-object/from16 v1, v48

    iput v0, v1, Landroid/text/format/Time;->year:I

    .line 1115
    const/16 v56, 0xb

    move/from16 v0, v56

    move-object/from16 v1, v48

    iput v0, v1, Landroid/text/format/Time;->month:I

    .line 1116
    const/16 v56, 0x1f

    move/from16 v0, v56

    move-object/from16 v1, v48

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 1117
    const/16 v56, 0x1

    move-object/from16 v0, v48

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 1119
    invoke-static/range {v48 .. v48}, Lcom/android/calendarcommon/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v45

    .restart local v45       #untilDateValue:J
    goto/16 :goto_476

    .line 1164
    .end local v48           #untilTime:Landroid/text/format/Time;
    .restart local v9       #iteratorYear:I
    .restart local v21       #eventEnded:Z
    .restart local v22       #failsafe:I
    .restart local v31       #iteratorDay:I
    .restart local v32       #iteratorHour:I
    .restart local v33       #iteratorMinute:I
    .restart local v34       #iteratorMonth:I
    .restart local v35       #iteratorSecond:I
    .restart local v38       #monthIndex:I
    :cond_55f
    if-eqz v52, :cond_67d

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bymonth:[I

    move-object/from16 v56, v0

    aget v8, v56, v38

    .line 1167
    .local v8, month:I
    :goto_569
    add-int/lit8 v8, v8, -0x1

    .line 1170
    const/16 v16, 0x1

    .line 1171
    .local v16, dayIndex:I
    const/16 v36, 0x0

    .line 1176
    .local v36, lastDayToExamine:I
    if-eqz v49, :cond_599

    .line 1180
    const/16 v56, 0x5

    move/from16 v0, v24

    move/from16 v1, v56

    if-ne v0, v1, :cond_681

    .line 1198
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    move/from16 v56, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->wkst:I

    move/from16 v57, v0

    invoke-static/range {v57 .. v57}, Lcom/android/calendarcommon/EventRecurrence;->day2TimeDay(I)I

    move-result v57

    sub-int v56, v56, v57

    add-int/lit8 v56, v56, 0x7

    rem-int/lit8 v55, v56, 0x7

    .line 1200
    .local v55, weekStartAdj:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v56, v0

    sub-int v16, v56, v55

    .line 1201
    add-int/lit8 v36, v16, 0x6

    .line 1218
    .end local v55           #weekStartAdj:I
    :cond_599
    :goto_599
    if-eqz v49, :cond_78f

    .line 1219
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->Monthly_Lastday:Z

    move/from16 v56, v0

    const/16 v57, 0x1

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_68b

    .line 1221
    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->getlastday(Landroid/text/format/Time;)I

    move-result v7

    .line 1222
    .local v7, day:I
    move/from16 v16, v7

    .line 1268
    :goto_5b3
    const/16 v29, 0x0

    .line 1270
    .local v29, hourIndex:I
    :cond_5b5
    if-eqz v50, :cond_793

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->byhour:[I

    move-object/from16 v56, v0

    aget v6, v56, v29

    .line 1276
    .local v6, hour:I
    :goto_5bf
    const/16 v37, 0x0

    .line 1278
    .local v37, minuteIndex:I
    :cond_5c1
    if-eqz v51, :cond_797

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->byminute:[I

    move-object/from16 v56, v0

    aget v5, v56, v37

    .line 1284
    .local v5, minute:I
    :goto_5cb
    const/16 v42, 0x0

    .line 1286
    .local v42, secondIndex:I
    :cond_5cd
    if-eqz v53, :cond_79b

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bysecond:[I

    move-object/from16 v56, v0

    aget v4, v56, v42

    .line 1294
    .local v4, second:I
    :goto_5d7
    invoke-virtual/range {v3 .. v9}, Landroid/text/format/Time;->set(IIIIII)V

    .line 1295
    invoke-static {v3}, Lcom/android/calendarcommon/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 1297
    invoke-static {v3}, Lcom/android/calendarcommon/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v27

    .line 1301
    .local v27, genDateValue:J
    cmp-long v56, v27, v18

    if-ltz v56, :cond_624

    .line 1306
    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/android/calendarcommon/RecurrenceProcessor;->filter(Lcom/android/calendarcommon/EventRecurrence;Landroid/text/format/Time;)I

    move-result v23

    .line 1307
    .local v23, filtered:I
    if-nez v23, :cond_624

    .line 1326
    if-eqz p7, :cond_5f9

    cmp-long v56, v18, p3

    if-ltz v56, :cond_5f9

    cmp-long v56, v18, p5

    if-gez v56, :cond_5f9

    .line 1329
    add-int/lit8 v15, v15, 0x1

    .line 1333
    :cond_5f9
    cmp-long v56, v27, v45

    if-gtz v56, :cond_4c6

    .line 1343
    cmp-long v56, v27, p5

    if-gez v56, :cond_4c6

    .line 1352
    cmp-long v56, v27, p3

    if-ltz v56, :cond_612

    .line 1356
    if-eqz p7, :cond_79f

    .line 1357
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v56

    move-object/from16 v0, p8

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1363
    :cond_612
    :goto_612
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->count:I

    move/from16 v56, v0

    if-lez v56, :cond_624

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->count:I

    move/from16 v56, v0

    move/from16 v0, v56

    if-eq v0, v15, :cond_4c6

    .line 1369
    .end local v23           #filtered:I
    :cond_624
    add-int/lit8 v42, v42, 0x1

    .line 1370
    if-eqz v53, :cond_62c

    move/from16 v0, v42

    if-lt v0, v14, :cond_5cd

    .line 1371
    :cond_62c
    add-int/lit8 v37, v37, 0x1

    .line 1372
    if-eqz v51, :cond_634

    move/from16 v0, v37

    if-lt v0, v11, :cond_5c1

    .line 1373
    :cond_634
    add-int/lit8 v29, v29, 0x1

    .line 1374
    if-eqz v50, :cond_63c

    move/from16 v0, v29

    if-lt v0, v10, :cond_5b5

    .line 1375
    :cond_63c
    add-int/lit8 v16, v16, 0x1

    .line 1376
    .end local v4           #second:I
    .end local v5           #minute:I
    .end local v6           #hour:I
    .end local v7           #day:I
    .end local v27           #genDateValue:J
    .end local v29           #hourIndex:I
    .end local v37           #minuteIndex:I
    .end local v42           #secondIndex:I
    :goto_63e
    if-eqz v49, :cond_646

    move/from16 v0, v16

    move/from16 v1, v36

    if-le v0, v1, :cond_599

    .line 1377
    :cond_646
    add-int/lit8 v38, v38, 0x1

    .line 1378
    if-eqz v52, :cond_64e

    move/from16 v0, v38

    if-lt v0, v12, :cond_55f

    .line 1384
    :cond_64e
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v40, v0

    .line 1385
    .local v40, oldDay:I
    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1386
    const/16 v39, 0x1

    .line 1388
    .local v39, n:I
    :goto_65b
    mul-int v54, v25, v39

    .line 1389
    .local v54, value:I
    packed-switch v26, :pswitch_data_860

    .line 1415
    new-instance v56, Ljava/lang/RuntimeException;

    new-instance v57, Ljava/lang/StringBuilder;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuilder;-><init>()V

    const-string v58, "bad field="

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v57

    move-object/from16 v0, v57

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-direct/range {v56 .. v57}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v56

    .end local v8           #month:I
    .end local v16           #dayIndex:I
    .end local v36           #lastDayToExamine:I
    .end local v39           #n:I
    .end local v40           #oldDay:I
    .end local v54           #value:I
    :cond_67d
    move/from16 v8, v34

    .line 1164
    goto/16 :goto_569

    .line 1203
    .restart local v8       #month:I
    .restart local v16       #dayIndex:I
    .restart local v36       #lastDayToExamine:I
    :cond_681
    const/16 v56, 0x4

    move/from16 v0, v56

    invoke-virtual {v3, v0}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v36

    goto/16 :goto_599

    .line 1223
    :cond_68b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->Monthly_weekend:Z

    move/from16 v56, v0

    const/16 v57, 0x1

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_6ab

    .line 1225
    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->getweekend_day(Landroid/text/format/Time;)I

    move-result v7

    .line 1226
    .restart local v7       #day:I
    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->getlastday(Landroid/text/format/Time;)I

    move-result v16

    goto/16 :goto_5b3

    .line 1227
    .end local v7           #day:I
    :cond_6ab
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->Monthly_week_day:Z

    move/from16 v56, v0

    const/16 v57, 0x1

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_6cb

    .line 1229
    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->getweek_day(Landroid/text/format/Time;)I

    move-result v7

    .line 1230
    .restart local v7       #day:I
    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->getlastday(Landroid/text/format/Time;)I

    move-result v16

    goto/16 :goto_5b3

    .line 1234
    .end local v7           #day:I
    :cond_6cb
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->yearly_anyday:Z

    move/from16 v56, v0

    const/16 v57, 0x1

    move/from16 v0, v56

    move/from16 v1, v57

    if-eq v0, v1, :cond_711

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->yearly_weekday:Z

    move/from16 v56, v0

    const/16 v57, 0x1

    move/from16 v0, v56

    move/from16 v1, v57

    if-eq v0, v1, :cond_711

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->yearly_weekend:Z

    move/from16 v56, v0

    const/16 v57, 0x1

    move/from16 v0, v56

    move/from16 v1, v57

    if-eq v0, v1, :cond_711

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->yearly_first_second_third_fourth_day_of_month:Z

    move/from16 v56, v0

    const/16 v57, 0x1

    move/from16 v0, v56

    move/from16 v1, v57

    if-eq v0, v1, :cond_711

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->yearly_lastday_of_month:Z

    move/from16 v56, v0

    const/16 v57, 0x1

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_715

    .line 1238
    :cond_711
    move-object/from16 v0, v30

    iput v8, v0, Landroid/text/format/Time;->month:I

    .line 1240
    :cond_715
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->yearly_weekday:Z

    move/from16 v56, v0

    const/16 v57, 0x1

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_72f

    .line 1241
    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->getweek_day(Landroid/text/format/Time;)I

    move-result v7

    .line 1242
    .restart local v7       #day:I
    const/16 v16, 0x1f

    goto/16 :goto_5b3

    .line 1243
    .end local v7           #day:I
    :cond_72f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->yearly_weekend:Z

    move/from16 v56, v0

    const/16 v57, 0x1

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_749

    .line 1244
    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->getweekend_day(Landroid/text/format/Time;)I

    move-result v7

    .line 1245
    .restart local v7       #day:I
    const/16 v16, 0x1f

    goto/16 :goto_5b3

    .line 1246
    .end local v7           #day:I
    :cond_749
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->yearly_lastday_of_month:Z

    move/from16 v56, v0

    const/16 v57, 0x1

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_763

    .line 1247
    move-object/from16 v0, v17

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->getlastday(Landroid/text/format/Time;)I

    move-result v7

    .line 1248
    .restart local v7       #day:I
    const/16 v16, 0x1f

    goto/16 :goto_5b3

    .line 1251
    .end local v7           #day:I
    :cond_763
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    move/from16 v56, v0

    const/16 v57, 0x7

    move/from16 v0, v56

    move/from16 v1, v57

    if-ne v0, v1, :cond_77b

    .line 1252
    const/16 v56, 0x4

    move-object/from16 v0, v30

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v36

    .line 1254
    :cond_77b
    move-object/from16 v0, v17

    move-object/from16 v1, v30

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->get(Landroid/text/format/Time;I)Z

    move-result v56

    if-nez v56, :cond_78b

    .line 1255
    add-int/lit8 v16, v16, 0x1

    .line 1256
    goto/16 :goto_63e

    .line 1258
    :cond_78b
    move/from16 v7, v16

    .restart local v7       #day:I
    goto/16 :goto_5b3

    .line 1263
    .end local v7           #day:I
    :cond_78f
    move/from16 v7, v31

    .restart local v7       #day:I
    goto/16 :goto_5b3

    .restart local v29       #hourIndex:I
    :cond_793
    move/from16 v6, v32

    .line 1270
    goto/16 :goto_5bf

    .restart local v6       #hour:I
    .restart local v37       #minuteIndex:I
    :cond_797
    move/from16 v5, v33

    .line 1278
    goto/16 :goto_5cb

    .restart local v5       #minute:I
    .restart local v42       #secondIndex:I
    :cond_79b
    move/from16 v4, v35

    .line 1286
    goto/16 :goto_5d7

    .line 1359
    .restart local v4       #second:I
    .restart local v23       #filtered:I
    .restart local v27       #genDateValue:J
    :cond_79f
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v56

    move-object/from16 v0, p8

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_612

    .line 1391
    .end local v4           #second:I
    .end local v5           #minute:I
    .end local v6           #hour:I
    .end local v7           #day:I
    .end local v23           #filtered:I
    .end local v27           #genDateValue:J
    .end local v29           #hourIndex:I
    .end local v37           #minuteIndex:I
    .end local v42           #secondIndex:I
    .restart local v39       #n:I
    .restart local v40       #oldDay:I
    .restart local v54       #value:I
    :pswitch_7ac
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 v56, v0

    add-int v56, v56, v54

    move/from16 v0, v56

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->second:I

    .line 1418
    :goto_7ba
    invoke-static/range {v30 .. v30}, Lcom/android/calendarcommon/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 1419
    const/16 v56, 0x6

    move/from16 v0, v26

    move/from16 v1, v56

    if-eq v0, v1, :cond_7cd

    const/16 v56, 0x5

    move/from16 v0, v26

    move/from16 v1, v56

    if-ne v0, v1, :cond_48c

    .line 1422
    :cond_7cd
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v56, v0

    move/from16 v0, v56

    move/from16 v1, v40

    if-eq v0, v1, :cond_48c

    .line 1425
    add-int/lit8 v39, v39, 0x1

    .line 1426
    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    goto/16 :goto_65b

    .line 1394
    :pswitch_7e2
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v56, v0

    add-int v56, v56, v54

    move/from16 v0, v56

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->minute:I

    goto :goto_7ba

    .line 1397
    :pswitch_7f1
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v56, v0

    add-int v56, v56, v54

    move/from16 v0, v56

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->hour:I

    goto :goto_7ba

    .line 1400
    :pswitch_800
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v56, v0

    add-int v56, v56, v54

    move/from16 v0, v56

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    goto :goto_7ba

    .line 1403
    :pswitch_80f
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v56, v0

    add-int v56, v56, v54

    move/from16 v0, v56

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->month:I

    goto :goto_7ba

    .line 1406
    :pswitch_81e
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v56, v0

    add-int v56, v56, v54

    move/from16 v0, v56

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->year:I

    goto :goto_7ba

    .line 1409
    :pswitch_82d
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v56, v0

    add-int v56, v56, v54

    move/from16 v0, v56

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    goto/16 :goto_7ba

    .line 1412
    :pswitch_83d
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v56, v0

    add-int v56, v56, v54

    move/from16 v0, v56

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->monthDay:I
    :try_end_84b
    .catch Lcom/android/calendarcommon/DateException; {:try_start_39c .. :try_end_84b} :catch_92
    .catch Ljava/lang/RuntimeException; {:try_start_39c .. :try_end_84b} :catch_35c

    goto/16 :goto_7ba

    .line 1030
    nop

    :pswitch_data_84e
    .packed-switch 0x1
        :pswitch_396
        :pswitch_507
        :pswitch_50b
        :pswitch_50f
        :pswitch_513
        :pswitch_523
        :pswitch_527
    .end packed-switch

    .line 1389
    :pswitch_data_860
    .packed-switch 0x1
        :pswitch_7ac
        :pswitch_7e2
        :pswitch_7f1
        :pswitch_800
        :pswitch_80f
        :pswitch_81e
        :pswitch_82d
        :pswitch_83d
    .end packed-switch
.end method

.method public expand(Landroid/text/format/Time;Lcom/android/calendarcommon/RecurrenceSet;JJ)[J
    .registers 40
    .parameter "dtstart"
    .parameter "recur"
    .parameter "rangeStartMillis"
    .parameter "rangeEndMillis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon/DateException;
        }
    .end annotation

    .prologue
    .line 832
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v31, v0

    .line 833
    .local v31, timezone:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 834
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mGenerated:Landroid/text/format/Time;

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 840
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 841
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    invoke-static {v2}, Lcom/android/calendarcommon/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v5

    .line 844
    .local v5, rangeStartDateValue:J
    const-wide/16 v2, -0x1

    cmp-long v2, p5, v2

    if-eqz v2, :cond_6b

    .line 845
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 846
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    invoke-static {v2}, Lcom/android/calendarcommon/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v7

    .line 851
    .local v7, rangeEndDateValue:J
    :goto_40
    new-instance v10, Ljava/util/TreeSet;

    invoke-direct {v10}, Ljava/util/TreeSet;-><init>()V

    .line 853
    .local v10, dtSet:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/Long;>;"
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceSet;->rrules:[Lcom/android/calendarcommon/EventRecurrence;

    if-eqz v2, :cond_71

    .line 854
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/RecurrenceSet;->rrules:[Lcom/android/calendarcommon/EventRecurrence;

    move-object/from16 v20, v0

    .local v20, arr$:[Lcom/android/calendarcommon/EventRecurrence;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v30, v0

    .local v30, len$:I
    const/16 v28, 0x0

    .local v28, i$:I
    :goto_58
    move/from16 v0, v28

    move/from16 v1, v30

    if-ge v0, v1, :cond_71

    aget-object v4, v20, v28

    .line 855
    .local v4, rrule:Lcom/android/calendarcommon/EventRecurrence;
    const/4 v9, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v10}, Lcom/android/calendarcommon/RecurrenceProcessor;->expand(Landroid/text/format/Time;Lcom/android/calendarcommon/EventRecurrence;JJZLjava/util/TreeSet;)V

    .line 854
    add-int/lit8 v28, v28, 0x1

    goto :goto_58

    .line 848
    .end local v4           #rrule:Lcom/android/calendarcommon/EventRecurrence;
    .end local v7           #rangeEndDateValue:J
    .end local v10           #dtSet:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/Long;>;"
    .end local v20           #arr$:[Lcom/android/calendarcommon/EventRecurrence;
    .end local v28           #i$:I
    .end local v30           #len$:I
    :cond_6b
    const-wide v7, 0x7fffffffffffffffL

    .restart local v7       #rangeEndDateValue:J
    goto :goto_40

    .line 859
    .restart local v10       #dtSet:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/Long;>;"
    :cond_71
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceSet;->rdates:[J

    if-eqz v2, :cond_a7

    .line 860
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/RecurrenceSet;->rdates:[J

    move-object/from16 v20, v0

    .local v20, arr$:[J
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v30, v0

    .restart local v30       #len$:I
    const/16 v28, 0x0

    .restart local v28       #i$:I
    :goto_84
    move/from16 v0, v28

    move/from16 v1, v30

    if-ge v0, v1, :cond_a7

    aget-wide v22, v20, v28

    .line 863
    .local v22, dt:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-wide/from16 v0, v22

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 864
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    invoke-static {v2}, Lcom/android/calendarcommon/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v24

    .line 865
    .local v24, dtvalue:J
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 860
    add-int/lit8 v28, v28, 0x1

    goto :goto_84

    .line 868
    .end local v20           #arr$:[J
    .end local v22           #dt:J
    .end local v24           #dtvalue:J
    .end local v28           #i$:I
    .end local v30           #len$:I
    :cond_a7
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceSet;->exrules:[Lcom/android/calendarcommon/EventRecurrence;

    if-eqz v2, :cond_d3

    .line 869
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/RecurrenceSet;->exrules:[Lcom/android/calendarcommon/EventRecurrence;

    move-object/from16 v20, v0

    .local v20, arr$:[Lcom/android/calendarcommon/EventRecurrence;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v30, v0

    .restart local v30       #len$:I
    const/16 v28, 0x0

    .restart local v28       #i$:I
    :goto_ba
    move/from16 v0, v28

    move/from16 v1, v30

    if-ge v0, v1, :cond_d3

    aget-object v13, v20, v28

    .line 870
    .local v13, exrule:Lcom/android/calendarcommon/EventRecurrence;
    const/16 v18, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-wide v14, v5

    move-wide/from16 v16, v7

    move-object/from16 v19, v10

    invoke-virtual/range {v11 .. v19}, Lcom/android/calendarcommon/RecurrenceProcessor;->expand(Landroid/text/format/Time;Lcom/android/calendarcommon/EventRecurrence;JJZLjava/util/TreeSet;)V

    .line 869
    add-int/lit8 v28, v28, 0x1

    goto :goto_ba

    .line 874
    .end local v13           #exrule:Lcom/android/calendarcommon/EventRecurrence;
    .end local v20           #arr$:[Lcom/android/calendarcommon/EventRecurrence;
    .end local v28           #i$:I
    .end local v30           #len$:I
    :cond_d3
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceSet;->exdates:[J

    if-eqz v2, :cond_109

    .line 875
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/RecurrenceSet;->exdates:[J

    move-object/from16 v20, v0

    .local v20, arr$:[J
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v30, v0

    .restart local v30       #len$:I
    const/16 v28, 0x0

    .restart local v28       #i$:I
    :goto_e6
    move/from16 v0, v28

    move/from16 v1, v30

    if-ge v0, v1, :cond_109

    aget-wide v22, v20, v28

    .line 878
    .restart local v22       #dt:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-wide/from16 v0, v22

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 879
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    invoke-static {v2}, Lcom/android/calendarcommon/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v24

    .line 880
    .restart local v24       #dtvalue:J
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 875
    add-int/lit8 v28, v28, 0x1

    goto :goto_e6

    .line 883
    .end local v20           #arr$:[J
    .end local v22           #dt:J
    .end local v24           #dtvalue:J
    .end local v28           #i$:I
    .end local v30           #len$:I
    :cond_109
    invoke-virtual {v10}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_115

    .line 886
    const/4 v2, 0x0

    new-array v0, v2, [J

    move-object/from16 v21, v0

    .line 900
    :cond_114
    return-object v21

    .line 893
    :cond_115
    invoke-virtual {v10}, Ljava/util/TreeSet;->size()I

    move-result v29

    .line 894
    .local v29, len:I
    move/from16 v0, v29

    new-array v0, v0, [J

    move-object/from16 v21, v0

    .line 895
    .local v21, dates:[J
    const/16 v26, 0x0

    .line 896
    .local v26, i:I
    invoke-virtual {v10}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, i$:Ljava/util/Iterator;
    :goto_125
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_114

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Long;

    .line 897
    .local v32, val:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v2, v11, v12}, Lcom/android/calendarcommon/RecurrenceProcessor;->setTimeFromLongValue(Landroid/text/format/Time;J)V

    .line 898
    add-int/lit8 v27, v26, 0x1

    .end local v26           #i:I
    .local v27, i:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    aput-wide v2, v21, v26

    move/from16 v26, v27

    .end local v27           #i:I
    .restart local v26       #i:I
    goto :goto_125
.end method

.method public getLastOccurence(Landroid/text/format/Time;Landroid/text/format/Time;Lcom/android/calendarcommon/RecurrenceSet;)J
    .registers 24
    .parameter "dtstart"
    .parameter "maxtime"
    .parameter "recur"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon/DateException;
        }
    .end annotation

    .prologue
    .line 93
    const-wide/16 v14, -0x1

    .line 94
    .local v14, lastTime:J
    const/4 v12, 0x0

    .line 98
    .local v12, hasCount:Z
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/calendarcommon/RecurrenceSet;->rrules:[Lcom/android/calendarcommon/EventRecurrence;

    if-eqz v1, :cond_71

    .line 99
    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/android/calendarcommon/RecurrenceSet;->rrules:[Lcom/android/calendarcommon/EventRecurrence;

    .local v8, arr$:[Lcom/android/calendarcommon/EventRecurrence;
    array-length v0, v8

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_11
    move/from16 v0, v16

    if-ge v13, v0, :cond_45

    aget-object v17, v8, v13

    .line 100
    .local v17, rrule:Lcom/android/calendarcommon/EventRecurrence;
    move-object/from16 v0, v17

    iget v1, v0, Lcom/android/calendarcommon/EventRecurrence;->count:I

    if-eqz v1, :cond_21

    .line 101
    const/4 v12, 0x1

    .line 99
    :cond_1e
    :goto_1e
    add-int/lit8 v13, v13, 0x1

    goto :goto_11

    .line 102
    :cond_21
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    if-eqz v1, :cond_42

    .line 104
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 105
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v18

    .line 106
    .local v18, untilTime:J
    cmp-long v1, v18, v14

    if-lez v1, :cond_1e

    .line 107
    move-wide/from16 v14, v18

    goto :goto_1e

    .line 112
    .end local v18           #untilTime:J
    :cond_42
    const-wide/16 v1, -0x1

    .line 156
    .end local v8           #arr$:[Lcom/android/calendarcommon/EventRecurrence;
    .end local v13           #i$:I
    .end local v16           #len$:I
    .end local v17           #rrule:Lcom/android/calendarcommon/EventRecurrence;
    :goto_44
    return-wide v1

    .line 115
    .restart local v8       #arr$:[Lcom/android/calendarcommon/EventRecurrence;
    .restart local v13       #i$:I
    .restart local v16       #len$:I
    :cond_45
    const-wide/16 v1, -0x1

    cmp-long v1, v14, v1

    if-eqz v1, :cond_67

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/calendarcommon/RecurrenceSet;->rdates:[J

    if-eqz v1, :cond_67

    .line 116
    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/android/calendarcommon/RecurrenceSet;->rdates:[J

    .local v8, arr$:[J
    array-length v0, v8

    move/from16 v16, v0

    const/4 v13, 0x0

    :goto_59
    move/from16 v0, v16

    if-ge v13, v0, :cond_67

    aget-wide v10, v8, v13

    .line 117
    .local v10, dt:J
    cmp-long v1, v10, v14

    if-lez v1, :cond_64

    .line 118
    move-wide v14, v10

    .line 116
    :cond_64
    add-int/lit8 v13, v13, 0x1

    goto :goto_59

    .line 125
    .end local v8           #arr$:[J
    .end local v10           #dt:J
    :cond_67
    const-wide/16 v1, -0x1

    cmp-long v1, v14, v1

    if-eqz v1, :cond_9b

    if-nez v12, :cond_9b

    move-wide v1, v14

    .line 126
    goto :goto_44

    .line 128
    .end local v13           #i$:I
    .end local v16           #len$:I
    :cond_71
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/calendarcommon/RecurrenceSet;->rdates:[J

    if-eqz v1, :cond_9b

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/calendarcommon/RecurrenceSet;->exrules:[Lcom/android/calendarcommon/EventRecurrence;

    if-nez v1, :cond_9b

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/calendarcommon/RecurrenceSet;->exdates:[J

    if-nez v1, :cond_9b

    .line 131
    move-object/from16 v0, p3

    iget-object v8, v0, Lcom/android/calendarcommon/RecurrenceSet;->rdates:[J

    .restart local v8       #arr$:[J
    array-length v0, v8

    move/from16 v16, v0

    .restart local v16       #len$:I
    const/4 v13, 0x0

    .restart local v13       #i$:I
    :goto_8b
    move/from16 v0, v16

    if-ge v13, v0, :cond_99

    aget-wide v10, v8, v13

    .line 132
    .restart local v10       #dt:J
    cmp-long v1, v10, v14

    if-lez v1, :cond_96

    .line 133
    move-wide v14, v10

    .line 131
    :cond_96
    add-int/lit8 v13, v13, 0x1

    goto :goto_8b

    .end local v10           #dt:J
    :cond_99
    move-wide v1, v14

    .line 136
    goto :goto_44

    .line 141
    .end local v8           #arr$:[J
    .end local v13           #i$:I
    .end local v16           #len$:I
    :cond_9b
    if-nez v12, :cond_a5

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/calendarcommon/RecurrenceSet;->rdates:[J

    if-nez v1, :cond_a5

    if-eqz p2, :cond_cf

    .line 144
    :cond_a5
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    if-eqz p2, :cond_c5

    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    :goto_b5
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/calendarcommon/RecurrenceProcessor;->expand(Landroid/text/format/Time;Lcom/android/calendarcommon/RecurrenceSet;JJ)[J

    move-result-object v9

    .line 151
    .local v9, dates:[J
    array-length v1, v9

    if-nez v1, :cond_c8

    .line 152
    const-wide/16 v1, 0x0

    goto :goto_44

    .line 144
    .end local v9           #dates:[J
    :cond_c5
    const-wide/16 v6, -0x1

    goto :goto_b5

    .line 154
    .restart local v9       #dates:[J
    :cond_c8
    array-length v1, v9

    add-int/lit8 v1, v1, -0x1

    aget-wide v1, v9, v1

    goto/16 :goto_44

    .line 156
    .end local v9           #dates:[J
    :cond_cf
    const-wide/16 v1, -0x1

    goto/16 :goto_44
.end method

.method public getLastOccurence(Landroid/text/format/Time;Lcom/android/calendarcommon/RecurrenceSet;)J
    .registers 5
    .parameter "dtstart"
    .parameter "recur"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon/DateException;
        }
    .end annotation

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/calendarcommon/RecurrenceProcessor;->getLastOccurence(Landroid/text/format/Time;Landroid/text/format/Time;Lcom/android/calendarcommon/RecurrenceSet;)J

    move-result-wide v0

    return-wide v0
.end method
