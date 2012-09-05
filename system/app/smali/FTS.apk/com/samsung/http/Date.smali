.class public Lcom/samsung/http/Date;
.super Ljava/lang/Object;
.source "Date.java"


# static fields
.field private static final MONTH_STRING:[Ljava/lang/String;

.field private static final WEEK_STRING:[Ljava/lang/String;

.field private static cal:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 91
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    .line 92
    const-string v1, "Jan"

    aput-object v1, v0, v3

    .line 93
    const-string v1, "Feb"

    aput-object v1, v0, v4

    .line 94
    const-string v1, "Mar"

    aput-object v1, v0, v5

    .line 95
    const-string v1, "Apr"

    aput-object v1, v0, v6

    .line 96
    const-string v1, "May"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 97
    const-string v2, "Jun"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 98
    const-string v2, "Jul"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 99
    const-string v2, "Aug"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 100
    const-string v2, "Sep"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 101
    const-string v2, "Oct"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 102
    const-string v2, "Nov"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 103
    const-string v2, "Dec"

    aput-object v2, v0, v1

    .line 91
    sput-object v0, Lcom/samsung/http/Date;->MONTH_STRING:[Ljava/lang/String;

    .line 114
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 115
    const-string v1, "Sun"

    aput-object v1, v0, v3

    .line 116
    const-string v1, "Mon"

    aput-object v1, v0, v4

    .line 117
    const-string v1, "Tue"

    aput-object v1, v0, v5

    .line 118
    const-string v1, "Wed"

    aput-object v1, v0, v6

    .line 119
    const-string v1, "Thu"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    .line 120
    const-string v2, "Fri"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 121
    const-string v2, "Sat"

    aput-object v2, v0, v1

    .line 114
    sput-object v0, Lcom/samsung/http/Date;->WEEK_STRING:[Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .registers 2
    .parameter "cal"

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sput-object p1, Lcom/samsung/http/Date;->cal:Ljava/util/Calendar;

    .line 38
    return-void
.end method

.method public static final toMonthString(I)Ljava/lang/String;
    .registers 2
    .parameter "value"

    .prologue
    .line 108
    add-int/lit8 p0, p0, 0x0

    .line 109
    if-ltz p0, :cond_d

    const/16 v0, 0xc

    if-ge p0, v0, :cond_d

    .line 110
    sget-object v0, Lcom/samsung/http/Date;->MONTH_STRING:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 111
    :goto_c
    return-object v0

    :cond_d
    const-string v0, ""

    goto :goto_c
.end method

.method public static final toTimeString(I)Ljava/lang/String;
    .registers 4
    .parameter "value"

    .prologue
    .line 134
    const-string v0, ""

    .line 135
    .local v0, str:Ljava/lang/String;
    const/16 v1, 0xa

    if-ge p0, v1, :cond_19

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    return-object v0
.end method

.method public static final toWeekString(I)Ljava/lang/String;
    .registers 2
    .parameter "value"

    .prologue
    .line 126
    add-int/lit8 p0, p0, -0x1

    .line 127
    if-ltz p0, :cond_c

    const/4 v0, 0x7

    if-ge p0, v0, :cond_c

    .line 128
    sget-object v0, Lcom/samsung/http/Date;->WEEK_STRING:[Ljava/lang/String;

    aget-object v0, v0, p0

    .line 129
    :goto_b
    return-object v0

    :cond_c
    const-string v0, ""

    goto :goto_b
.end method


# virtual methods
.method public getCalendar()Ljava/util/Calendar;
    .registers 2

    .prologue
    .line 42
    sget-object v0, Lcom/samsung/http/Date;->cal:Ljava/util/Calendar;

    return-object v0
.end method

.method public getDateString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/samsung/http/Date;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 146
    .local v0, cal:Ljava/util/Calendar;
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/http/Date;->toWeekString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 147
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/http/Date;->toTimeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 148
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/http/Date;->toMonthString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 149
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 150
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/http/Date;->toTimeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 151
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/http/Date;->toTimeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 152
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/http/Date;->toTimeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " GMT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 146
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 145
    return-object v1
.end method
