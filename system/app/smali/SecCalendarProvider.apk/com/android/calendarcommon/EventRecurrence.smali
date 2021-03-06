.class public Lcom/android/calendarcommon/EventRecurrence;
.super Ljava/lang/Object;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendarcommon/EventRecurrence$1;,
        Lcom/android/calendarcommon/EventRecurrence$ParseWkst;,
        Lcom/android/calendarcommon/EventRecurrence$ParseBySetPos;,
        Lcom/android/calendarcommon/EventRecurrence$ParseByMonth;,
        Lcom/android/calendarcommon/EventRecurrence$ParseByWeekNo;,
        Lcom/android/calendarcommon/EventRecurrence$ParseByYearDay;,
        Lcom/android/calendarcommon/EventRecurrence$ParseByMonthDay;,
        Lcom/android/calendarcommon/EventRecurrence$ParseByDay;,
        Lcom/android/calendarcommon/EventRecurrence$ParseByHour;,
        Lcom/android/calendarcommon/EventRecurrence$ParseByMinute;,
        Lcom/android/calendarcommon/EventRecurrence$ParseBySecond;,
        Lcom/android/calendarcommon/EventRecurrence$ParseInterval;,
        Lcom/android/calendarcommon/EventRecurrence$ParseCount;,
        Lcom/android/calendarcommon/EventRecurrence$ParseUntil;,
        Lcom/android/calendarcommon/EventRecurrence$ParseFreq;,
        Lcom/android/calendarcommon/EventRecurrence$PartParser;,
        Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static final sParseFreqMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sParsePartMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/calendarcommon/EventRecurrence$PartParser;",
            ">;"
        }
    .end annotation
.end field

.field private static final sParseWeekdayMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public byday:[I

.field public bydayCount:I

.field public bydayNum:[I

.field public byhour:[I

.field public byhourCount:I

.field public byminute:[I

.field public byminuteCount:I

.field public bymonth:[I

.field public bymonthCount:I

.field public bymonthday:[I

.field public bymonthdayCount:I

.field public bysecond:[I

.field public bysecondCount:I

.field public bysetpos:[I

.field public bysetposCount:I

.field public byweekno:[I

.field public byweeknoCount:I

.field public byyearday:[I

.field public byyeardayCount:I

.field public count:I

.field public freq:I

.field public interval:I

.field public startDate:Landroid/text/format/Time;

.field public until:Ljava/lang/String;

.field public wkst:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 31
    const-string v0, "EventRecur"

    sput-object v0, Lcom/android/calendarcommon/EventRecurrence;->TAG:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    .line 82
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "FREQ"

    new-instance v2, Lcom/android/calendarcommon/EventRecurrence$ParseFreq;

    invoke-direct {v2, v3}, Lcom/android/calendarcommon/EventRecurrence$ParseFreq;-><init>(Lcom/android/calendarcommon/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "UNTIL"

    new-instance v2, Lcom/android/calendarcommon/EventRecurrence$ParseUntil;

    invoke-direct {v2, v3}, Lcom/android/calendarcommon/EventRecurrence$ParseUntil;-><init>(Lcom/android/calendarcommon/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "COUNT"

    new-instance v2, Lcom/android/calendarcommon/EventRecurrence$ParseCount;

    invoke-direct {v2, v3}, Lcom/android/calendarcommon/EventRecurrence$ParseCount;-><init>(Lcom/android/calendarcommon/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "INTERVAL"

    new-instance v2, Lcom/android/calendarcommon/EventRecurrence$ParseInterval;

    invoke-direct {v2, v3}, Lcom/android/calendarcommon/EventRecurrence$ParseInterval;-><init>(Lcom/android/calendarcommon/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "BYSECOND"

    new-instance v2, Lcom/android/calendarcommon/EventRecurrence$ParseBySecond;

    invoke-direct {v2, v3}, Lcom/android/calendarcommon/EventRecurrence$ParseBySecond;-><init>(Lcom/android/calendarcommon/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "BYMINUTE"

    new-instance v2, Lcom/android/calendarcommon/EventRecurrence$ParseByMinute;

    invoke-direct {v2, v3}, Lcom/android/calendarcommon/EventRecurrence$ParseByMinute;-><init>(Lcom/android/calendarcommon/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "BYHOUR"

    new-instance v2, Lcom/android/calendarcommon/EventRecurrence$ParseByHour;

    invoke-direct {v2, v3}, Lcom/android/calendarcommon/EventRecurrence$ParseByHour;-><init>(Lcom/android/calendarcommon/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "BYDAY"

    new-instance v2, Lcom/android/calendarcommon/EventRecurrence$ParseByDay;

    invoke-direct {v2, v3}, Lcom/android/calendarcommon/EventRecurrence$ParseByDay;-><init>(Lcom/android/calendarcommon/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "BYMONTHDAY"

    new-instance v2, Lcom/android/calendarcommon/EventRecurrence$ParseByMonthDay;

    invoke-direct {v2, v3}, Lcom/android/calendarcommon/EventRecurrence$ParseByMonthDay;-><init>(Lcom/android/calendarcommon/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "BYYEARDAY"

    new-instance v2, Lcom/android/calendarcommon/EventRecurrence$ParseByYearDay;

    invoke-direct {v2, v3}, Lcom/android/calendarcommon/EventRecurrence$ParseByYearDay;-><init>(Lcom/android/calendarcommon/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "BYWEEKNO"

    new-instance v2, Lcom/android/calendarcommon/EventRecurrence$ParseByWeekNo;

    invoke-direct {v2, v3}, Lcom/android/calendarcommon/EventRecurrence$ParseByWeekNo;-><init>(Lcom/android/calendarcommon/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "BYMONTH"

    new-instance v2, Lcom/android/calendarcommon/EventRecurrence$ParseByMonth;

    invoke-direct {v2, v3}, Lcom/android/calendarcommon/EventRecurrence$ParseByMonth;-><init>(Lcom/android/calendarcommon/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "BYSETPOS"

    new-instance v2, Lcom/android/calendarcommon/EventRecurrence$ParseBySetPos;

    invoke-direct {v2, v3}, Lcom/android/calendarcommon/EventRecurrence$ParseBySetPos;-><init>(Lcom/android/calendarcommon/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "WKST"

    new-instance v2, Lcom/android/calendarcommon/EventRecurrence$ParseWkst;

    invoke-direct {v2, v3}, Lcom/android/calendarcommon/EventRecurrence$ParseWkst;-><init>(Lcom/android/calendarcommon/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParseFreqMap:Ljava/util/HashMap;

    .line 117
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParseFreqMap:Ljava/util/HashMap;

    const-string v1, "SECONDLY"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParseFreqMap:Ljava/util/HashMap;

    const-string v1, "MINUTELY"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParseFreqMap:Ljava/util/HashMap;

    const-string v1, "HOURLY"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParseFreqMap:Ljava/util/HashMap;

    const-string v1, "DAILY"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParseFreqMap:Ljava/util/HashMap;

    const-string v1, "WEEKLY"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParseFreqMap:Ljava/util/HashMap;

    const-string v1, "MONTHLY"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParseFreqMap:Ljava/util/HashMap;

    const-string v1, "YEARLY"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;

    .line 129
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;

    const-string v1, "SU"

    const/high16 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;

    const-string v1, "MO"

    const/high16 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;

    const-string v1, "TU"

    const/high16 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;

    const-string v1, "WE"

    const/high16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;

    const-string v1, "TH"

    const/high16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;

    const-string v1, "FR"

    const/high16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;

    const-string v1, "SA"

    const/high16 v2, 0x40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 893
    return-void
.end method

.method static synthetic access$1400()Ljava/util/HashMap;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParseFreqMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1500()Ljava/lang/String;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600()Ljava/util/HashMap;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private appendByDay(Ljava/lang/StringBuilder;I)V
    .registers 6
    .parameter "s"
    .parameter "i"

    .prologue
    .line 311
    iget-object v2, p0, Lcom/android/calendarcommon/EventRecurrence;->bydayNum:[I

    aget v0, v2, p2

    .line 312
    .local v0, n:I
    if-eqz v0, :cond_9

    .line 313
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 316
    :cond_9
    iget-object v2, p0, Lcom/android/calendarcommon/EventRecurrence;->byday:[I

    aget v2, v2, p2

    invoke-static {v2}, Lcom/android/calendarcommon/EventRecurrence;->day2String(I)Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, str:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    return-void
.end method

.method private static appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V
    .registers 6
    .parameter "s"
    .parameter "label"
    .parameter "count"
    .parameter "values"

    .prologue
    .line 298
    if-lez p2, :cond_1c

    .line 299
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    add-int/lit8 p2, p2, -0x1

    .line 301
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    if-ge v0, p2, :cond_17

    .line 302
    aget v1, p3, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 303
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 305
    :cond_17
    aget v1, p3, p2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 307
    .end local v0           #i:I
    :cond_1c
    return-void
.end method

.method private static arraysEqual([II[II)Z
    .registers 8
    .parameter "array1"
    .parameter "count1"
    .parameter "array2"
    .parameter "count2"

    .prologue
    const/4 v1, 0x0

    .line 456
    if-eq p1, p3, :cond_4

    .line 465
    :cond_3
    :goto_3
    return v1

    .line 460
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, p1, :cond_10

    .line 461
    aget v2, p0, v0

    aget v3, p2, v0

    if-ne v2, v3, :cond_3

    .line 460
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 465
    :cond_10
    const/4 v1, 0x1

    goto :goto_3
.end method

.method private static day2String(I)Ljava/lang/String;
    .registers 4
    .parameter "day"

    .prologue
    .line 275
    sparse-switch p0, :sswitch_data_32

    .line 291
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad day argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :sswitch_1c
    const-string v0, "SU"

    .line 289
    :goto_1e
    return-object v0

    .line 279
    :sswitch_1f
    const-string v0, "MO"

    goto :goto_1e

    .line 281
    :sswitch_22
    const-string v0, "TU"

    goto :goto_1e

    .line 283
    :sswitch_25
    const-string v0, "WE"

    goto :goto_1e

    .line 285
    :sswitch_28
    const-string v0, "TH"

    goto :goto_1e

    .line 287
    :sswitch_2b
    const-string v0, "FR"

    goto :goto_1e

    .line 289
    :sswitch_2e
    const-string v0, "SA"

    goto :goto_1e

    .line 275
    nop

    :sswitch_data_32
    .sparse-switch
        0x10000 -> :sswitch_1c
        0x20000 -> :sswitch_1f
        0x40000 -> :sswitch_22
        0x80000 -> :sswitch_25
        0x100000 -> :sswitch_28
        0x200000 -> :sswitch_2b
        0x400000 -> :sswitch_2e
    .end sparse-switch
.end method

.method public static day2TimeDay(I)I
    .registers 4
    .parameter "day"

    .prologue
    .line 215
    sparse-switch p0, :sswitch_data_2a

    .line 232
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad day of week: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :sswitch_1c
    const/4 v0, 0x0

    .line 230
    :goto_1d
    return v0

    .line 220
    :sswitch_1e
    const/4 v0, 0x1

    goto :goto_1d

    .line 222
    :sswitch_20
    const/4 v0, 0x2

    goto :goto_1d

    .line 224
    :sswitch_22
    const/4 v0, 0x3

    goto :goto_1d

    .line 226
    :sswitch_24
    const/4 v0, 0x4

    goto :goto_1d

    .line 228
    :sswitch_26
    const/4 v0, 0x5

    goto :goto_1d

    .line 230
    :sswitch_28
    const/4 v0, 0x6

    goto :goto_1d

    .line 215
    :sswitch_data_2a
    .sparse-switch
        0x10000 -> :sswitch_1c
        0x20000 -> :sswitch_1e
        0x40000 -> :sswitch_20
        0x80000 -> :sswitch_22
        0x100000 -> :sswitch_24
        0x200000 -> :sswitch_26
        0x400000 -> :sswitch_28
    .end sparse-switch
.end method

.method private resetFields()V
    .registers 2

    .prologue
    .line 514
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    .line 515
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendarcommon/EventRecurrence;->bysetposCount:I

    iput v0, p0, Lcom/android/calendarcommon/EventRecurrence;->bymonthCount:I

    iput v0, p0, Lcom/android/calendarcommon/EventRecurrence;->byweeknoCount:I

    iput v0, p0, Lcom/android/calendarcommon/EventRecurrence;->byyeardayCount:I

    iput v0, p0, Lcom/android/calendarcommon/EventRecurrence;->bymonthdayCount:I

    iput v0, p0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    iput v0, p0, Lcom/android/calendarcommon/EventRecurrence;->byhourCount:I

    iput v0, p0, Lcom/android/calendarcommon/EventRecurrence;->byminuteCount:I

    iput v0, p0, Lcom/android/calendarcommon/EventRecurrence;->bysecondCount:I

    iput v0, p0, Lcom/android/calendarcommon/EventRecurrence;->interval:I

    iput v0, p0, Lcom/android/calendarcommon/EventRecurrence;->count:I

    iput v0, p0, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    .line 518
    return-void
.end method

.method public static timeDay2Day(I)I
    .registers 4
    .parameter "day"

    .prologue
    .line 193
    packed-switch p0, :pswitch_data_32

    .line 210
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad day of week: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :pswitch_1c
    const/high16 v0, 0x1

    .line 208
    :goto_1e
    return v0

    .line 198
    :pswitch_1f
    const/high16 v0, 0x2

    goto :goto_1e

    .line 200
    :pswitch_22
    const/high16 v0, 0x4

    goto :goto_1e

    .line 202
    :pswitch_25
    const/high16 v0, 0x8

    goto :goto_1e

    .line 204
    :pswitch_28
    const/high16 v0, 0x10

    goto :goto_1e

    .line 206
    :pswitch_2b
    const/high16 v0, 0x20

    goto :goto_1e

    .line 208
    :pswitch_2e
    const/high16 v0, 0x40

    goto :goto_1e

    .line 193
    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 470
    if-ne p0, p1, :cond_5

    .line 478
    :cond_4
    :goto_4
    return v1

    .line 473
    :cond_5
    instance-of v3, p1, Lcom/android/calendarcommon/EventRecurrence;

    if-nez v3, :cond_b

    move v1, v2

    .line 474
    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 477
    check-cast v0, Lcom/android/calendarcommon/EventRecurrence;

    .line 478
    .local v0, er:Lcom/android/calendarcommon/EventRecurrence;
    iget-object v3, p0, Lcom/android/calendarcommon/EventRecurrence;->startDate:Landroid/text/format/Time;

    if-nez v3, :cond_c5

    iget-object v3, v0, Lcom/android/calendarcommon/EventRecurrence;->startDate:Landroid/text/format/Time;

    if-nez v3, :cond_c2

    :goto_16
    iget v3, p0, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    iget v4, v0, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    if-ne v3, v4, :cond_c2

    iget-object v3, p0, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    if-nez v3, :cond_d1

    iget-object v3, v0, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    if-nez v3, :cond_c2

    :goto_24
    iget v3, p0, Lcom/android/calendarcommon/EventRecurrence;->count:I

    iget v4, v0, Lcom/android/calendarcommon/EventRecurrence;->count:I

    if-ne v3, v4, :cond_c2

    iget v3, p0, Lcom/android/calendarcommon/EventRecurrence;->interval:I

    iget v4, v0, Lcom/android/calendarcommon/EventRecurrence;->interval:I

    if-ne v3, v4, :cond_c2

    iget v3, p0, Lcom/android/calendarcommon/EventRecurrence;->wkst:I

    iget v4, v0, Lcom/android/calendarcommon/EventRecurrence;->wkst:I

    if-ne v3, v4, :cond_c2

    iget-object v3, p0, Lcom/android/calendarcommon/EventRecurrence;->bysecond:[I

    iget v4, p0, Lcom/android/calendarcommon/EventRecurrence;->bysecondCount:I

    iget-object v5, v0, Lcom/android/calendarcommon/EventRecurrence;->bysecond:[I

    iget v6, v0, Lcom/android/calendarcommon/EventRecurrence;->bysecondCount:I

    invoke-static {v3, v4, v5, v6}, Lcom/android/calendarcommon/EventRecurrence;->arraysEqual([II[II)Z

    move-result v3

    if-eqz v3, :cond_c2

    iget-object v3, p0, Lcom/android/calendarcommon/EventRecurrence;->byminute:[I

    iget v4, p0, Lcom/android/calendarcommon/EventRecurrence;->byminuteCount:I

    iget-object v5, v0, Lcom/android/calendarcommon/EventRecurrence;->byminute:[I

    iget v6, v0, Lcom/android/calendarcommon/EventRecurrence;->byminuteCount:I

    invoke-static {v3, v4, v5, v6}, Lcom/android/calendarcommon/EventRecurrence;->arraysEqual([II[II)Z

    move-result v3

    if-eqz v3, :cond_c2

    iget-object v3, p0, Lcom/android/calendarcommon/EventRecurrence;->byhour:[I

    iget v4, p0, Lcom/android/calendarcommon/EventRecurrence;->byhourCount:I

    iget-object v5, v0, Lcom/android/calendarcommon/EventRecurrence;->byhour:[I

    iget v6, v0, Lcom/android/calendarcommon/EventRecurrence;->byhourCount:I

    invoke-static {v3, v4, v5, v6}, Lcom/android/calendarcommon/EventRecurrence;->arraysEqual([II[II)Z

    move-result v3

    if-eqz v3, :cond_c2

    iget-object v3, p0, Lcom/android/calendarcommon/EventRecurrence;->byday:[I

    iget v4, p0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    iget-object v5, v0, Lcom/android/calendarcommon/EventRecurrence;->byday:[I

    iget v6, v0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    invoke-static {v3, v4, v5, v6}, Lcom/android/calendarcommon/EventRecurrence;->arraysEqual([II[II)Z

    move-result v3

    if-eqz v3, :cond_c2

    iget-object v3, p0, Lcom/android/calendarcommon/EventRecurrence;->bydayNum:[I

    iget v4, p0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    iget-object v5, v0, Lcom/android/calendarcommon/EventRecurrence;->bydayNum:[I

    iget v6, v0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    invoke-static {v3, v4, v5, v6}, Lcom/android/calendarcommon/EventRecurrence;->arraysEqual([II[II)Z

    move-result v3

    if-eqz v3, :cond_c2

    iget-object v3, p0, Lcom/android/calendarcommon/EventRecurrence;->bymonthday:[I

    iget v4, p0, Lcom/android/calendarcommon/EventRecurrence;->bymonthdayCount:I

    iget-object v5, v0, Lcom/android/calendarcommon/EventRecurrence;->bymonthday:[I

    iget v6, v0, Lcom/android/calendarcommon/EventRecurrence;->bymonthdayCount:I

    invoke-static {v3, v4, v5, v6}, Lcom/android/calendarcommon/EventRecurrence;->arraysEqual([II[II)Z

    move-result v3

    if-eqz v3, :cond_c2

    iget-object v3, p0, Lcom/android/calendarcommon/EventRecurrence;->byyearday:[I

    iget v4, p0, Lcom/android/calendarcommon/EventRecurrence;->byyeardayCount:I

    iget-object v5, v0, Lcom/android/calendarcommon/EventRecurrence;->byyearday:[I

    iget v6, v0, Lcom/android/calendarcommon/EventRecurrence;->byyeardayCount:I

    invoke-static {v3, v4, v5, v6}, Lcom/android/calendarcommon/EventRecurrence;->arraysEqual([II[II)Z

    move-result v3

    if-eqz v3, :cond_c2

    iget-object v3, p0, Lcom/android/calendarcommon/EventRecurrence;->byweekno:[I

    iget v4, p0, Lcom/android/calendarcommon/EventRecurrence;->byweeknoCount:I

    iget-object v5, v0, Lcom/android/calendarcommon/EventRecurrence;->byweekno:[I

    iget v6, v0, Lcom/android/calendarcommon/EventRecurrence;->byweeknoCount:I

    invoke-static {v3, v4, v5, v6}, Lcom/android/calendarcommon/EventRecurrence;->arraysEqual([II[II)Z

    move-result v3

    if-eqz v3, :cond_c2

    iget-object v3, p0, Lcom/android/calendarcommon/EventRecurrence;->bymonth:[I

    iget v4, p0, Lcom/android/calendarcommon/EventRecurrence;->bymonthCount:I

    iget-object v5, v0, Lcom/android/calendarcommon/EventRecurrence;->bymonth:[I

    iget v6, v0, Lcom/android/calendarcommon/EventRecurrence;->bymonthCount:I

    invoke-static {v3, v4, v5, v6}, Lcom/android/calendarcommon/EventRecurrence;->arraysEqual([II[II)Z

    move-result v3

    if-eqz v3, :cond_c2

    iget-object v3, p0, Lcom/android/calendarcommon/EventRecurrence;->bysetpos:[I

    iget v4, p0, Lcom/android/calendarcommon/EventRecurrence;->bysetposCount:I

    iget-object v5, v0, Lcom/android/calendarcommon/EventRecurrence;->bysetpos:[I

    iget v6, v0, Lcom/android/calendarcommon/EventRecurrence;->bysetposCount:I

    invoke-static {v3, v4, v5, v6}, Lcom/android/calendarcommon/EventRecurrence;->arraysEqual([II[II)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_c2
    move v1, v2

    goto/16 :goto_4

    :cond_c5
    iget-object v3, p0, Lcom/android/calendarcommon/EventRecurrence;->startDate:Landroid/text/format/Time;

    iget-object v4, v0, Lcom/android/calendarcommon/EventRecurrence;->startDate:Landroid/text/format/Time;

    invoke-static {v3, v4}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v3

    if-nez v3, :cond_c2

    goto/16 :goto_16

    :cond_d1
    iget-object v3, p0, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c2

    goto/16 :goto_24
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 499
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public parse(Ljava/lang/String;)V
    .registers 16
    .parameter "recur"

    .prologue
    .line 591
    invoke-direct {p0}, Lcom/android/calendarcommon/EventRecurrence;->resetFields()V

    .line 593
    const/4 v6, 0x0

    .line 596
    .local v6, parseFlags:I
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    const-string v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 600
    .local v9, parts:[Ljava/lang/String;
    move-object v0, v9

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_11
    if-ge v3, v4, :cond_b7

    aget-object v8, v0, v3

    .line 601
    .local v8, part:Ljava/lang/String;
    const/16 v11, 0x3d

    invoke-virtual {v8, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 602
    .local v1, equalIndex:I
    if-gtz v1, :cond_36

    .line 604
    new-instance v11, Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Missing LHS in "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 607
    :cond_36
    const/4 v11, 0x0

    invoke-virtual {v8, v11, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 608
    .local v5, lhs:Ljava/lang/String;
    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 609
    .local v10, rhs:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_60

    .line 610
    new-instance v11, Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Missing RHS in "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 617
    :cond_60
    sget-object v11, Lcom/android/calendarcommon/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    invoke-virtual {v11, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/calendarcommon/EventRecurrence$PartParser;

    .line 618
    .local v7, parser:Lcom/android/calendarcommon/EventRecurrence$PartParser;
    if-nez v7, :cond_8e

    .line 619
    const-string v11, "X-"

    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_75

    .line 600
    :goto_72
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 623
    :cond_75
    new-instance v11, Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Couldn\'t find parser for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 625
    :cond_8e
    invoke-virtual {v7, v10, p0}, Lcom/android/calendarcommon/EventRecurrence$PartParser;->parsePart(Ljava/lang/String;Lcom/android/calendarcommon/EventRecurrence;)I

    move-result v2

    .line 626
    .local v2, flag:I
    and-int v11, v6, v2

    if-eqz v11, :cond_b5

    .line 627
    new-instance v11, Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Part "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " was specified twice"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 629
    :cond_b5
    or-int/2addr v6, v2

    goto :goto_72

    .line 634
    .end local v1           #equalIndex:I
    .end local v2           #flag:I
    .end local v5           #lhs:Ljava/lang/String;
    .end local v7           #parser:Lcom/android/calendarcommon/EventRecurrence$PartParser;
    .end local v8           #part:Ljava/lang/String;
    .end local v10           #rhs:Ljava/lang/String;
    :cond_b7
    and-int/lit16 v11, v6, 0x2000

    if-nez v11, :cond_bf

    .line 635
    const/high16 v11, 0x2

    iput v11, p0, Lcom/android/calendarcommon/EventRecurrence;->wkst:I

    .line 639
    :cond_bf
    and-int/lit8 v11, v6, 0x1

    if-nez v11, :cond_cb

    .line 640
    new-instance v11, Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException;

    const-string v12, "Must specify a FREQ value"

    invoke-direct {v11, v12}, Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 644
    :cond_cb
    and-int/lit8 v11, v6, 0x6

    const/4 v12, 0x6

    if-ne v11, v12, :cond_e8

    .line 648
    sget-object v11, Lcom/android/calendarcommon/EventRecurrence;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Warning: rrule has both UNTIL and COUNT: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_e8
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    .local v2, s:Ljava/lang/StringBuilder;
    const-string v3, "FREQ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    iget v3, p0, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    packed-switch v3, :pswitch_data_e8

    .line 351
    :goto_f
    iget-object v3, p0, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 352
    const-string v3, ";UNTIL="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    iget-object v3, p0, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    :cond_21
    iget v3, p0, Lcom/android/calendarcommon/EventRecurrence;->count:I

    if-eqz v3, :cond_2f

    .line 357
    const-string v3, ";COUNT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    iget v3, p0, Lcom/android/calendarcommon/EventRecurrence;->count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 361
    :cond_2f
    iget v3, p0, Lcom/android/calendarcommon/EventRecurrence;->interval:I

    if-eqz v3, :cond_3d

    .line 362
    const-string v3, ";INTERVAL="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    iget v3, p0, Lcom/android/calendarcommon/EventRecurrence;->interval:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 366
    :cond_3d
    iget v3, p0, Lcom/android/calendarcommon/EventRecurrence;->wkst:I

    if-eqz v3, :cond_4f

    .line 367
    const-string v3, ";WKST="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    iget v3, p0, Lcom/android/calendarcommon/EventRecurrence;->wkst:I

    invoke-static {v3}, Lcom/android/calendarcommon/EventRecurrence;->day2String(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    :cond_4f
    const-string v3, ";BYSECOND="

    iget v4, p0, Lcom/android/calendarcommon/EventRecurrence;->bysecondCount:I

    iget-object v5, p0, Lcom/android/calendarcommon/EventRecurrence;->bysecond:[I

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendarcommon/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 372
    const-string v3, ";BYMINUTE="

    iget v4, p0, Lcom/android/calendarcommon/EventRecurrence;->byminuteCount:I

    iget-object v5, p0, Lcom/android/calendarcommon/EventRecurrence;->byminute:[I

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendarcommon/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 373
    const-string v3, ";BYSECOND="

    iget v4, p0, Lcom/android/calendarcommon/EventRecurrence;->byhourCount:I

    iget-object v5, p0, Lcom/android/calendarcommon/EventRecurrence;->byhour:[I

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendarcommon/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 376
    iget v0, p0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    .line 377
    .local v0, count:I
    if-lez v0, :cond_b5

    .line 378
    const-string v3, ";BYDAY="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    add-int/lit8 v0, v0, -0x1

    .line 380
    const/4 v1, 0x0

    .local v1, i:I
    :goto_76
    if-ge v1, v0, :cond_b2

    .line 381
    invoke-direct {p0, v2, v1}, Lcom/android/calendarcommon/EventRecurrence;->appendByDay(Ljava/lang/StringBuilder;I)V

    .line 382
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    add-int/lit8 v1, v1, 0x1

    goto :goto_76

    .line 329
    .end local v0           #count:I
    .end local v1           #i:I
    :pswitch_83
    const-string v3, "SECONDLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 332
    :pswitch_89
    const-string v3, "MINUTELY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 335
    :pswitch_8f
    const-string v3, "HOURLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    .line 338
    :pswitch_96
    const-string v3, "DAILY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    .line 341
    :pswitch_9d
    const-string v3, "WEEKLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    .line 344
    :pswitch_a4
    const-string v3, "MONTHLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    .line 347
    :pswitch_ab
    const-string v3, "YEARLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_f

    .line 384
    .restart local v0       #count:I
    .restart local v1       #i:I
    :cond_b2
    invoke-direct {p0, v2, v0}, Lcom/android/calendarcommon/EventRecurrence;->appendByDay(Ljava/lang/StringBuilder;I)V

    .line 387
    .end local v1           #i:I
    :cond_b5
    const-string v3, ";BYMONTHDAY="

    iget v4, p0, Lcom/android/calendarcommon/EventRecurrence;->bymonthdayCount:I

    iget-object v5, p0, Lcom/android/calendarcommon/EventRecurrence;->bymonthday:[I

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendarcommon/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 388
    const-string v3, ";BYYEARDAY="

    iget v4, p0, Lcom/android/calendarcommon/EventRecurrence;->byyeardayCount:I

    iget-object v5, p0, Lcom/android/calendarcommon/EventRecurrence;->byyearday:[I

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendarcommon/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 389
    const-string v3, ";BYWEEKNO="

    iget v4, p0, Lcom/android/calendarcommon/EventRecurrence;->byweeknoCount:I

    iget-object v5, p0, Lcom/android/calendarcommon/EventRecurrence;->byweekno:[I

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendarcommon/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 390
    const-string v3, ";BYMONTH="

    iget v4, p0, Lcom/android/calendarcommon/EventRecurrence;->bymonthCount:I

    iget-object v5, p0, Lcom/android/calendarcommon/EventRecurrence;->bymonth:[I

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendarcommon/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 391
    const-string v3, ";BYSETPOS="

    iget v4, p0, Lcom/android/calendarcommon/EventRecurrence;->bysetposCount:I

    iget-object v5, p0, Lcom/android/calendarcommon/EventRecurrence;->bysetpos:[I

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendarcommon/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 393
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 326
    nop

    :pswitch_data_e8
    .packed-switch 0x1
        :pswitch_83
        :pswitch_89
        :pswitch_8f
        :pswitch_96
        :pswitch_9d
        :pswitch_a4
        :pswitch_ab
    .end packed-switch
.end method
