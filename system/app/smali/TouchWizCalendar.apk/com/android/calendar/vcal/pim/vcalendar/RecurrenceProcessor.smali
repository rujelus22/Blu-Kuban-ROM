.class public Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;
.super Ljava/lang/Object;
.source "RecurrenceProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor$DaySet;
    }
.end annotation


# static fields
.field private static final DAYS_IN_YEAR_PRECEDING_MONTH:[I

.field private static final DAYS_PER_MONTH:[I


# instance fields
.field private mDays:Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor$DaySet;

.field private mGenerated:Landroid/text/format/Time;

.field private mIterator:Landroid/text/format/Time;

.field private mStringBuilder:Ljava/lang/StringBuilder;

.field private mUntil:Landroid/text/format/Time;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0xc

    .line 1144
    new-array v0, v1, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->DAYS_PER_MONTH:[I

    .line 1148
    new-array v0, v1, [I

    fill-array-data v0, :array_2e

    sput-object v0, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->DAYS_IN_YEAR_PRECEDING_MONTH:[I

    return-void

    .line 1144
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

    .line 1148
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
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    .line 33
    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->mUntil:Landroid/text/format/Time;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 37
    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->mGenerated:Landroid/text/format/Time;

    .line 39
    new-instance v0, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor$DaySet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor$DaySet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->mDays:Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor$DaySet;

    .line 45
    return-void
.end method

.method private static filter(Lcom/android/calendarcommon/EventRecurrence;Landroid/text/format/Time;)I
    .registers 12
    .parameter "r"
    .parameter "iterator"

    .prologue
    .line 182
    iget v3, p0, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    .line 184
    .local v3, freq:I
    const/4 v6, 0x6

    if-lt v6, v3, :cond_19

    .line 186
    iget v6, p0, Lcom/android/calendarcommon/EventRecurrence;->bymonthCount:I

    if-lez v6, :cond_19

    .line 187
    iget-object v6, p0, Lcom/android/calendarcommon/EventRecurrence;->bymonth:[I

    iget v7, p0, Lcom/android/calendarcommon/EventRecurrence;->bymonthCount:I

    iget v8, p1, Landroid/text/format/Time;->month:I

    add-int/lit8 v8, v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->listContains([III)Z

    move-result v2

    .line 188
    .local v2, found:Z
    if-nez v2, :cond_19

    .line 189
    const/4 v6, 0x1

    .line 263
    .end local v2           #found:Z
    :goto_18
    return v6

    .line 193
    :cond_19
    const/4 v6, 0x5

    if-lt v6, v3, :cond_36

    .line 196
    iget v6, p0, Lcom/android/calendarcommon/EventRecurrence;->byweeknoCount:I

    if-lez v6, :cond_36

    .line 197
    iget-object v6, p0, Lcom/android/calendarcommon/EventRecurrence;->byweekno:[I

    iget v7, p0, Lcom/android/calendarcommon/EventRecurrence;->byweeknoCount:I

    invoke-virtual {p1}, Landroid/text/format/Time;->getWeekNumber()I

    move-result v8

    const/16 v9, 0x9

    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->listContains([IIII)Z

    move-result v2

    .line 199
    .restart local v2       #found:Z
    if-nez v2, :cond_36

    .line 200
    const/4 v6, 0x2

    goto :goto_18

    .line 204
    .end local v2           #found:Z
    :cond_36
    const/4 v6, 0x4

    if-lt v6, v3, :cond_7d

    .line 206
    iget v6, p0, Lcom/android/calendarcommon/EventRecurrence;->byyeardayCount:I

    if-lez v6, :cond_51

    .line 207
    iget-object v6, p0, Lcom/android/calendarcommon/EventRecurrence;->byyearday:[I

    iget v7, p0, Lcom/android/calendarcommon/EventRecurrence;->byyeardayCount:I

    iget v8, p1, Landroid/text/format/Time;->yearDay:I

    const/16 v9, 0x8

    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->listContains([IIII)Z

    move-result v2

    .line 209
    .restart local v2       #found:Z
    if-nez v2, :cond_51

    .line 210
    const/4 v6, 0x3

    goto :goto_18

    .line 214
    .end local v2           #found:Z
    :cond_51
    iget v6, p0, Lcom/android/calendarcommon/EventRecurrence;->bymonthdayCount:I

    if-lez v6, :cond_68

    .line 215
    iget-object v6, p0, Lcom/android/calendarcommon/EventRecurrence;->bymonthday:[I

    iget v7, p0, Lcom/android/calendarcommon/EventRecurrence;->bymonthdayCount:I

    iget v8, p1, Landroid/text/format/Time;->monthDay:I

    const/4 v9, 0x4

    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->listContains([IIII)Z

    move-result v2

    .line 217
    .restart local v2       #found:Z
    if-nez v2, :cond_68

    .line 218
    const/4 v6, 0x4

    goto :goto_18

    .line 223
    .end local v2           #found:Z
    :cond_68
    iget v6, p0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    if-lez v6, :cond_7d

    .line 224
    iget-object v1, p0, Lcom/android/calendarcommon/EventRecurrence;->byday:[I

    .line 225
    .local v1, a:[I
    iget v0, p0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    .line 226
    .local v0, N:I
    iget v6, p1, Landroid/text/format/Time;->weekDay:I

    invoke-static {v6}, Lcom/android/calendarcommon/EventRecurrence;->timeDay2Day(I)I

    move-result v5

    .line 227
    .local v5, v:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_77
    if-ge v4, v0, :cond_96

    .line 228
    aget v6, v1, v4

    if-ne v6, v5, :cond_93

    .line 235
    .end local v0           #N:I
    .end local v1           #a:[I
    .end local v4           #i:I
    .end local v5           #v:I
    :cond_7d
    const/4 v6, 0x3

    if-lt v6, v3, :cond_98

    .line 237
    iget-object v6, p0, Lcom/android/calendarcommon/EventRecurrence;->byhour:[I

    iget v7, p0, Lcom/android/calendarcommon/EventRecurrence;->byhourCount:I

    iget v8, p1, Landroid/text/format/Time;->hour:I

    const/4 v9, 0x3

    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->listContains([IIII)Z

    move-result v2

    .line 239
    .restart local v2       #found:Z
    if-nez v2, :cond_98

    .line 240
    const/4 v6, 0x6

    goto :goto_18

    .line 227
    .end local v2           #found:Z
    .restart local v0       #N:I
    .restart local v1       #a:[I
    .restart local v4       #i:I
    .restart local v5       #v:I
    :cond_93
    add-int/lit8 v4, v4, 0x1

    goto :goto_77

    .line 232
    :cond_96
    const/4 v6, 0x5

    goto :goto_18

    .line 243
    .end local v0           #N:I
    .end local v1           #a:[I
    .end local v4           #i:I
    .end local v5           #v:I
    :cond_98
    const/4 v6, 0x2

    if-lt v6, v3, :cond_af

    .line 245
    iget-object v6, p0, Lcom/android/calendarcommon/EventRecurrence;->byminute:[I

    iget v7, p0, Lcom/android/calendarcommon/EventRecurrence;->byminuteCount:I

    iget v8, p1, Landroid/text/format/Time;->minute:I

    const/4 v9, 0x2

    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->listContains([IIII)Z

    move-result v2

    .line 247
    .restart local v2       #found:Z
    if-nez v2, :cond_af

    .line 248
    const/4 v6, 0x7

    goto/16 :goto_18

    .line 251
    .end local v2           #found:Z
    :cond_af
    const/4 v6, 0x1

    if-lt v6, v3, :cond_c7

    .line 253
    iget-object v6, p0, Lcom/android/calendarcommon/EventRecurrence;->bysecond:[I

    iget v7, p0, Lcom/android/calendarcommon/EventRecurrence;->bysecondCount:I

    iget v8, p1, Landroid/text/format/Time;->second:I

    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->listContains([IIII)Z

    move-result v2

    .line 255
    .restart local v2       #found:Z
    if-nez v2, :cond_c7

    .line 256
    const/16 v6, 0x8

    goto/16 :goto_18

    .line 263
    .end local v2           #found:Z
    :cond_c7
    const/4 v6, 0x0

    goto/16 :goto_18
.end method

.method static isLeapYear(I)Z
    .registers 2
    .parameter "year"

    .prologue
    .line 1131
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
    .line 143
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p1, :cond_c

    .line 144
    aget v1, p0, v0

    if-ne v1, p2, :cond_9

    .line 145
    const/4 v1, 0x1

    .line 148
    :goto_8
    return v1

    .line 143
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 148
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

    .line 158
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, p1, :cond_11

    .line 159
    aget v1, p0, v0

    .line 160
    .local v1, w:I
    if-lez v1, :cond_b

    .line 161
    if-ne v1, p2, :cond_e

    .line 171
    .end local v1           #w:I
    :cond_a
    :goto_a
    return v2

    .line 165
    .restart local v1       #w:I
    :cond_b
    add-int/2addr p3, v1

    .line 166
    if-eq p3, p2, :cond_a

    .line 158
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 171
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

    .line 1160
    sget-object v2, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->DAYS_PER_MONTH:[I

    aget v0, v2, p1

    .line 1161
    .local v0, n:I
    if-eq v0, v1, :cond_9

    .line 1164
    .end local v0           #n:I
    :goto_8
    return v0

    .restart local v0       #n:I
    :cond_9
    invoke-static {p0}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->isLeapYear(I)Z

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
    .line 1215
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
    .line 1221
    const/16 v0, 0x1a

    shr-long v0, p1, v0

    long-to-int v0, v0

    iput v0, p0, Landroid/text/format/Time;->year:I

    .line 1222
    const/16 v0, 0x16

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0xf

    iput v0, p0, Landroid/text/format/Time;->month:I

    .line 1223
    const/16 v0, 0x11

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0x1f

    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    .line 1224
    const/16 v0, 0xc

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0x1f

    iput v0, p0, Landroid/text/format/Time;->hour:I

    .line 1225
    const/4 v0, 0x6

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0x3f

    iput v0, p0, Landroid/text/format/Time;->minute:I

    .line 1226
    const-wide/16 v0, 0x3f

    and-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Landroid/text/format/Time;->second:I

    .line 1227
    return-void
.end method

.method static unsafeNormalize(Landroid/text/format/Time;)V
    .registers 16
    .parameter "date"

    .prologue
    const/16 v14, 0xc

    .line 1046
    iget v9, p0, Landroid/text/format/Time;->second:I

    .line 1047
    .local v9, second:I
    iget v5, p0, Landroid/text/format/Time;->minute:I

    .line 1048
    .local v5, minute:I
    iget v4, p0, Landroid/text/format/Time;->hour:I

    .line 1049
    .local v4, hour:I
    iget v7, p0, Landroid/text/format/Time;->monthDay:I

    .line 1050
    .local v7, monthDay:I
    iget v6, p0, Landroid/text/format/Time;->month:I

    .line 1051
    .local v6, month:I
    iget v10, p0, Landroid/text/format/Time;->year:I

    .line 1053
    .local v10, year:I
    if-gez v9, :cond_39

    add-int/lit8 v13, v9, -0x3b

    :goto_12
    div-int/lit8 v2, v13, 0x3c

    .line 1054
    .local v2, addMinutes:I
    mul-int/lit8 v13, v2, 0x3c

    sub-int/2addr v9, v13

    .line 1055
    add-int/2addr v5, v2

    .line 1056
    if-gez v5, :cond_3b

    add-int/lit8 v13, v5, -0x3b

    :goto_1c
    div-int/lit8 v1, v13, 0x3c

    .line 1057
    .local v1, addHours:I
    mul-int/lit8 v13, v1, 0x3c

    sub-int/2addr v5, v13

    .line 1058
    add-int/2addr v4, v1

    .line 1059
    if-gez v4, :cond_3d

    add-int/lit8 v13, v4, -0x17

    :goto_26
    div-int/lit8 v0, v13, 0x18

    .line 1060
    .local v0, addDays:I
    mul-int/lit8 v13, v0, 0x18

    sub-int/2addr v4, v13

    .line 1061
    add-int/2addr v7, v0

    .line 1066
    :goto_2c
    if-gtz v7, :cond_46

    .line 1074
    const/4 v13, 0x1

    if-le v6, v13, :cond_3f

    invoke-static {v10}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->yearLength(I)I

    move-result v3

    .line 1075
    .local v3, days:I
    :goto_35
    add-int/2addr v7, v3

    .line 1076
    add-int/lit8 v10, v10, -0x1

    .line 1077
    goto :goto_2c

    .end local v0           #addDays:I
    .end local v1           #addHours:I
    .end local v2           #addMinutes:I
    .end local v3           #days:I
    :cond_39
    move v13, v9

    .line 1053
    goto :goto_12

    .restart local v2       #addMinutes:I
    :cond_3b
    move v13, v5

    .line 1056
    goto :goto_1c

    .restart local v1       #addHours:I
    :cond_3d
    move v13, v4

    .line 1059
    goto :goto_26

    .line 1074
    .restart local v0       #addDays:I
    :cond_3f
    add-int/lit8 v13, v10, -0x1

    invoke-static {v13}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->yearLength(I)I

    move-result v3

    goto :goto_35

    .line 1080
    :cond_46
    if-gez v6, :cond_6d

    .line 1081
    add-int/lit8 v13, v6, 0x1

    div-int/lit8 v13, v13, 0xc

    add-int/lit8 v12, v13, -0x1

    .line 1082
    .local v12, years:I
    add-int/2addr v10, v12

    .line 1083
    mul-int/lit8 v13, v12, 0xc

    sub-int/2addr v6, v13

    .line 1093
    .end local v12           #years:I
    :cond_52
    :goto_52
    if-nez v6, :cond_5d

    .line 1094
    invoke-static {v10}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->yearLength(I)I

    move-result v11

    .line 1095
    .local v11, yearLength:I
    if-le v7, v11, :cond_5d

    .line 1096
    add-int/lit8 v10, v10, 0x1

    .line 1097
    sub-int/2addr v7, v11

    .line 1100
    .end local v11           #yearLength:I
    :cond_5d
    invoke-static {v10, v6}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->monthLength(II)I

    move-result v8

    .line 1101
    .local v8, monthLength:I
    if-le v7, v8, :cond_76

    .line 1102
    sub-int/2addr v7, v8

    .line 1103
    add-int/lit8 v6, v6, 0x1

    .line 1104
    if-lt v6, v14, :cond_52

    .line 1105
    add-int/lit8 v6, v6, -0xc

    .line 1106
    add-int/lit8 v10, v10, 0x1

    goto :goto_52

    .line 1084
    .end local v8           #monthLength:I
    :cond_6d
    if-lt v6, v14, :cond_52

    .line 1085
    div-int/lit8 v12, v6, 0xc

    .line 1086
    .restart local v12       #years:I
    add-int/2addr v10, v12

    .line 1087
    mul-int/lit8 v13, v12, 0xc

    sub-int/2addr v6, v13

    goto :goto_52

    .line 1114
    .end local v12           #years:I
    .restart local v8       #monthLength:I
    :cond_76
    iput v9, p0, Landroid/text/format/Time;->second:I

    .line 1115
    iput v5, p0, Landroid/text/format/Time;->minute:I

    .line 1116
    iput v4, p0, Landroid/text/format/Time;->hour:I

    .line 1117
    iput v7, p0, Landroid/text/format/Time;->monthDay:I

    .line 1118
    iput v6, p0, Landroid/text/format/Time;->month:I

    .line 1119
    iput v10, p0, Landroid/text/format/Time;->year:I

    .line 1120
    invoke-static {v10, v6, v7}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->weekDay(III)I

    move-result v13

    iput v13, p0, Landroid/text/format/Time;->weekDay:I

    .line 1121
    invoke-static {v10, v6, v7}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->yearDay(III)I

    move-result v13

    iput v13, p0, Landroid/text/format/Time;->yearDay:I

    .line 1122
    return-void
.end method

.method private static useBYX(III)Z
    .registers 4
    .parameter "freq"
    .parameter "freqConstant"
    .parameter "count"

    .prologue
    .line 287
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
    .line 1177
    const/4 v0, 0x1

    if-gt p1, v0, :cond_7

    .line 1178
    add-int/lit8 p1, p1, 0xc

    .line 1179
    add-int/lit8 p0, p0, -0x1

    .line 1181
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
    .line 1193
    sget-object v1, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->DAYS_IN_YEAR_PRECEDING_MONTH:[I

    aget v1, v1, p1

    add-int/2addr v1, p2

    add-int/lit8 v0, v1, -0x1

    .line 1194
    .local v0, yearDay:I
    const/4 v1, 0x2

    if-lt p1, v1, :cond_12

    invoke-static {p0}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->isLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1195
    add-int/lit8 v0, v0, 0x1

    .line 1197
    :cond_12
    return v0
.end method

.method static yearLength(I)I
    .registers 2
    .parameter "year"

    .prologue
    .line 1141
    invoke-static {p0}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->isLeapYear(I)Z

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
            Lcom/android/calendar/vcal/pim/vcalendar/DateException;
        }
    .end annotation

    .prologue
    .line 610
    .local p8, out:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/Long;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 611
    invoke-static/range {p1 .. p1}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v18

    .line 612
    .local v18, dtstartDateValue:J
    const/4 v14, 0x0

    .line 622
    .local v14, count:I
    if-eqz p7, :cond_1f

    cmp-long v55, v18, p3

    if-ltz v55, :cond_1f

    cmp-long v55, v18, p5

    if-gez v55, :cond_1f

    .line 623
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    move-object/from16 v0, p8

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 624
    add-int/lit8 v14, v14, 0x1

    .line 627
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object/from16 v30, v0

    .line 628
    .local v30, iterator:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->mUntil:Landroid/text/format/Time;

    move-object/from16 v44, v0

    .line 629
    .local v44, until:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->mStringBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v41, v0

    .line 630
    .local v41, sb:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->mGenerated:Landroid/text/format/Time;

    .line 631
    .local v3, generated:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->mDays:Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor$DaySet;

    move-object/from16 v16, v0

    .line 635
    .local v16, days:Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor$DaySet;
    :try_start_3b
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor$DaySet;->setRecurrence(Lcom/android/calendarcommon/EventRecurrence;)V

    .line 636
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

    .line 637
    new-instance v55, Lcom/android/calendar/vcal/pim/vcalendar/DateException;

    const-string v56, "No range end provided for a recurrence that has no UNTIL or COUNT."

    invoke-direct/range {v55 .. v56}, Lcom/android/calendar/vcal/pim/vcalendar/DateException;-><init>(Ljava/lang/String;)V

    throw v55
    :try_end_63
    .catch Lcom/android/calendar/vcal/pim/vcalendar/DateException; {:try_start_3b .. :try_end_63} :catch_63
    .catch Ljava/lang/RuntimeException; {:try_start_3b .. :try_end_63} :catch_c9

    .line 1025
    :catch_63
    move-exception v20

    .line 1026
    .local v20, e:Lcom/android/calendar/vcal/pim/vcalendar/DateException;
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

    .line 1028
    throw v20

    .line 643
    .end local v20           #e:Lcom/android/calendar/vcal/pim/vcalendar/DateException;
    :cond_9d
    :try_start_9d
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->interval:I

    move/from16 v25, v0

    .line 644
    .local v25, freqAmount:I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    move/from16 v24, v0

    .line 645
    .local v24, freq:I
    packed-switch v24, :pswitch_data_45a

    .line 672
    new-instance v55, Lcom/android/calendar/vcal/pim/vcalendar/DateException;

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

    invoke-direct/range {v55 .. v56}, Lcom/android/calendar/vcal/pim/vcalendar/DateException;-><init>(Ljava/lang/String;)V

    throw v55
    :try_end_c9
    .catch Lcom/android/calendar/vcal/pim/vcalendar/DateException; {:try_start_9d .. :try_end_c9} :catch_63
    .catch Ljava/lang/RuntimeException; {:try_start_9d .. :try_end_c9} :catch_c9

    .line 1029
    .end local v24           #freq:I
    .end local v25           #freqAmount:I
    :catch_c9
    move-exception v43

    .line 1030
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

    .line 1032
    throw v43

    .line 647
    .end local v43           #t:Ljava/lang/RuntimeException;
    .restart local v24       #freq:I
    .restart local v25       #freqAmount:I
    :pswitch_103
    const/16 v26, 0x1

    .line 674
    .local v26, freqField:I
    :cond_105
    :goto_105
    if-gtz v25, :cond_109

    .line 675
    const/16 v25, 0x1

    .line 678
    :cond_109
    :try_start_109
    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/calendarcommon/EventRecurrence;->bymonthCount:I

    .line 679
    .local v12, bymonthCount:I
    const/16 v55, 0x6

    move/from16 v0, v24

    move/from16 v1, v55

    invoke-static {v0, v1, v12}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->useBYX(III)Z

    move-result v52

    .line 680
    .local v52, usebymonth:Z
    const/16 v55, 0x5

    move/from16 v0, v24

    move/from16 v1, v55

    if-lt v0, v1, :cond_2ae

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    move/from16 v55, v0

    if-gtz v55, :cond_12f

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bymonthdayCount:I

    move/from16 v55, v0

    if-lez v55, :cond_2ae

    :cond_12f
    const/16 v49, 0x1

    .line 682
    .local v49, useDays:Z
    :goto_131
    move-object/from16 v0, p2

    iget v10, v0, Lcom/android/calendarcommon/EventRecurrence;->byhourCount:I

    .line 683
    .local v10, byhourCount:I
    const/16 v55, 0x3

    move/from16 v0, v24

    move/from16 v1, v55

    invoke-static {v0, v1, v10}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->useBYX(III)Z

    move-result v50

    .line 684
    .local v50, usebyhour:Z
    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/calendarcommon/EventRecurrence;->byminuteCount:I

    .line 685
    .local v11, byminuteCount:I
    const/16 v55, 0x2

    move/from16 v0, v24

    move/from16 v1, v55

    invoke-static {v0, v1, v11}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->useBYX(III)Z

    move-result v51

    .line 686
    .local v51, usebyminute:Z
    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/calendarcommon/EventRecurrence;->bysecondCount:I

    .line 687
    .local v13, bysecondCount:I
    const/16 v55, 0x1

    move/from16 v0, v24

    move/from16 v1, v55

    invoke-static {v0, v1, v13}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->useBYX(III)Z

    move-result v53

    .line 690
    .local v53, usebysecond:Z
    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 691
    const/16 v55, 0x5

    move/from16 v0, v26

    move/from16 v1, v55

    if-ne v0, v1, :cond_174

    .line 692
    if-eqz v49, :cond_174

    .line 698
    const/16 v55, 0x1

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 703
    :cond_174
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    move-object/from16 v55, v0

    if-eqz v55, :cond_2b2

    .line 705
    new-instance v47, Ljava/lang/StringBuffer;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    move-object/from16 v55, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v55

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 711
    .local v47, untilStr:Ljava/lang/StringBuffer;
    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuffer;->length()I

    move-result v55

    const/16 v56, 0xf

    move/from16 v0, v55

    move/from16 v1, v56

    if-ne v0, v1, :cond_1a0

    .line 712
    const/16 v55, 0x5a

    move-object/from16 v0, v47

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 715
    :cond_1a0
    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v55

    move-object/from16 v0, v44

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 717
    move-object/from16 v0, v44

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v55, v0

    const/16 v56, 0x7f4

    move/from16 v0, v55

    move/from16 v1, v56

    if-le v0, v1, :cond_1c1

    .line 718
    const/16 v55, 0x7f4

    move/from16 v0, v55

    move-object/from16 v1, v44

    iput v0, v1, Landroid/text/format/Time;->year:I

    .line 725
    :cond_1c1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v55, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 726
    invoke-static/range {v44 .. v44}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v45

    .line 764
    .end local v47           #untilStr:Ljava/lang/StringBuffer;
    .local v45, untilDateValue:J
    :goto_1d2
    const/16 v55, 0xf

    move-object/from16 v0, v41

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 765
    const/16 v55, 0xf

    move-object/from16 v0, v41

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 774
    const/16 v21, 0x0

    .line 775
    .local v21, eventEnded:Z
    const/16 v22, 0x0

    .line 778
    .local v22, failsafe:I
    :cond_1e8
    const/16 v38, 0x0

    .line 786
    .local v38, monthIndex:I
    invoke-static/range {v30 .. v30}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 788
    move-object/from16 v0, v30

    iget v9, v0, Landroid/text/format/Time;->year:I

    .line 789
    .local v9, iteratorYear:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v55, v0

    add-int/lit8 v34, v55, 0x1

    .line 790
    .local v34, iteratorMonth:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v31, v0

    .line 791
    .local v31, iteratorDay:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v32, v0

    .line 792
    .local v32, iteratorHour:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v33, v0

    .line 793
    .local v33, iteratorMinute:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 v35, v0

    .line 796
    .local v35, iteratorSecond:I
    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 802
    :cond_216
    if-eqz v52, :cond_300

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bymonth:[I

    move-object/from16 v55, v0

    aget v8, v55, v38

    .line 803
    .local v8, month:I
    :goto_220
    add-int/lit8 v8, v8, -0x1

    .line 807
    const/4 v15, 0x1

    .line 808
    .local v15, dayIndex:I
    const/16 v36, 0x0

    .line 815
    .local v36, lastDayToExamine:I
    if-eqz v49, :cond_23f

    .line 821
    const/16 v55, 0x5

    move/from16 v0, v24

    move/from16 v1, v55

    if-ne v0, v1, :cond_304

    .line 822
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    move/from16 v17, v0

    .line 823
    .local v17, dow:I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v55, v0

    sub-int v15, v55, v17

    .line 824
    add-int/lit8 v36, v15, 0x6

    .line 835
    .end local v17           #dow:I
    :cond_23f
    :goto_23f
    if-eqz v49, :cond_35e

    .line 836
    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v15}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor$DaySet;->get(Landroid/text/format/Time;I)Z

    move-result v55

    if-nez v55, :cond_30e

    .line 837
    add-int/lit8 v15, v15, 0x1

    .line 968
    :goto_24d
    if-eqz v49, :cond_253

    move/from16 v0, v36

    if-le v15, v0, :cond_23f

    .line 969
    :cond_253
    add-int/lit8 v38, v38, 0x1

    .line 970
    if-eqz v52, :cond_25b

    move/from16 v0, v38

    if-lt v0, v12, :cond_216

    .line 978
    :cond_25b
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v40, v0

    .line 979
    .local v40, oldDay:I
    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 981
    const/16 v39, 0x1

    .line 983
    .local v39, n:I
    :goto_268
    mul-int v54, v25, v39

    .line 984
    .local v54, value:I
    packed-switch v26, :pswitch_data_46c

    .line 1010
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

    .line 650
    .end local v8           #month:I
    .end local v9           #iteratorYear:I
    .end local v10           #byhourCount:I
    .end local v11           #byminuteCount:I
    .end local v12           #bymonthCount:I
    .end local v13           #bysecondCount:I
    .end local v15           #dayIndex:I
    .end local v21           #eventEnded:Z
    .end local v22           #failsafe:I
    .end local v26           #freqField:I
    .end local v31           #iteratorDay:I
    .end local v32           #iteratorHour:I
    .end local v33           #iteratorMinute:I
    .end local v34           #iteratorMonth:I
    .end local v35           #iteratorSecond:I
    .end local v36           #lastDayToExamine:I
    .end local v38           #monthIndex:I
    .end local v39           #n:I
    .end local v40           #oldDay:I
    .end local v45           #untilDateValue:J
    .end local v49           #useDays:Z
    .end local v50           #usebyhour:Z
    .end local v51           #usebyminute:Z
    .end local v52           #usebymonth:Z
    .end local v53           #usebysecond:Z
    .end local v54           #value:I
    :pswitch_28a
    const/16 v26, 0x2

    .line 651
    .restart local v26       #freqField:I
    goto/16 :goto_105

    .line 653
    .end local v26           #freqField:I
    :pswitch_28e
    const/16 v26, 0x3

    .line 654
    .restart local v26       #freqField:I
    goto/16 :goto_105

    .line 656
    .end local v26           #freqField:I
    :pswitch_292
    const/16 v26, 0x4

    .line 657
    .restart local v26       #freqField:I
    goto/16 :goto_105

    .line 659
    .end local v26           #freqField:I
    :pswitch_296
    const/16 v26, 0x4

    .line 660
    .restart local v26       #freqField:I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->interval:I

    move/from16 v55, v0

    mul-int/lit8 v25, v55, 0x7

    .line 661
    if-gtz v25, :cond_105

    .line 662
    const/16 v25, 0x7

    goto/16 :goto_105

    .line 666
    .end local v26           #freqField:I
    :pswitch_2a6
    const/16 v26, 0x5

    .line 667
    .restart local v26       #freqField:I
    goto/16 :goto_105

    .line 669
    .end local v26           #freqField:I
    :pswitch_2aa
    const/16 v26, 0x6

    .line 670
    .restart local v26       #freqField:I
    goto/16 :goto_105

    .line 680
    .restart local v12       #bymonthCount:I
    .restart local v52       #usebymonth:Z
    :cond_2ae
    const/16 v49, 0x0

    goto/16 :goto_131

    .line 730
    .restart local v10       #byhourCount:I
    .restart local v11       #byminuteCount:I
    .restart local v13       #bysecondCount:I
    .restart local v49       #useDays:Z
    .restart local v50       #usebyhour:Z
    .restart local v51       #usebyminute:Z
    .restart local v53       #usebysecond:Z
    :cond_2b2
    new-instance v48, Landroid/text/format/Time;

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 731
    .local v48, untilTime:Landroid/text/format/Time;
    packed-switch v24, :pswitch_data_480

    .line 761
    :goto_2be
    :pswitch_2be
    invoke-static/range {v48 .. v48}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v45

    .restart local v45       #untilDateValue:J
    goto/16 :goto_1d2

    .line 737
    .end local v45           #untilDateValue:J
    :pswitch_2c4
    move-object/from16 v0, v48

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v55, v0

    add-int/lit8 v55, v55, 0x1

    move/from16 v0, v55

    move-object/from16 v1, v48

    iput v0, v1, Landroid/text/format/Time;->year:I

    goto :goto_2be

    .line 740
    :pswitch_2d3
    move-object/from16 v0, v48

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v55, v0

    add-int/lit8 v55, v55, 0x5

    move/from16 v0, v55

    move-object/from16 v1, v48

    iput v0, v1, Landroid/text/format/Time;->year:I

    goto :goto_2be

    .line 743
    :pswitch_2e2
    move-object/from16 v0, v48

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v55, v0

    add-int/lit8 v55, v55, 0xa

    move/from16 v0, v55

    move-object/from16 v1, v48

    iput v0, v1, Landroid/text/format/Time;->year:I

    goto :goto_2be

    .line 746
    :pswitch_2f1
    move-object/from16 v0, v48

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v55, v0

    add-int/lit8 v55, v55, 0x32

    move/from16 v0, v55

    move-object/from16 v1, v48

    iput v0, v1, Landroid/text/format/Time;->year:I

    goto :goto_2be

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
    .restart local v45       #untilDateValue:J
    :cond_300
    move/from16 v8, v34

    .line 802
    goto/16 :goto_220

    .line 826
    .restart local v8       #month:I
    .restart local v15       #dayIndex:I
    .restart local v36       #lastDayToExamine:I
    :cond_304
    const/16 v55, 0x4

    move/from16 v0, v55

    invoke-virtual {v3, v0}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v36

    goto/16 :goto_23f

    .line 840
    :cond_30e
    move v7, v15

    .line 849
    .local v7, day:I
    :goto_30f
    const/16 v29, 0x0

    .line 851
    .local v29, hourIndex:I
    :cond_311
    if-eqz v50, :cond_361

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->byhour:[I

    move-object/from16 v55, v0

    aget v6, v55, v29

    .line 856
    .local v6, hour:I
    :goto_31b
    const/16 v37, 0x0

    .line 858
    .local v37, minuteIndex:I
    :cond_31d
    if-eqz v51, :cond_364

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->byminute:[I

    move-object/from16 v55, v0

    aget v5, v55, v37

    .line 864
    .local v5, minute:I
    :goto_327
    const/16 v42, 0x0

    .line 866
    .local v42, secondIndex:I
    :cond_329
    if-eqz v53, :cond_367

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->bysecond:[I

    move-object/from16 v55, v0

    aget v4, v55, v42

    .line 876
    .local v4, second:I
    :goto_333
    invoke-virtual/range {v3 .. v9}, Landroid/text/format/Time;->set(IIIIII)V

    .line 878
    invoke-static {v3}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 880
    invoke-static {v3}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v27

    .line 887
    .local v27, genDateValue:J
    cmp-long v55, v27, v18

    if-ltz v55, :cond_391

    .line 889
    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->filter(Lcom/android/calendarcommon/EventRecurrence;Landroid/text/format/Time;)I

    move-result v23

    .line 890
    .local v23, filtered:I
    if-nez v23, :cond_391

    .line 915
    cmp-long v55, v18, v27

    if-nez v55, :cond_357

    if-eqz p7, :cond_357

    cmp-long v55, v18, p3

    if-ltz v55, :cond_357

    cmp-long v55, v18, p5

    if-ltz v55, :cond_359

    .line 917
    :cond_357
    add-int/lit8 v14, v14, 0x1

    .line 922
    :cond_359
    cmp-long v55, v27, v45

    if-lez v55, :cond_36a

    .line 1034
    :cond_35d
    return-void

    .line 843
    .end local v4           #second:I
    .end local v5           #minute:I
    .end local v6           #hour:I
    .end local v7           #day:I
    .end local v23           #filtered:I
    .end local v27           #genDateValue:J
    .end local v29           #hourIndex:I
    .end local v37           #minuteIndex:I
    .end local v42           #secondIndex:I
    :cond_35e
    move/from16 v7, v31

    .restart local v7       #day:I
    goto :goto_30f

    .restart local v29       #hourIndex:I
    :cond_361
    move/from16 v6, v32

    .line 851
    goto :goto_31b

    .restart local v6       #hour:I
    .restart local v37       #minuteIndex:I
    :cond_364
    move/from16 v5, v33

    .line 858
    goto :goto_327

    .restart local v5       #minute:I
    .restart local v42       #secondIndex:I
    :cond_367
    move/from16 v4, v35

    .line 866
    goto :goto_333

    .line 931
    .restart local v4       #second:I
    .restart local v23       #filtered:I
    .restart local v27       #genDateValue:J
    :cond_36a
    cmp-long v55, v27, p5

    if-gez v55, :cond_35d

    .line 940
    cmp-long v55, v27, p3

    if-ltz v55, :cond_37f

    .line 945
    if-eqz p7, :cond_3ad

    .line 946
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    move-object/from16 v0, p8

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 953
    :cond_37f
    :goto_37f
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->count:I

    move/from16 v55, v0

    if-lez v55, :cond_391

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/calendarcommon/EventRecurrence;->count:I

    move/from16 v55, v0

    move/from16 v0, v55

    if-eq v0, v14, :cond_35d

    .line 961
    .end local v23           #filtered:I
    :cond_391
    add-int/lit8 v42, v42, 0x1

    .line 962
    if-eqz v53, :cond_399

    move/from16 v0, v42

    if-lt v0, v13, :cond_329

    .line 963
    :cond_399
    add-int/lit8 v37, v37, 0x1

    .line 964
    if-eqz v51, :cond_3a1

    move/from16 v0, v37

    if-lt v0, v11, :cond_31d

    .line 965
    :cond_3a1
    add-int/lit8 v29, v29, 0x1

    .line 966
    if-eqz v50, :cond_3a9

    move/from16 v0, v29

    if-lt v0, v10, :cond_311

    .line 967
    :cond_3a9
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_24d

    .line 948
    .restart local v23       #filtered:I
    :cond_3ad
    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    move-object/from16 v0, p8

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    goto :goto_37f

    .line 986
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
    :pswitch_3b9
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 v55, v0

    add-int v55, v55, v54

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->second:I

    .line 1013
    :goto_3c7
    invoke-static/range {v30 .. v30}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 1014
    const/16 v55, 0x6

    move/from16 v0, v26

    move/from16 v1, v55

    if-eq v0, v1, :cond_3da

    const/16 v55, 0x5

    move/from16 v0, v26

    move/from16 v1, v55

    if-ne v0, v1, :cond_1e8

    .line 1017
    :cond_3da
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v55, v0

    move/from16 v0, v55

    move/from16 v1, v40

    if-eq v0, v1, :cond_1e8

    .line 1020
    add-int/lit8 v39, v39, 0x1

    .line 1021
    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    goto/16 :goto_268

    .line 989
    :pswitch_3ef
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v55, v0

    add-int v55, v55, v54

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->minute:I

    goto :goto_3c7

    .line 992
    :pswitch_3fe
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v55, v0

    add-int v55, v55, v54

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->hour:I

    goto :goto_3c7

    .line 995
    :pswitch_40d
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v55, v0

    add-int v55, v55, v54

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    goto :goto_3c7

    .line 998
    :pswitch_41c
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v55, v0

    add-int v55, v55, v54

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->month:I

    goto :goto_3c7

    .line 1001
    :pswitch_42b
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v55, v0

    add-int v55, v55, v54

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->year:I

    goto :goto_3c7

    .line 1004
    :pswitch_43a
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v55, v0

    add-int v55, v55, v54

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    goto/16 :goto_3c7

    .line 1007
    :pswitch_44a
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v55, v0

    add-int v55, v55, v54

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->monthDay:I
    :try_end_458
    .catch Lcom/android/calendar/vcal/pim/vcalendar/DateException; {:try_start_109 .. :try_end_458} :catch_63
    .catch Ljava/lang/RuntimeException; {:try_start_109 .. :try_end_458} :catch_c9

    goto/16 :goto_3c7

    .line 645
    :pswitch_data_45a
    .packed-switch 0x1
        :pswitch_103
        :pswitch_28a
        :pswitch_28e
        :pswitch_292
        :pswitch_296
        :pswitch_2a6
        :pswitch_2aa
    .end packed-switch

    .line 984
    :pswitch_data_46c
    .packed-switch 0x1
        :pswitch_3b9
        :pswitch_3ef
        :pswitch_3fe
        :pswitch_40d
        :pswitch_41c
        :pswitch_42b
        :pswitch_43a
        :pswitch_44a
    .end packed-switch

    .line 731
    :pswitch_data_480
    .packed-switch 0x1
        :pswitch_2be
        :pswitch_2be
        :pswitch_2be
        :pswitch_2c4
        :pswitch_2d3
        :pswitch_2e2
        :pswitch_2f1
    .end packed-switch
.end method

.method public expand(Landroid/text/format/Time;Lcom/android/calendarcommon/RecurrenceSet;JJ)[J
    .registers 41
    .parameter "dtstart"
    .parameter "recur"
    .parameter "rangeStartMillis"
    .parameter "rangeEndMillis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendar/vcal/pim/vcalendar/DateException;
        }
    .end annotation

    .prologue
    .line 507
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v32, v0

    .line 508
    .local v32, timezone:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 509
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->mGenerated:Landroid/text/format/Time;

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    invoke-static {v2}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v5

    .line 519
    .local v5, rangeStartDateValue:J
    const-wide/16 v2, -0x1

    cmp-long v2, p5, v2

    if-eqz v2, :cond_6b

    .line 520
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 521
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    invoke-static {v2}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v7

    .line 526
    .local v7, rangeEndDateValue:J
    :goto_40
    new-instance v10, Ljava/util/TreeSet;

    invoke-direct {v10}, Ljava/util/TreeSet;-><init>()V

    .line 528
    .local v10, dtSet:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/Long;>;"
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceSet;->rrules:[Lcom/android/calendarcommon/EventRecurrence;

    if-eqz v2, :cond_71

    .line 529
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

    .line 530
    .local v4, rrule:Lcom/android/calendarcommon/EventRecurrence;
    const/4 v9, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v10}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->expand(Landroid/text/format/Time;Lcom/android/calendarcommon/EventRecurrence;JJZLjava/util/TreeSet;)V

    .line 529
    add-int/lit8 v28, v28, 0x1

    goto :goto_58

    .line 523
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

    .line 534
    .restart local v10       #dtSet:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/Long;>;"
    :cond_71
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceSet;->rdates:[J

    if-eqz v2, :cond_a7

    .line 535
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

    .line 538
    .local v22, dt:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-wide/from16 v0, v22

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 539
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    invoke-static {v2}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v24

    .line 540
    .local v24, dtvalue:J
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 535
    add-int/lit8 v28, v28, 0x1

    goto :goto_84

    .line 543
    .end local v20           #arr$:[J
    .end local v22           #dt:J
    .end local v24           #dtvalue:J
    .end local v28           #i$:I
    .end local v30           #len$:I
    :cond_a7
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceSet;->exrules:[Lcom/android/calendarcommon/EventRecurrence;

    if-eqz v2, :cond_d3

    .line 544
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

    .line 545
    .local v13, exrule:Lcom/android/calendarcommon/EventRecurrence;
    const/16 v18, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-wide v14, v5

    move-wide/from16 v16, v7

    move-object/from16 v19, v10

    invoke-virtual/range {v11 .. v19}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->expand(Landroid/text/format/Time;Lcom/android/calendarcommon/EventRecurrence;JJZLjava/util/TreeSet;)V

    .line 544
    add-int/lit8 v28, v28, 0x1

    goto :goto_ba

    .line 549
    .end local v13           #exrule:Lcom/android/calendarcommon/EventRecurrence;
    .end local v20           #arr$:[Lcom/android/calendarcommon/EventRecurrence;
    .end local v28           #i$:I
    .end local v30           #len$:I
    :cond_d3
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/calendarcommon/RecurrenceSet;->exdates:[J

    if-eqz v2, :cond_109

    .line 550
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

    .line 553
    .restart local v22       #dt:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-wide/from16 v0, v22

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 554
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    invoke-static {v2}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v24

    .line 555
    .restart local v24       #dtvalue:J
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 550
    add-int/lit8 v28, v28, 0x1

    goto :goto_e6

    .line 558
    .end local v20           #arr$:[J
    .end local v22           #dt:J
    .end local v24           #dtvalue:J
    .end local v28           #i$:I
    .end local v30           #len$:I
    :cond_109
    invoke-virtual {v10}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_115

    .line 561
    const/4 v2, 0x0

    new-array v0, v2, [J

    move-object/from16 v21, v0

    .line 584
    :cond_114
    return-object v21

    .line 568
    :cond_115
    invoke-virtual {v10}, Ljava/util/TreeSet;->size()I

    move-result v29

    .line 569
    .local v29, len:I
    move/from16 v0, v29

    new-array v0, v0, [J

    move-object/from16 v21, v0

    .line 570
    .local v21, dates:[J
    const/16 v26, 0x0

    .line 578
    .local v26, i:I
    new-instance v31, Landroid/text/format/Time;

    invoke-direct/range {v31 .. v31}, Landroid/text/format/Time;-><init>()V

    .line 579
    .local v31, time:Landroid/text/format/Time;
    invoke-virtual/range {v31 .. v32}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 580
    invoke-virtual {v10}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, i$:Ljava/util/Iterator;
    :goto_12d
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_114

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/Long;

    .line 581
    .local v33, val:Ljava/lang/Long;
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, v31

    invoke-static {v0, v2, v3}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->setTimeFromLongValue(Landroid/text/format/Time;J)V

    .line 582
    add-int/lit8 v27, v26, 0x1

    .end local v26           #i:I
    .local v27, i:I
    const/4 v2, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    aput-wide v2, v21, v26

    move/from16 v26, v27

    .end local v27           #i:I
    .restart local v26       #i:I
    goto :goto_12d
.end method

.method public getLastOccurence(Landroid/text/format/Time;Lcom/android/calendarcommon/RecurrenceSet;)J
    .registers 23
    .parameter "dtstart"
    .parameter "recur"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendar/vcal/pim/vcalendar/DateException;
        }
    .end annotation

    .prologue
    .line 67
    const-wide/16 v14, -0x1

    .line 68
    .local v14, lastTime:J
    const/4 v12, 0x0

    .line 72
    .local v12, hasCount:Z
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/calendarcommon/RecurrenceSet;->rrules:[Lcom/android/calendarcommon/EventRecurrence;

    if-eqz v1, :cond_71

    .line 73
    move-object/from16 v0, p2

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

    .line 74
    .local v17, rrule:Lcom/android/calendarcommon/EventRecurrence;
    move-object/from16 v0, v17

    iget v1, v0, Lcom/android/calendarcommon/EventRecurrence;->count:I

    if-eqz v1, :cond_21

    .line 75
    const/4 v12, 0x1

    .line 73
    :cond_1e
    :goto_1e
    add-int/lit8 v13, v13, 0x1

    goto :goto_11

    .line 76
    :cond_21
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    if-eqz v1, :cond_42

    .line 78
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 79
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v18

    .line 80
    .local v18, untilTime:J
    cmp-long v1, v18, v14

    if-lez v1, :cond_1e

    .line 81
    move-wide/from16 v14, v18

    goto :goto_1e

    .line 86
    .end local v18           #untilTime:J
    :cond_42
    const-wide/16 v1, -0x1

    .line 135
    .end local v8           #arr$:[Lcom/android/calendarcommon/EventRecurrence;
    .end local v13           #i$:I
    .end local v16           #len$:I
    .end local v17           #rrule:Lcom/android/calendarcommon/EventRecurrence;
    :goto_44
    return-wide v1

    .line 89
    .restart local v8       #arr$:[Lcom/android/calendarcommon/EventRecurrence;
    .restart local v13       #i$:I
    .restart local v16       #len$:I
    :cond_45
    const-wide/16 v1, -0x1

    cmp-long v1, v14, v1

    if-eqz v1, :cond_67

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/calendarcommon/RecurrenceSet;->rdates:[J

    if-eqz v1, :cond_67

    .line 90
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/calendarcommon/RecurrenceSet;->rdates:[J

    .local v8, arr$:[J
    array-length v0, v8

    move/from16 v16, v0

    const/4 v13, 0x0

    :goto_59
    move/from16 v0, v16

    if-ge v13, v0, :cond_67

    aget-wide v10, v8, v13

    .line 91
    .local v10, dt:J
    cmp-long v1, v10, v14

    if-lez v1, :cond_64

    .line 92
    move-wide v14, v10

    .line 90
    :cond_64
    add-int/lit8 v13, v13, 0x1

    goto :goto_59

    .line 99
    .end local v8           #arr$:[J
    .end local v10           #dt:J
    :cond_67
    const-wide/16 v1, -0x1

    cmp-long v1, v14, v1

    if-eqz v1, :cond_9b

    if-nez v12, :cond_9b

    move-wide v1, v14

    .line 100
    goto :goto_44

    .line 102
    .end local v13           #i$:I
    .end local v16           #len$:I
    :cond_71
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/calendarcommon/RecurrenceSet;->rdates:[J

    if-eqz v1, :cond_9b

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/calendarcommon/RecurrenceSet;->exrules:[Lcom/android/calendarcommon/EventRecurrence;

    if-nez v1, :cond_9b

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/calendarcommon/RecurrenceSet;->exdates:[J

    if-nez v1, :cond_9b

    .line 104
    move-object/from16 v0, p2

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

    .line 105
    .restart local v10       #dt:J
    cmp-long v1, v10, v14

    if-lez v1, :cond_96

    .line 106
    move-wide v14, v10

    .line 104
    :cond_96
    add-int/lit8 v13, v13, 0x1

    goto :goto_8b

    .end local v10           #dt:J
    :cond_99
    move-wide v1, v14

    .line 109
    goto :goto_44

    .line 114
    .end local v8           #arr$:[J
    .end local v13           #i$:I
    .end local v16           #len$:I
    :cond_9b
    if-nez v12, :cond_a3

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/calendarcommon/RecurrenceSet;->rdates:[J

    if-eqz v1, :cond_c2

    .line 117
    :cond_a3
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/calendar/vcal/pim/vcalendar/RecurrenceProcessor;->expand(Landroid/text/format/Time;Lcom/android/calendarcommon/RecurrenceSet;JJ)[J

    move-result-object v9

    .line 130
    .local v9, dates:[J
    array-length v1, v9

    if-nez v1, :cond_bc

    .line 131
    const-wide/16 v1, 0x0

    goto :goto_44

    .line 133
    :cond_bc
    array-length v1, v9

    add-int/lit8 v1, v1, -0x1

    aget-wide v1, v9, v1

    goto :goto_44

    .line 135
    .end local v9           #dates:[J
    :cond_c2
    const-wide/16 v1, -0x1

    goto :goto_44
.end method
