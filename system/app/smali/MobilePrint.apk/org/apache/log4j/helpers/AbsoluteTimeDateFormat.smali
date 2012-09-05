.class public Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;
.super Ljava/text/DateFormat;
.source "AbsoluteTimeDateFormat.java"


# static fields
.field public static final ABS_TIME_DATE_FORMAT:Ljava/lang/String; = "ABSOLUTE"

.field public static final DATE_AND_TIME_DATE_FORMAT:Ljava/lang/String; = "DATE"

.field public static final ISO8601_DATE_FORMAT:Ljava/lang/String; = "ISO8601"

.field private static previousTime:J

.field private static previousTimeWithoutMillis:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 69
    const/16 v0, 0x9

    new-array v0, v0, [C

    sput-object v0, Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;->previousTimeWithoutMillis:[C

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    .line 60
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->setCalendar(Ljava/util/Calendar;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .registers 3
    .parameter "timeZone"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    .line 65
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->setCalendar(Ljava/util/Calendar;)V

    .line 66
    return-void
.end method


# virtual methods
.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 15
    .parameter "date"
    .parameter "sbuf"
    .parameter "fieldPosition"

    .prologue
    .line 83
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 84
    .local v3, now:J
    const-wide/16 v7, 0x3e8

    rem-long v7, v3, v7

    long-to-int v1, v7

    .line 86
    .local v1, millis:I
    int-to-long v7, v1

    sub-long v7, v3, v7

    sget-wide v9, Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;->previousTime:J

    cmp-long v7, v7, v9

    if-eqz v7, :cond_8b

    .line 91
    iget-object v7, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v7, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 93
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    .line 95
    .local v6, start:I
    iget-object v7, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v8, 0xb

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 96
    .local v0, hour:I
    const/16 v7, 0xa

    if-ge v0, v7, :cond_2c

    .line 97
    const/16 v7, 0x30

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 99
    :cond_2c
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 100
    const/16 v7, 0x3a

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 102
    iget-object v7, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 103
    .local v2, mins:I
    const/16 v7, 0xa

    if-ge v2, v7, :cond_45

    .line 104
    const/16 v7, 0x30

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 106
    :cond_45
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 107
    const/16 v7, 0x3a

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 109
    iget-object v7, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v8, 0xd

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 110
    .local v5, secs:I
    const/16 v7, 0xa

    if-ge v5, v7, :cond_5e

    .line 111
    const/16 v7, 0x30

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 113
    :cond_5e
    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 114
    const/16 v7, 0x2c

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 117
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    sget-object v8, Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;->previousTimeWithoutMillis:[C

    const/4 v9, 0x0

    invoke-virtual {p2, v6, v7, v8, v9}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 119
    int-to-long v7, v1

    sub-long v7, v3, v7

    sput-wide v7, Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;->previousTime:J

    .line 127
    .end local v0           #hour:I
    .end local v2           #mins:I
    .end local v5           #secs:I
    .end local v6           #start:I
    :goto_75
    const/16 v7, 0x64

    if-ge v1, v7, :cond_7e

    .line 128
    const/16 v7, 0x30

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 129
    :cond_7e
    const/16 v7, 0xa

    if-ge v1, v7, :cond_87

    .line 130
    const/16 v7, 0x30

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 132
    :cond_87
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 133
    return-object p2

    .line 122
    :cond_8b
    sget-object v7, Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;->previousTimeWithoutMillis:[C

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_75
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .registers 4
    .parameter "s"
    .parameter "pos"

    .prologue
    .line 141
    const/4 v0, 0x0

    return-object v0
.end method
