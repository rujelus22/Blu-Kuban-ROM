.class public Lcom/android/calendar/TwDateUtils;
.super Ljava/lang/Object;
.source "TwDateUtils.java"


# static fields
.field private static final sAmPm:[I

.field private static final sDaysLong:[I

.field private static final sDaysMedium:[I

.field private static final sDaysShort:[I

.field private static final sDaysShortest:[I

.field private static final sLock:Ljava/lang/Object;

.field private static final sMonthsLong:[I

.field private static final sMonthsMedium:[I

.field private static final sMonthsShortest:[I

.field private static final sMonthsStandaloneLong:[I

.field public static final sameMonthTable:[I

.field public static final sameYearTable:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0x10

    const/16 v2, 0xc

    const/4 v1, 0x7

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/calendar/TwDateUtils;->sLock:Ljava/lang/Object;

    .line 85
    new-array v0, v1, [I

    fill-array-data v0, :array_5c

    sput-object v0, Lcom/android/calendar/TwDateUtils;->sDaysLong:[I

    .line 105
    new-array v0, v1, [I

    fill-array-data v0, :array_6e

    sput-object v0, Lcom/android/calendar/TwDateUtils;->sDaysMedium:[I

    .line 125
    new-array v0, v1, [I

    fill-array-data v0, :array_80

    sput-object v0, Lcom/android/calendar/TwDateUtils;->sDaysShort:[I

    .line 145
    new-array v0, v1, [I

    fill-array-data v0, :array_92

    sput-object v0, Lcom/android/calendar/TwDateUtils;->sDaysShortest:[I

    .line 165
    new-array v0, v2, [I

    fill-array-data v0, :array_a4

    sput-object v0, Lcom/android/calendar/TwDateUtils;->sMonthsStandaloneLong:[I

    .line 195
    new-array v0, v2, [I

    fill-array-data v0, :array_c0

    sput-object v0, Lcom/android/calendar/TwDateUtils;->sMonthsLong:[I

    .line 225
    new-array v0, v2, [I

    fill-array-data v0, :array_dc

    sput-object v0, Lcom/android/calendar/TwDateUtils;->sMonthsMedium:[I

    .line 255
    new-array v0, v2, [I

    fill-array-data v0, :array_f8

    sput-object v0, Lcom/android/calendar/TwDateUtils;->sMonthsShortest:[I

    .line 285
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_114

    sput-object v0, Lcom/android/calendar/TwDateUtils;->sAmPm:[I

    .line 509
    new-array v0, v3, [I

    fill-array-data v0, :array_11c

    sput-object v0, Lcom/android/calendar/TwDateUtils;->sameYearTable:[I

    .line 561
    new-array v0, v3, [I

    fill-array-data v0, :array_140

    sput-object v0, Lcom/android/calendar/TwDateUtils;->sameMonthTable:[I

    return-void

    .line 85
    nop

    :array_5c
    .array-data 0x4
        0x59t 0x0t 0x4t 0x1t
        0x5at 0x0t 0x4t 0x1t
        0x5bt 0x0t 0x4t 0x1t
        0x5ct 0x0t 0x4t 0x1t
        0x5dt 0x0t 0x4t 0x1t
        0x5et 0x0t 0x4t 0x1t
        0x5ft 0x0t 0x4t 0x1t
    .end array-data

    .line 105
    :array_6e
    .array-data 0x4
        0x60t 0x0t 0x4t 0x1t
        0x61t 0x0t 0x4t 0x1t
        0x62t 0x0t 0x4t 0x1t
        0x63t 0x0t 0x4t 0x1t
        0x64t 0x0t 0x4t 0x1t
        0x65t 0x0t 0x4t 0x1t
        0x66t 0x0t 0x4t 0x1t
    .end array-data

    .line 125
    :array_80
    .array-data 0x4
        0x67t 0x0t 0x4t 0x1t
        0x68t 0x0t 0x4t 0x1t
        0x69t 0x0t 0x4t 0x1t
        0x6at 0x0t 0x4t 0x1t
        0x6bt 0x0t 0x4t 0x1t
        0x6ct 0x0t 0x4t 0x1t
        0x6dt 0x0t 0x4t 0x1t
    .end array-data

    .line 145
    :array_92
    .array-data 0x4
        0x6et 0x0t 0x4t 0x1t
        0x6ft 0x0t 0x4t 0x1t
        0x70t 0x0t 0x4t 0x1t
        0x71t 0x0t 0x4t 0x1t
        0x72t 0x0t 0x4t 0x1t
        0x73t 0x0t 0x4t 0x1t
        0x74t 0x0t 0x4t 0x1t
    .end array-data

    .line 165
    :array_a4
    .array-data 0x4
        0x29t 0x0t 0x4t 0x1t
        0x2at 0x0t 0x4t 0x1t
        0x2bt 0x0t 0x4t 0x1t
        0x2ct 0x0t 0x4t 0x1t
        0x2dt 0x0t 0x4t 0x1t
        0x2et 0x0t 0x4t 0x1t
        0x2ft 0x0t 0x4t 0x1t
        0x30t 0x0t 0x4t 0x1t
        0x31t 0x0t 0x4t 0x1t
        0x32t 0x0t 0x4t 0x1t
        0x33t 0x0t 0x4t 0x1t
        0x34t 0x0t 0x4t 0x1t
    .end array-data

    .line 195
    :array_c0
    .array-data 0x4
        0x35t 0x0t 0x4t 0x1t
        0x36t 0x0t 0x4t 0x1t
        0x37t 0x0t 0x4t 0x1t
        0x38t 0x0t 0x4t 0x1t
        0x39t 0x0t 0x4t 0x1t
        0x3at 0x0t 0x4t 0x1t
        0x3bt 0x0t 0x4t 0x1t
        0x3ct 0x0t 0x4t 0x1t
        0x3dt 0x0t 0x4t 0x1t
        0x3et 0x0t 0x4t 0x1t
        0x3ft 0x0t 0x4t 0x1t
        0x40t 0x0t 0x4t 0x1t
    .end array-data

    .line 225
    :array_dc
    .array-data 0x4
        0x41t 0x0t 0x4t 0x1t
        0x42t 0x0t 0x4t 0x1t
        0x43t 0x0t 0x4t 0x1t
        0x44t 0x0t 0x4t 0x1t
        0x45t 0x0t 0x4t 0x1t
        0x46t 0x0t 0x4t 0x1t
        0x47t 0x0t 0x4t 0x1t
        0x48t 0x0t 0x4t 0x1t
        0x49t 0x0t 0x4t 0x1t
        0x4at 0x0t 0x4t 0x1t
        0x4bt 0x0t 0x4t 0x1t
        0x4ct 0x0t 0x4t 0x1t
    .end array-data

    .line 255
    :array_f8
    .array-data 0x4
        0x4dt 0x0t 0x4t 0x1t
        0x4et 0x0t 0x4t 0x1t
        0x4ft 0x0t 0x4t 0x1t
        0x50t 0x0t 0x4t 0x1t
        0x51t 0x0t 0x4t 0x1t
        0x52t 0x0t 0x4t 0x1t
        0x53t 0x0t 0x4t 0x1t
        0x54t 0x0t 0x4t 0x1t
        0x55t 0x0t 0x4t 0x1t
        0x56t 0x0t 0x4t 0x1t
        0x57t 0x0t 0x4t 0x1t
        0x58t 0x0t 0x4t 0x1t
    .end array-data

    .line 285
    :array_114
    .array-data 0x4
        0x75t 0x0t 0x4t 0x1t
        0x76t 0x0t 0x4t 0x1t
    .end array-data

    .line 509
    :array_11c
    .array-data 0x4
        0x9et 0x0t 0x4t 0x1t
        0x9ft 0x0t 0x4t 0x1t
        0xabt 0x0t 0x4t 0x1t
        0xadt 0x0t 0x4t 0x1t
        0xa0t 0x0t 0x4t 0x1t
        0xa2t 0x0t 0x4t 0x1t
        0xa4t 0x0t 0x4t 0x1t
        0xa6t 0x0t 0x4t 0x1t
        0x90t 0x0t 0x4t 0x1t
        0x91t 0x0t 0x4t 0x1t
        0x92t 0x0t 0x4t 0x1t
        0x93t 0x0t 0x4t 0x1t
        0x95t 0x0t 0x4t 0x1t
        0x96t 0x0t 0x4t 0x1t
        0x97t 0x0t 0x4t 0x1t
        0x94t 0x0t 0x4t 0x1t
    .end array-data

    .line 561
    :array_140
    .array-data 0x4
        0xa9t 0x0t 0x4t 0x1t
        0xaat 0x0t 0x4t 0x1t
        0xact 0x0t 0x4t 0x1t
        0xa8t 0x0t 0x4t 0x1t
        0xa1t 0x0t 0x4t 0x1t
        0xa3t 0x0t 0x4t 0x1t
        0xa5t 0x0t 0x4t 0x1t
        0xa7t 0x0t 0x4t 0x1t
        0x90t 0x0t 0x4t 0x1t
        0x91t 0x0t 0x4t 0x1t
        0x92t 0x0t 0x4t 0x1t
        0x93t 0x0t 0x4t 0x1t
        0x95t 0x0t 0x4t 0x1t
        0x96t 0x0t 0x4t 0x1t
        0x97t 0x0t 0x4t 0x1t
        0x94t 0x0t 0x4t 0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDateRange(Landroid/content/Context;JJILjava/lang/String;)Ljava/lang/String;
    .registers 15
    .parameter "context"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "flags"
    .parameter "timezone"

    .prologue
    .line 2117
    new-instance v1, Ljava/util/Formatter;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .local v1, f:Ljava/util/Formatter;
    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    .line 2119
    invoke-static/range {v0 .. v7}, Lcom/android/calendar/TwDateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;
    .registers 74
    .parameter "context"
    .parameter "formatter"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "flags"
    .parameter "timezone"

    .prologue
    .line 2389
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v38

    .line 2391
    .local v38, res:Landroid/content/res/Resources;
    and-int/lit8 v62, p6, 0x1

    if-eqz v62, :cond_145

    const/16 v41, 0x1

    .line 2393
    .local v41, showTime:Z
    :goto_a
    and-int/lit8 v62, p6, 0x2

    if-eqz v62, :cond_149

    const/16 v42, 0x1

    .line 2395
    .local v42, showWeekDay:Z
    :goto_10
    and-int/lit8 v62, p6, 0x4

    if-eqz v62, :cond_14d

    const/16 v43, 0x1

    .line 2397
    .local v43, showYear:Z
    :goto_16
    and-int/lit8 v62, p6, 0x8

    if-eqz v62, :cond_151

    const/16 v36, 0x1

    .line 2399
    .local v36, noYear:Z
    :goto_1c
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x2000

    move/from16 v62, v0

    if-eqz v62, :cond_155

    const/16 v60, 0x1

    .line 2401
    .local v60, useUTC:Z
    :goto_26
    const v62, 0x88000

    and-int v62, v62, p6

    if-eqz v62, :cond_159

    const/4 v6, 0x1

    .line 2403
    .local v6, abbrevWeekDay:Z
    :goto_2e
    const/high16 v62, 0x9

    and-int v62, v62, p6

    if-eqz v62, :cond_15c

    const/4 v4, 0x1

    .line 2405
    .local v4, abbrevMonth:Z
    :goto_35
    and-int/lit8 v62, p6, 0x20

    if-eqz v62, :cond_15f

    const/16 v34, 0x1

    .line 2407
    .local v34, noMonthDay:Z
    :goto_3b
    const/high16 v62, 0x2

    and-int v62, v62, p6

    if-eqz v62, :cond_163

    const/16 v37, 0x1

    .line 2417
    .local v37, numericDate:Z
    :goto_43
    cmp-long v62, p2, p4

    if-nez v62, :cond_167

    const/16 v31, 0x1

    .line 2421
    .local v31, isInstant:Z
    :goto_49
    if-eqz v60, :cond_16b

    new-instance v44, Landroid/text/format/Time;

    const-string v62, "UTC"

    move-object/from16 v0, v44

    move-object/from16 v1, v62

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2425
    .local v44, startDate:Landroid/text/format/Time;
    :goto_56
    move-object/from16 v0, v44

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 2433
    if-eqz v31, :cond_17f

    .line 2435
    move-object/from16 v14, v44

    .line 2437
    .local v14, endDate:Landroid/text/format/Time;
    const/4 v12, 0x0

    .line 2485
    .local v12, dayDistance:I
    :goto_62
    if-nez v31, :cond_8f

    iget v0, v14, Landroid/text/format/Time;->hour:I

    move/from16 v62, v0

    iget v0, v14, Landroid/text/format/Time;->minute:I

    move/from16 v63, v0

    or-int v62, v62, v63

    iget v0, v14, Landroid/text/format/Time;->second:I

    move/from16 v63, v0

    or-int v62, v62, v63

    if-nez v62, :cond_8f

    if-eqz v41, :cond_7e

    const/16 v62, 0x1

    move/from16 v0, v62

    if-gt v12, v0, :cond_8f

    .line 2489
    :cond_7e
    iget v0, v14, Landroid/text/format/Time;->monthDay:I

    move/from16 v62, v0

    add-int/lit8 v62, v62, -0x1

    move/from16 v0, v62

    iput v0, v14, Landroid/text/format/Time;->monthDay:I

    .line 2491
    const/16 v62, 0x1

    move/from16 v0, v62

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 2497
    :cond_8f
    move-object/from16 v0, v44

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v46, v0

    .line 2499
    .local v46, startDay:I
    move-object/from16 v0, v44

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v49, v0

    .line 2501
    .local v49, startMonthNum:I
    move-object/from16 v0, v44

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v55, v0

    .line 2505
    .local v55, startYear:I
    iget v0, v14, Landroid/text/format/Time;->monthDay:I

    move/from16 v16, v0

    .line 2507
    .local v16, endDay:I
    iget v0, v14, Landroid/text/format/Time;->month:I

    move/from16 v19, v0

    .line 2509
    .local v19, endMonthNum:I
    iget v0, v14, Landroid/text/format/Time;->year:I

    move/from16 v25, v0

    .line 2513
    .local v25, endYear:I
    const-string v54, ""

    .line 2515
    .local v54, startWeekDayString:Ljava/lang/String;
    const-string v24, ""

    .line 2517
    .local v24, endWeekDayString:Ljava/lang/String;
    if-eqz v42, :cond_c5

    .line 2519
    const-string v61, ""

    .line 2521
    .local v61, weekDayFormat:Ljava/lang/String;
    if-eqz v6, :cond_1bd

    .line 2523
    const-string v61, "%a"

    .line 2531
    :goto_b9
    move-object/from16 v0, v44

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 2533
    if-eqz v31, :cond_1c1

    move-object/from16 v24, v54

    .line 2539
    .end local v61           #weekDayFormat:Ljava/lang/String;
    :cond_c5
    :goto_c5
    const-string v53, ""

    .line 2541
    .local v53, startTimeString:Ljava/lang/String;
    const-string v23, ""

    .line 2543
    .local v23, endTimeString:Ljava/lang/String;
    if-eqz v41, :cond_fe

    .line 2545
    const-string v52, ""

    .line 2547
    .local v52, startTimeFormat:Ljava/lang/String;
    const-string v22, ""

    .line 2549
    .local v22, endTimeFormat:Ljava/lang/String;
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x80

    move/from16 v62, v0

    if-eqz v62, :cond_1c9

    const/16 v28, 0x1

    .line 2551
    .local v28, force24Hour:Z
    :goto_d9
    and-int/lit8 v62, p6, 0x40

    if-eqz v62, :cond_1cd

    const/16 v27, 0x1

    .line 2555
    .local v27, force12Hour:Z
    :goto_df
    if-eqz v28, :cond_1d1

    .line 2557
    const/16 v59, 0x1

    .line 2569
    .local v59, use24Hour:Z
    :goto_e3
    if-eqz v59, :cond_1dd

    .line 2571
    const v62, 0x104007a

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v52, v22

    .line 2725
    :cond_f2
    :goto_f2
    move-object/from16 v0, v44

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 2727
    if-eqz v31, :cond_342

    move-object/from16 v23, v53

    .line 2753
    .end local v22           #endTimeFormat:Ljava/lang/String;
    .end local v27           #force12Hour:Z
    .end local v28           #force24Hour:Z
    .end local v52           #startTimeFormat:Ljava/lang/String;
    .end local v59           #use24Hour:Z
    :cond_fe
    :goto_fe
    if-eqz v36, :cond_34a

    .line 2757
    const/16 v43, 0x0

    .line 2779
    :goto_102
    if-eqz v37, :cond_36d

    .line 2781
    const v62, 0x104007f

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2849
    .local v13, defaultDateFormat:Ljava/lang/String;
    :goto_10f
    if-eqz v42, :cond_3f0

    .line 2851
    if-eqz v41, :cond_3e3

    .line 2853
    const v62, 0x1040098

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 2879
    .local v29, fullFormat:Ljava/lang/String;
    :goto_11e
    if-eqz v34, :cond_40c

    move/from16 v0, v49

    move/from16 v1, v19

    if-ne v0, v1, :cond_40c

    .line 2883
    const-string v62, "%s"

    const/16 v63, 0x1

    move/from16 v0, v63

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v13}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v65

    aput-object v65, v63, v64

    move-object/from16 v0, p1

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v62

    .line 3163
    :goto_144
    return-object v62

    .line 2391
    .end local v4           #abbrevMonth:Z
    .end local v6           #abbrevWeekDay:Z
    .end local v12           #dayDistance:I
    .end local v13           #defaultDateFormat:Ljava/lang/String;
    .end local v14           #endDate:Landroid/text/format/Time;
    .end local v16           #endDay:I
    .end local v19           #endMonthNum:I
    .end local v23           #endTimeString:Ljava/lang/String;
    .end local v24           #endWeekDayString:Ljava/lang/String;
    .end local v25           #endYear:I
    .end local v29           #fullFormat:Ljava/lang/String;
    .end local v31           #isInstant:Z
    .end local v34           #noMonthDay:Z
    .end local v36           #noYear:Z
    .end local v37           #numericDate:Z
    .end local v41           #showTime:Z
    .end local v42           #showWeekDay:Z
    .end local v43           #showYear:Z
    .end local v44           #startDate:Landroid/text/format/Time;
    .end local v46           #startDay:I
    .end local v49           #startMonthNum:I
    .end local v53           #startTimeString:Ljava/lang/String;
    .end local v54           #startWeekDayString:Ljava/lang/String;
    .end local v55           #startYear:I
    .end local v60           #useUTC:Z
    :cond_145
    const/16 v41, 0x0

    goto/16 :goto_a

    .line 2393
    .restart local v41       #showTime:Z
    :cond_149
    const/16 v42, 0x0

    goto/16 :goto_10

    .line 2395
    .restart local v42       #showWeekDay:Z
    :cond_14d
    const/16 v43, 0x0

    goto/16 :goto_16

    .line 2397
    .restart local v43       #showYear:Z
    :cond_151
    const/16 v36, 0x0

    goto/16 :goto_1c

    .line 2399
    .restart local v36       #noYear:Z
    :cond_155
    const/16 v60, 0x0

    goto/16 :goto_26

    .line 2401
    .restart local v60       #useUTC:Z
    :cond_159
    const/4 v6, 0x0

    goto/16 :goto_2e

    .line 2403
    .restart local v6       #abbrevWeekDay:Z
    :cond_15c
    const/4 v4, 0x0

    goto/16 :goto_35

    .line 2405
    .restart local v4       #abbrevMonth:Z
    :cond_15f
    const/16 v34, 0x0

    goto/16 :goto_3b

    .line 2407
    .restart local v34       #noMonthDay:Z
    :cond_163
    const/16 v37, 0x0

    goto/16 :goto_43

    .line 2417
    .restart local v37       #numericDate:Z
    :cond_167
    const/16 v31, 0x0

    goto/16 :goto_49

    .line 2421
    .restart local v31       #isInstant:Z
    :cond_16b
    if-nez p7, :cond_174

    new-instance v44, Landroid/text/format/Time;

    invoke-direct/range {v44 .. v44}, Landroid/text/format/Time;-><init>()V

    goto/16 :goto_56

    :cond_174
    new-instance v44, Landroid/text/format/Time;

    move-object/from16 v0, v44

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    goto/16 :goto_56

    .line 2441
    .restart local v44       #startDate:Landroid/text/format/Time;
    :cond_17f
    if-eqz v60, :cond_1ad

    new-instance v14, Landroid/text/format/Time;

    const-string v62, "UTC"

    move-object/from16 v0, v62

    invoke-direct {v14, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2445
    .restart local v14       #endDate:Landroid/text/format/Time;
    :goto_18a
    move-wide/from16 v0, p4

    invoke-virtual {v14, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 2447
    move-object/from16 v0, v44

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v62, v0

    move-wide/from16 v0, p2

    move-wide/from16 v2, v62

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v47

    .line 2449
    .local v47, startJulianDay:I
    iget-wide v0, v14, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v62, v0

    move-wide/from16 v0, p4

    move-wide/from16 v2, v62

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v17

    .line 2451
    .local v17, endJulianDay:I
    sub-int v12, v17, v47

    .restart local v12       #dayDistance:I
    goto/16 :goto_62

    .line 2441
    .end local v12           #dayDistance:I
    .end local v14           #endDate:Landroid/text/format/Time;
    .end local v17           #endJulianDay:I
    .end local v47           #startJulianDay:I
    :cond_1ad
    if-nez p7, :cond_1b5

    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    goto :goto_18a

    :cond_1b5
    new-instance v14, Landroid/text/format/Time;

    move-object/from16 v0, p7

    invoke-direct {v14, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    goto :goto_18a

    .line 2527
    .restart local v12       #dayDistance:I
    .restart local v14       #endDate:Landroid/text/format/Time;
    .restart local v16       #endDay:I
    .restart local v19       #endMonthNum:I
    .restart local v24       #endWeekDayString:Ljava/lang/String;
    .restart local v25       #endYear:I
    .restart local v46       #startDay:I
    .restart local v49       #startMonthNum:I
    .restart local v54       #startWeekDayString:Ljava/lang/String;
    .restart local v55       #startYear:I
    .restart local v61       #weekDayFormat:Ljava/lang/String;
    :cond_1bd
    const-string v61, "%A"

    goto/16 :goto_b9

    .line 2533
    :cond_1c1
    move-object/from16 v0, v61

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_c5

    .line 2549
    .end local v61           #weekDayFormat:Ljava/lang/String;
    .restart local v22       #endTimeFormat:Ljava/lang/String;
    .restart local v23       #endTimeString:Ljava/lang/String;
    .restart local v52       #startTimeFormat:Ljava/lang/String;
    .restart local v53       #startTimeString:Ljava/lang/String;
    :cond_1c9
    const/16 v28, 0x0

    goto/16 :goto_d9

    .line 2551
    .restart local v28       #force24Hour:Z
    :cond_1cd
    const/16 v27, 0x0

    goto/16 :goto_df

    .line 2559
    .restart local v27       #force12Hour:Z
    :cond_1d1
    if-eqz v27, :cond_1d7

    .line 2561
    const/16 v59, 0x0

    .restart local v59       #use24Hour:Z
    goto/16 :goto_e3

    .line 2565
    .end local v59           #use24Hour:Z
    :cond_1d7
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v59

    .restart local v59       #use24Hour:Z
    goto/16 :goto_e3

    .line 2577
    :cond_1dd
    const v62, 0x84000

    and-int v62, v62, p6

    if-eqz v62, :cond_296

    const/4 v5, 0x1

    .line 2579
    .local v5, abbrevTime:Z
    :goto_1e5
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x100

    move/from16 v62, v0

    if-eqz v62, :cond_299

    const/4 v7, 0x1

    .line 2581
    .local v7, capAMPM:Z
    :goto_1ee
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x200

    move/from16 v62, v0

    if-eqz v62, :cond_29c

    const/16 v35, 0x1

    .line 2583
    .local v35, noNoon:Z
    :goto_1f8
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x400

    move/from16 v62, v0

    if-eqz v62, :cond_2a0

    const/4 v9, 0x1

    .line 2585
    .local v9, capNoon:Z
    :goto_201
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x800

    move/from16 v62, v0

    if-eqz v62, :cond_2a3

    const/16 v33, 0x1

    .line 2587
    .local v33, noMidnight:Z
    :goto_20b
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x1000

    move/from16 v62, v0

    if-eqz v62, :cond_2a7

    const/4 v8, 0x1

    .line 2591
    .local v8, capMidnight:Z
    :goto_214
    move-object/from16 v0, v44

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v62, v0

    if-nez v62, :cond_2aa

    move-object/from16 v0, v44

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 v62, v0

    if-nez v62, :cond_2aa

    const/16 v51, 0x1

    .line 2593
    .local v51, startOnTheHour:Z
    :goto_226
    iget v0, v14, Landroid/text/format/Time;->minute:I

    move/from16 v62, v0

    if-nez v62, :cond_2ae

    iget v0, v14, Landroid/text/format/Time;->second:I

    move/from16 v62, v0

    if-nez v62, :cond_2ae

    const/16 v21, 0x1

    .line 2595
    .local v21, endOnTheHour:Z
    :goto_234
    if-eqz v5, :cond_2bd

    if-eqz v51, :cond_2bd

    .line 2597
    if-eqz v7, :cond_2b1

    .line 2599
    const v62, 0x10403c7

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v52

    .line 2637
    :goto_245
    if-nez v31, :cond_275

    .line 2639
    if-eqz v5, :cond_2e6

    if-eqz v21, :cond_2e6

    .line 2641
    if-eqz v7, :cond_2d9

    .line 2643
    const v62, 0x10403c7

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 2673
    :goto_258
    iget v0, v14, Landroid/text/format/Time;->hour:I

    move/from16 v62, v0

    const/16 v63, 0xc

    move/from16 v0, v62

    move/from16 v1, v63

    if-ne v0, v1, :cond_30f

    if-eqz v21, :cond_30f

    if-nez v35, :cond_30f

    .line 2675
    if-eqz v9, :cond_302

    .line 2677
    const v62, 0x1040447

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 2703
    :cond_275
    :goto_275
    move-object/from16 v0, v44

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v62, v0

    const/16 v63, 0xc

    move/from16 v0, v62

    move/from16 v1, v63

    if-ne v0, v1, :cond_f2

    if-eqz v51, :cond_f2

    if-nez v35, :cond_f2

    .line 2705
    if-eqz v9, :cond_335

    .line 2707
    const v62, 0x1040447

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v52

    goto/16 :goto_f2

    .line 2577
    .end local v5           #abbrevTime:Z
    .end local v7           #capAMPM:Z
    .end local v8           #capMidnight:Z
    .end local v9           #capNoon:Z
    .end local v21           #endOnTheHour:Z
    .end local v33           #noMidnight:Z
    .end local v35           #noNoon:Z
    .end local v51           #startOnTheHour:Z
    :cond_296
    const/4 v5, 0x0

    goto/16 :goto_1e5

    .line 2579
    .restart local v5       #abbrevTime:Z
    :cond_299
    const/4 v7, 0x0

    goto/16 :goto_1ee

    .line 2581
    .restart local v7       #capAMPM:Z
    :cond_29c
    const/16 v35, 0x0

    goto/16 :goto_1f8

    .line 2583
    .restart local v35       #noNoon:Z
    :cond_2a0
    const/4 v9, 0x0

    goto/16 :goto_201

    .line 2585
    .restart local v9       #capNoon:Z
    :cond_2a3
    const/16 v33, 0x0

    goto/16 :goto_20b

    .line 2587
    .restart local v33       #noMidnight:Z
    :cond_2a7
    const/4 v8, 0x0

    goto/16 :goto_214

    .line 2591
    .restart local v8       #capMidnight:Z
    :cond_2aa
    const/16 v51, 0x0

    goto/16 :goto_226

    .line 2593
    .restart local v51       #startOnTheHour:Z
    :cond_2ae
    const/16 v21, 0x0

    goto :goto_234

    .line 2605
    .restart local v21       #endOnTheHour:Z
    :cond_2b1
    const v62, 0x10403c6

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v52

    goto :goto_245

    .line 2611
    :cond_2bd
    if-eqz v7, :cond_2cc

    .line 2613
    const v62, 0x104007c

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v52

    goto/16 :goto_245

    .line 2619
    :cond_2cc
    const v62, 0x104007b

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v52

    goto/16 :goto_245

    .line 2649
    :cond_2d9
    const v62, 0x10403c6

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_258

    .line 2655
    :cond_2e6
    if-eqz v7, :cond_2f5

    .line 2657
    const v62, 0x104007c

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_258

    .line 2663
    :cond_2f5
    const v62, 0x104007b

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_258

    .line 2681
    :cond_302
    const v62, 0x1040446

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_275

    .line 2685
    :cond_30f
    iget v0, v14, Landroid/text/format/Time;->hour:I

    move/from16 v62, v0

    if-nez v62, :cond_275

    if-eqz v21, :cond_275

    if-nez v33, :cond_275

    .line 2687
    if-eqz v8, :cond_328

    .line 2689
    const v62, 0x1040449

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_275

    .line 2693
    :cond_328
    const v62, 0x1040448

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_275

    .line 2711
    :cond_335
    const v62, 0x1040446

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v52

    goto/16 :goto_f2

    .line 2727
    .end local v5           #abbrevTime:Z
    .end local v7           #capAMPM:Z
    .end local v8           #capMidnight:Z
    .end local v9           #capNoon:Z
    .end local v21           #endOnTheHour:Z
    .end local v33           #noMidnight:Z
    .end local v35           #noNoon:Z
    .end local v51           #startOnTheHour:Z
    :cond_342
    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_fe

    .line 2759
    .end local v22           #endTimeFormat:Ljava/lang/String;
    .end local v27           #force12Hour:Z
    .end local v28           #force24Hour:Z
    .end local v52           #startTimeFormat:Ljava/lang/String;
    .end local v59           #use24Hour:Z
    :cond_34a
    move/from16 v0, v55

    move/from16 v1, v25

    if-eq v0, v1, :cond_354

    .line 2761
    const/16 v43, 0x1

    goto/16 :goto_102

    .line 2767
    :cond_354
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 2769
    .local v10, currentTime:Landroid/text/format/Time;
    invoke-virtual {v10}, Landroid/text/format/Time;->setToNow()V

    .line 2771
    iget v0, v10, Landroid/text/format/Time;->year:I

    move/from16 v62, v0

    move/from16 v0, v55

    move/from16 v1, v62

    if-eq v0, v1, :cond_36a

    const/16 v43, 0x1

    :goto_368
    goto/16 :goto_102

    :cond_36a
    const/16 v43, 0x0

    goto :goto_368

    .line 2783
    .end local v10           #currentTime:Landroid/text/format/Time;
    :cond_36d
    if-eqz v43, :cond_3a9

    .line 2785
    if-eqz v4, :cond_38d

    .line 2787
    if-eqz v34, :cond_380

    .line 2789
    const v62, 0x104008d

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_10f

    .line 2795
    .end local v13           #defaultDateFormat:Ljava/lang/String;
    :cond_380
    const v62, 0x1040087

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_10f

    .line 2803
    .end local v13           #defaultDateFormat:Ljava/lang/String;
    :cond_38d
    if-eqz v34, :cond_39c

    .line 2805
    const v62, 0x104008a

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_10f

    .line 2809
    .end local v13           #defaultDateFormat:Ljava/lang/String;
    :cond_39c
    const v62, 0x1040082

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_10f

    .line 2817
    .end local v13           #defaultDateFormat:Ljava/lang/String;
    :cond_3a9
    if-eqz v4, :cond_3c7

    .line 2819
    if-eqz v34, :cond_3ba

    .line 2821
    const v62, 0x104008c

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_10f

    .line 2825
    .end local v13           #defaultDateFormat:Ljava/lang/String;
    :cond_3ba
    const v62, 0x104008b

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_10f

    .line 2833
    .end local v13           #defaultDateFormat:Ljava/lang/String;
    :cond_3c7
    if-eqz v34, :cond_3d6

    .line 2835
    const v62, 0x1040089

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_10f

    .line 2839
    .end local v13           #defaultDateFormat:Ljava/lang/String;
    :cond_3d6
    const v62, 0x1040088

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_10f

    .line 2859
    :cond_3e3
    const v62, 0x1040099

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    .restart local v29       #fullFormat:Ljava/lang/String;
    goto/16 :goto_11e

    .line 2865
    .end local v29           #fullFormat:Ljava/lang/String;
    :cond_3f0
    if-eqz v41, :cond_3ff

    .line 2867
    const v62, 0x104009a

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    .restart local v29       #fullFormat:Ljava/lang/String;
    goto/16 :goto_11e

    .line 2871
    .end local v29           #fullFormat:Ljava/lang/String;
    :cond_3ff
    const v62, 0x104008f

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    .restart local v29       #fullFormat:Ljava/lang/String;
    goto/16 :goto_11e

    .line 2889
    :cond_40c
    move/from16 v0, v55

    move/from16 v1, v25

    if-ne v0, v1, :cond_414

    if-eqz v34, :cond_44a

    .line 2897
    :cond_414
    move-object/from16 v0, v44

    invoke-virtual {v0, v13}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 2899
    .local v45, startDateString:Ljava/lang/String;
    invoke-virtual {v14, v13}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2907
    .local v15, endDateString:Ljava/lang/String;
    const/16 v62, 0x6

    move/from16 v0, v62

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v62, v0

    const/16 v63, 0x0

    aput-object v54, v62, v63

    const/16 v63, 0x1

    aput-object v45, v62, v63

    const/16 v63, 0x2

    aput-object v53, v62, v63

    const/16 v63, 0x3

    aput-object v24, v62, v63

    const/16 v63, 0x4

    aput-object v15, v62, v63

    const/16 v63, 0x5

    aput-object v23, v62, v63

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v62

    goto/16 :goto_144

    .line 2919
    .end local v15           #endDateString:Ljava/lang/String;
    .end local v45           #startDateString:Ljava/lang/String;
    :cond_44a
    if-eqz v37, :cond_4d2

    .line 2921
    const-string v32, "%m"

    .line 2933
    .local v32, monthFormat:Ljava/lang/String;
    :goto_44e
    move-object/from16 v0, v44

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 2935
    .local v50, startMonthString:Ljava/lang/String;
    const-string v62, "%-d"

    move-object/from16 v0, v44

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 2937
    .local v48, startMonthDayString:Ljava/lang/String;
    const-string v62, "%Y"

    move-object/from16 v0, v44

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .line 2941
    .local v56, startYearString:Ljava/lang/String;
    if-eqz v31, :cond_4e5

    const/16 v20, 0x0

    .line 2943
    .local v20, endMonthString:Ljava/lang/String;
    :goto_46e
    if-eqz v31, :cond_4ec

    const/16 v18, 0x0

    .line 2945
    .local v18, endMonthDayString:Ljava/lang/String;
    :goto_472
    if-eqz v31, :cond_4f6

    const/16 v26, 0x0

    .line 2949
    .local v26, endYearString:Ljava/lang/String;
    :goto_476
    move/from16 v0, v49

    move/from16 v1, v19

    if-eq v0, v1, :cond_500

    .line 2961
    const/16 v30, 0x0

    .line 2963
    .local v30, index:I
    if-eqz v42, :cond_482

    .line 2965
    const/16 v30, 0x1

    .line 2967
    :cond_482
    if-eqz v43, :cond_486

    .line 2969
    add-int/lit8 v30, v30, 0x2

    .line 2971
    :cond_486
    if-eqz v41, :cond_48a

    .line 2973
    add-int/lit8 v30, v30, 0x4

    .line 2975
    :cond_48a
    if-eqz v37, :cond_48e

    .line 2977
    add-int/lit8 v30, v30, 0x8

    .line 2979
    :cond_48e
    sget-object v62, Lcom/android/calendar/TwDateUtils;->sameYearTable:[I

    aget v39, v62, v30

    .line 2981
    .local v39, resId:I
    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 2989
    const/16 v62, 0xa

    move/from16 v0, v62

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v62, v0

    const/16 v63, 0x0

    aput-object v54, v62, v63

    const/16 v63, 0x1

    aput-object v50, v62, v63

    const/16 v63, 0x2

    aput-object v48, v62, v63

    const/16 v63, 0x3

    aput-object v56, v62, v63

    const/16 v63, 0x4

    aput-object v53, v62, v63

    const/16 v63, 0x5

    aput-object v24, v62, v63

    const/16 v63, 0x6

    aput-object v20, v62, v63

    const/16 v63, 0x7

    aput-object v18, v62, v63

    const/16 v63, 0x8

    aput-object v26, v62, v63

    const/16 v63, 0x9

    aput-object v23, v62, v63

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v62

    goto/16 :goto_144

    .line 2923
    .end local v18           #endMonthDayString:Ljava/lang/String;
    .end local v20           #endMonthString:Ljava/lang/String;
    .end local v26           #endYearString:Ljava/lang/String;
    .end local v30           #index:I
    .end local v32           #monthFormat:Ljava/lang/String;
    .end local v39           #resId:I
    .end local v48           #startMonthDayString:Ljava/lang/String;
    .end local v50           #startMonthString:Ljava/lang/String;
    .end local v56           #startYearString:Ljava/lang/String;
    :cond_4d2
    if-eqz v4, :cond_4e1

    .line 2925
    const v62, 0x10400ae

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v32

    .restart local v32       #monthFormat:Ljava/lang/String;
    goto/16 :goto_44e

    .line 2929
    .end local v32           #monthFormat:Ljava/lang/String;
    :cond_4e1
    const-string v32, "%B"

    .restart local v32       #monthFormat:Ljava/lang/String;
    goto/16 :goto_44e

    .line 2941
    .restart local v48       #startMonthDayString:Ljava/lang/String;
    .restart local v50       #startMonthString:Ljava/lang/String;
    .restart local v56       #startYearString:Ljava/lang/String;
    :cond_4e5
    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    goto :goto_46e

    .line 2943
    .restart local v20       #endMonthString:Ljava/lang/String;
    :cond_4ec
    const-string v62, "%-d"

    move-object/from16 v0, v62

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_472

    .line 2945
    .restart local v18       #endMonthDayString:Ljava/lang/String;
    :cond_4f6
    const-string v62, "%Y"

    move-object/from16 v0, v62

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_476

    .line 2999
    .restart local v26       #endYearString:Ljava/lang/String;
    :cond_500
    move/from16 v0, v46

    move/from16 v1, v16

    if-eq v0, v1, :cond_55c

    .line 3003
    const/16 v30, 0x0

    .line 3005
    .restart local v30       #index:I
    if-eqz v42, :cond_50c

    .line 3007
    const/16 v30, 0x1

    .line 3009
    :cond_50c
    if-eqz v43, :cond_510

    .line 3011
    add-int/lit8 v30, v30, 0x2

    .line 3013
    :cond_510
    if-eqz v41, :cond_514

    .line 3015
    add-int/lit8 v30, v30, 0x4

    .line 3017
    :cond_514
    if-eqz v37, :cond_518

    .line 3019
    add-int/lit8 v30, v30, 0x8

    .line 3021
    :cond_518
    sget-object v62, Lcom/android/calendar/TwDateUtils;->sameMonthTable:[I

    aget v39, v62, v30

    .line 3023
    .restart local v39       #resId:I
    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 3031
    const/16 v62, 0xa

    move/from16 v0, v62

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v62, v0

    const/16 v63, 0x0

    aput-object v54, v62, v63

    const/16 v63, 0x1

    aput-object v50, v62, v63

    const/16 v63, 0x2

    aput-object v48, v62, v63

    const/16 v63, 0x3

    aput-object v56, v62, v63

    const/16 v63, 0x4

    aput-object v53, v62, v63

    const/16 v63, 0x5

    aput-object v24, v62, v63

    const/16 v63, 0x6

    aput-object v20, v62, v63

    const/16 v63, 0x7

    aput-object v18, v62, v63

    const/16 v63, 0x8

    aput-object v26, v62, v63

    const/16 v63, 0x9

    aput-object v23, v62, v63

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v62

    goto/16 :goto_144

    .line 3043
    .end local v30           #index:I
    .end local v39           #resId:I
    :cond_55c
    and-int/lit8 v62, p6, 0x10

    if-eqz v62, :cond_5ad

    const/16 v40, 0x1

    .line 3049
    .local v40, showDate:Z
    :goto_562
    if-nez v41, :cond_56a

    if-nez v40, :cond_56a

    if-nez v42, :cond_56a

    .line 3051
    const/16 v40, 0x1

    .line 3057
    :cond_56a
    const-string v58, ""

    .line 3059
    .local v58, timeString:Ljava/lang/String;
    if-eqz v41, :cond_572

    .line 3065
    if-eqz v31, :cond_5b0

    .line 3071
    move-object/from16 v58, v53

    .line 3093
    :cond_572
    :goto_572
    const-string v29, ""

    .line 3095
    const-string v11, ""

    .line 3097
    .local v11, dateString:Ljava/lang/String;
    if-eqz v40, :cond_608

    .line 3099
    move-object/from16 v0, v44

    invoke-virtual {v0, v13}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3101
    if-eqz v42, :cond_5e0

    .line 3103
    if-eqz v41, :cond_5d4

    .line 3107
    const v62, 0x104009b

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 3163
    :cond_58d
    :goto_58d
    const/16 v62, 0x3

    move/from16 v0, v62

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v62, v0

    const/16 v63, 0x0

    aput-object v58, v62, v63

    const/16 v63, 0x1

    aput-object v54, v62, v63

    const/16 v63, 0x2

    aput-object v11, v62, v63

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    move-object/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v62

    goto/16 :goto_144

    .line 3043
    .end local v11           #dateString:Ljava/lang/String;
    .end local v40           #showDate:Z
    .end local v58           #timeString:Ljava/lang/String;
    :cond_5ad
    const/16 v40, 0x0

    goto :goto_562

    .line 3077
    .restart local v40       #showDate:Z
    .restart local v58       #timeString:Ljava/lang/String;
    :cond_5b0
    const v62, 0x104008e

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v57

    .line 3083
    .local v57, timeFormat:Ljava/lang/String;
    const/16 v62, 0x2

    move/from16 v0, v62

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v62, v0

    const/16 v63, 0x0

    aput-object v53, v62, v63

    const/16 v63, 0x1

    aput-object v23, v62, v63

    move-object/from16 v0, v57

    move-object/from16 v1, v62

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v58

    goto :goto_572

    .line 3113
    .end local v57           #timeFormat:Ljava/lang/String;
    .restart local v11       #dateString:Ljava/lang/String;
    :cond_5d4
    const v62, 0x104009c

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto :goto_58d

    .line 3119
    :cond_5e0
    if-eqz v41, :cond_5ee

    .line 3123
    const v62, 0x1040086

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto :goto_58d

    .line 3129
    :cond_5ee
    const-string v62, "%s"

    const/16 v63, 0x1

    move/from16 v0, v63

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput-object v11, v63, v64

    move-object/from16 v0, p1

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v62

    goto/16 :goto_144

    .line 3135
    :cond_608
    if-eqz v42, :cond_633

    .line 3137
    if-eqz v41, :cond_619

    .line 3141
    const v62, 0x104009d

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_58d

    .line 3147
    :cond_619
    const-string v62, "%s"

    const/16 v63, 0x1

    move/from16 v0, v63

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput-object v54, v63, v64

    move-object/from16 v0, p1

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v62

    goto/16 :goto_144

    .line 3151
    :cond_633
    if-eqz v41, :cond_58d

    .line 3153
    const-string v62, "%s"

    const/16 v63, 0x1

    move/from16 v0, v63

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    aput-object v58, v63, v64

    move-object/from16 v0, p1

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v62

    goto/16 :goto_144
.end method

.method public static formatDateTime(Landroid/content/Context;JILjava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "context"
    .parameter "millis"
    .parameter "flags"
    .parameter "timezone"

    .prologue
    .line 3255
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/android/calendar/TwDateUtils;->formatDateRange(Landroid/content/Context;JJILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pm"

    const-string v2, " PM"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "am"

    const-string v2, " AM"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AM"

    const-string v2, " AM"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PM"

    const-string v2, " PM"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
