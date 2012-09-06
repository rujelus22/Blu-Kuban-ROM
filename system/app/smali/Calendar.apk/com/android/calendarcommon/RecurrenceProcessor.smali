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
.field private mDays:Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;

.field private mGenerated:Landroid/text/format/Time;

.field private mIterator:Landroid/text/format/Time;

.field private mStringBuilder:Ljava/lang/StringBuilder;

.field private mUntil:Landroid/text/format/Time;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0xc

    .line 1233
    new-array v0, v1, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/android/calendarcommon/RecurrenceProcessor;->DAYS_PER_MONTH:[I

    .line 1235
    new-array v0, v1, [I

    fill-array-data v0, :array_2e

    sput-object v0, Lcom/android/calendarcommon/RecurrenceProcessor;->DAYS_IN_YEAR_PRECEDING_MONTH:[I

    return-void

    .line 1233
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

    .line 1235
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
    .registers 3

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/calendarcommon/RecurrenceProcessor;->mDays:Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;

    .line 38
    return-void
.end method

.method private static filter(Lcom/android/calendarcommon/EventRecurrence;Landroid/text/format/Time;)I
    .registers 12
    .parameter "r"
    .parameter "iterator"

    .prologue
    .line 198
    iget v3, p0, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    .line 200
    .local v3, freq:I
    const/4 v6, 0x6

    if-lt v6, v3, :cond_19

    .line 202
    iget v6, p0, Lcom/android/calendarcommon/EventRecurrence;->bymonthCount:I

    if-lez v6, :cond_19

    .line 203
    iget-object v6, p0, Lcom/android/calendarcommon/EventRecurrence;->bymonth:[I

    iget v7, p0, Lcom/android/calendarcommon/EventRecurrence;->bymonthCount:I

    iget v8, p1, Landroid/text/format/Time;->month:I

    add-int/lit8 v8, v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/calendarcommon/RecurrenceProcessor;->listContains([III)Z

    move-result v2

    .line 205
    .local v2, found:Z
    if-nez v2, :cond_19

    .line 206
    const/4 v6, 0x1

    .line 310
    .end local v2           #found:Z
    :goto_18
    return v6

    .line 210
    :cond_19
    const/4 v6, 0x5

    if-lt v6, v3, :cond_36

    .line 213
    iget v6, p0, Lcom/android/calendarcommon/EventRecurrence;->byweeknoCount:I

    if-lez v6, :cond_36

    .line 214
    iget-object v6, p0, Lcom/android/calendarcommon/EventRecurrence;->byweekno:[I

    iget v7, p0, Lcom/android/calendarcommon/EventRecurrence;->byweeknoCount:I

    invoke-virtual {p1}, Landroid/text/format/Time;->getWeekNumber()I

    move-result v8

    const/16 v9, 0x9

    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendarcommon/RecurrenceProcessor;->listContains([IIII)Z

    move-result v2

    .line 217
    .restart local v2       #found:Z
    if-nez v2, :cond_36

    .line 218
    const/4 v6, 0x2

    goto :goto_18

    .line 222
    .end local v2           #found:Z
    :cond_36
    const/4 v6, 0x4

    if-lt v6, v3, :cond_7d

    .line 224
    iget v6, p0, Lcom/android/calendarcommon/EventRecurrence;->byyeardayCount:I

    if-lez v6, :cond_51

    .line 225
    iget-object v6, p0, Lcom/android/calendarcommon/EventRecurrence;->byyearday:[I

    iget v7, p0, Lcom/android/calendarcommon/EventRecurrence;->byyeardayCount:I

    iget v8, p1, Landroid/text/format/Time;->yearDay:I

    const/16 v9, 0x8

    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendarcommon/RecurrenceProcessor;->listContains([IIII)Z

    move-result v2

    .line 227
    .restart local v2       #found:Z
    if-nez v2, :cond_51

    .line 228
    const/4 v6, 0x3

    goto :goto_18

    .line 232
    .end local v2           #found:Z
    :cond_51
    iget v6, p0, Lcom/android/calendarcommon/EventRecurrence;->bymonthdayCount:I

    if-lez v6, :cond_68

    .line 233
    iget-object v6, p0, Lcom/android/calendarcommon/EventRecurrence;->bymonthday:[I

    iget v7, p0, Lcom/android/calendarcommon/EventRecurrence;->bymonthdayCount:I

    iget v8, p1, Landroid/text/format/Time;->monthDay:I

    const/4 v9, 0x4

    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendarcommon/RecurrenceProcessor;->listContains([IIII)Z

    move-result v2

    .line 236
    .restart local v2       #found:Z
    if-nez v2, :cond_68

    .line 237
    const/4 v6, 0x4

    goto :goto_18

    .line 243
    .end local v2           #found:Z
    :cond_68
    iget v6, p0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    if-lez v6, :cond_7d

    .line 244
    iget-object v1, p0, Lcom/android/calendarcommon/EventRecurrence;->byday:[I

    .line 245
    .local v1, a:[I
    iget v0, p0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    .line 246
    .local v0, N:I
    iget v6, p1, Landroid/text/format/Time;->weekDay:I

    invoke-static {v6}, Lcom/android/calendarcommon/EventRecurrence;->timeDay2Day(I)I

    move-result v5

    .line 247
    .local v5, v:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_77
    if-ge v4, v0, :cond_96

    .line 248
    aget v6, v1, v4

    if-ne v6, v5, :cond_93

    .line 255
    .end local v0           #N:I
    .end local v1           #a:[I
    .end local v4           #i:I
    .end local v5           #v:I
    :cond_7d
    const/4 v6, 0x3

    if-lt v6, v3, :cond_98

    .line 257
    iget-object v6, p0, Lcom/android/calendarcommon/EventRecurrence;->byhour:[I

    iget v7, p0, Lcom/android/calendarcommon/EventRecurrence;->byhourCount:I

    iget v8, p1, Landroid/text/format/Time;->hour:I

    const/4 v9, 0x3

    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendarcommon/RecurrenceProcessor;->listContains([IIII)Z

    move-result v2

    .line 260
    .restart local v2       #found:Z
    if-nez v2, :cond_98

    .line 261
    const/4 v6, 0x6

    goto :goto_18

    .line 247
    .end local v2           #found:Z
    .restart local v0       #N:I
    .restart local v1       #a:[I
    .restart local v4       #i:I
    .restart local v5       #v:I
    :cond_93
    add-int/lit8 v4, v4, 0x1

    goto :goto_77

    .line 252
    :cond_96
    const/4 v6, 0x5

    goto :goto_18

    .line 264
    .end local v0           #N:I
    .end local v1           #a:[I
    .end local v4           #i:I
    .end local v5           #v:I
    :cond_98
    const/4 v6, 0x2

    if-lt v6, v3, :cond_af

    .line 266
    iget-object v6, p0, Lcom/android/calendarcommon/EventRecurrence;->byminute:[I

    iget v7, p0, Lcom/android/calendarcommon/EventRecurrence;->byminuteCount:I

    iget v8, p1, Landroid/text/format/Time;->minute:I

    const/4 v9, 0x2

    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendarcommon/RecurrenceProcessor;->listContains([IIII)Z

    move-result v2

    .line 269
    .restart local v2       #found:Z
    if-nez v2, :cond_af

    .line 270
    const/4 v6, 0x7

    goto/16 :goto_18

    .line 273
    .end local v2           #found:Z
    :cond_af
    const/4 v6, 0x1

    if-lt v6, v3, :cond_c7

    .line 275
    iget-object v6, p0, Lcom/android/calendarcommon/EventRecurrence;->bysecond:[I

    iget v7, p0, Lcom/android/calendarcommon/EventRecurrence;->bysecondCount:I

    iget v8, p1, Landroid/text/format/Time;->second:I

    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendarcommon/RecurrenceProcessor;->listContains([IIII)Z

    move-result v2

    .line 278
    .restart local v2       #found:Z
    if-nez v2, :cond_c7

    .line 279
    const/16 v6, 0x8

    goto/16 :goto_18

    .line 283
    .end local v2           #found:Z
    :cond_c7
    iget v6, p0, Lcom/android/calendarcommon/EventRecurrence;->bysetposCount:I

    if-lez v6, :cond_ff

    .line 286
    const/4 v6, 0x6

    if-ne v3, v6, :cond_10f

    iget v6, p0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    if-lez v6, :cond_10f

    .line 288
    iget v6, p0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    add-int/lit8 v4, v6, -0x1

    .restart local v4       #i:I
    :goto_d6
    if-ltz v4, :cond_105

    .line 289
    iget-object v6, p0, Lcom/android/calendarcommon/EventRecurrence;->bydayNum:[I

    aget v6, v6, v4

    if-eqz v6, :cond_102

    .line 290
    const-string v6, "RecurrenceProcessor"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_ff

    .line 291
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

    .line 310
    .end local v4           #i:I
    :cond_ff
    :goto_ff
    const/4 v6, 0x0

    goto/16 :goto_18

    .line 288
    .restart local v4       #i:I
    :cond_102
    add-int/lit8 v4, v4, -0x1

    goto :goto_d6

    .line 296
    :cond_105
    invoke-static {p0, p1}, Lcom/android/calendarcommon/RecurrenceProcessor;->filterMonthlySetPos(Lcom/android/calendarcommon/EventRecurrence;Landroid/text/format/Time;)Z

    move-result v6

    if-nez v6, :cond_ff

    .line 298
    const/16 v6, 0x9

    goto/16 :goto_18

    .line 301
    .end local v4           #i:I
    :cond_10f
    const-string v6, "RecurrenceProcessor"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_ff

    .line 302
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

    .line 329
    iget v11, p1, Landroid/text/format/Time;->weekDay:I

    iget v12, p1, Landroid/text/format/Time;->monthDay:I

    sub-int/2addr v11, v12

    add-int/lit8 v11, v11, 0x24

    rem-int/lit8 v5, v11, 0x7

    .line 335
    .local v5, dotw:I
    const/4 v0, 0x0

    .line 336
    .local v0, bydayMask:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_c
    iget v11, p0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    if-ge v6, v11, :cond_18

    .line 337
    iget-object v11, p0, Lcom/android/calendarcommon/EventRecurrence;->byday:[I

    aget v11, v11, v6

    or-int/2addr v0, v11

    .line 336
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 344
    :cond_18
    const/4 v11, 0x4

    invoke-virtual {p1, v11}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v8

    .line 345
    .local v8, maxDay:I
    new-array v2, v8, [I

    .line 346
    .local v2, daySet:[I
    const/4 v3, 0x0

    .line 348
    .local v3, daySetLength:I
    const/4 v9, 0x1

    .local v9, md:I
    move v4, v3

    .end local v3           #daySetLength:I
    .local v4, daySetLength:I
    :goto_22
    if-gt v9, v8, :cond_3a

    .line 351
    const/high16 v11, 0x1

    shl-int v1, v11, v5

    .line 352
    .local v1, dayBit:I
    and-int v11, v0, v1

    if-eqz v11, :cond_6d

    .line 353
    add-int/lit8 v3, v4, 0x1

    .end local v4           #daySetLength:I
    .restart local v3       #daySetLength:I
    aput v9, v2, v4

    .line 356
    :goto_30
    add-int/lit8 v5, v5, 0x1

    .line 357
    const/4 v11, 0x7

    if-ne v5, v11, :cond_36

    .line 358
    const/4 v5, 0x0

    .line 348
    :cond_36
    add-int/lit8 v9, v9, 0x1

    move v4, v3

    .end local v3           #daySetLength:I
    .restart local v4       #daySetLength:I
    goto :goto_22

    .line 365
    .end local v1           #dayBit:I
    :cond_3a
    iget v11, p0, Lcom/android/calendarcommon/EventRecurrence;->bysetposCount:I

    add-int/lit8 v6, v11, -0x1

    :goto_3e
    if-ltz v6, :cond_6b

    .line 366
    iget-object v11, p0, Lcom/android/calendarcommon/EventRecurrence;->bysetpos:[I

    aget v7, v11, v6

    .line 367
    .local v7, index:I
    if-lez v7, :cond_54

    .line 368
    if-le v7, v4, :cond_4b

    .line 365
    :cond_48
    add-int/lit8 v6, v6, -0x1

    goto :goto_3e

    .line 371
    :cond_4b
    add-int/lit8 v11, v7, -0x1

    aget v11, v2, v11

    iget v12, p1, Landroid/text/format/Time;->monthDay:I

    if-ne v11, v12, :cond_48

    .line 387
    .end local v7           #index:I
    :goto_53
    return v10

    .line 374
    .restart local v7       #index:I
    :cond_54
    if-gez v7, :cond_63

    .line 375
    add-int v11, v4, v7

    if-ltz v11, :cond_48

    .line 378
    add-int v11, v4, v7

    aget v11, v2, v11

    iget v12, p1, Landroid/text/format/Time;->monthDay:I

    if-ne v11, v12, :cond_48

    goto :goto_53

    .line 383
    :cond_63
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, "invalid bysetpos value"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 387
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
    .line 1220
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
    .line 153
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p1, :cond_c

    .line 154
    aget v1, p0, v0

    if-ne v1, p2, :cond_9

    .line 155
    const/4 v1, 0x1

    .line 158
    :goto_8
    return v1

    .line 153
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 158
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

    .line 171
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, p1, :cond_11

    .line 172
    aget v1, p0, v0

    .line 173
    .local v1, w:I
    if-lez v1, :cond_b

    .line 174
    if-ne v1, p2, :cond_e

    .line 184
    .end local v1           #w:I
    :cond_a
    :goto_a
    return v2

    .line 178
    .restart local v1       #w:I
    :cond_b
    add-int/2addr p3, v1

    .line 179
    if-eq p3, p2, :cond_a

    .line 171
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 184
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

    .line 1246
    sget-object v2, Lcom/android/calendarcommon/RecurrenceProcessor;->DAYS_PER_MONTH:[I

    aget v0, v2, p1

    .line 1247
    .local v0, n:I
    if-eq v0, v1, :cond_9

    .line 1250
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
    .line 1301
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
    .line 1307
    const/16 v0, 0x1a

    shr-long v0, p1, v0

    long-to-int v0, v0

    iput v0, p0, Landroid/text/format/Time;->year:I

    .line 1308
    const/16 v0, 0x16

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0xf

    iput v0, p0, Landroid/text/format/Time;->month:I

    .line 1309
    const/16 v0, 0x11

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0x1f

    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    .line 1310
    const/16 v0, 0xc

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0x1f

    iput v0, p0, Landroid/text/format/Time;->hour:I

    .line 1311
    const/4 v0, 0x6

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0x3f

    iput v0, p0, Landroid/text/format/Time;->minute:I

    .line 1312
    const-wide/16 v0, 0x3f

    and-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Landroid/text/format/Time;->second:I

    .line 1313
    return-void
.end method

.method static unsafeNormalize(Landroid/text/format/Time;)V
    .registers 16
    .parameter "date"

    .prologue
    const/16 v14, 0xc

    .line 1137
    iget v9, p0, Landroid/text/format/Time;->second:I

    .line 1138
    .local v9, second:I
    iget v5, p0, Landroid/text/format/Time;->minute:I

    .line 1139
    .local v5, minute:I
    iget v4, p0, Landroid/text/format/Time;->hour:I

    .line 1140
    .local v4, hour:I
    iget v7, p0, Landroid/text/format/Time;->monthDay:I

    .line 1141
    .local v7, monthDay:I
    iget v6, p0, Landroid/text/format/Time;->month:I

    .line 1142
    .local v6, month:I
    iget v10, p0, Landroid/text/format/Time;->year:I

    .line 1144
    .local v10, year:I
    if-gez v9, :cond_39

    add-int/lit8 v13, v9, -0x3b

    :goto_12
    div-int/lit8 v2, v13, 0x3c

    .line 1145
    .local v2, addMinutes:I
    mul-int/lit8 v13, v2, 0x3c

    sub-int/2addr v9, v13

    .line 1146
    add-int/2addr v5, v2

    .line 1147
    if-gez v5, :cond_3b

    add-int/lit8 v13, v5, -0x3b

    :goto_1c
    div-int/lit8 v1, v13, 0x3c

    .line 1148
    .local v1, addHours:I
    mul-int/lit8 v13, v1, 0x3c

    sub-int/2addr v5, v13

    .line 1149
    add-int/2addr v4, v1

    .line 1150
    if-gez v4, :cond_3d

    add-int/lit8 v13, v4, -0x17

    :goto_26
    div-int/lit8 v0, v13, 0x18

    .line 1151
    .local v0, addDays:I
    mul-int/lit8 v13, v0, 0x18

    sub-int/2addr v4, v13

    .line 1152
    add-int/2addr v7, v0

    .line 1157
    :goto_2c
    if-gtz v7, :cond_46

    .line 1165
    const/4 v13, 0x1

    if-le v6, v13, :cond_3f

    invoke-static {v10}, Lcom/android/calendarcommon/RecurrenceProcessor;->yearLength(I)I

    move-result v3

    .line 1166
    .local v3, days:I
    :goto_35
    add-int/2addr v7, v3

    .line 1167
    add-int/lit8 v10, v10, -0x1

    .line 1168
    goto :goto_2c

    .end local v0           #addDays:I
    .end local v1           #addHours:I
    .end local v2           #addMinutes:I
    .end local v3           #days:I
    :cond_39
    move v13, v9

    .line 1144
    goto :goto_12

    .restart local v2       #addMinutes:I
    :cond_3b
    move v13, v5

    .line 1147
    goto :goto_1c

    .restart local v1       #addHours:I
    :cond_3d
    move v13, v4

    .line 1150
    goto :goto_26

    .line 1165
    .restart local v0       #addDays:I
    :cond_3f
    add-int/lit8 v13, v10, -0x1

    invoke-static {v13}, Lcom/android/calendarcommon/RecurrenceProcessor;->yearLength(I)I

    move-result v3

    goto :goto_35

    .line 1170
    :cond_46
    if-gez v6, :cond_6d

    .line 1171
    add-int/lit8 v13, v6, 0x1

    div-int/lit8 v13, v13, 0xc

    add-int/lit8 v12, v13, -0x1

    .line 1172
    .local v12, years:I
    add-int/2addr v10, v12

    .line 1173
    mul-int/lit8 v13, v12, 0xc

    sub-int/2addr v6, v13

    .line 1183
    .end local v12           #years:I
    :cond_52
    :goto_52
    if-nez v6, :cond_5d

    .line 1184
    invoke-static {v10}, Lcom/android/calendarcommon/RecurrenceProcessor;->yearLength(I)I

    move-result v11

    .line 1185
    .local v11, yearLength:I
    if-le v7, v11, :cond_5d

    .line 1186
    add-int/lit8 v10, v10, 0x1

    .line 1187
    sub-int/2addr v7, v11

    .line 1190
    .end local v11           #yearLength:I
    :cond_5d
    invoke-static {v10, v6}, Lcom/android/calendarcommon/RecurrenceProcessor;->monthLength(II)I

    move-result v8

    .line 1191
    .local v8, monthLength:I
    if-le v7, v8, :cond_76

    .line 1192
    sub-int/2addr v7, v8

    .line 1193
    add-int/lit8 v6, v6, 0x1

    .line 1194
    if-lt v6, v14, :cond_52

    .line 1195
    add-int/lit8 v6, v6, -0xc

    .line 1196
    add-int/lit8 v10, v10, 0x1

    goto :goto_52

    .line 1174
    .end local v8           #monthLength:I
    :cond_6d
    if-lt v6, v14, :cond_52

    .line 1175
    div-int/lit8 v12, v6, 0xc

    .line 1176
    .restart local v12       #years:I
    add-int/2addr v10, v12

    .line 1177
    mul-int/lit8 v13, v12, 0xc

    sub-int/2addr v6, v13

    goto :goto_52

    .line 1203
    .end local v12           #years:I
    .restart local v8       #monthLength:I
    :cond_76
    iput v9, p0, Landroid/text/format/Time;->second:I

    .line 1204
    iput v5, p0, Landroid/text/format/Time;->minute:I

    .line 1205
    iput v4, p0, Landroid/text/format/Time;->hour:I

    .line 1206
    iput v7, p0, Landroid/text/format/Time;->monthDay:I

    .line 1207
    iput v6, p0, Landroid/text/format/Time;->month:I

    .line 1208
    iput v10, p0, Landroid/text/format/Time;->year:I

    .line 1209
    invoke-static {v10, v6, v7}, Lcom/android/calendarcommon/RecurrenceProcessor;->weekDay(III)I

    move-result v13

    iput v13, p0, Landroid/text/format/Time;->weekDay:I

    .line 1210
    invoke-static {v10, v6, v7}, Lcom/android/calendarcommon/RecurrenceProcessor;->yearDay(III)I

    move-result v13

    iput v13, p0, Landroid/text/format/Time;->yearDay:I

    .line 1211
    return-void
.end method

.method private static useBYX(III)Z
    .registers 4
    .parameter "freq"
    .parameter "freqConstant"
    .parameter "count"

    .prologue
    .line 413
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
    .line 1263
    const/4 v0, 0x1

    if-gt p1, v0, :cond_7

    .line 1264
    add-int/lit8 p1, p1, 0xc

    .line 1265
    add-int/lit8 p0, p0, -0x1

    .line 1267
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
    .line 1279
    sget-object v1, Lcom/android/calendarcommon/RecurrenceProcessor;->DAYS_IN_YEAR_PRECEDING_MONTH:[I

    aget v1, v1, p1

    add-int/2addr v1, p2

    add-int/lit8 v0, v1, -0x1

    .line 1280
    .local v0, yearDay:I
    const/4 v1, 0x2

    if-lt p1, v1, :cond_12

    invoke-static {p0}, Lcom/android/calendarcommon/RecurrenceProcessor;->isLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1281
    add-int/lit8 v0, v0, 0x1

    .line 1283
    :cond_12
    return v0
.end method

.method static yearLength(I)I
    .registers 2
    .parameter "year"

    .prologue
    .line 1230
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
    .registers 67
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
    .line 739
    .local p8, out:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/Long;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/calendarcommon/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 740
    invoke-static/range {p1 .. p1}, Lcom/android/calendarcommon/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v17

    .line 741
    .local v17, dtstartDateValue:J
    const/4 v14, 0x0

    .line 752
    .local v14, count:I
    if-eqz p7, :cond_1f

    cmp-long v55, v17, p3

    if-ltz v55, :cond_1f

    cmp-long v55, v17, p5

    if-gez v55, :cond_1f

    .line 754
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    move-object/from16 v0, p8

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 755
    add-int/lit8 v14, v14, 0x1

    .line 758
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object/from16 v30, v0

    .line 759
    .local v30, iterator:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mUntil:Landroid/text/format/Time;

    move-object/from16 v44, v0

    .line 760
    .local v44, until:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mStringBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v41, v0

    .line 761
    .local v41, sb:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mGenerated:Landroid/text/format/Time;

    .line 762
    .local v3, generated:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mDays:Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;

    move-object/from16 v16, v0

    .line 766
    .local v16, days:Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;
    :try_start_3b
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->setRecurrence(Lcom/android/calendarcommon/EventRecurrence;)V

    .line 767
    const-wide v55, 0x7fffffffffffffffL

    cmp-long v55, p5, v55

    if-nez v55, :cond_9d

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    move-object/from16 v55, v0

    if-nez v55, :cond_9d

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->count:I

    move/from16 v55, v0

    if-nez v55, :cond_9d

    .line 768
    new-instance v55, Lcom/android/calendarcommon/DateException;

    const-string v56, "No range end provided for a recurrence that has no UNTIL or COUNT."

    invoke-direct/range {v55 .. v56}, Lcom/android/calendarcommon/DateException;-><init>(Ljava/lang/String;)V

    throw v55
    :try_end_63
    .catch Lcom/android/calendarcommon/DateException; {:try_start_3b .. :try_end_63} :catch_63
    .catch Ljava/lang/RuntimeException; {:try_start_3b .. :try_end_63} :catch_c9

    .line 1113
    :catch_63
    move-exception v19

    .line 1114
    .local v19, e:Lcom/android/calendarcommon/DateException;
    const-string v55, "RecurrenceProcessor"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "DateException with r="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, " rangeStart="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, " rangeEnd="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    throw v19

    .line 774
    .end local v19           #e:Lcom/android/calendarcommon/DateException;
    :cond_9d
    :try_start_9d
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->interval:I

    move/from16 v25, v0

    .line 775
    .local v25, freqAmount:I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    move/from16 v24, v0

    .line 776
    .local v24, freq:I
    packed-switch v24, :pswitch_data_436

    .line 804
    new-instance v55, Lcom/android/calendarcommon/DateException;

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "bad freq="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-direct/range {v55 .. v56}, Lcom/android/calendarcommon/DateException;-><init>(Ljava/lang/String;)V

    throw v55
    :try_end_c9
    .catch Lcom/android/calendarcommon/DateException; {:try_start_9d .. :try_end_c9} :catch_63
    .catch Ljava/lang/RuntimeException; {:try_start_9d .. :try_end_c9} :catch_c9

    .line 1118
    .end local v24           #freq:I
    .end local v25           #freqAmount:I
    :catch_c9
    move-exception v43

    .line 1119
    .local v43, t:Ljava/lang/RuntimeException;
    const-string v55, "RecurrenceProcessor"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "RuntimeException with r="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, " rangeStart="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, " rangeEnd="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    throw v43

    .line 779
    .end local v43           #t:Ljava/lang/RuntimeException;
    .restart local v24       #freq:I
    .restart local v25       #freqAmount:I
    :pswitch_103
    const/16 v26, 0x1

    .line 806
    .local v26, freqField:I
    :cond_105
    :goto_105
    if-gtz v25, :cond_109

    .line 807
    const/16 v25, 0x1

    .line 810
    :cond_109
    :try_start_109
    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/calendarcommon/EventRecurrence;->bymonthCount:I

    .line 811
    .local v12, bymonthCount:I
    const/16 v55, 0x6

    move/from16 v0, v24

    move/from16 v1, v55

    invoke-static {v0, v1, v12}, Lcom/android/calendarcommon/RecurrenceProcessor;->useBYX(III)Z

    move-result v51

    .line 812
    .local v51, usebymonth:Z
    const/16 v55, 0x5

    move/from16 v0, v24

    move/from16 v1, v55

    if-lt v0, v1, :cond_222

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    move/from16 v55, v0

    if-gtz v55, :cond_12f

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bymonthdayCount:I

    move/from16 v55, v0

    if-lez v55, :cond_222

    :cond_12f
    const/16 v48, 0x1

    .line 814
    .local v48, useDays:Z
    :goto_131
    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/calendarcommon/EventRecurrence;->byhourCount:I

    .line 815
    .local v10, byhourCount:I
    const/16 v55, 0x3

    move/from16 v0, v24

    move/from16 v1, v55

    invoke-static {v0, v1, v10}, Lcom/android/calendarcommon/RecurrenceProcessor;->useBYX(III)Z

    move-result v49

    .line 816
    .local v49, usebyhour:Z
    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/calendarcommon/EventRecurrence;->byminuteCount:I

    .line 817
    .local v11, byminuteCount:I
    const/16 v55, 0x2

    move/from16 v0, v24

    move/from16 v1, v55

    invoke-static {v0, v1, v11}, Lcom/android/calendarcommon/RecurrenceProcessor;->useBYX(III)Z

    move-result v50

    .line 818
    .local v50, usebyminute:Z
    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/calendarcommon/EventRecurrence;->bysecondCount:I

    .line 819
    .local v13, bysecondCount:I
    const/16 v55, 0x1

    move/from16 v0, v24

    move/from16 v1, v55

    invoke-static {v0, v1, v13}, Lcom/android/calendarcommon/RecurrenceProcessor;->useBYX(III)Z

    move-result v52

    .line 822
    .local v52, usebysecond:Z
    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 823
    const/16 v55, 0x5

    move/from16 v0, v26

    move/from16 v1, v55

    if-ne v0, v1, :cond_174

    .line 824
    if-eqz v48, :cond_174

    .line 830
    const/16 v55, 0x1

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 835
    :cond_174
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    move-object/from16 v55, v0

    if-eqz v55, :cond_226

    .line 837
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    move-object/from16 v47, v0

    .line 841
    .local v47, untilStr:Ljava/lang/String;
    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->length()I

    move-result v55

    const/16 v56, 0xf

    move/from16 v0, v55

    move/from16 v1, v56

    if-ne v0, v1, :cond_1a5

    .line 842
    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v55

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    const/16 v56, 0x5a

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    .line 845
    :cond_1a5
    move-object/from16 v0, v44

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 850
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v55, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 851
    invoke-static/range {v44 .. v44}, Lcom/android/calendarcommon/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v45

    .line 856
    .end local v47           #untilStr:Ljava/lang/String;
    .local v45, untilDateValue:J
    :goto_1bd
    const/16 v55, 0xf

    move-object/from16 v0, v41

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 857
    const/16 v55, 0xf

    move-object/from16 v0, v41

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 866
    const/16 v20, 0x0

    .line 867
    .local v20, eventEnded:Z
    const/16 v21, 0x0

    .local v21, failsafe:I
    move/from16 v22, v21

    .line 870
    .end local v21           #failsafe:I
    .local v22, failsafe:I
    :goto_1d5
    const/16 v38, 0x0

    .line 871
    .local v38, monthIndex:I
    add-int/lit8 v21, v22, 0x1

    .end local v22           #failsafe:I
    .restart local v21       #failsafe:I
    const/16 v55, 0x7d0

    move/from16 v0, v22

    move/from16 v1, v55

    if-le v0, v1, :cond_22c

    .line 872
    new-instance v55, Lcom/android/calendarcommon/DateException;

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "Recurrence processing stuck: "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {p2 .. p2}, Lcom/android/calendarcommon/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-direct/range {v55 .. v56}, Lcom/android/calendarcommon/DateException;-><init>(Ljava/lang/String;)V

    throw v55

    .line 782
    .end local v10           #byhourCount:I
    .end local v11           #byminuteCount:I
    .end local v12           #bymonthCount:I
    .end local v13           #bysecondCount:I
    .end local v20           #eventEnded:Z
    .end local v21           #failsafe:I
    .end local v26           #freqField:I
    .end local v38           #monthIndex:I
    .end local v45           #untilDateValue:J
    .end local v48           #useDays:Z
    .end local v49           #usebyhour:Z
    .end local v50           #usebyminute:Z
    .end local v51           #usebymonth:Z
    .end local v52           #usebysecond:Z
    :pswitch_1fe
    const/16 v26, 0x2

    .line 783
    .restart local v26       #freqField:I
    goto/16 :goto_105

    .line 785
    .end local v26           #freqField:I
    :pswitch_202
    const/16 v26, 0x3

    .line 786
    .restart local v26       #freqField:I
    goto/16 :goto_105

    .line 788
    .end local v26           #freqField:I
    :pswitch_206
    const/16 v26, 0x4

    .line 789
    .restart local v26       #freqField:I
    goto/16 :goto_105

    .line 791
    .end local v26           #freqField:I
    :pswitch_20a
    const/16 v26, 0x4

    .line 792
    .restart local v26       #freqField:I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->interval:I

    move/from16 v55, v0

    mul-int/lit8 v25, v55, 0x7

    .line 793
    if-gtz v25, :cond_105

    .line 794
    const/16 v25, 0x7

    goto/16 :goto_105

    .line 798
    .end local v26           #freqField:I
    :pswitch_21a
    const/16 v26, 0x5

    .line 799
    .restart local v26       #freqField:I
    goto/16 :goto_105

    .line 801
    .end local v26           #freqField:I
    :pswitch_21e
    const/16 v26, 0x6

    .line 802
    .restart local v26       #freqField:I
    goto/16 :goto_105

    .line 812
    .restart local v12       #bymonthCount:I
    .restart local v51       #usebymonth:Z
    :cond_222
    const/16 v48, 0x0

    goto/16 :goto_131

    .line 853
    .restart local v10       #byhourCount:I
    .restart local v11       #byminuteCount:I
    .restart local v13       #bysecondCount:I
    .restart local v48       #useDays:Z
    .restart local v49       #usebyhour:Z
    .restart local v50       #usebyminute:Z
    .restart local v52       #usebysecond:Z
    :cond_226
    const-wide v45, 0x7fffffffffffffffL

    .restart local v45       #untilDateValue:J
    goto :goto_1bd

    .line 875
    .restart local v20       #eventEnded:Z
    .restart local v21       #failsafe:I
    .restart local v38       #monthIndex:I
    :cond_22c
    invoke-static/range {v30 .. v30}, Lcom/android/calendarcommon/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 877
    move-object/from16 v0, v30

    iget v9, v0, Landroid/text/format/Time;->year:I

    .line 878
    .local v9, iteratorYear:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v55, v0

    add-int/lit8 v34, v55, 0x1

    .line 879
    .local v34, iteratorMonth:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v31, v0

    .line 880
    .local v31, iteratorDay:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v32, v0

    .line 881
    .local v32, iteratorHour:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v33, v0

    .line 882
    .local v33, iteratorMinute:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 v35, v0

    .line 885
    .local v35, iteratorSecond:I
    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 890
    :cond_258
    if-eqz v51, :cond_2dc

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bymonth:[I

    move-object/from16 v55, v0

    aget v8, v55, v38

    .line 893
    .local v8, month:I
    :goto_262
    add-int/lit8 v8, v8, -0x1

    .line 896
    const/4 v15, 0x1

    .line 897
    .local v15, dayIndex:I
    const/16 v36, 0x0

    .line 902
    .local v36, lastDayToExamine:I
    if-eqz v48, :cond_291

    .line 906
    const/16 v55, 0x5

    move/from16 v0, v24

    move/from16 v1, v55

    if-ne v0, v1, :cond_2df

    .line 924
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    move/from16 v55, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->wkst:I

    move/from16 v56, v0

    invoke-static/range {v56 .. v56}, Lcom/android/calendarcommon/EventRecurrence;->day2TimeDay(I)I

    move-result v56

    sub-int v55, v55, v56

    add-int/lit8 v55, v55, 0x7

    rem-int/lit8 v54, v55, 0x7

    .line 926
    .local v54, weekStartAdj:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v55, v0

    sub-int v15, v55, v54

    .line 927
    add-int/lit8 v36, v15, 0x6

    .line 939
    .end local v54           #weekStartAdj:I
    :cond_291
    :goto_291
    if-eqz v48, :cond_338

    .line 940
    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v15}, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->get(Landroid/text/format/Time;I)Z

    move-result v55

    if-nez v55, :cond_2e8

    .line 941
    add-int/lit8 v15, v15, 0x1

    .line 1058
    :goto_29f
    if-eqz v48, :cond_2a5

    move/from16 v0, v36

    if-le v15, v0, :cond_291

    .line 1059
    :cond_2a5
    add-int/lit8 v38, v38, 0x1

    .line 1060
    if-eqz v51, :cond_2ad

    move/from16 v0, v38

    if-lt v0, v12, :cond_258

    .line 1066
    :cond_2ad
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v40, v0

    .line 1067
    .local v40, oldDay:I
    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1068
    const/16 v39, 0x1

    .line 1070
    .local v39, n:I
    :goto_2ba
    mul-int v53, v25, v39

    .line 1071
    .local v53, value:I
    packed-switch v26, :pswitch_data_448

    .line 1097
    new-instance v55, Ljava/lang/RuntimeException;

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "bad field="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-direct/range {v55 .. v56}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v55

    .end local v8           #month:I
    .end local v15           #dayIndex:I
    .end local v36           #lastDayToExamine:I
    .end local v39           #n:I
    .end local v40           #oldDay:I
    .end local v53           #value:I
    :cond_2dc
    move/from16 v8, v34

    .line 890
    goto :goto_262

    .line 929
    .restart local v8       #month:I
    .restart local v15       #dayIndex:I
    .restart local v36       #lastDayToExamine:I
    :cond_2df
    const/16 v55, 0x4

    move/from16 v0, v55

    invoke-virtual {v3, v0}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v36

    goto :goto_291

    .line 944
    :cond_2e8
    move v7, v15

    .line 952
    .local v7, day:I
    :goto_2e9
    const/16 v29, 0x0

    .line 954
    .local v29, hourIndex:I
    :cond_2eb
    if-eqz v49, :cond_33b

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->byhour:[I

    move-object/from16 v55, v0

    aget v6, v55, v29

    .line 960
    .local v6, hour:I
    :goto_2f5
    const/16 v37, 0x0

    .line 962
    .local v37, minuteIndex:I
    :cond_2f7
    if-eqz v50, :cond_33e

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->byminute:[I

    move-object/from16 v55, v0

    aget v5, v55, v37

    .line 968
    .local v5, minute:I
    :goto_301
    const/16 v42, 0x0

    .line 970
    .local v42, secondIndex:I
    :cond_303
    if-eqz v52, :cond_341

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bysecond:[I

    move-object/from16 v55, v0

    aget v4, v55, v42

    .line 978
    .local v4, second:I
    :goto_30d
    invoke-virtual/range {v3 .. v9}, Landroid/text/format/Time;->set(IIIIII)V

    .line 979
    invoke-static {v3}, Lcom/android/calendarcommon/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 981
    invoke-static {v3}, Lcom/android/calendarcommon/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v27

    .line 985
    .local v27, genDateValue:J
    cmp-long v55, v27, v17

    if-ltz v55, :cond_36b

    .line 990
    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/android/calendarcommon/RecurrenceProcessor;->filter(Lcom/android/calendarcommon/EventRecurrence;Landroid/text/format/Time;)I

    move-result v23

    .line 991
    .local v23, filtered:I
    if-nez v23, :cond_36b

    .line 1007
    cmp-long v55, v17, v27

    if-nez v55, :cond_331

    if-eqz p7, :cond_331

    cmp-long v55, v17, p3

    if-ltz v55, :cond_331

    cmp-long v55, v17, p5

    if-ltz v55, :cond_333

    .line 1011
    :cond_331
    add-int/lit8 v14, v14, 0x1

    .line 1015
    :cond_333
    cmp-long v55, v27, v45

    if-lez v55, :cond_344

    .line 1123
    :cond_337
    return-void

    .line 947
    .end local v4           #second:I
    .end local v5           #minute:I
    .end local v6           #hour:I
    .end local v7           #day:I
    .end local v23           #filtered:I
    .end local v27           #genDateValue:J
    .end local v29           #hourIndex:I
    .end local v37           #minuteIndex:I
    .end local v42           #secondIndex:I
    :cond_338
    move/from16 v7, v31

    .restart local v7       #day:I
    goto :goto_2e9

    .restart local v29       #hourIndex:I
    :cond_33b
    move/from16 v6, v32

    .line 954
    goto :goto_2f5

    .restart local v6       #hour:I
    .restart local v37       #minuteIndex:I
    :cond_33e
    move/from16 v5, v33

    .line 962
    goto :goto_301

    .restart local v5       #minute:I
    .restart local v42       #secondIndex:I
    :cond_341
    move/from16 v4, v35

    .line 970
    goto :goto_30d

    .line 1025
    .restart local v4       #second:I
    .restart local v23       #filtered:I
    .restart local v27       #genDateValue:J
    :cond_344
    cmp-long v55, v27, p5

    if-gez v55, :cond_337

    .line 1034
    cmp-long v55, v27, p3

    if-ltz v55, :cond_359

    .line 1038
    if-eqz p7, :cond_387

    .line 1039
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    move-object/from16 v0, p8

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1045
    :cond_359
    :goto_359
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->count:I

    move/from16 v55, v0

    if-lez v55, :cond_36b

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->count:I

    move/from16 v55, v0

    move/from16 v0, v55

    if-eq v0, v14, :cond_337

    .line 1051
    .end local v23           #filtered:I
    :cond_36b
    add-int/lit8 v42, v42, 0x1

    .line 1052
    if-eqz v52, :cond_373

    move/from16 v0, v42

    if-lt v0, v13, :cond_303

    .line 1053
    :cond_373
    add-int/lit8 v37, v37, 0x1

    .line 1054
    if-eqz v50, :cond_37b

    move/from16 v0, v37

    if-lt v0, v11, :cond_2f7

    .line 1055
    :cond_37b
    add-int/lit8 v29, v29, 0x1

    .line 1056
    if-eqz v49, :cond_383

    move/from16 v0, v29

    if-lt v0, v10, :cond_2eb

    .line 1057
    :cond_383
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_29f

    .line 1041
    .restart local v23       #filtered:I
    :cond_387
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    move-object/from16 v0, p8

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    goto :goto_359

    .line 1073
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
    .restart local v53       #value:I
    :pswitch_393
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 v55, v0

    add-int v55, v55, v53

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->second:I

    .line 1100
    :goto_3a1
    invoke-static/range {v30 .. v30}, Lcom/android/calendarcommon/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 1101
    const/16 v55, 0x6

    move/from16 v0, v26

    move/from16 v1, v55

    if-eq v0, v1, :cond_421

    const/16 v55, 0x5

    move/from16 v0, v26

    move/from16 v1, v55

    if-eq v0, v1, :cond_421

    :cond_3b4
    move/from16 v22, v21

    .line 1110
    .end local v21           #failsafe:I
    .restart local v22       #failsafe:I
    goto/16 :goto_1d5

    .line 1076
    .end local v22           #failsafe:I
    .restart local v21       #failsafe:I
    :pswitch_3b8
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v55, v0

    add-int v55, v55, v53

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->minute:I

    goto :goto_3a1

    .line 1079
    :pswitch_3c7
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v55, v0

    add-int v55, v55, v53

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->hour:I

    goto :goto_3a1

    .line 1082
    :pswitch_3d6
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v55, v0

    add-int v55, v55, v53

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    goto :goto_3a1

    .line 1085
    :pswitch_3e5
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v55, v0

    add-int v55, v55, v53

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->month:I

    goto :goto_3a1

    .line 1088
    :pswitch_3f4
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v55, v0

    add-int v55, v55, v53

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->year:I

    goto :goto_3a1

    .line 1091
    :pswitch_403
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v55, v0

    add-int v55, v55, v53

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    goto :goto_3a1

    .line 1094
    :pswitch_412
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v55, v0

    add-int v55, v55, v53

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    goto :goto_3a1

    .line 1104
    :cond_421
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v55, v0

    move/from16 v0, v55

    move/from16 v1, v40

    if-eq v0, v1, :cond_3b4

    .line 1107
    add-int/lit8 v39, v39, 0x1

    .line 1108
    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V
    :try_end_434
    .catch Lcom/android/calendarcommon/DateException; {:try_start_109 .. :try_end_434} :catch_63
    .catch Ljava/lang/RuntimeException; {:try_start_109 .. :try_end_434} :catch_c9

    goto/16 :goto_2ba

    .line 776
    :pswitch_data_436
    .packed-switch 0x1
        :pswitch_103
        :pswitch_1fe
        :pswitch_202
        :pswitch_206
        :pswitch_20a
        :pswitch_21a
        :pswitch_21e
    .end packed-switch

    .line 1071
    :pswitch_data_448
    .packed-switch 0x1
        :pswitch_393
        :pswitch_3b8
        :pswitch_3c7
        :pswitch_3d6
        :pswitch_3e5
        :pswitch_3f4
        :pswitch_403
        :pswitch_412
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
    .line 640
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v31, v0

    .line 641
    .local v31, timezone:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 642
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mGenerated:Landroid/text/format/Time;

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 648
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 649
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    invoke-static {v2}, Lcom/android/calendarcommon/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v5

    .line 652
    .local v5, rangeStartDateValue:J
    const-wide/16 v2, -0x1

    cmp-long v2, p5, v2

    if-eqz v2, :cond_6b

    .line 653
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 654
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    invoke-static {v2}, Lcom/android/calendarcommon/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v7

    .line 659
    .local v7, rangeEndDateValue:J
    :goto_40
    new-instance v10, Ljava/util/TreeSet;

    invoke-direct {v10}, Ljava/util/TreeSet;-><init>()V

    .line 661
    .local v10, dtSet:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/Long;>;"
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceSet;->rrules:[Lcom/android/calendarcommon/EventRecurrence;

    if-eqz v2, :cond_71

    .line 662
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

    .line 663
    .local v4, rrule:Lcom/android/calendarcommon/EventRecurrence;
    const/4 v9, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v10}, Lcom/android/calendarcommon/RecurrenceProcessor;->expand(Landroid/text/format/Time;Lcom/android/calendarcommon/EventRecurrence;JJZLjava/util/TreeSet;)V

    .line 662
    add-int/lit8 v28, v28, 0x1

    goto :goto_58

    .line 656
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

    .line 667
    .restart local v10       #dtSet:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/Long;>;"
    :cond_71
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceSet;->rdates:[J

    if-eqz v2, :cond_a7

    .line 668
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

    .line 671
    .local v22, dt:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-wide/from16 v0, v22

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 672
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    invoke-static {v2}, Lcom/android/calendarcommon/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v24

    .line 673
    .local v24, dtvalue:J
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 668
    add-int/lit8 v28, v28, 0x1

    goto :goto_84

    .line 676
    .end local v20           #arr$:[J
    .end local v22           #dt:J
    .end local v24           #dtvalue:J
    .end local v28           #i$:I
    .end local v30           #len$:I
    :cond_a7
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceSet;->exrules:[Lcom/android/calendarcommon/EventRecurrence;

    if-eqz v2, :cond_d3

    .line 677
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

    .line 678
    .local v13, exrule:Lcom/android/calendarcommon/EventRecurrence;
    const/16 v18, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-wide v14, v5

    move-wide/from16 v16, v7

    move-object/from16 v19, v10

    invoke-virtual/range {v11 .. v19}, Lcom/android/calendarcommon/RecurrenceProcessor;->expand(Landroid/text/format/Time;Lcom/android/calendarcommon/EventRecurrence;JJZLjava/util/TreeSet;)V

    .line 677
    add-int/lit8 v28, v28, 0x1

    goto :goto_ba

    .line 682
    .end local v13           #exrule:Lcom/android/calendarcommon/EventRecurrence;
    .end local v20           #arr$:[Lcom/android/calendarcommon/EventRecurrence;
    .end local v28           #i$:I
    .end local v30           #len$:I
    :cond_d3
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceSet;->exdates:[J

    if-eqz v2, :cond_109

    .line 683
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

    .line 686
    .restart local v22       #dt:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-wide/from16 v0, v22

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 687
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    invoke-static {v2}, Lcom/android/calendarcommon/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v24

    .line 688
    .restart local v24       #dtvalue:J
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 683
    add-int/lit8 v28, v28, 0x1

    goto :goto_e6

    .line 691
    .end local v20           #arr$:[J
    .end local v22           #dt:J
    .end local v24           #dtvalue:J
    .end local v28           #i$:I
    .end local v30           #len$:I
    :cond_109
    invoke-virtual {v10}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_115

    .line 694
    const/4 v2, 0x0

    new-array v0, v2, [J

    move-object/from16 v21, v0

    .line 708
    :cond_114
    return-object v21

    .line 701
    :cond_115
    invoke-virtual {v10}, Ljava/util/TreeSet;->size()I

    move-result v29

    .line 702
    .local v29, len:I
    move/from16 v0, v29

    new-array v0, v0, [J

    move-object/from16 v21, v0

    .line 703
    .local v21, dates:[J
    const/16 v26, 0x0

    .line 704
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

    .line 705
    .local v32, val:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v2, v11, v12}, Lcom/android/calendarcommon/RecurrenceProcessor;->setTimeFromLongValue(Landroid/text/format/Time;J)V

    .line 706
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
