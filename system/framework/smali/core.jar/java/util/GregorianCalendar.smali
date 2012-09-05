.class public Ljava/util/GregorianCalendar;
.super Ljava/util/Calendar;
.source "GregorianCalendar.java"


# static fields
.field public static final AD:I = 0x1

.field public static final BC:I = 0x0

.field static DaysInMonth:[B = null

.field private static DaysInYear:[I = null

.field private static final defaultGregorianCutover:J = -0xb1d069b5400L

.field private static leastMaximums:[I = null

.field private static maximums:[I = null

.field private static minimums:[I = null

.field private static final serialVersionUID:J = -0x70c228291a4f2f3fL


# instance fields
.field private cachedFields:[I

.field private transient changeYear:I

.field private currentYearSkew:I

.field private gregorianCutover:J

.field private isCached:Z

.field private transient julianSkew:I

.field private lastMidnightMillis:J

.field private lastYearSkew:I

.field private nextMidnightMillis:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/16 v2, 0xc

    const/16 v1, 0x11

    .line 207
    new-array v0, v2, [B

    fill-array-data v0, :array_28

    sput-object v0, Ljava/util/GregorianCalendar;->DaysInMonth:[B

    .line 210
    new-array v0, v2, [I

    fill-array-data v0, :array_32

    sput-object v0, Ljava/util/GregorianCalendar;->DaysInYear:[I

    .line 213
    new-array v0, v1, [I

    fill-array-data v0, :array_4e

    sput-object v0, Ljava/util/GregorianCalendar;->maximums:[I

    .line 216
    new-array v0, v1, [I

    fill-array-data v0, :array_74

    sput-object v0, Ljava/util/GregorianCalendar;->minimums:[I

    .line 219
    new-array v0, v1, [I

    fill-array-data v0, :array_9a

    sput-object v0, Ljava/util/GregorianCalendar;->leastMaximums:[I

    return-void

    .line 207
    :array_28
    .array-data 0x1
        0x1ft
        0x1ct
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
    .end array-data

    .line 210
    :array_32
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0x97t 0x0t 0x0t 0x0t
        0xb5t 0x0t 0x0t 0x0t
        0xd4t 0x0t 0x0t 0x0t
        0xf3t 0x0t 0x0t 0x0t
        0x11t 0x1t 0x0t 0x0t
        0x30t 0x1t 0x0t 0x0t
        0x4et 0x1t 0x0t 0x0t
    .end array-data

    .line 213
    :array_4e
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xd2t 0xd2t 0x6bt 0x11t
        0xbt 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x6et 0x1t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0xe7t 0x3t 0x0t 0x0t
        0x0t 0xbt 0x1t 0x3t
        0x0t 0xddt 0x6dt 0x0t
    .end array-data

    .line 216
    :array_74
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x80t 0xe3t 0x35t 0xfdt
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 219
    :array_9a
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xfet 0xabt 0x6bt 0x11t
        0xbt 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x63t 0x1t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0xe7t 0x3t 0x0t 0x0t
        0x0t 0xbt 0x1t 0x3t
        0x80t 0x4ft 0x12t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 239
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 240
    return-void
.end method

.method public constructor <init>(III)V
    .registers 9
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    const-wide/16 v3, 0x0

    const/16 v2, 0xa

    .line 254
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 200
    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    .line 202
    const/16 v0, 0x62e

    iput v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    .line 204
    iget v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit16 v0, v0, -0x7d0

    div-int/lit16 v0, v0, 0x190

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit16 v1, v1, -0x7d0

    div-int/lit8 v1, v1, 0x64

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    .line 224
    new-array v0, v2, [I

    fill-array-data v0, :array_42

    iput-object v0, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    .line 226
    iput-wide v3, p0, Ljava/util/GregorianCalendar;->nextMidnightMillis:J

    .line 228
    iput-wide v3, p0, Ljava/util/GregorianCalendar;->lastMidnightMillis:J

    .line 230
    iput v2, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    .line 232
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    .line 255
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/GregorianCalendar;->set(III)V

    .line 256
    return-void

    .line 224
    :array_42
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(IIIII)V
    .registers 11
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .parameter "hour"
    .parameter "minute"

    .prologue
    const-wide/16 v3, 0x0

    const/16 v2, 0xa

    .line 274
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 200
    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    .line 202
    const/16 v0, 0x62e

    iput v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    .line 204
    iget v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit16 v0, v0, -0x7d0

    div-int/lit16 v0, v0, 0x190

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit16 v1, v1, -0x7d0

    div-int/lit8 v1, v1, 0x64

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    .line 224
    new-array v0, v2, [I

    fill-array-data v0, :array_42

    iput-object v0, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    .line 226
    iput-wide v3, p0, Ljava/util/GregorianCalendar;->nextMidnightMillis:J

    .line 228
    iput-wide v3, p0, Ljava/util/GregorianCalendar;->lastMidnightMillis:J

    .line 230
    iput v2, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    .line 232
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    .line 275
    invoke-virtual/range {p0 .. p5}, Ljava/util/GregorianCalendar;->set(IIIII)V

    .line 276
    return-void

    .line 224
    :array_42
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(IIIIII)V
    .registers 12
    .parameter "year"
    .parameter "month"
    .parameter "day"
    .parameter "hour"
    .parameter "minute"
    .parameter "second"

    .prologue
    const-wide/16 v3, 0x0

    const/16 v2, 0xa

    .line 297
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 200
    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    .line 202
    const/16 v0, 0x62e

    iput v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    .line 204
    iget v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit16 v0, v0, -0x7d0

    div-int/lit16 v0, v0, 0x190

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit16 v1, v1, -0x7d0

    div-int/lit8 v1, v1, 0x64

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    .line 224
    new-array v0, v2, [I

    fill-array-data v0, :array_42

    iput-object v0, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    .line 226
    iput-wide v3, p0, Ljava/util/GregorianCalendar;->nextMidnightMillis:J

    .line 228
    iput-wide v3, p0, Ljava/util/GregorianCalendar;->lastMidnightMillis:J

    .line 230
    iput v2, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    .line 232
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    .line 298
    invoke-virtual/range {p0 .. p6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 299
    return-void

    .line 224
    :array_42
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(J)V
    .registers 4
    .parameter "milliseconds"

    .prologue
    .line 302
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/GregorianCalendar;-><init>(Z)V

    .line 303
    invoke-virtual {p0, p1, p2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 304
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .registers 3
    .parameter "locale"

    .prologue
    .line 314
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 315
    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .registers 3
    .parameter "timezone"

    .prologue
    .line 325
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 326
    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;)V
    .registers 8
    .parameter "timezone"
    .parameter "locale"

    .prologue
    const-wide/16 v3, 0x0

    const/16 v2, 0xa

    .line 338
    invoke-direct {p0, p1, p2}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 200
    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    .line 202
    const/16 v0, 0x62e

    iput v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    .line 204
    iget v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit16 v0, v0, -0x7d0

    div-int/lit16 v0, v0, 0x190

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit16 v1, v1, -0x7d0

    div-int/lit8 v1, v1, 0x64

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    .line 224
    new-array v0, v2, [I

    fill-array-data v0, :array_3e

    iput-object v0, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    .line 226
    iput-wide v3, p0, Ljava/util/GregorianCalendar;->nextMidnightMillis:J

    .line 228
    iput-wide v3, p0, Ljava/util/GregorianCalendar;->lastMidnightMillis:J

    .line 230
    iput v2, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    .line 232
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    .line 339
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 340
    return-void

    .line 224
    :array_3e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(Z)V
    .registers 8
    .parameter "ignored"

    .prologue
    const-wide/16 v4, 0x0

    const/16 v3, 0xa

    const/4 v2, 0x1

    .line 343
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;)V

    .line 200
    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    .line 202
    const/16 v0, 0x62e

    iput v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    .line 204
    iget v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit16 v0, v0, -0x7d0

    div-int/lit16 v0, v0, 0x190

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit16 v1, v1, -0x7d0

    div-int/lit8 v1, v1, 0x64

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    .line 224
    new-array v0, v3, [I

    fill-array-data v0, :array_42

    iput-object v0, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    .line 226
    iput-wide v4, p0, Ljava/util/GregorianCalendar;->nextMidnightMillis:J

    .line 228
    iput-wide v4, p0, Ljava/util/GregorianCalendar;->lastMidnightMillis:J

    .line 230
    iput v3, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    .line 232
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    .line 344
    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->setFirstDayOfWeek(I)V

    .line 345
    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->setMinimalDaysInFirstWeek(I)V

    .line 346
    return-void

    .line 224
    :array_42
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private final cachedFieldsCheckAndGet(JJJII)V
    .registers 14
    .parameter "timeVal"
    .parameter "newTimeMillis"
    .parameter "newTimeMillisAdjusted"
    .parameter "millis"
    .parameter "zoneOffset"

    .prologue
    .line 589
    iget-object v1, p0, Ljava/util/Calendar;->fields:[I

    const/16 v2, 0x10

    aget v0, v1, v2

    .line 590
    .local v0, dstOffset:I
    iget-boolean v1, p0, Ljava/util/GregorianCalendar;->isCached:Z

    if-eqz v1, :cond_2d

    iget-wide v1, p0, Ljava/util/GregorianCalendar;->nextMidnightMillis:J

    cmp-long v1, p3, v1

    if-gez v1, :cond_2d

    iget-wide v1, p0, Ljava/util/GregorianCalendar;->lastMidnightMillis:J

    cmp-long v1, p3, v1

    if-lez v1, :cond_2d

    iget-object v1, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    if-ne v1, p8, :cond_2d

    if-nez v0, :cond_25

    iget-wide v1, p0, Ljava/util/GregorianCalendar;->nextMidnightMillis:J

    cmp-long v1, p5, v1

    if-gez v1, :cond_2d

    :cond_25
    if-eqz v0, :cond_34

    iget-wide v1, p0, Ljava/util/GregorianCalendar;->lastMidnightMillis:J

    cmp-long v1, p5, v1

    if-gtz v1, :cond_34

    .line 596
    :cond_2d
    invoke-direct {p0, p1, p2, p7, p8}, Ljava/util/GregorianCalendar;->fullFieldsCalc(JII)V

    .line 597
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/GregorianCalendar;->isCached:Z

    .line 609
    :goto_33
    return-void

    .line 599
    :cond_34
    iget-object v1, p0, Ljava/util/Calendar;->fields:[I

    const/4 v2, 0x1

    iget-object v3, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    aput v3, v1, v2

    .line 600
    iget-object v1, p0, Ljava/util/Calendar;->fields:[I

    const/4 v2, 0x2

    iget-object v3, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    aput v3, v1, v2

    .line 601
    iget-object v1, p0, Ljava/util/Calendar;->fields:[I

    const/4 v2, 0x5

    iget-object v3, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    aput v3, v1, v2

    .line 602
    iget-object v1, p0, Ljava/util/Calendar;->fields:[I

    const/4 v2, 0x7

    iget-object v3, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    aput v3, v1, v2

    .line 603
    iget-object v1, p0, Ljava/util/Calendar;->fields:[I

    const/4 v2, 0x0

    iget-object v3, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    aput v3, v1, v2

    .line 604
    iget-object v1, p0, Ljava/util/Calendar;->fields:[I

    const/4 v2, 0x3

    iget-object v3, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    aput v3, v1, v2

    .line 605
    iget-object v1, p0, Ljava/util/Calendar;->fields:[I

    const/4 v2, 0x4

    iget-object v3, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    aput v3, v1, v2

    .line 606
    iget-object v1, p0, Ljava/util/Calendar;->fields:[I

    const/4 v2, 0x6

    iget-object v3, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/16 v4, 0x8

    aget v3, v3, v4

    aput v3, v1, v2

    .line 607
    iget-object v1, p0, Ljava/util/Calendar;->fields:[I

    const/16 v2, 0x8

    iget-object v3, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/16 v4, 0x9

    aget v3, v3, v4

    aput v3, v1, v2

    goto :goto_33
.end method

.method private computeYearAndDay(JJ)I
    .registers 11
    .parameter "dayCount"
    .parameter "localTime"

    .prologue
    .line 923
    const/16 v3, 0x7b2

    .line 924
    .local v3, year:I
    move-wide v1, p1

    .line 925
    .local v1, days:J
    iget-wide v4, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    cmp-long v4, p3, v4

    if-gez v4, :cond_d

    .line 926
    iget v4, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    int-to-long v4, v4

    sub-long/2addr v1, v4

    .line 930
    :cond_d
    :goto_d
    const-wide/16 v4, 0x16d

    div-long v4, v1, v4

    long-to-int v0, v4

    .local v0, approxYears:I
    if-eqz v0, :cond_1c

    .line 931
    add-int/2addr v3, v0

    .line 932
    invoke-direct {p0, v3}, Ljava/util/GregorianCalendar;->daysFromBaseYear(I)J

    move-result-wide v4

    sub-long v1, p1, v4

    goto :goto_d

    .line 934
    :cond_1c
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-gez v4, :cond_2a

    .line 935
    add-int/lit8 v3, v3, -0x1

    .line 936
    invoke-direct {p0, v3}, Ljava/util/GregorianCalendar;->daysInYear(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v1, v4

    .line 938
    :cond_2a
    iget-object v4, p0, Ljava/util/Calendar;->fields:[I

    const/4 v5, 0x1

    aput v3, v4, v5

    .line 939
    long-to-int v4, v1

    add-int/lit8 v4, v4, 0x1

    return v4
.end method

.method private daysFromBaseYear(I)J
    .registers 12
    .parameter "iyear"

    .prologue
    .line 943
    int-to-long v2, p1

    .line 945
    .local v2, year:J
    const-wide/16 v4, 0x7b2

    cmp-long v4, v2, v4

    if-ltz v4, :cond_4e

    .line 946
    const-wide/16 v4, 0x7b2

    sub-long v4, v2, v4

    const-wide/16 v6, 0x16d

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x7b1

    sub-long v6, v2, v6

    const-wide/16 v8, 0x4

    div-long/2addr v6, v8

    add-long v0, v4, v6

    .line 947
    .local v0, days:J
    iget v4, p0, Ljava/util/GregorianCalendar;->changeYear:I

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-lez v4, :cond_2f

    .line 948
    const-wide/16 v4, 0x76d

    sub-long v4, v2, v4

    const-wide/16 v6, 0x64

    div-long/2addr v4, v6

    const-wide/16 v6, 0x641

    sub-long v6, v2, v6

    const-wide/16 v8, 0x190

    div-long/2addr v6, v8

    sub-long/2addr v4, v6

    sub-long/2addr v0, v4

    .line 962
    .end local v0           #days:J
    :goto_2e
    return-wide v0

    .line 950
    .restart local v0       #days:J
    :cond_2f
    iget v4, p0, Ljava/util/GregorianCalendar;->changeYear:I

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-nez v4, :cond_3b

    .line 951
    iget v4, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_2e

    .line 952
    :cond_3b
    iget v4, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit8 v4, v4, -0x1

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-nez v4, :cond_49

    .line 953
    iget v4, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_2e

    .line 955
    :cond_49
    iget v4, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_2e

    .line 959
    .end local v0           #days:J
    :cond_4e
    iget v4, p0, Ljava/util/GregorianCalendar;->changeYear:I

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-gtz v4, :cond_6a

    .line 960
    const-wide/16 v4, 0x7b2

    sub-long v4, v2, v4

    const-wide/16 v6, 0x16d

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x7b4

    sub-long v6, v2, v6

    const-wide/16 v8, 0x4

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    iget v6, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    int-to-long v6, v6

    add-long v0, v4, v6

    goto :goto_2e

    .line 962
    :cond_6a
    const-wide/16 v4, 0x7b2

    sub-long v4, v2, v4

    const-wide/16 v6, 0x16d

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x7b4

    sub-long v6, v2, v6

    const-wide/16 v8, 0x4

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    const-wide/16 v6, 0x7d0

    sub-long v6, v2, v6

    const-wide/16 v8, 0x64

    div-long/2addr v6, v8

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x7d0

    sub-long v6, v2, v6

    const-wide/16 v8, 0x190

    div-long/2addr v6, v8

    add-long v0, v4, v6

    goto :goto_2e
.end method

.method private daysInMonth()I
    .registers 4

    .prologue
    .line 967
    iget-object v0, p0, Ljava/util/Calendar;->fields:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v0

    iget-object v1, p0, Ljava/util/Calendar;->fields:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-direct {p0, v0, v1}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v0

    return v0
.end method

.method private daysInMonth(ZI)I
    .registers 4
    .parameter "leapYear"
    .parameter "month"

    .prologue
    .line 971
    if-eqz p1, :cond_c

    const/4 v0, 0x1

    if-ne p2, v0, :cond_c

    .line 972
    sget-object v0, Ljava/util/GregorianCalendar;->DaysInMonth:[B

    aget-byte v0, v0, p2

    add-int/lit8 v0, v0, 0x1

    .line 975
    :goto_b
    return v0

    :cond_c
    sget-object v0, Ljava/util/GregorianCalendar;->DaysInMonth:[B

    aget-byte v0, v0, p2

    goto :goto_b
.end method

.method private daysInYear(I)I
    .registers 4
    .parameter "year"

    .prologue
    .line 979
    invoke-virtual {p0, p1}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_19

    const/16 v0, 0x16e

    .line 980
    .local v0, daysInYear:I
    :goto_8
    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    if-ne p1, v1, :cond_f

    .line 981
    iget v1, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    sub-int/2addr v0, v1

    .line 983
    :cond_f
    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_18

    .line 984
    iget v1, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    sub-int/2addr v0, v1

    .line 986
    :cond_18
    return v0

    .line 979
    .end local v0           #daysInYear:I
    :cond_19
    const/16 v0, 0x16d

    goto :goto_8
.end method

.method private daysInYear(ZI)I
    .registers 4
    .parameter "leapYear"
    .parameter "month"

    .prologue
    .line 990
    if-eqz p1, :cond_c

    const/4 v0, 0x1

    if-le p2, v0, :cond_c

    .line 991
    sget-object v0, Ljava/util/GregorianCalendar;->DaysInYear:[I

    aget v0, v0, p2

    add-int/lit8 v0, v0, 0x1

    .line 994
    :goto_b
    return v0

    :cond_c
    sget-object v0, Ljava/util/GregorianCalendar;->DaysInYear:[I

    aget v0, v0, p2

    goto :goto_b
.end method

.method private final fullFieldsCalc(JII)V
    .registers 25
    .parameter "timeVal"
    .parameter "millis"
    .parameter "zoneOffset"

    .prologue
    .line 484
    const-wide/32 v2, 0x5265c00

    div-long v10, p1, v2

    .line 486
    .local v10, days:J
    if-gez p3, :cond_f

    .line 487
    const v2, 0x5265c00

    add-int p3, p3, v2

    .line 488
    const-wide/16 v2, 0x1

    sub-long/2addr v10, v2

    .line 491
    :cond_f
    add-int p3, p3, p4

    .line 492
    :goto_11
    if-gez p3, :cond_1c

    .line 493
    const v2, 0x5265c00

    add-int p3, p3, v2

    .line 494
    const-wide/16 v2, 0x1

    sub-long/2addr v10, v2

    goto :goto_11

    .line 496
    :cond_1c
    :goto_1c
    const v2, 0x5265c00

    move/from16 v0, p3

    if-lt v0, v2, :cond_2c

    .line 497
    const v2, 0x5265c00

    sub-int p3, p3, v2

    .line 498
    const-wide/16 v2, 0x1

    add-long/2addr v10, v2

    goto :goto_1c

    .line 501
    :cond_2c
    move/from16 v0, p4

    int-to-long v2, v0

    add-long v2, v2, p1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v2, v3}, Ljava/util/GregorianCalendar;->computeYearAndDay(JJ)I

    move-result v9

    .line 502
    .local v9, dayOfYear:I
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/4 v3, 0x6

    aput v9, v2, v3

    .line 503
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Ljava/util/GregorianCalendar;->changeYear:I

    if-ne v2, v3, :cond_5d

    move-object/from16 v0, p0

    iget-wide v2, v0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    move/from16 v0, p4

    int-to-long v7, v0

    add-long v7, v7, p1

    cmp-long v2, v2, v7

    if-gtz v2, :cond_5d

    .line 504
    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    add-int/2addr v9, v2

    .line 506
    :cond_5d
    div-int/lit8 v5, v9, 0x20

    .line 507
    .local v5, month:I
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v14

    .line 508
    .local v14, leapYear:Z
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v5}, Ljava/util/GregorianCalendar;->daysInYear(ZI)I

    move-result v2

    sub-int v6, v9, v2

    .line 509
    .local v6, date:I
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v5}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v2

    if-le v6, v2, :cond_85

    .line 510
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v5}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v2

    sub-int/2addr v6, v2

    .line 511
    add-int/lit8 v5, v5, 0x1

    .line 513
    :cond_85
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/4 v3, 0x7

    const-wide/16 v7, 0x3

    sub-long v7, v10, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 514
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-gtz v2, :cond_25f

    const/4 v13, 0x0

    .line 516
    .local v13, dstOffset:I
    :goto_a2
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-lez v2, :cond_ad

    .line 517
    sub-int v13, v13, p4

    .line 519
    :cond_ad
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/16 v3, 0x10

    aput v13, v2, v3

    .line 520
    if-eqz v13, :cond_13b

    .line 521
    move-wide v15, v10

    .line 522
    .local v15, oldDays:J
    add-int p3, p3, v13

    .line 523
    if-gez p3, :cond_27a

    .line 524
    const v2, 0x5265c00

    add-int p3, p3, v2

    .line 525
    const-wide/16 v2, 0x1

    sub-long/2addr v10, v2

    .line 530
    :cond_c4
    :goto_c4
    cmp-long v2, v15, v10

    if-eqz v2, :cond_13b

    .line 531
    move/from16 v0, p4

    int-to-long v2, v0

    sub-long v2, p1, v2

    int-to-long v7, v13

    add-long/2addr v2, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v2, v3}, Ljava/util/GregorianCalendar;->computeYearAndDay(JJ)I

    move-result v9

    .line 533
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/4 v3, 0x6

    aput v9, v2, v3

    .line 534
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Ljava/util/GregorianCalendar;->changeYear:I

    if-ne v2, v3, :cond_100

    move-object/from16 v0, p0

    iget-wide v2, v0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    move/from16 v0, p4

    int-to-long v7, v0

    sub-long v7, p1, v7

    int-to-long v0, v13

    move-wide/from16 v18, v0

    add-long v7, v7, v18

    cmp-long v2, v2, v7

    if-gtz v2, :cond_100

    .line 535
    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    add-int/2addr v9, v2

    .line 537
    :cond_100
    div-int/lit8 v5, v9, 0x20

    .line 538
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v14

    .line 539
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v5}, Ljava/util/GregorianCalendar;->daysInYear(ZI)I

    move-result v2

    sub-int v6, v9, v2

    .line 540
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v5}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v2

    if-le v6, v2, :cond_128

    .line 541
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v5}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v2

    sub-int/2addr v6, v2

    .line 542
    add-int/lit8 v5, v5, 0x1

    .line 544
    :cond_128
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/4 v3, 0x7

    const-wide/16 v7, 0x3

    sub-long v7, v10, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 548
    .end local v15           #oldDays:J
    :cond_13b
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/16 v3, 0xe

    move/from16 v0, p3

    rem-int/lit16 v4, v0, 0x3e8

    aput v4, v2, v3

    .line 549
    move/from16 v0, p3

    div-int/lit16 v0, v0, 0x3e8

    move/from16 p3, v0

    .line 550
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/16 v3, 0xd

    rem-int/lit8 v4, p3, 0x3c

    aput v4, v2, v3

    .line 551
    div-int/lit8 p3, p3, 0x3c

    .line 552
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/16 v3, 0xc

    rem-int/lit8 v4, p3, 0x3c

    aput v4, v2, v3

    .line 553
    div-int/lit8 p3, p3, 0x3c

    .line 554
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/16 v3, 0xb

    rem-int/lit8 v4, p3, 0x18

    aput v4, v2, v3

    .line 555
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/Calendar;->fields:[I

    const/16 v4, 0x9

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/16 v7, 0xb

    aget v2, v2, v7

    const/16 v7, 0xb

    if-le v2, v7, :cond_28b

    const/4 v2, 0x1

    :goto_182
    aput v2, v3, v4

    .line 556
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/16 v3, 0xa

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/Calendar;->fields:[I

    const/16 v7, 0xb

    aget v4, v4, v7

    rem-int/lit8 v4, v4, 0xc

    aput v4, v2, v3

    .line 558
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-gtz v2, :cond_28e

    .line 559
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 560
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/Calendar;->fields:[I

    const/4 v7, 0x1

    aget v4, v4, v7

    neg-int v4, v4

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 564
    :goto_1b8
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/4 v3, 0x2

    aput v5, v2, v3

    .line 565
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/4 v3, 0x5

    aput v6, v2, v3

    .line 566
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/16 v3, 0x8

    add-int/lit8 v4, v6, -0x1

    div-int/lit8 v4, v4, 0x7

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 567
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/4 v3, 0x4

    add-int/lit8 v4, v6, -0x1

    int-to-long v7, v6

    sub-long v7, v10, v7

    const-wide/16 v18, 0x2

    sub-long v7, v7, v18

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    sub-long v7, v7, v18

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v7

    add-int/2addr v4, v7

    div-int/lit8 v4, v4, 0x7

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 569
    const-wide/16 v2, 0x3

    sub-long v2, v10, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/Calendar;->fields:[I

    const/4 v7, 0x6

    aget v4, v4, v7

    add-int/lit8 v4, v4, -0x1

    int-to-long v7, v4

    sub-long/2addr v2, v7

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-long v7, v4

    sub-long/2addr v2, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v12

    .line 571
    .local v12, daysFromStart:I
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/4 v3, 0x6

    aget v2, v2, v3

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v2, v12

    div-int/lit8 v3, v2, 0x7

    rsub-int/lit8 v2, v12, 0x7

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v4

    if-lt v2, v4, :cond_298

    const/4 v2, 0x1

    :goto_22e
    add-int v17, v3, v2

    .line 573
    .local v17, week:I
    if-nez v17, :cond_29f

    .line 574
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/Calendar;->fields:[I

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/4 v7, 0x1

    aget v2, v2, v7

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v2

    if-eqz v2, :cond_29a

    const/4 v2, 0x2

    :goto_249
    sub-int v2, v12, v2

    int-to-long v7, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x7

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v7

    if-lt v2, v7, :cond_29c

    const/16 v2, 0x35

    :goto_25c
    aput v2, v3, v4

    .line 584
    .end local v17           #week:I
    :goto_25e
    return-void

    .line 514
    .end local v12           #daysFromStart:I
    .end local v13           #dstOffset:I
    :cond_25f
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/Calendar;->fields:[I

    const/4 v7, 0x1

    aget v4, v4, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/util/Calendar;->fields:[I

    const/4 v8, 0x7

    aget v7, v7, v8

    move/from16 v8, p3

    invoke-virtual/range {v2 .. v8}, Ljava/util/TimeZone;->getOffset(IIIIII)I

    move-result v13

    goto/16 :goto_a2

    .line 526
    .restart local v13       #dstOffset:I
    .restart local v15       #oldDays:J
    :cond_27a
    const v2, 0x5265c00

    move/from16 v0, p3

    if-lt v0, v2, :cond_c4

    .line 527
    const v2, 0x5265c00

    sub-int p3, p3, v2

    .line 528
    const-wide/16 v2, 0x1

    add-long/2addr v10, v2

    goto/16 :goto_c4

    .line 555
    .end local v15           #oldDays:J
    :cond_28b
    const/4 v2, 0x0

    goto/16 :goto_182

    .line 562
    :cond_28e
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput v4, v2, v3

    goto/16 :goto_1b8

    .line 571
    .restart local v12       #daysFromStart:I
    :cond_298
    const/4 v2, 0x0

    goto :goto_22e

    .line 574
    .restart local v17       #week:I
    :cond_29a
    const/4 v2, 0x1

    goto :goto_249

    :cond_29c
    const/16 v2, 0x34

    goto :goto_25c

    .line 577
    :cond_29f
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/4 v3, 0x6

    aget v4, v2, v3

    if-eqz v14, :cond_2d7

    const/16 v2, 0x16f

    move v3, v2

    :goto_2ab
    if-eqz v14, :cond_2db

    const/4 v2, 0x2

    :goto_2ae
    add-int/2addr v2, v12

    int-to-long v7, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v2

    sub-int v2, v3, v2

    if-lt v4, v2, :cond_2df

    .line 579
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/Calendar;->fields:[I

    const/4 v4, 0x3

    if-eqz v14, :cond_2dd

    const/4 v2, 0x2

    :goto_2c2
    add-int/2addr v2, v12

    int-to-long v7, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x7

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v7

    if-lt v2, v7, :cond_2d4

    const/16 v17, 0x1

    .end local v17           #week:I
    :cond_2d4
    aput v17, v3, v4

    goto :goto_25e

    .line 577
    .restart local v17       #week:I
    :cond_2d7
    const/16 v2, 0x16e

    move v3, v2

    goto :goto_2ab

    :cond_2db
    const/4 v2, 0x1

    goto :goto_2ae

    .line 579
    :cond_2dd
    const/4 v2, 0x1

    goto :goto_2c2

    .line 582
    :cond_2df
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/4 v3, 0x3

    aput v17, v2, v3

    goto/16 :goto_25e
.end method

.method private getOffset(J)I
    .registers 25
    .parameter "localTime"

    .prologue
    .line 1179
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    .line 1181
    .local v3, timeZone:Ljava/util/TimeZone;
    const-wide/32 v18, 0x5265c00

    div-long v11, p1, v18

    .line 1182
    .local v11, dayCount:J
    const-wide/32 v18, 0x5265c00

    rem-long v18, p1, v18

    move-wide/from16 v0, v18

    long-to-int v9, v0

    .line 1183
    .local v9, millis:I
    if-gez v9, :cond_1b

    .line 1184
    const v4, 0x5265c00

    add-int/2addr v9, v4

    .line 1185
    const-wide/16 v18, 0x1

    sub-long v11, v11, v18

    .line 1188
    :cond_1b
    const/16 v5, 0x7b2

    .line 1189
    .local v5, year:I
    move-wide v14, v11

    .line 1190
    .local v14, days:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    move-wide/from16 v18, v0

    cmp-long v4, p1, v18

    if-gez v4, :cond_31

    .line 1191
    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/GregorianCalendar;->julianSkew:I

    int-to-long v0, v4

    move-wide/from16 v18, v0

    sub-long v14, v14, v18

    .line 1195
    :cond_31
    :goto_31
    const-wide/16 v18, 0x16d

    div-long v18, v14, v18

    move-wide/from16 v0, v18

    long-to-int v10, v0

    .local v10, approxYears:I
    if-eqz v10, :cond_44

    .line 1196
    add-int/2addr v5, v10

    .line 1197
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Ljava/util/GregorianCalendar;->daysFromBaseYear(I)J

    move-result-wide v18

    sub-long v14, v11, v18

    goto :goto_31

    .line 1199
    :cond_44
    const-wide/16 v18, 0x0

    cmp-long v4, v14, v18

    if-gez v4, :cond_77

    .line 1200
    add-int/lit8 v5, v5, -0x1

    .line 1201
    const-wide/16 v18, 0x16d

    add-long v18, v18, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v4

    if-eqz v4, :cond_7e

    const/4 v4, 0x1

    :goto_59
    int-to-long v0, v4

    move-wide/from16 v20, v0

    add-long v14, v18, v20

    .line 1202
    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/GregorianCalendar;->changeYear:I

    if-ne v5, v4, :cond_77

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    move-wide/from16 v18, v0

    cmp-long v4, p1, v18

    if-gez v4, :cond_77

    .line 1203
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v18, v0

    sub-long v14, v14, v18

    .line 1206
    :cond_77
    if-gtz v5, :cond_80

    .line 1207
    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v17

    .line 1221
    :goto_7d
    return v17

    .line 1201
    :cond_7e
    const/4 v4, 0x0

    goto :goto_59

    .line 1209
    :cond_80
    long-to-int v4, v14

    add-int/lit8 v13, v4, 0x1

    .line 1211
    .local v13, dayOfYear:I
    div-int/lit8 v6, v13, 0x20

    .line 1212
    .local v6, month:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v16

    .line 1213
    .local v16, leapYear:Z
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v6}, Ljava/util/GregorianCalendar;->daysInYear(ZI)I

    move-result v4

    sub-int v7, v13, v4

    .line 1214
    .local v7, date:I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v6}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v4

    if-le v7, v4, :cond_aa

    .line 1215
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v6}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v4

    sub-int/2addr v7, v4

    .line 1216
    add-int/lit8 v6, v6, 0x1

    .line 1218
    :cond_aa
    const-wide/16 v18, 0x3

    sub-long v18, v11, v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v4

    add-int/lit8 v8, v4, 0x1

    .line 1219
    .local v8, dayOfWeek:I
    const/4 v4, 0x1

    invoke-virtual/range {v3 .. v9}, Ljava/util/TimeZone;->getOffset(IIIIII)I

    move-result v17

    .line 1221
    .local v17, offset:I
    goto :goto_7d
.end method

.method private julianError()I
    .registers 3

    .prologue
    .line 1255
    iget v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    div-int/lit8 v0, v0, 0x64

    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    div-int/lit16 v1, v1, 0x190

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x2

    return v0
.end method

.method private mod(II)I
    .registers 4
    .parameter "value"
    .parameter "mod"

    .prologue
    .line 1259
    rem-int v0, p1, p2

    .line 1260
    .local v0, rem:I
    if-gez p1, :cond_7

    if-gez v0, :cond_7

    .line 1261
    add-int/2addr v0, p2

    .line 1263
    .end local v0           #rem:I
    :cond_7
    return v0
.end method

.method private mod7(J)I
    .registers 6
    .parameter "num1"

    .prologue
    .line 1267
    const-wide/16 v1, 0x7

    rem-long v1, p1, v1

    long-to-int v0, v1

    .line 1268
    .local v0, rem:I
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_f

    if-gez v0, :cond_f

    .line 1269
    add-int/lit8 v0, v0, 0x7

    .line 1271
    .end local v0           #rem:I
    :cond_f
    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1446
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1447
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    .line 1448
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/GregorianCalendar;->isCached:Z

    .line 1449
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1440
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1441
    return-void
.end method


# virtual methods
.method public add(II)V
    .registers 20
    .parameter "field"
    .parameter "value"

    .prologue
    .line 361
    if-nez p2, :cond_3

    .line 469
    :cond_2
    :goto_2
    return-void

    .line 364
    :cond_3
    if-ltz p1, :cond_b

    const/16 v11, 0xf

    move/from16 v0, p1

    if-lt v0, v11, :cond_11

    .line 365
    :cond_b
    new-instance v11, Ljava/lang/IllegalArgumentException;

    invoke-direct {v11}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v11

    .line 368
    :cond_11
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Ljava/util/GregorianCalendar;->isCached:Z

    .line 370
    if-nez p1, :cond_3c

    .line 371
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->complete()V

    .line 372
    move-object/from16 v0, p0

    iget-object v11, v0, Ljava/util/Calendar;->fields:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    const/4 v12, 0x1

    if-ne v11, v12, :cond_32

    .line 373
    if-gez p2, :cond_2

    .line 376
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Ljava/util/GregorianCalendar;->set(II)V

    .line 383
    :goto_2e
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->complete()V

    goto :goto_2

    .line 378
    :cond_32
    if-lez p2, :cond_2

    .line 381
    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_2e

    .line 387
    :cond_3c
    const/4 v11, 0x1

    move/from16 v0, p1

    if-eq v0, v11, :cond_46

    const/4 v11, 0x2

    move/from16 v0, p1

    if-ne v0, v11, :cond_a9

    .line 388
    :cond_46
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->complete()V

    .line 389
    const/4 v11, 0x2

    move/from16 v0, p1

    if-ne v0, v11, :cond_69

    .line 390
    move-object/from16 v0, p0

    iget-object v11, v0, Ljava/util/Calendar;->fields:[I

    const/4 v12, 0x2

    aget v11, v11, v12

    add-int v5, v11, p2

    .line 391
    .local v5, month:I
    if-gez v5, :cond_a6

    .line 392
    add-int/lit8 v11, v5, -0xb

    div-int/lit8 p2, v11, 0xc

    .line 393
    rem-int/lit8 v11, v5, 0xc

    add-int/lit8 v5, v11, 0xc

    .line 397
    :goto_61
    const/4 v11, 0x2

    rem-int/lit8 v12, v5, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Ljava/util/GregorianCalendar;->set(II)V

    .line 399
    .end local v5           #month:I
    :cond_69
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Ljava/util/Calendar;->fields:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    add-int v12, v12, p2

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Ljava/util/GregorianCalendar;->set(II)V

    .line 400
    move-object/from16 v0, p0

    iget-object v11, v0, Ljava/util/Calendar;->fields:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Ljava/util/Calendar;->fields:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v1

    .line 401
    .local v1, days:I
    move-object/from16 v0, p0

    iget-object v11, v0, Ljava/util/Calendar;->fields:[I

    const/4 v12, 0x5

    aget v11, v11, v12

    if-le v11, v1, :cond_a1

    .line 402
    const/4 v11, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 404
    :cond_a1
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->complete()V

    goto/16 :goto_2

    .line 395
    .end local v1           #days:I
    .restart local v5       #month:I
    :cond_a6
    div-int/lit8 p2, v5, 0xc

    goto :goto_61

    .line 408
    .end local v5           #month:I
    :cond_a9
    const-wide/16 v6, 0x0

    .line 409
    .local v6, multiplier:J
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    .line 410
    packed-switch p1, :pswitch_data_15a

    .line 439
    :goto_b1
    const-wide/16 v11, 0x0

    cmp-long v11, v6, v11

    if-nez v11, :cond_10c

    .line 440
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Ljava/util/Calendar;->areFieldsSet:Z

    .line 441
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->complete()V

    goto/16 :goto_2

    .line 412
    :pswitch_c1
    move-object/from16 v0, p0

    iget-wide v11, v0, Ljava/util/Calendar;->time:J

    move/from16 v0, p2

    int-to-long v13, v0

    add-long/2addr v11, v13

    move-object/from16 v0, p0

    iput-wide v11, v0, Ljava/util/Calendar;->time:J

    goto :goto_b1

    .line 415
    :pswitch_ce
    move-object/from16 v0, p0

    iget-wide v11, v0, Ljava/util/Calendar;->time:J

    move/from16 v0, p2

    int-to-long v13, v0

    const-wide/16 v15, 0x3e8

    mul-long/2addr v13, v15

    add-long/2addr v11, v13

    move-object/from16 v0, p0

    iput-wide v11, v0, Ljava/util/Calendar;->time:J

    goto :goto_b1

    .line 418
    :pswitch_de
    move-object/from16 v0, p0

    iget-wide v11, v0, Ljava/util/Calendar;->time:J

    move/from16 v0, p2

    int-to-long v13, v0

    const-wide/32 v15, 0xea60

    mul-long/2addr v13, v15

    add-long/2addr v11, v13

    move-object/from16 v0, p0

    iput-wide v11, v0, Ljava/util/Calendar;->time:J

    goto :goto_b1

    .line 422
    :pswitch_ef
    move-object/from16 v0, p0

    iget-wide v11, v0, Ljava/util/Calendar;->time:J

    move/from16 v0, p2

    int-to-long v13, v0

    const-wide/32 v15, 0x36ee80

    mul-long/2addr v13, v15

    add-long/2addr v11, v13

    move-object/from16 v0, p0

    iput-wide v11, v0, Ljava/util/Calendar;->time:J

    goto :goto_b1

    .line 425
    :pswitch_100
    const-wide/32 v6, 0x2932e00

    .line 426
    goto :goto_b1

    .line 430
    :pswitch_104
    const-wide/32 v6, 0x5265c00

    .line 431
    goto :goto_b1

    .line 435
    :pswitch_108
    const-wide/32 v6, 0x240c8400

    goto :goto_b1

    .line 445
    :cond_10c
    move/from16 v0, p2

    int-to-long v11, v0

    mul-long v2, v11, v6

    .line 458
    .local v2, delta:J
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v10

    .line 459
    .local v10, zoneOffset:I
    move-object/from16 v0, p0

    iget-wide v11, v0, Ljava/util/Calendar;->time:J

    int-to-long v13, v10

    add-long/2addr v11, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Ljava/util/GregorianCalendar;->getOffset(J)I

    move-result v9

    .line 460
    .local v9, offsetBefore:I
    move-object/from16 v0, p0

    iget-wide v11, v0, Ljava/util/Calendar;->time:J

    int-to-long v13, v10

    add-long/2addr v11, v13

    add-long/2addr v11, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Ljava/util/GregorianCalendar;->getOffset(J)I

    move-result v8

    .line 461
    .local v8, offsetAfter:I
    sub-int v4, v9, v8

    .line 462
    .local v4, dstDelta:I
    move-object/from16 v0, p0

    iget-wide v11, v0, Ljava/util/Calendar;->time:J

    int-to-long v13, v10

    add-long/2addr v11, v13

    add-long/2addr v11, v2

    int-to-long v13, v4

    add-long/2addr v11, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Ljava/util/GregorianCalendar;->getOffset(J)I

    move-result v11

    if-ne v11, v8, :cond_147

    .line 463
    int-to-long v11, v4

    add-long/2addr v2, v11

    .line 466
    :cond_147
    move-object/from16 v0, p0

    iget-wide v11, v0, Ljava/util/Calendar;->time:J

    add-long/2addr v11, v2

    move-object/from16 v0, p0

    iput-wide v11, v0, Ljava/util/Calendar;->time:J

    .line 467
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Ljava/util/Calendar;->areFieldsSet:Z

    .line 468
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->complete()V

    goto/16 :goto_2

    .line 410
    :pswitch_data_15a
    .packed-switch 0x3
        :pswitch_108
        :pswitch_108
        :pswitch_104
        :pswitch_104
        :pswitch_104
        :pswitch_108
        :pswitch_100
        :pswitch_ef
        :pswitch_ef
        :pswitch_de
        :pswitch_ce
        :pswitch_c1
    .end packed-switch
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 478
    invoke-super {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    .line 479
    .local v0, thisClone:Ljava/util/GregorianCalendar;
    iget-object v1, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Ljava/util/GregorianCalendar;->cachedFields:[I

    .line 480
    return-object v0
.end method

.method protected computeFields()V
    .registers 21

    .prologue
    .line 613
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v17

    .line 614
    .local v17, timeZone:Ljava/util/TimeZone;
    new-instance v2, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v3, v0, Ljava/util/Calendar;->time:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_103

    invoke-virtual/range {v17 .. v17}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v12

    .line 615
    .local v12, dstOffset:I
    :goto_19
    invoke-virtual/range {v17 .. v17}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v10

    .line 616
    .local v10, zoneOffset:I
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/16 v3, 0x10

    aput v12, v2, v3

    .line 617
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/16 v3, 0xf

    aput v10, v2, v3

    .line 619
    move-object/from16 v0, p0

    iget-wide v2, v0, Ljava/util/Calendar;->time:J

    const-wide/32 v18, 0x5265c00

    rem-long v2, v2, v18

    long-to-int v15, v2

    .line 620
    .local v15, millis:I
    move v9, v15

    .line 622
    .local v9, savedMillis:I
    add-int v16, v10, v12

    .line 623
    .local v16, offset:I
    move-object/from16 v0, p0

    iget-wide v2, v0, Ljava/util/Calendar;->time:J

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v5, v2, v18

    .line 625
    .local v5, newTime:J
    move-object/from16 v0, p0

    iget-wide v2, v0, Ljava/util/Calendar;->time:J

    const-wide/16 v18, 0x0

    cmp-long v2, v2, v18

    if-lez v2, :cond_106

    const-wide/16 v2, 0x0

    cmp-long v2, v5, v2

    if-gez v2, :cond_106

    if-lez v16, :cond_106

    .line 626
    const-wide v5, 0x7fffffffffffffffL

    .line 633
    :cond_5c
    :goto_5c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Ljava/util/GregorianCalendar;->isCached:Z

    if-eqz v2, :cond_13d

    .line 634
    if-gez v15, :cond_68

    .line 635
    const v2, 0x5265c00

    add-int/2addr v15, v2

    .line 639
    :cond_68
    add-int/2addr v15, v10

    .line 640
    add-int/2addr v15, v12

    .line 642
    if-gez v15, :cond_11c

    .line 643
    const v2, 0x5265c00

    add-int/2addr v15, v2

    .line 648
    :cond_70
    :goto_70
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/16 v3, 0xe

    rem-int/lit16 v4, v15, 0x3e8

    aput v4, v2, v3

    .line 649
    div-int/lit16 v15, v15, 0x3e8

    .line 650
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/16 v3, 0xd

    rem-int/lit8 v4, v15, 0x3c

    aput v4, v2, v3

    .line 651
    div-int/lit8 v15, v15, 0x3c

    .line 652
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/16 v3, 0xc

    rem-int/lit8 v4, v15, 0x3c

    aput v4, v2, v3

    .line 653
    div-int/lit8 v15, v15, 0x3c

    .line 654
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/16 v3, 0xb

    rem-int/lit8 v4, v15, 0x18

    aput v4, v2, v3

    .line 655
    div-int/lit8 v15, v15, 0x18

    .line 656
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/Calendar;->fields:[I

    const/16 v4, 0x9

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/16 v18, 0xb

    aget v2, v2, v18

    const/16 v18, 0xb

    move/from16 v0, v18

    if-le v2, v0, :cond_127

    const/4 v2, 0x1

    :goto_b5
    aput v2, v3, v4

    .line 657
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/16 v3, 0xa

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/Calendar;->fields:[I

    const/16 v18, 0xb

    aget v4, v4, v18

    rem-int/lit8 v4, v4, 0xc

    aput v4, v2, v3

    .line 660
    move-wide v7, v5

    .line 661
    .local v7, newTimeAdjusted:J
    invoke-virtual/range {v17 .. v17}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v2

    if-eqz v2, :cond_d8

    .line 662
    invoke-virtual/range {v17 .. v17}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v13

    .line 663
    .local v13, dstSavings:I
    if-nez v12, :cond_129

    int-to-long v2, v13

    :goto_d7
    add-long/2addr v7, v2

    .line 666
    .end local v13           #dstSavings:I
    :cond_d8
    const-wide/16 v2, 0x0

    cmp-long v2, v5, v2

    if-lez v2, :cond_12c

    const-wide/16 v2, 0x0

    cmp-long v2, v7, v2

    if-gez v2, :cond_12c

    if-nez v12, :cond_12c

    .line 667
    const-wide v7, 0x7fffffffffffffffL

    .line 672
    :cond_eb
    :goto_eb
    move-object/from16 v0, p0

    iget-wide v3, v0, Ljava/util/Calendar;->time:J

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Ljava/util/GregorianCalendar;->cachedFieldsCheckAndGet(JJJII)V

    .line 678
    .end local v7           #newTimeAdjusted:J
    :goto_f4
    const/4 v14, 0x0

    .local v14, i:I
    :goto_f5
    const/16 v2, 0x11

    if-ge v14, v2, :cond_147

    .line 679
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->isSet:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v14

    .line 678
    add-int/lit8 v14, v14, 0x1

    goto :goto_f5

    .line 614
    .end local v5           #newTime:J
    .end local v9           #savedMillis:I
    .end local v10           #zoneOffset:I
    .end local v12           #dstOffset:I
    .end local v14           #i:I
    .end local v15           #millis:I
    .end local v16           #offset:I
    :cond_103
    const/4 v12, 0x0

    goto/16 :goto_19

    .line 627
    .restart local v5       #newTime:J
    .restart local v9       #savedMillis:I
    .restart local v10       #zoneOffset:I
    .restart local v12       #dstOffset:I
    .restart local v15       #millis:I
    .restart local v16       #offset:I
    :cond_106
    move-object/from16 v0, p0

    iget-wide v2, v0, Ljava/util/Calendar;->time:J

    const-wide/16 v18, 0x0

    cmp-long v2, v2, v18

    if-gez v2, :cond_5c

    const-wide/16 v2, 0x0

    cmp-long v2, v5, v2

    if-lez v2, :cond_5c

    if-gez v16, :cond_5c

    .line 628
    const-wide/high16 v5, -0x8000

    goto/16 :goto_5c

    .line 644
    :cond_11c
    const v2, 0x5265c00

    if-lt v15, v2, :cond_70

    .line 645
    const v2, 0x5265c00

    sub-int/2addr v15, v2

    goto/16 :goto_70

    .line 656
    :cond_127
    const/4 v2, 0x0

    goto :goto_b5

    .line 663
    .restart local v7       #newTimeAdjusted:J
    .restart local v13       #dstSavings:I
    :cond_129
    neg-int v2, v13

    int-to-long v2, v2

    goto :goto_d7

    .line 668
    .end local v13           #dstSavings:I
    :cond_12c
    const-wide/16 v2, 0x0

    cmp-long v2, v5, v2

    if-gez v2, :cond_eb

    const-wide/16 v2, 0x0

    cmp-long v2, v7, v2

    if-lez v2, :cond_eb

    if-eqz v12, :cond_eb

    .line 669
    const-wide/high16 v7, -0x8000

    goto :goto_eb

    .line 675
    .end local v7           #newTimeAdjusted:J
    :cond_13d
    move-object/from16 v0, p0

    iget-wide v2, v0, Ljava/util/Calendar;->time:J

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v9, v10}, Ljava/util/GregorianCalendar;->fullFieldsCalc(JII)V

    goto :goto_f4

    .line 683
    .restart local v14       #i:I
    :cond_147
    move-object/from16 v0, p0

    iget-boolean v2, v0, Ljava/util/GregorianCalendar;->isCached:Z

    if-nez v2, :cond_25e

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v5, v2

    if-eqz v2, :cond_25e

    const-wide/high16 v2, -0x8000

    cmp-long v2, v5, v2

    if-eqz v2, :cond_25e

    invoke-virtual/range {v17 .. v17}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v2

    if-eqz v2, :cond_168

    move-object/from16 v0, v17

    instance-of v2, v0, Ljava/util/SimpleTimeZone;

    if-eqz v2, :cond_25e

    .line 687
    :cond_168
    const/4 v11, 0x0

    .line 689
    .local v11, cacheMillis:I
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/Calendar;->fields:[I

    const/16 v18, 0x1

    aget v4, v4, v18

    aput v4, v2, v3

    .line 690
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/Calendar;->fields:[I

    const/16 v18, 0x2

    aget v4, v4, v18

    aput v4, v2, v3

    .line 691
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/Calendar;->fields:[I

    const/16 v18, 0x5

    aget v4, v4, v18

    aput v4, v2, v3

    .line 692
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/Calendar;->fields:[I

    const/16 v18, 0x7

    aget v4, v4, v18

    aput v4, v2, v3

    .line 693
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v3, 0x4

    aput v10, v2, v3

    .line 694
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v3, 0x5

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/Calendar;->fields:[I

    const/16 v18, 0x0

    aget v4, v4, v18

    aput v4, v2, v3

    .line 695
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v3, 0x6

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/Calendar;->fields:[I

    const/16 v18, 0x3

    aget v4, v4, v18

    aput v4, v2, v3

    .line 696
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/Calendar;->fields:[I

    const/16 v18, 0x4

    aget v4, v4, v18

    aput v4, v2, v3

    .line 697
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/16 v3, 0x8

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/Calendar;->fields:[I

    const/16 v18, 0x6

    aget v4, v4, v18

    aput v4, v2, v3

    .line 698
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/16 v3, 0x9

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/Calendar;->fields:[I

    const/16 v18, 0x8

    aget v4, v4, v18

    aput v4, v2, v3

    .line 700
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/16 v3, 0xb

    aget v2, v2, v3

    rsub-int/lit8 v2, v2, 0x17

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    add-int/2addr v11, v2

    .line 701
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/16 v3, 0xc

    aget v2, v2, v3

    rsub-int/lit8 v2, v2, 0x3b

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    add-int/2addr v11, v2

    .line 702
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/16 v3, 0xd

    aget v2, v2, v3

    rsub-int/lit8 v2, v2, 0x3b

    mul-int/lit16 v2, v2, 0x3e8

    add-int/2addr v11, v2

    .line 703
    int-to-long v2, v11

    add-long/2addr v2, v5

    move-object/from16 v0, p0

    iput-wide v2, v0, Ljava/util/GregorianCalendar;->nextMidnightMillis:J

    .line 705
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/16 v3, 0xb

    aget v2, v2, v3

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v11, v2, 0x3e8

    .line 706
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/16 v3, 0xc

    aget v2, v2, v3

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    add-int/2addr v11, v2

    .line 707
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/16 v3, 0xd

    aget v2, v2, v3

    mul-int/lit16 v2, v2, 0x3e8

    add-int/2addr v11, v2

    .line 708
    int-to-long v2, v11

    sub-long v2, v5, v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Ljava/util/GregorianCalendar;->lastMidnightMillis:J

    .line 710
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Ljava/util/GregorianCalendar;->isCached:Z

    .line 712
    .end local v11           #cacheMillis:I
    :cond_25e
    return-void
.end method

.method protected computeTime()V
    .registers 28

    .prologue
    .line 716
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->isLenient()Z

    move-result v20

    if-nez v20, :cond_2d8

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xb

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_36

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xb

    aget v20, v20, v21

    if-ltz v20, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xb

    aget v20, v20, v21

    const/16 v21, 0x17

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_66

    .line 719
    :cond_30
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 721
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xa

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_66

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xa

    aget v20, v20, v21

    if-ltz v20, :cond_60

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xa

    aget v20, v20, v21

    const/16 v21, 0xb

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_66

    .line 722
    :cond_60
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 724
    :cond_66
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xc

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_96

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xc

    aget v20, v20, v21

    if-ltz v20, :cond_90

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xc

    aget v20, v20, v21

    const/16 v21, 0x3b

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_96

    .line 725
    :cond_90
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 727
    :cond_96
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xd

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_c6

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xd

    aget v20, v20, v21

    if-ltz v20, :cond_c0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xd

    aget v20, v20, v21

    const/16 v21, 0x3b

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_c6

    .line 728
    :cond_c0
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 730
    :cond_c6
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xe

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_f6

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xe

    aget v20, v20, v21

    if-ltz v20, :cond_f0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xe

    aget v20, v20, v21

    const/16 v21, 0x3e7

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_f6

    .line 732
    :cond_f0
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 734
    :cond_f6
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x3

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_12c

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x3

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_126

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x3

    aget v20, v20, v21

    const/16 v21, 0x35

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_12c

    .line 736
    :cond_126
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 738
    :cond_12c
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_162

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_15c

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget v20, v20, v21

    const/16 v21, 0x7

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_162

    .line 740
    :cond_15c
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 742
    :cond_162
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x8

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_198

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x8

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_192

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x8

    aget v20, v20, v21

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_198

    .line 744
    :cond_192
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 746
    :cond_198
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x4

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_1ce

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x4

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_1c8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x4

    aget v20, v20, v21

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1ce

    .line 748
    :cond_1c8
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 750
    :cond_1ce
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x9

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_1fe

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x9

    aget v20, v20, v21

    if-eqz v20, :cond_1fe

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x9

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1fe

    .line 751
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 753
    :cond_1fe
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xa

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_22e

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xa

    aget v20, v20, v21

    if-ltz v20, :cond_228

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xa

    aget v20, v20, v21

    const/16 v21, 0xb

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_22e

    .line 754
    :cond_228
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 756
    :cond_22e
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_2a8

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_27d

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    if-nez v20, :cond_27d

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_277

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    const v21, 0x116babfe

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_27d

    .line 759
    :cond_277
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 760
    :cond_27d
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_2a2

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    const v21, 0x116bd2d2

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_2a8

    .line 761
    :cond_2a2
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 764
    :cond_2a8
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_2d8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget v20, v20, v21

    if-ltz v20, :cond_2d2

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget v20, v20, v21

    const/16 v21, 0xb

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_2d8

    .line 765
    :cond_2d2
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 770
    :cond_2d8
    const-wide/16 v6, 0x0

    .line 771
    .local v6, hour:J
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xb

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_3ac

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/Calendar;->lastTimeFieldSet:I

    move/from16 v20, v0

    const/16 v21, 0xa

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3ac

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xb

    aget v20, v20, v21

    move/from16 v0, v20

    int-to-long v6, v0

    .line 776
    :cond_301
    :goto_301
    const-wide/32 v20, 0x36ee80

    mul-long v11, v6, v20

    .line 778
    .local v11, timeVal:J
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xc

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_328

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xc

    aget v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide/32 v22, 0xea60

    mul-long v20, v20, v22

    add-long v11, v11, v20

    .line 781
    :cond_328
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xd

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_349

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xd

    aget v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x3e8

    mul-long v20, v20, v22

    add-long v11, v11, v20

    .line 784
    :cond_349
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xe

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_366

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xe

    aget v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v11, v11, v20

    .line 789
    :cond_366
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_3d5

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v19, v20, v21

    .line 790
    .local v19, year:I
    :goto_37c
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_3e6

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    if-eqz v20, :cond_3d8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3d8

    .line 793
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 773
    .end local v11           #timeVal:J
    .end local v19           #year:I
    :cond_3ac
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xa

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_301

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x9

    aget v20, v20, v21

    mul-int/lit8 v20, v20, 0xc

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0xa

    aget v21, v21, v22

    add-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v6, v0

    goto/16 :goto_301

    .line 789
    .restart local v11       #timeVal:J
    :cond_3d5
    const/16 v19, 0x7b2

    goto :goto_37c

    .line 795
    .restart local v19       #year:I
    :cond_3d8
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    if-nez v20, :cond_3e6

    .line 796
    rsub-int/lit8 v19, v19, 0x1

    .line 800
    :cond_3e6
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x4

    aget-boolean v20, v20, v21

    if-nez v20, :cond_3fe

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x8

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_52e

    :cond_3fe
    const/16 v18, 0x1

    .line 802
    .local v18, weekMonthSet:Z
    :goto_400
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x5

    aget-boolean v20, v20, v21

    if-nez v20, :cond_41a

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget-boolean v20, v20, v21

    if-nez v20, :cond_41a

    if-eqz v18, :cond_532

    :cond_41a
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/Calendar;->lastDateFieldSet:I

    move/from16 v20, v0

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_532

    const/16 v16, 0x1

    .line 804
    .local v16, useMonth:Z
    :goto_42a
    if-eqz v16, :cond_47e

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/Calendar;->lastDateFieldSet:I

    move/from16 v20, v0

    const/16 v21, 0x7

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_448

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/Calendar;->lastDateFieldSet:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_47e

    .line 806
    :cond_448
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x3

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_53a

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_53a

    .line 807
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/Calendar;->lastDateFieldSet:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_536

    if-eqz v18, :cond_536

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_536

    const/16 v16, 0x1

    .line 814
    :cond_47e
    :goto_47e
    if-eqz v16, :cond_74f

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget v9, v20, v21

    .line 816
    .local v9, month:I
    div-int/lit8 v20, v9, 0xc

    add-int v19, v19, v20

    .line 817
    rem-int/lit8 v9, v9, 0xc

    .line 818
    if-gez v9, :cond_496

    .line 819
    add-int/lit8 v19, v19, -0x1

    .line 820
    add-int/lit8 v9, v9, 0xc

    .line 822
    :cond_496
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v8

    .line 823
    .local v8, leapYear:Z
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->daysFromBaseYear(I)J

    move-result-wide v20

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Ljava/util/GregorianCalendar;->daysInYear(ZI)I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v4, v20, v22

    .line 824
    .local v4, days:J
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x5

    aget-boolean v15, v20, v21

    .line 825
    .local v15, useDate:Z
    if-eqz v15, :cond_4f8

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/Calendar;->lastDateFieldSet:I

    move/from16 v20, v0

    const/16 v21, 0x7

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_4e9

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/Calendar;->lastDateFieldSet:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_4e9

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/Calendar;->lastDateFieldSet:I

    move/from16 v20, v0

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4f8

    .line 828
    :cond_4e9
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_4f7

    if-nez v18, :cond_565

    :cond_4f7
    const/4 v15, 0x1

    .line 830
    :cond_4f8
    :goto_4f8
    if-eqz v15, :cond_5fc

    .line 831
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->isLenient()Z

    move-result v20

    if-nez v20, :cond_567

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x5

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_528

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x5

    aget v20, v20, v21

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_567

    .line 834
    :cond_528
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 800
    .end local v4           #days:J
    .end local v8           #leapYear:Z
    .end local v9           #month:I
    .end local v15           #useDate:Z
    .end local v16           #useMonth:Z
    .end local v18           #weekMonthSet:Z
    :cond_52e
    const/16 v18, 0x0

    goto/16 :goto_400

    .line 802
    .restart local v18       #weekMonthSet:Z
    :cond_532
    const/16 v16, 0x0

    goto/16 :goto_42a

    .line 807
    .restart local v16       #useMonth:Z
    :cond_536
    const/16 v16, 0x0

    goto/16 :goto_47e

    .line 809
    :cond_53a
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x6

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_47e

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x5

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_562

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_562

    const/16 v16, 0x1

    :goto_560
    goto/16 :goto_47e

    :cond_562
    const/16 v16, 0x0

    goto :goto_560

    .line 828
    .restart local v4       #days:J
    .restart local v8       #leapYear:Z
    .restart local v9       #month:I
    .restart local v15       #useDate:Z
    :cond_565
    const/4 v15, 0x0

    goto :goto_4f8

    .line 836
    :cond_567
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x5

    aget v20, v20, v21

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v4, v4, v20

    .line 895
    .end local v8           #leapYear:Z
    .end local v9           #month:I
    .end local v15           #useDate:Z
    :cond_57a
    :goto_57a
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Ljava/util/Calendar;->lastDateFieldSet:I

    .line 897
    const-wide/32 v20, 0x5265c00

    mul-long v20, v20, v4

    add-long v11, v11, v20

    .line 899
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->changeYear:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5bf

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    move-wide/from16 v20, v0

    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide/32 v24, 0x5265c00

    mul-long v22, v22, v24

    add-long v20, v20, v22

    cmp-long v20, v11, v20

    if-ltz v20, :cond_5bf

    .line 901
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x5265c00

    mul-long v20, v20, v22

    sub-long v11, v11, v20

    .line 910
    :cond_5bf
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Ljava/util/GregorianCalendar;->getOffset(J)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v20, v11, v20

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v13, v20, v22

    .line 912
    .local v13, timeValWithoutDST:J
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Ljava/util/GregorianCalendar;->getOffset(J)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v11, v11, v20

    .line 915
    move-object/from16 v0, p0

    iput-wide v11, v0, Ljava/util/Calendar;->time:J

    .line 916
    cmp-long v20, v13, v11

    if-eqz v20, :cond_5fb

    .line 917
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->computeFields()V

    .line 918
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljava/util/Calendar;->areFieldsSet:Z

    .line 920
    :cond_5fb
    return-void

    .line 839
    .end local v13           #timeValWithoutDST:J
    .restart local v8       #leapYear:Z
    .restart local v9       #month:I
    .restart local v15       #useDate:Z
    :cond_5fc
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_677

    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget v20, v20, v21

    add-int/lit8 v3, v20, -0x1

    .line 844
    .local v3, dayOfWeek:I
    :goto_614
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x4

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_67e

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/Calendar;->lastDateFieldSet:I

    move/from16 v20, v0

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_67e

    .line 846
    const-wide/16 v20, 0x3

    sub-long v20, v4, v20

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v10

    .line 847
    .local v10, skew:I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x4

    aget v20, v20, v21

    add-int/lit8 v20, v20, -0x1

    mul-int/lit8 v20, v20, 0x7

    add-int v21, v10, v3

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x3

    sub-long v23, v4, v23

    sub-long v21, v21, v23

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v21

    add-int v20, v20, v21

    sub-int v20, v20, v10

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v4, v4, v20

    .line 849
    goto/16 :goto_57a

    .line 842
    .end local v3           #dayOfWeek:I
    .end local v10           #skew:I
    :cond_677
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v20

    add-int/lit8 v3, v20, -0x1

    .restart local v3       #dayOfWeek:I
    goto :goto_614

    .line 849
    :cond_67e
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x8

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_6fd

    .line 850
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x8

    aget v20, v20, v21

    if-ltz v20, :cond_6c0

    .line 851
    int-to-long v0, v3

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x3

    sub-long v22, v4, v22

    sub-long v20, v20, v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0x8

    aget v21, v21, v22

    add-int/lit8 v21, v21, -0x1

    mul-int/lit8 v21, v21, 0x7

    add-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v4, v4, v20

    goto/16 :goto_57a

    .line 854
    :cond_6c0
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v20

    int-to-long v0, v3

    move-wide/from16 v21, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v23, v23, v4

    const-wide/16 v25, 0x3

    sub-long v23, v23, v25

    sub-long v21, v21, v23

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v21

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0x8

    aget v21, v21, v22

    mul-int/lit8 v21, v21, 0x7

    add-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v4, v4, v20

    goto/16 :goto_57a

    .line 859
    :cond_6fd
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_57a

    .line 860
    const-wide/16 v20, 0x3

    sub-long v20, v4, v20

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v10

    .line 861
    .restart local v10       #skew:I
    add-int v20, v10, v3

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x3

    sub-long v22, v4, v22

    sub-long v20, v20, v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v20

    sub-int v20, v20, v10

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v4, v4, v20

    goto/16 :goto_57a

    .line 865
    .end local v3           #dayOfWeek:I
    .end local v4           #days:J
    .end local v8           #leapYear:Z
    .end local v9           #month:I
    .end local v10           #skew:I
    .end local v15           #useDate:Z
    :cond_74f
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x3

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_7fe

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/Calendar;->lastDateFieldSet:I

    move/from16 v20, v0

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_7fe

    const/16 v17, 0x1

    .line 867
    .local v17, useWeekYear:Z
    :goto_76b
    if-eqz v17, :cond_783

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x6

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_783

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-boolean v17, v20, v21

    .line 870
    :cond_783
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->daysFromBaseYear(I)J

    move-result-wide v4

    .line 871
    .restart local v4       #days:J
    if-eqz v17, :cond_809

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_802

    .line 874
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget v20, v20, v21

    add-int/lit8 v3, v20, -0x1

    .line 878
    .restart local v3       #dayOfWeek:I
    :goto_7a5
    const-wide/16 v20, 0x3

    sub-long v20, v4, v20

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v10

    .line 879
    .restart local v10       #skew:I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x3

    aget v20, v20, v21

    add-int/lit8 v20, v20, -0x1

    mul-int/lit8 v20, v20, 0x7

    add-int v21, v10, v3

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x3

    sub-long v23, v4, v23

    sub-long v21, v21, v23

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v21

    add-int v20, v20, v21

    sub-int v20, v20, v10

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v4, v4, v20

    .line 881
    rsub-int/lit8 v20, v10, 0x7

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_57a

    .line 882
    const-wide/16 v20, 0x7

    add-long v4, v4, v20

    goto/16 :goto_57a

    .line 865
    .end local v3           #dayOfWeek:I
    .end local v4           #days:J
    .end local v10           #skew:I
    .end local v17           #useWeekYear:Z
    :cond_7fe
    const/16 v17, 0x0

    goto/16 :goto_76b

    .line 876
    .restart local v4       #days:J
    .restart local v17       #useWeekYear:Z
    :cond_802
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v20

    add-int/lit8 v3, v20, -0x1

    .restart local v3       #dayOfWeek:I
    goto :goto_7a5

    .line 884
    .end local v3           #dayOfWeek:I
    :cond_809
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x6

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_86d

    .line 885
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->isLenient()Z

    move-result v20

    if-nez v20, :cond_858

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x6

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_84f

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x6

    aget v21, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v20

    if-eqz v20, :cond_855

    const/16 v20, 0x1

    :goto_843
    move/from16 v0, v20

    add-int/lit16 v0, v0, 0x16d

    move/from16 v20, v0

    move/from16 v0, v21

    move/from16 v1, v20

    if-le v0, v1, :cond_858

    .line 888
    :cond_84f
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 885
    :cond_855
    const/16 v20, 0x0

    goto :goto_843

    .line 890
    :cond_858
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x6

    aget v20, v20, v21

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v4, v4, v20

    goto/16 :goto_57a

    .line 891
    :cond_86d
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_57a

    .line 892
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget v20, v20, v21

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x3

    sub-long v22, v4, v22

    sub-long v20, v20, v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v4, v4, v20

    goto/16 :goto_57a
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "object"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1013
    instance-of v2, p1, Ljava/util/GregorianCalendar;

    if-nez v2, :cond_8

    move v0, v1

    .line 1019
    .end local p1
    :cond_7
    :goto_7
    return v0

    .line 1016
    .restart local p1
    :cond_8
    if-eq p1, p0, :cond_7

    .line 1019
    invoke-super {p0, p1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    check-cast p1, Ljava/util/GregorianCalendar;

    .end local p1
    iget-wide v4, p1, Ljava/util/GregorianCalendar;->gregorianCutover:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    :cond_1a
    move v0, v1

    goto :goto_7
.end method

.method public getActualMaximum(I)I
    .registers 13
    .parameter "field"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x5

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1034
    sget-object v5, Ljava/util/GregorianCalendar;->maximums:[I

    aget v4, v5, p1

    .local v4, value:I
    sget-object v5, Ljava/util/GregorianCalendar;->leastMaximums:[I

    aget v5, v5, p1

    if-ne v4, v5, :cond_f

    .line 1090
    .end local v4           #value:I
    :goto_e
    return v4

    .line 1038
    .restart local v4       #value:I
    :cond_f
    packed-switch p1, :pswitch_data_a6

    .line 1045
    :goto_12
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->complete()V

    .line 1046
    iget-wide v1, p0, Ljava/util/Calendar;->time:J

    .line 1047
    .local v1, orgTime:J
    const/4 v3, 0x0

    .line 1048
    .local v3, result:I
    packed-switch p1, :pswitch_data_ae

    .line 1089
    :cond_1b
    :goto_1b
    :pswitch_1b
    iput-wide v1, p0, Ljava/util/Calendar;->time:J

    move v4, v3

    .line 1090
    goto :goto_e

    .line 1041
    .end local v1           #orgTime:J
    .end local v3           #result:I
    :pswitch_1f
    iput-boolean v8, p0, Ljava/util/GregorianCalendar;->isCached:Z

    goto :goto_12

    .line 1050
    .restart local v1       #orgTime:J
    .restart local v3       #result:I
    :pswitch_22
    const/16 v5, 0x1f

    invoke-virtual {p0, v9, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1051
    const/4 v5, 0x2

    const/16 v6, 0xb

    invoke-virtual {p0, v5, v6}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1052
    invoke-virtual {p0, v10}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 1053
    if-ne v3, v7, :cond_3c

    .line 1054
    const/16 v5, 0x18

    invoke-virtual {p0, v9, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1055
    invoke-virtual {p0, v10}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 1057
    :cond_3c
    iput-boolean v8, p0, Ljava/util/Calendar;->areFieldsSet:Z

    goto :goto_1b

    .line 1060
    :pswitch_3f
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    move-result v5

    invoke-virtual {p0, v9, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1061
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 1062
    iput-boolean v8, p0, Ljava/util/Calendar;->areFieldsSet:Z

    goto :goto_1b

    .line 1065
    :pswitch_4e
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    move-result v4

    goto :goto_e

    .line 1067
    :pswitch_53
    iget-object v5, p0, Ljava/util/Calendar;->fields:[I

    aget v5, v5, v7

    invoke-direct {p0, v5}, Ljava/util/GregorianCalendar;->daysInYear(I)I

    move-result v4

    goto :goto_e

    .line 1069
    :pswitch_5c
    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    move-result v6

    invoke-virtual {p0, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x7

    add-int v3, v5, v6

    .line 1071
    goto :goto_1b

    .line 1073
    :pswitch_70
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    .line 1074
    .local v0, clone:Ljava/util/GregorianCalendar;
    invoke-virtual {p0, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    if-ne v5, v7, :cond_98

    .line 1075
    const-wide v5, 0x7fffffffffffffffL

    invoke-virtual {v0, v5, v6}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1079
    :goto_84
    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 1080
    invoke-virtual {p0, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    invoke-virtual {v0, v7, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1081
    invoke-virtual {v0, p0}, Ljava/util/GregorianCalendar;->before(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 1082
    add-int/lit8 v3, v3, -0x1

    goto :goto_1b

    .line 1077
    :cond_98
    const-wide/high16 v5, -0x8000

    invoke-virtual {v0, v5, v6}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    goto :goto_84

    .line 1086
    .end local v0           #clone:Ljava/util/GregorianCalendar;
    :pswitch_9e
    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Ljava/util/GregorianCalendar;->getMaximum(I)I

    move-result v3

    goto/16 :goto_1b

    .line 1038
    :pswitch_data_a6
    .packed-switch 0x3
        :pswitch_1f
        :pswitch_1f
    .end packed-switch

    .line 1048
    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_70
        :pswitch_1b
        :pswitch_22
        :pswitch_3f
        :pswitch_4e
        :pswitch_53
        :pswitch_1b
        :pswitch_5c
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_9e
    .end packed-switch
.end method

.method public getActualMinimum(I)I
    .registers 3
    .parameter "field"

    .prologue
    .line 1104
    invoke-virtual {p0, p1}, Ljava/util/GregorianCalendar;->getMinimum(I)I

    move-result v0

    return v0
.end method

.method public getGreatestMinimum(I)I
    .registers 3
    .parameter "field"

    .prologue
    .line 1117
    sget-object v0, Ljava/util/GregorianCalendar;->minimums:[I

    aget v0, v0, p1

    return v0
.end method

.method public final getGregorianChange()Ljava/util/Date;
    .registers 4

    .prologue
    .line 1127
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getLeastMaximum(I)I
    .registers 9
    .parameter "field"

    .prologue
    .line 1142
    iget-wide v3, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    const-wide v5, -0xb1d069b5400L

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1d

    const/4 v3, 0x3

    if-ne p1, v3, :cond_1d

    .line 1144
    iget-wide v1, p0, Ljava/util/Calendar;->time:J

    .line 1145
    .local v1, currentTimeInMillis:J
    iget-wide v3, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    invoke-virtual {p0, v3, v4}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1146
    invoke-virtual {p0, p1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v0

    .line 1147
    .local v0, actual:I
    invoke-virtual {p0, v1, v2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1150
    .end local v0           #actual:I
    .end local v1           #currentTimeInMillis:J
    :goto_1c
    return v0

    :cond_1d
    sget-object v3, Ljava/util/GregorianCalendar;->leastMaximums:[I

    aget v0, v3, p1

    goto :goto_1c
.end method

.method public getMaximum(I)I
    .registers 3
    .parameter "field"

    .prologue
    .line 1163
    sget-object v0, Ljava/util/GregorianCalendar;->maximums:[I

    aget v0, v0, p1

    return v0
.end method

.method public getMinimum(I)I
    .registers 3
    .parameter "field"

    .prologue
    .line 1175
    sget-object v0, Ljava/util/GregorianCalendar;->minimums:[I

    aget v0, v0, p1

    return v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 1234
    invoke-super {p0}, Ljava/util/Calendar;->hashCode()I

    move-result v0

    iget-wide v1, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    long-to-int v2, v2

    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public isLeapYear(I)Z
    .registers 5
    .parameter "year"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1247
    iget v2, p0, Ljava/util/GregorianCalendar;->changeYear:I

    if-le p1, v2, :cond_15

    .line 1248
    rem-int/lit8 v2, p1, 0x4

    if-nez v2, :cond_13

    rem-int/lit8 v2, p1, 0x64

    if-nez v2, :cond_12

    rem-int/lit16 v2, p1, 0x190

    if-nez v2, :cond_13

    .line 1251
    :cond_12
    :goto_12
    return v0

    :cond_13
    move v0, v1

    .line 1248
    goto :goto_12

    .line 1251
    :cond_15
    rem-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_12

    move v0, v1

    goto :goto_12
.end method

.method public roll(II)V
    .registers 15
    .parameter "field"
    .parameter "value"

    .prologue
    const/4 v9, 0x7

    const/4 v11, 0x5

    const/4 v10, 0x1

    .line 1290
    if-nez p2, :cond_6

    .line 1389
    :goto_5
    return-void

    .line 1293
    :cond_6
    if-ltz p1, :cond_c

    const/16 v8, 0xf

    if-lt p1, v8, :cond_12

    .line 1294
    :cond_c
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v8

    .line 1297
    :cond_12
    const/4 v8, 0x0

    iput-boolean v8, p0, Ljava/util/GregorianCalendar;->isCached:Z

    .line 1299
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->complete()V

    .line 1301
    const/4 v3, -0x1

    .line 1302
    .local v3, max:I
    packed-switch p1, :pswitch_data_18c

    .line 1385
    :cond_1c
    :goto_1c
    const/4 v8, -0x1

    if-eq v3, v8, :cond_2f

    .line 1386
    iget-object v8, p0, Ljava/util/Calendar;->fields:[I

    aget v8, v8, p1

    add-int/lit8 v8, v8, -0x1

    add-int/2addr v8, p2

    invoke-direct {p0, v8, v3}, Ljava/util/GregorianCalendar;->mod(II)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p0, p1, v8}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1388
    :cond_2f
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->complete()V

    goto :goto_5

    .line 1304
    :pswitch_33
    sget-object v8, Ljava/util/GregorianCalendar;->maximums:[I

    aget v3, v8, p1

    .line 1305
    goto :goto_1c

    .line 1307
    :pswitch_38
    iget-object v8, p0, Ljava/util/Calendar;->fields:[I

    aget v8, v8, v10

    invoke-direct {p0, v8}, Ljava/util/GregorianCalendar;->daysInYear(I)I

    move-result v2

    .line 1308
    .local v2, days:I
    const/4 v1, 0x6

    .line 1309
    .local v1, day:I
    iget-object v8, p0, Ljava/util/Calendar;->fields:[I

    aget v8, v8, v9

    iget-object v9, p0, Ljava/util/Calendar;->fields:[I

    aget v9, v9, v1

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v8, v9

    int-to-long v8, v8

    invoke-direct {p0, v8, v9}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v5

    .line 1311
    .local v5, mod:I
    add-int/lit8 v8, v2, -0x1

    add-int/2addr v8, v5

    div-int/lit8 v8, v8, 0x7

    add-int/lit8 v4, v8, 0x1

    .line 1312
    .local v4, maxWeeks:I
    iget-object v8, p0, Ljava/util/Calendar;->fields:[I

    aget v8, v8, p1

    add-int/lit8 v8, v8, -0x1

    add-int/2addr v8, p2

    invoke-direct {p0, v8, v4}, Ljava/util/GregorianCalendar;->mod(II)I

    move-result v8

    add-int/lit8 v6, v8, 0x1

    .line 1313
    .local v6, newWeek:I
    if-ne v6, v4, :cond_8b

    .line 1314
    iget-object v8, p0, Ljava/util/Calendar;->fields:[I

    aget v8, v8, p1

    sub-int v8, v6, v8

    mul-int/lit8 v0, v8, 0x7

    .line 1315
    .local v0, addDays:I
    iget-object v8, p0, Ljava/util/Calendar;->fields:[I

    aget v8, v8, v1

    if-le v8, v0, :cond_85

    iget-object v8, p0, Ljava/util/Calendar;->fields:[I

    aget v8, v8, v1

    add-int/2addr v8, v0

    if-le v8, v2, :cond_85

    .line 1316
    invoke-virtual {p0, p1, v10}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_1c

    .line 1318
    :cond_85
    add-int/lit8 v8, v6, -0x1

    invoke-virtual {p0, p1, v8}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_1c

    .line 1320
    .end local v0           #addDays:I
    :cond_8b
    if-ne v6, v10, :cond_af

    .line 1321
    iget-object v8, p0, Ljava/util/Calendar;->fields:[I

    aget v8, v8, v1

    iget-object v9, p0, Ljava/util/Calendar;->fields:[I

    aget v9, v9, v1

    add-int/lit8 v9, v9, -0x1

    div-int/lit8 v9, v9, 0x7

    mul-int/lit8 v9, v9, 0x7

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    add-int/2addr v8, v5

    div-int/lit8 v8, v8, 0x7

    add-int/lit8 v7, v8, 0x1

    .line 1322
    .local v7, week:I
    if-le v7, v10, :cond_aa

    .line 1323
    invoke-virtual {p0, p1, v10}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_1c

    .line 1325
    :cond_aa
    invoke-virtual {p0, p1, v6}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_1c

    .line 1328
    .end local v7           #week:I
    :cond_af
    invoke-virtual {p0, p1, v6}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_1c

    .line 1332
    .end local v1           #day:I
    .end local v2           #days:I
    .end local v4           #maxWeeks:I
    .end local v5           #mod:I
    .end local v6           #newWeek:I
    :pswitch_b4
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    move-result v2

    .line 1333
    .restart local v2       #days:I
    const/4 v1, 0x5

    .line 1334
    .restart local v1       #day:I
    iget-object v8, p0, Ljava/util/Calendar;->fields:[I

    aget v8, v8, v9

    iget-object v9, p0, Ljava/util/Calendar;->fields:[I

    aget v9, v9, v1

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v8, v9

    int-to-long v8, v8

    invoke-direct {p0, v8, v9}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v5

    .line 1336
    .restart local v5       #mod:I
    add-int/lit8 v8, v2, -0x1

    add-int/2addr v8, v5

    div-int/lit8 v8, v8, 0x7

    add-int/lit8 v4, v8, 0x1

    .line 1337
    .restart local v4       #maxWeeks:I
    iget-object v8, p0, Ljava/util/Calendar;->fields:[I

    aget v8, v8, p1

    add-int/lit8 v8, v8, -0x1

    add-int/2addr v8, p2

    invoke-direct {p0, v8, v4}, Ljava/util/GregorianCalendar;->mod(II)I

    move-result v8

    add-int/lit8 v6, v8, 0x1

    .line 1338
    .restart local v6       #newWeek:I
    if-ne v6, v4, :cond_fd

    .line 1339
    iget-object v8, p0, Ljava/util/Calendar;->fields:[I

    aget v8, v8, v1

    iget-object v9, p0, Ljava/util/Calendar;->fields:[I

    aget v9, v9, p1

    sub-int v9, v6, v9

    mul-int/lit8 v9, v9, 0x7

    add-int/2addr v8, v9

    if-le v8, v2, :cond_f8

    .line 1340
    invoke-virtual {p0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_1c

    .line 1342
    :cond_f8
    invoke-virtual {p0, p1, v6}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_1c

    .line 1344
    :cond_fd
    if-ne v6, v10, :cond_121

    .line 1345
    iget-object v8, p0, Ljava/util/Calendar;->fields:[I

    aget v8, v8, v1

    iget-object v9, p0, Ljava/util/Calendar;->fields:[I

    aget v9, v9, v1

    add-int/lit8 v9, v9, -0x1

    div-int/lit8 v9, v9, 0x7

    mul-int/lit8 v9, v9, 0x7

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    add-int/2addr v8, v5

    div-int/lit8 v8, v8, 0x7

    add-int/lit8 v7, v8, 0x1

    .line 1346
    .restart local v7       #week:I
    if-le v7, v10, :cond_11c

    .line 1347
    invoke-virtual {p0, v1, v10}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_1c

    .line 1349
    :cond_11c
    invoke-virtual {p0, p1, v6}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_1c

    .line 1352
    .end local v7           #week:I
    :cond_121
    invoke-virtual {p0, p1, v6}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_1c

    .line 1356
    .end local v1           #day:I
    .end local v2           #days:I
    .end local v4           #maxWeeks:I
    .end local v5           #mod:I
    .end local v6           #newWeek:I
    :pswitch_126
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    move-result v3

    .line 1357
    goto/16 :goto_1c

    .line 1359
    :pswitch_12c
    iget-object v8, p0, Ljava/util/Calendar;->fields:[I

    aget v8, v8, v10

    invoke-direct {p0, v8}, Ljava/util/GregorianCalendar;->daysInYear(I)I

    move-result v3

    .line 1360
    goto/16 :goto_1c

    .line 1362
    :pswitch_136
    sget-object v8, Ljava/util/GregorianCalendar;->maximums:[I

    aget v3, v8, p1

    .line 1363
    const/4 v8, 0x4

    iput v8, p0, Ljava/util/Calendar;->lastDateFieldSet:I

    goto/16 :goto_1c

    .line 1366
    :pswitch_13f
    iget-object v8, p0, Ljava/util/Calendar;->fields:[I

    aget v8, v8, v11

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    move-result v9

    iget-object v10, p0, Ljava/util/Calendar;->fields:[I

    aget v10, v10, v11

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x7

    mul-int/lit8 v9, v9, 0x7

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    div-int/lit8 v8, v8, 0x7

    add-int/lit8 v3, v8, 0x1

    .line 1367
    goto/16 :goto_1c

    .line 1377
    :pswitch_159
    iget-object v8, p0, Ljava/util/Calendar;->fields:[I

    aget v8, v8, p1

    add-int/2addr v8, p2

    sget-object v9, Ljava/util/GregorianCalendar;->maximums:[I

    aget v9, v9, p1

    add-int/lit8 v9, v9, 0x1

    invoke-direct {p0, v8, v9}, Ljava/util/GregorianCalendar;->mod(II)I

    move-result v8

    invoke-virtual {p0, p1, v8}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1378
    const/4 v8, 0x2

    if-ne p1, v8, :cond_181

    iget-object v8, p0, Ljava/util/Calendar;->fields:[I

    aget v8, v8, v11

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    move-result v9

    if-le v8, v9, :cond_181

    .line 1379
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    move-result v8

    invoke-virtual {p0, v11, v8}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_1c

    .line 1380
    :cond_181
    const/16 v8, 0x9

    if-ne p1, v8, :cond_1c

    .line 1381
    const/16 v8, 0xa

    iput v8, p0, Ljava/util/Calendar;->lastTimeFieldSet:I

    goto/16 :goto_1c

    .line 1302
    nop

    :pswitch_data_18c
    .packed-switch 0x0
        :pswitch_159
        :pswitch_33
        :pswitch_159
        :pswitch_38
        :pswitch_b4
        :pswitch_126
        :pswitch_12c
        :pswitch_136
        :pswitch_13f
        :pswitch_159
        :pswitch_159
        :pswitch_159
        :pswitch_159
        :pswitch_159
        :pswitch_159
    .end packed-switch
.end method

.method public roll(IZ)V
    .registers 4
    .parameter "field"
    .parameter "increment"

    .prologue
    .line 1408
    if-eqz p2, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0, p1, v0}, Ljava/util/GregorianCalendar;->roll(II)V

    .line 1409
    return-void

    .line 1408
    :cond_7
    const/4 v0, -0x1

    goto :goto_3
.end method

.method public setFirstDayOfWeek(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 1453
    invoke-super {p0, p1}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 1454
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/GregorianCalendar;->isCached:Z

    .line 1455
    return-void
.end method

.method public setGregorianChange(Ljava/util/Date;)V
    .registers 7
    .parameter "date"

    .prologue
    const/4 v4, 0x0

    .line 1418
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    .line 1419
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v2, Ljava/util/TimeZone;->GMT:Ljava/util/TimeZone;

    invoke-direct {v0, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 1420
    .local v0, cal:Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 1421
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    iput v2, p0, Ljava/util/GregorianCalendar;->changeYear:I

    .line 1422
    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    if-nez v2, :cond_24

    .line 1423
    iget v2, p0, Ljava/util/GregorianCalendar;->changeYear:I

    rsub-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/GregorianCalendar;->changeYear:I

    .line 1425
    :cond_24
    iget v2, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit16 v2, v2, -0x7d0

    div-int/lit16 v2, v2, 0x190

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit16 v3, v3, -0x7d0

    div-int/lit8 v3, v3, 0x64

    sub-int/2addr v2, v3

    iput v2, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    .line 1427
    iput-boolean v4, p0, Ljava/util/GregorianCalendar;->isCached:Z

    .line 1428
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 1429
    .local v1, dayOfYear:I
    iget v2, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    if-ge v1, v2, :cond_51

    .line 1430
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    .line 1431
    iget v2, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    .line 1436
    :goto_4e
    iput-boolean v4, p0, Ljava/util/GregorianCalendar;->isCached:Z

    .line 1437
    return-void

    .line 1433
    :cond_51
    iput v4, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    .line 1434
    iget v2, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    iput v2, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    goto :goto_4e
.end method

.method public setMinimalDaysInFirstWeek(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 1459
    invoke-super {p0, p1}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    .line 1460
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/GregorianCalendar;->isCached:Z

    .line 1461
    return-void
.end method
