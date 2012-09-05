.class public Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDateUtils;
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

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDateUtils;->sLock:Ljava/lang/Object;

    .line 41
    new-array v0, v1, [I

    fill-array-data v0, :array_5c

    sput-object v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDateUtils;->sDaysLong:[I

    .line 50
    new-array v0, v1, [I

    fill-array-data v0, :array_6e

    sput-object v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDateUtils;->sDaysMedium:[I

    .line 59
    new-array v0, v1, [I

    fill-array-data v0, :array_80

    sput-object v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDateUtils;->sDaysShort:[I

    .line 68
    new-array v0, v1, [I

    fill-array-data v0, :array_92

    sput-object v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDateUtils;->sDaysShortest:[I

    .line 77
    new-array v0, v2, [I

    fill-array-data v0, :array_a4

    sput-object v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDateUtils;->sMonthsStandaloneLong:[I

    .line 91
    new-array v0, v2, [I

    fill-array-data v0, :array_c0

    sput-object v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDateUtils;->sMonthsLong:[I

    .line 105
    new-array v0, v2, [I

    fill-array-data v0, :array_dc

    sput-object v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDateUtils;->sMonthsMedium:[I

    .line 119
    new-array v0, v2, [I

    fill-array-data v0, :array_f8

    sput-object v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDateUtils;->sMonthsShortest:[I

    .line 133
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_114

    sput-object v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDateUtils;->sAmPm:[I

    .line 206
    new-array v0, v3, [I

    fill-array-data v0, :array_11c

    sput-object v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDateUtils;->sameYearTable:[I

    .line 232
    new-array v0, v3, [I

    fill-array-data v0, :array_140

    sput-object v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDateUtils;->sameMonthTable:[I

    return-void

    .line 41
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

    .line 50
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

    .line 59
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

    .line 68
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

    .line 77
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

    .line 91
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

    .line 105
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

    .line 119
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

    .line 133
    :array_114
    .array-data 0x4
        0x75t 0x0t 0x4t 0x1t
        0x76t 0x0t 0x4t 0x1t
    .end array-data

    .line 206
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

    .line 232
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
    .line 38
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
    .line 961
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

    .line 962
    invoke-static/range {v0 .. v7}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

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
    .line 1119
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v38

    .line 1120
    .local v38, res:Landroid/content/res/Resources;
    and-int/lit8 v62, p6, 0x1

    if-eqz v62, :cond_143

    const/16 v41, 0x1

    .line 1121
    .local v41, showTime:Z
    :goto_a
    and-int/lit8 v62, p6, 0x2

    if-eqz v62, :cond_147

    const/16 v42, 0x1

    .line 1122
    .local v42, showWeekDay:Z
    :goto_10
    and-int/lit8 v62, p6, 0x4

    if-eqz v62, :cond_14b

    const/16 v43, 0x1

    .line 1123
    .local v43, showYear:Z
    :goto_16
    and-int/lit8 v62, p6, 0x8

    if-eqz v62, :cond_14f

    const/16 v36, 0x1

    .line 1124
    .local v36, noYear:Z
    :goto_1c
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x2000

    move/from16 v62, v0

    if-eqz v62, :cond_153

    const/16 v60, 0x1

    .line 1125
    .local v60, useUTC:Z
    :goto_26
    const v62, 0x88000

    and-int v62, v62, p6

    if-eqz v62, :cond_157

    const/4 v6, 0x1

    .line 1126
    .local v6, abbrevWeekDay:Z
    :goto_2e
    const/high16 v62, 0x9

    and-int v62, v62, p6

    if-eqz v62, :cond_15a

    const/4 v4, 0x1

    .line 1127
    .local v4, abbrevMonth:Z
    :goto_35
    and-int/lit8 v62, p6, 0x20

    if-eqz v62, :cond_15d

    const/16 v34, 0x1

    .line 1128
    .local v34, noMonthDay:Z
    :goto_3b
    const/high16 v62, 0x2

    and-int v62, v62, p6

    if-eqz v62, :cond_161

    const/16 v37, 0x1

    .line 1133
    .local v37, numericDate:Z
    :goto_43
    cmp-long v62, p2, p4

    if-nez v62, :cond_165

    const/16 v31, 0x1

    .line 1135
    .local v31, isInstant:Z
    :goto_49
    if-eqz v60, :cond_169

    new-instance v44, Landroid/text/format/Time;

    const-string v62, "UTC"

    move-object/from16 v0, v44

    move-object/from16 v1, v62

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1136
    .local v44, startDate:Landroid/text/format/Time;
    :goto_56
    move-object/from16 v0, v44

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1140
    if-eqz v31, :cond_17d

    .line 1141
    move-object/from16 v14, v44

    .line 1142
    .local v14, endDate:Landroid/text/format/Time;
    const/4 v12, 0x0

    .line 1165
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

    .line 1168
    :cond_7e
    iget v0, v14, Landroid/text/format/Time;->monthDay:I

    move/from16 v62, v0

    add-int/lit8 v62, v62, -0x1

    move/from16 v0, v62

    iput v0, v14, Landroid/text/format/Time;->monthDay:I

    .line 1169
    const/16 v62, 0x1

    move/from16 v0, v62

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 1172
    :cond_8f
    move-object/from16 v0, v44

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v46, v0

    .line 1173
    .local v46, startDay:I
    move-object/from16 v0, v44

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v49, v0

    .line 1174
    .local v49, startMonthNum:I
    move-object/from16 v0, v44

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v55, v0

    .line 1176
    .local v55, startYear:I
    iget v0, v14, Landroid/text/format/Time;->monthDay:I

    move/from16 v16, v0

    .line 1177
    .local v16, endDay:I
    iget v0, v14, Landroid/text/format/Time;->month:I

    move/from16 v19, v0

    .line 1178
    .local v19, endMonthNum:I
    iget v0, v14, Landroid/text/format/Time;->year:I

    move/from16 v25, v0

    .line 1180
    .local v25, endYear:I
    const-string v54, ""

    .line 1181
    .local v54, startWeekDayString:Ljava/lang/String;
    const-string v24, ""

    .line 1182
    .local v24, endWeekDayString:Ljava/lang/String;
    if-eqz v42, :cond_c5

    .line 1183
    const-string v61, ""

    .line 1184
    .local v61, weekDayFormat:Ljava/lang/String;
    if-eqz v6, :cond_1bb

    .line 1185
    const-string v61, "%a"

    .line 1189
    :goto_b9
    move-object/from16 v0, v44

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    .line 1190
    if-eqz v31, :cond_1bf

    move-object/from16 v24, v54

    .line 1193
    .end local v61           #weekDayFormat:Ljava/lang/String;
    :cond_c5
    :goto_c5
    const-string v53, ""

    .line 1194
    .local v53, startTimeString:Ljava/lang/String;
    const-string v23, ""

    .line 1195
    .local v23, endTimeString:Ljava/lang/String;
    if-eqz v41, :cond_fe

    .line 1196
    const-string v52, ""

    .line 1197
    .local v52, startTimeFormat:Ljava/lang/String;
    const-string v22, ""

    .line 1198
    .local v22, endTimeFormat:Ljava/lang/String;
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x80

    move/from16 v62, v0

    if-eqz v62, :cond_1c7

    const/16 v28, 0x1

    .line 1199
    .local v28, force24Hour:Z
    :goto_d9
    and-int/lit8 v62, p6, 0x40

    if-eqz v62, :cond_1cb

    const/16 v27, 0x1

    .line 1201
    .local v27, force12Hour:Z
    :goto_df
    if-eqz v28, :cond_1cf

    .line 1202
    const/16 v59, 0x1

    .line 1208
    .local v59, use24Hour:Z
    :goto_e3
    if-eqz v59, :cond_1db

    .line 1209
    const v62, 0x104007a

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v52, v22

    .line 1280
    :cond_f2
    :goto_f2
    move-object/from16 v0, v44

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 1281
    if-eqz v31, :cond_340

    move-object/from16 v23, v53

    .line 1288
    .end local v22           #endTimeFormat:Ljava/lang/String;
    .end local v27           #force12Hour:Z
    .end local v28           #force24Hour:Z
    .end local v52           #startTimeFormat:Ljava/lang/String;
    .end local v59           #use24Hour:Z
    :cond_fe
    :goto_fe
    if-eqz v43, :cond_348

    .line 1305
    :goto_100
    if-eqz v37, :cond_371

    .line 1306
    const v62, 0x104007f

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1337
    .local v13, defaultDateFormat:Ljava/lang/String;
    :goto_10d
    if-eqz v42, :cond_3f4

    .line 1338
    if-eqz v41, :cond_3e7

    .line 1339
    const v62, 0x1040098

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 1351
    .local v29, fullFormat:Ljava/lang/String;
    :goto_11c
    if-eqz v34, :cond_410

    move/from16 v0, v49

    move/from16 v1, v19

    if-ne v0, v1, :cond_410

    .line 1353
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

    .line 1489
    :goto_142
    return-object v62

    .line 1120
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
    :cond_143
    const/16 v41, 0x0

    goto/16 :goto_a

    .line 1121
    .restart local v41       #showTime:Z
    :cond_147
    const/16 v42, 0x0

    goto/16 :goto_10

    .line 1122
    .restart local v42       #showWeekDay:Z
    :cond_14b
    const/16 v43, 0x0

    goto/16 :goto_16

    .line 1123
    .restart local v43       #showYear:Z
    :cond_14f
    const/16 v36, 0x0

    goto/16 :goto_1c

    .line 1124
    .restart local v36       #noYear:Z
    :cond_153
    const/16 v60, 0x0

    goto/16 :goto_26

    .line 1125
    .restart local v60       #useUTC:Z
    :cond_157
    const/4 v6, 0x0

    goto/16 :goto_2e

    .line 1126
    .restart local v6       #abbrevWeekDay:Z
    :cond_15a
    const/4 v4, 0x0

    goto/16 :goto_35

    .line 1127
    .restart local v4       #abbrevMonth:Z
    :cond_15d
    const/16 v34, 0x0

    goto/16 :goto_3b

    .line 1128
    .restart local v34       #noMonthDay:Z
    :cond_161
    const/16 v37, 0x0

    goto/16 :goto_43

    .line 1133
    .restart local v37       #numericDate:Z
    :cond_165
    const/16 v31, 0x0

    goto/16 :goto_49

    .line 1135
    .restart local v31       #isInstant:Z
    :cond_169
    if-nez p7, :cond_172

    new-instance v44, Landroid/text/format/Time;

    invoke-direct/range {v44 .. v44}, Landroid/text/format/Time;-><init>()V

    goto/16 :goto_56

    :cond_172
    new-instance v44, Landroid/text/format/Time;

    move-object/from16 v0, v44

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    goto/16 :goto_56

    .line 1144
    .restart local v44       #startDate:Landroid/text/format/Time;
    :cond_17d
    if-eqz v60, :cond_1ab

    new-instance v14, Landroid/text/format/Time;

    const-string v62, "UTC"

    move-object/from16 v0, v62

    invoke-direct {v14, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1145
    .restart local v14       #endDate:Landroid/text/format/Time;
    :goto_188
    move-wide/from16 v0, p4

    invoke-virtual {v14, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1146
    move-object/from16 v0, v44

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v62, v0

    move-wide/from16 v0, p2

    move-wide/from16 v2, v62

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v47

    .line 1147
    .local v47, startJulianDay:I
    iget-wide v0, v14, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v62, v0

    move-wide/from16 v0, p4

    move-wide/from16 v2, v62

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v17

    .line 1148
    .local v17, endJulianDay:I
    sub-int v12, v17, v47

    .restart local v12       #dayDistance:I
    goto/16 :goto_62

    .line 1144
    .end local v12           #dayDistance:I
    .end local v14           #endDate:Landroid/text/format/Time;
    .end local v17           #endJulianDay:I
    .end local v47           #startJulianDay:I
    :cond_1ab
    if-nez p7, :cond_1b3

    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    goto :goto_188

    :cond_1b3
    new-instance v14, Landroid/text/format/Time;

    move-object/from16 v0, p7

    invoke-direct {v14, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    goto :goto_188

    .line 1187
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
    :cond_1bb
    const-string v61, "%A"

    goto/16 :goto_b9

    .line 1190
    :cond_1bf
    move-object/from16 v0, v61

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_c5

    .line 1198
    .end local v61           #weekDayFormat:Ljava/lang/String;
    .restart local v22       #endTimeFormat:Ljava/lang/String;
    .restart local v23       #endTimeString:Ljava/lang/String;
    .restart local v52       #startTimeFormat:Ljava/lang/String;
    .restart local v53       #startTimeString:Ljava/lang/String;
    :cond_1c7
    const/16 v28, 0x0

    goto/16 :goto_d9

    .line 1199
    .restart local v28       #force24Hour:Z
    :cond_1cb
    const/16 v27, 0x0

    goto/16 :goto_df

    .line 1203
    .restart local v27       #force12Hour:Z
    :cond_1cf
    if-eqz v27, :cond_1d5

    .line 1204
    const/16 v59, 0x0

    .restart local v59       #use24Hour:Z
    goto/16 :goto_e3

    .line 1206
    .end local v59           #use24Hour:Z
    :cond_1d5
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v59

    .restart local v59       #use24Hour:Z
    goto/16 :goto_e3

    .line 1212
    :cond_1db
    const v62, 0x84000

    and-int v62, v62, p6

    if-eqz v62, :cond_294

    const/4 v5, 0x1

    .line 1213
    .local v5, abbrevTime:Z
    :goto_1e3
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x100

    move/from16 v62, v0

    if-eqz v62, :cond_297

    const/4 v7, 0x1

    .line 1214
    .local v7, capAMPM:Z
    :goto_1ec
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x200

    move/from16 v62, v0

    if-eqz v62, :cond_29a

    const/16 v35, 0x1

    .line 1215
    .local v35, noNoon:Z
    :goto_1f6
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x400

    move/from16 v62, v0

    if-eqz v62, :cond_29e

    const/4 v9, 0x1

    .line 1216
    .local v9, capNoon:Z
    :goto_1ff
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x800

    move/from16 v62, v0

    if-eqz v62, :cond_2a1

    const/16 v33, 0x1

    .line 1217
    .local v33, noMidnight:Z
    :goto_209
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x1000

    move/from16 v62, v0

    if-eqz v62, :cond_2a5

    const/4 v8, 0x1

    .line 1219
    .local v8, capMidnight:Z
    :goto_212
    move-object/from16 v0, v44

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v62, v0

    if-nez v62, :cond_2a8

    move-object/from16 v0, v44

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 v62, v0

    if-nez v62, :cond_2a8

    const/16 v51, 0x1

    .line 1220
    .local v51, startOnTheHour:Z
    :goto_224
    iget v0, v14, Landroid/text/format/Time;->minute:I

    move/from16 v62, v0

    if-nez v62, :cond_2ac

    iget v0, v14, Landroid/text/format/Time;->second:I

    move/from16 v62, v0

    if-nez v62, :cond_2ac

    const/16 v21, 0x1

    .line 1221
    .local v21, endOnTheHour:Z
    :goto_232
    if-eqz v5, :cond_2bb

    if-eqz v51, :cond_2bb

    .line 1222
    if-eqz v7, :cond_2af

    .line 1223
    const v62, 0x10403c7

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v52

    .line 1239
    :goto_243
    if-nez v31, :cond_273

    .line 1240
    if-eqz v5, :cond_2e4

    if-eqz v21, :cond_2e4

    .line 1241
    if-eqz v7, :cond_2d7

    .line 1242
    const v62, 0x10403c7

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 1254
    :goto_256
    iget v0, v14, Landroid/text/format/Time;->hour:I

    move/from16 v62, v0

    const/16 v63, 0xc

    move/from16 v0, v62

    move/from16 v1, v63

    if-ne v0, v1, :cond_30d

    if-eqz v21, :cond_30d

    if-nez v35, :cond_30d

    .line 1255
    if-eqz v9, :cond_300

    .line 1256
    const v62, 0x1040447

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 1269
    :cond_273
    :goto_273
    move-object/from16 v0, v44

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v62, v0

    const/16 v63, 0xc

    move/from16 v0, v62

    move/from16 v1, v63

    if-ne v0, v1, :cond_f2

    if-eqz v51, :cond_f2

    if-nez v35, :cond_f2

    .line 1270
    if-eqz v9, :cond_333

    .line 1271
    const v62, 0x1040447

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v52

    goto/16 :goto_f2

    .line 1212
    .end local v5           #abbrevTime:Z
    .end local v7           #capAMPM:Z
    .end local v8           #capMidnight:Z
    .end local v9           #capNoon:Z
    .end local v21           #endOnTheHour:Z
    .end local v33           #noMidnight:Z
    .end local v35           #noNoon:Z
    .end local v51           #startOnTheHour:Z
    :cond_294
    const/4 v5, 0x0

    goto/16 :goto_1e3

    .line 1213
    .restart local v5       #abbrevTime:Z
    :cond_297
    const/4 v7, 0x0

    goto/16 :goto_1ec

    .line 1214
    .restart local v7       #capAMPM:Z
    :cond_29a
    const/16 v35, 0x0

    goto/16 :goto_1f6

    .line 1215
    .restart local v35       #noNoon:Z
    :cond_29e
    const/4 v9, 0x0

    goto/16 :goto_1ff

    .line 1216
    .restart local v9       #capNoon:Z
    :cond_2a1
    const/16 v33, 0x0

    goto/16 :goto_209

    .line 1217
    .restart local v33       #noMidnight:Z
    :cond_2a5
    const/4 v8, 0x0

    goto/16 :goto_212

    .line 1219
    .restart local v8       #capMidnight:Z
    :cond_2a8
    const/16 v51, 0x0

    goto/16 :goto_224

    .line 1220
    .restart local v51       #startOnTheHour:Z
    :cond_2ac
    const/16 v21, 0x0

    goto :goto_232

    .line 1225
    .restart local v21       #endOnTheHour:Z
    :cond_2af
    const v62, 0x10403c6

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v52

    goto :goto_243

    .line 1228
    :cond_2bb
    if-eqz v7, :cond_2ca

    .line 1229
    const v62, 0x104007c

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v52

    goto/16 :goto_243

    .line 1231
    :cond_2ca
    const v62, 0x104007b

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v52

    goto/16 :goto_243

    .line 1244
    :cond_2d7
    const v62, 0x10403c6

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_256

    .line 1247
    :cond_2e4
    if-eqz v7, :cond_2f3

    .line 1248
    const v62, 0x104007c

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_256

    .line 1250
    :cond_2f3
    const v62, 0x104007b

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_256

    .line 1258
    :cond_300
    const v62, 0x1040446

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_273

    .line 1260
    :cond_30d
    iget v0, v14, Landroid/text/format/Time;->hour:I

    move/from16 v62, v0

    if-nez v62, :cond_273

    if-eqz v21, :cond_273

    if-nez v33, :cond_273

    .line 1261
    if-eqz v8, :cond_326

    .line 1262
    const v62, 0x1040449

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_273

    .line 1264
    :cond_326
    const v62, 0x1040448

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_273

    .line 1273
    :cond_333
    const v62, 0x1040446

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v52

    goto/16 :goto_f2

    .line 1281
    .end local v5           #abbrevTime:Z
    .end local v7           #capAMPM:Z
    .end local v8           #capMidnight:Z
    .end local v9           #capNoon:Z
    .end local v21           #endOnTheHour:Z
    .end local v33           #noMidnight:Z
    .end local v35           #noNoon:Z
    .end local v51           #startOnTheHour:Z
    :cond_340
    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_fe

    .line 1292
    .end local v22           #endTimeFormat:Ljava/lang/String;
    .end local v27           #force12Hour:Z
    .end local v28           #force24Hour:Z
    .end local v52           #startTimeFormat:Ljava/lang/String;
    .end local v59           #use24Hour:Z
    :cond_348
    if-eqz v36, :cond_34e

    .line 1294
    const/16 v43, 0x0

    goto/16 :goto_100

    .line 1295
    :cond_34e
    move/from16 v0, v55

    move/from16 v1, v25

    if-eq v0, v1, :cond_358

    .line 1296
    const/16 v43, 0x1

    goto/16 :goto_100

    .line 1299
    :cond_358
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 1300
    .local v10, currentTime:Landroid/text/format/Time;
    invoke-virtual {v10}, Landroid/text/format/Time;->setToNow()V

    .line 1301
    iget v0, v10, Landroid/text/format/Time;->year:I

    move/from16 v62, v0

    move/from16 v0, v55

    move/from16 v1, v62

    if-eq v0, v1, :cond_36e

    const/16 v43, 0x1

    :goto_36c
    goto/16 :goto_100

    :cond_36e
    const/16 v43, 0x0

    goto :goto_36c

    .line 1307
    .end local v10           #currentTime:Landroid/text/format/Time;
    :cond_371
    if-eqz v43, :cond_3ad

    .line 1308
    if-eqz v4, :cond_391

    .line 1309
    if-eqz v34, :cond_384

    .line 1310
    const v62, 0x104008d

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_10d

    .line 1312
    .end local v13           #defaultDateFormat:Ljava/lang/String;
    :cond_384
    const v62, 0x1040087

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_10d

    .line 1315
    .end local v13           #defaultDateFormat:Ljava/lang/String;
    :cond_391
    if-eqz v34, :cond_3a0

    .line 1316
    const v62, 0x104008a

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_10d

    .line 1318
    .end local v13           #defaultDateFormat:Ljava/lang/String;
    :cond_3a0
    const v62, 0x1040082

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_10d

    .line 1322
    .end local v13           #defaultDateFormat:Ljava/lang/String;
    :cond_3ad
    if-eqz v4, :cond_3cb

    .line 1323
    if-eqz v34, :cond_3be

    .line 1324
    const v62, 0x104008c

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_10d

    .line 1326
    .end local v13           #defaultDateFormat:Ljava/lang/String;
    :cond_3be
    const v62, 0x104008b

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_10d

    .line 1329
    .end local v13           #defaultDateFormat:Ljava/lang/String;
    :cond_3cb
    if-eqz v34, :cond_3da

    .line 1330
    const v62, 0x1040089

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_10d

    .line 1332
    .end local v13           #defaultDateFormat:Ljava/lang/String;
    :cond_3da
    const v62, 0x1040088

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .restart local v13       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_10d

    .line 1341
    :cond_3e7
    const v62, 0x1040099

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    .restart local v29       #fullFormat:Ljava/lang/String;
    goto/16 :goto_11c

    .line 1344
    .end local v29           #fullFormat:Ljava/lang/String;
    :cond_3f4
    if-eqz v41, :cond_403

    .line 1345
    const v62, 0x104009a

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    .restart local v29       #fullFormat:Ljava/lang/String;
    goto/16 :goto_11c

    .line 1347
    .end local v29           #fullFormat:Ljava/lang/String;
    :cond_403
    const v62, 0x104008f

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    .restart local v29       #fullFormat:Ljava/lang/String;
    goto/16 :goto_11c

    .line 1356
    :cond_410
    move/from16 v0, v55

    move/from16 v1, v25

    if-ne v0, v1, :cond_418

    if-eqz v34, :cond_44e

    .line 1360
    :cond_418
    move-object/from16 v0, v44

    invoke-virtual {v0, v13}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 1361
    .local v45, startDateString:Ljava/lang/String;
    invoke-virtual {v14, v13}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1365
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

    goto/16 :goto_142

    .line 1372
    .end local v15           #endDateString:Ljava/lang/String;
    .end local v45           #startDateString:Ljava/lang/String;
    :cond_44e
    if-eqz v37, :cond_4d6

    .line 1373
    const-string v32, "%m"

    .line 1380
    .local v32, monthFormat:Ljava/lang/String;
    :goto_452
    move-object/from16 v0, v44

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 1381
    .local v50, startMonthString:Ljava/lang/String;
    const-string v62, "%-d"

    move-object/from16 v0, v44

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 1382
    .local v48, startMonthDayString:Ljava/lang/String;
    const-string v62, "%Y"

    move-object/from16 v0, v44

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .line 1384
    .local v56, startYearString:Ljava/lang/String;
    if-eqz v31, :cond_4e9

    const/16 v20, 0x0

    .line 1385
    .local v20, endMonthString:Ljava/lang/String;
    :goto_472
    if-eqz v31, :cond_4f0

    const/16 v18, 0x0

    .line 1386
    .local v18, endMonthDayString:Ljava/lang/String;
    :goto_476
    if-eqz v31, :cond_4fa

    const/16 v26, 0x0

    .line 1388
    .local v26, endYearString:Ljava/lang/String;
    :goto_47a
    move/from16 v0, v49

    move/from16 v1, v19

    if-eq v0, v1, :cond_504

    .line 1394
    const/16 v30, 0x0

    .line 1395
    .local v30, index:I
    if-eqz v42, :cond_486

    const/16 v30, 0x1

    .line 1396
    :cond_486
    if-eqz v43, :cond_48a

    add-int/lit8 v30, v30, 0x2

    .line 1397
    :cond_48a
    if-eqz v41, :cond_48e

    add-int/lit8 v30, v30, 0x4

    .line 1398
    :cond_48e
    if-eqz v37, :cond_492

    add-int/lit8 v30, v30, 0x8

    .line 1399
    :cond_492
    sget-object v62, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDateUtils;->sameYearTable:[I

    aget v39, v62, v30

    .line 1400
    .local v39, resId:I
    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 1404
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

    goto/16 :goto_142

    .line 1374
    .end local v18           #endMonthDayString:Ljava/lang/String;
    .end local v20           #endMonthString:Ljava/lang/String;
    .end local v26           #endYearString:Ljava/lang/String;
    .end local v30           #index:I
    .end local v32           #monthFormat:Ljava/lang/String;
    .end local v39           #resId:I
    .end local v48           #startMonthDayString:Ljava/lang/String;
    .end local v50           #startMonthString:Ljava/lang/String;
    .end local v56           #startYearString:Ljava/lang/String;
    :cond_4d6
    if-eqz v4, :cond_4e5

    .line 1375
    const v62, 0x10400ae

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v32

    .restart local v32       #monthFormat:Ljava/lang/String;
    goto/16 :goto_452

    .line 1378
    .end local v32           #monthFormat:Ljava/lang/String;
    :cond_4e5
    const-string v32, "%B"

    .restart local v32       #monthFormat:Ljava/lang/String;
    goto/16 :goto_452

    .line 1384
    .restart local v48       #startMonthDayString:Ljava/lang/String;
    .restart local v50       #startMonthString:Ljava/lang/String;
    .restart local v56       #startYearString:Ljava/lang/String;
    :cond_4e9
    move-object/from16 v0, v32

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    goto :goto_472

    .line 1385
    .restart local v20       #endMonthString:Ljava/lang/String;
    :cond_4f0
    const-string v62, "%-d"

    move-object/from16 v0, v62

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_476

    .line 1386
    .restart local v18       #endMonthDayString:Ljava/lang/String;
    :cond_4fa
    const-string v62, "%Y"

    move-object/from16 v0, v62

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_47a

    .line 1411
    .restart local v26       #endYearString:Ljava/lang/String;
    :cond_504
    move/from16 v0, v46

    move/from16 v1, v16

    if-eq v0, v1, :cond_560

    .line 1413
    const/16 v30, 0x0

    .line 1414
    .restart local v30       #index:I
    if-eqz v42, :cond_510

    const/16 v30, 0x1

    .line 1415
    :cond_510
    if-eqz v43, :cond_514

    add-int/lit8 v30, v30, 0x2

    .line 1416
    :cond_514
    if-eqz v41, :cond_518

    add-int/lit8 v30, v30, 0x4

    .line 1417
    :cond_518
    if-eqz v37, :cond_51c

    add-int/lit8 v30, v30, 0x8

    .line 1418
    :cond_51c
    sget-object v62, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDateUtils;->sameMonthTable:[I

    aget v39, v62, v30

    .line 1419
    .restart local v39       #resId:I
    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 1423
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

    goto/16 :goto_142

    .line 1431
    .end local v30           #index:I
    .end local v39           #resId:I
    :cond_560
    and-int/lit8 v62, p6, 0x10

    if-eqz v62, :cond_5b1

    const/16 v40, 0x1

    .line 1434
    .local v40, showDate:Z
    :goto_566
    if-nez v41, :cond_56e

    if-nez v40, :cond_56e

    if-nez v42, :cond_56e

    const/16 v40, 0x1

    .line 1437
    :cond_56e
    const-string v58, ""

    .line 1438
    .local v58, timeString:Ljava/lang/String;
    if-eqz v41, :cond_576

    .line 1441
    if-eqz v31, :cond_5b4

    .line 1444
    move-object/from16 v58, v53

    .line 1454
    :cond_576
    :goto_576
    const-string v29, ""

    .line 1455
    const-string v11, ""

    .line 1456
    .local v11, dateString:Ljava/lang/String;
    if-eqz v40, :cond_60c

    .line 1457
    move-object/from16 v0, v44

    invoke-virtual {v0, v13}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1458
    if-eqz v42, :cond_5e4

    .line 1459
    if-eqz v41, :cond_5d8

    .line 1461
    const v62, 0x104009b

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 1489
    :cond_591
    :goto_591
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

    goto/16 :goto_142

    .line 1431
    .end local v11           #dateString:Ljava/lang/String;
    .end local v40           #showDate:Z
    .end local v58           #timeString:Ljava/lang/String;
    :cond_5b1
    const/16 v40, 0x0

    goto :goto_566

    .line 1447
    .restart local v40       #showDate:Z
    .restart local v58       #timeString:Ljava/lang/String;
    :cond_5b4
    const v62, 0x104008e

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v57

    .line 1449
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

    goto :goto_576

    .line 1464
    .end local v57           #timeFormat:Ljava/lang/String;
    .restart local v11       #dateString:Ljava/lang/String;
    :cond_5d8
    const v62, 0x104009c

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto :goto_591

    .line 1467
    :cond_5e4
    if-eqz v41, :cond_5f2

    .line 1469
    const v62, 0x1040086

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto :goto_591

    .line 1472
    :cond_5f2
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

    goto/16 :goto_142

    .line 1475
    :cond_60c
    if-eqz v42, :cond_637

    .line 1476
    if-eqz v41, :cond_61d

    .line 1478
    const v62, 0x104009d

    move-object/from16 v0, v38

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_591

    .line 1481
    :cond_61d
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

    goto/16 :goto_142

    .line 1483
    :cond_637
    if-eqz v41, :cond_591

    .line 1484
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

    goto/16 :goto_142
.end method

.method public static formatDateTime(Landroid/content/Context;JILjava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "context"
    .parameter "millis"
    .parameter "flags"
    .parameter "timezone"

    .prologue
    .line 1535
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    move v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TwDateUtils;->formatDateRange(Landroid/content/Context;JJILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
