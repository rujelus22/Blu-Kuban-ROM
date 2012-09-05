.class public Lgnu/inet/http/HTTPDateFormat;
.super Ljava/text/DateFormat;
.source "HTTPDateFormat.java"


# static fields
.field static final DAYS_OF_WEEK:[Ljava/lang/String;

.field static final MONTHS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, v3

    const-string v1, "Sun"

    aput-object v1, v0, v4

    const-string v1, "Mon"

    aput-object v1, v0, v5

    const-string v1, "Tue"

    aput-object v1, v0, v6

    const-string v1, "Wed"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Thu"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Fri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Sat"

    aput-object v2, v0, v1

    sput-object v0, Lgnu/inet/http/HTTPDateFormat;->DAYS_OF_WEEK:[Ljava/lang/String;

    .line 61
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Jan"

    aput-object v1, v0, v3

    const-string v1, "Feb"

    aput-object v1, v0, v4

    const-string v1, "Mar"

    aput-object v1, v0, v5

    const-string v1, "Apr"

    aput-object v1, v0, v6

    const-string v1, "May"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Jun"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Jul"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Aug"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Sep"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Oct"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Nov"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Dec"

    aput-object v2, v0, v1

    sput-object v0, Lgnu/inet/http/HTTPDateFormat;->MONTHS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    .line 68
    new-instance v0, Ljava/util/GregorianCalendar;

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v0, p0, Lgnu/inet/http/HTTPDateFormat;->calendar:Ljava/util/Calendar;

    .line 69
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    iput-object v0, p0, Lgnu/inet/http/HTTPDateFormat;->numberFormat:Ljava/text/NumberFormat;

    .line 70
    return-void
.end method

.method private skipNonWhitespace(Ljava/lang/String;I)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 402
    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_d

    .line 404
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 406
    :cond_d
    return p2
.end method

.method private skipTo(Ljava/lang/String;IC)I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 411
    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, p3, :cond_9

    .line 413
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 415
    :cond_9
    return p2
.end method

.method private skipWhitespace(Ljava/lang/String;I)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 393
    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 395
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 397
    :cond_d
    return p2
.end method


# virtual methods
.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x3a

    const/4 v6, 0x0

    const/16 v5, 0x30

    const/16 v4, 0x20

    const/16 v3, 0xa

    .line 84
    iget-object v0, p0, Lgnu/inet/http/HTTPDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 85
    iget-object v0, p0, Lgnu/inet/http/HTTPDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 86
    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 89
    sget-object v0, Lgnu/inet/http/HTTPDateFormat;->DAYS_OF_WEEK:[Ljava/lang/String;

    iget-object v1, p0, Lgnu/inet/http/HTTPDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    const/16 v0, 0x2c

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 91
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 94
    iget-object v0, p0, Lgnu/inet/http/HTTPDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 95
    div-int/lit8 v1, v0, 0xa

    invoke-static {v1, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 96
    rem-int/lit8 v0, v0, 0xa

    invoke-static {v0, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 97
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 100
    sget-object v0, Lgnu/inet/http/HTTPDateFormat;->MONTHS:[Ljava/lang/String;

    iget-object v1, p0, Lgnu/inet/http/HTTPDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 104
    iget-object v0, p0, Lgnu/inet/http/HTTPDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 105
    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_73

    .line 107
    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 108
    const/16 v1, 0x64

    if-ge v0, v1, :cond_73

    .line 110
    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 111
    if-ge v0, v3, :cond_73

    .line 113
    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 117
    :cond_73
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 121
    iget-object v0, p0, Lgnu/inet/http/HTTPDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 122
    div-int/lit8 v1, v0, 0xa

    invoke-static {v1, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 123
    rem-int/lit8 v0, v0, 0xa

    invoke-static {v0, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 124
    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 127
    iget-object v0, p0, Lgnu/inet/http/HTTPDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 128
    div-int/lit8 v1, v0, 0xa

    invoke-static {v1, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 129
    rem-int/lit8 v0, v0, 0xa

    invoke-static {v0, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 130
    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 133
    iget-object v0, p0, Lgnu/inet/http/HTTPDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 134
    div-int/lit8 v1, v0, 0xa

    invoke-static {v1, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 135
    rem-int/lit8 v0, v0, 0xa

    invoke-static {v0, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 136
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 140
    iget-object v0, p0, Lgnu/inet/http/HTTPDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lgnu/inet/http/HTTPDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v0, v1

    const v1, 0xea60

    div-int/2addr v0, v1

    .line 144
    if-gez v0, :cond_124

    .line 146
    neg-int v0, v0

    .line 147
    const/16 v1, 0x2d

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 155
    :goto_f1
    div-int/lit8 v1, v0, 0x3c

    .line 156
    div-int/lit8 v2, v1, 0xa

    invoke-static {v2, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 157
    rem-int/lit8 v1, v1, 0xa

    invoke-static {v1, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 158
    rem-int/lit8 v0, v0, 0x3c

    .line 159
    div-int/lit8 v1, v0, 0xa

    invoke-static {v1, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 160
    rem-int/lit8 v0, v0, 0xa

    invoke-static {v0, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 162
    invoke-virtual {p3, v6}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 163
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 164
    return-object p2

    .line 151
    :cond_124
    const/16 v1, 0x2b

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_f1
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .registers 15
    .parameter
    .parameter

    .prologue
    const/16 v6, 0xc

    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 176
    const/4 v1, 0x0

    .line 177
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    .line 178
    iget-object v3, p0, Lgnu/inet/http/HTTPDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    .line 179
    invoke-virtual {p2, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 183
    :try_start_11
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_2e5

    .line 185
    invoke-direct {p0, p1, v1}, Lgnu/inet/http/HTTPDateFormat;->skipNonWhitespace(Ljava/lang/String;I)I
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_1e} :catch_2d2
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_11 .. :try_end_1e} :catch_2bf

    move-result v1

    .line 188
    :goto_1f
    packed-switch v1, :pswitch_data_2e8

    .line 289
    :pswitch_22
    :try_start_22
    invoke-direct {p0, p1, v1}, Lgnu/inet/http/HTTPDateFormat;->skipWhitespace(Ljava/lang/String;I)I
    :try_end_25
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_25} :catch_2b4
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_22 .. :try_end_25} :catch_2c9

    move-result v3

    .line 290
    :try_start_26
    invoke-virtual {p2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 291
    add-int/lit8 v1, v3, 0x1

    const/16 v4, 0x2d

    invoke-direct {p0, p1, v1, v4}, Lgnu/inet/http/HTTPDateFormat;->skipTo(Ljava/lang/String;IC)I
    :try_end_30
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_30} :catch_2d5
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_26 .. :try_end_30} :catch_2cb

    move-result v1

    .line 292
    :try_start_31
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 294
    add-int/lit8 v3, v1, 0x1

    .line 295
    invoke-virtual {p2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 296
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x2d

    invoke-direct {p0, p1, v4, v5}, Lgnu/inet/http/HTTPDateFormat;->skipTo(Ljava/lang/String;IC)I

    move-result v1

    .line 297
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move v7, v2

    .line 299
    :goto_4b
    if-ge v7, v6, :cond_2dc

    .line 301
    sget-object v5, Lgnu/inet/http/HTTPDateFormat;->MONTHS:[Ljava/lang/String;

    aget-object v5, v5, v7

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1da

    .line 307
    :goto_57
    if-ne v7, v0, :cond_1de

    .line 309
    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V
    :try_end_5c
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_5c} :catch_2d8
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_31 .. :try_end_5c} :catch_2ce

    .line 310
    const/4 v0, 0x0

    .line 388
    :goto_5d
    return-object v0

    .line 192
    :pswitch_5e
    :try_start_5e
    invoke-direct {p0, p1, v1}, Lgnu/inet/http/HTTPDateFormat;->skipWhitespace(Ljava/lang/String;I)I
    :try_end_61
    .catch Ljava/lang/NumberFormatException; {:try_start_5e .. :try_end_61} :catch_2b4
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_5e .. :try_end_61} :catch_2c9

    move-result v3

    .line 193
    :try_start_62
    invoke-virtual {p2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 194
    add-int/lit8 v1, v3, 0x1

    invoke-direct {p0, p1, v1}, Lgnu/inet/http/HTTPDateFormat;->skipNonWhitespace(Ljava/lang/String;I)I
    :try_end_6a
    .catch Ljava/lang/NumberFormatException; {:try_start_62 .. :try_end_6a} :catch_2d5
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_62 .. :try_end_6a} :catch_2cb

    move-result v1

    .line 195
    :try_start_6b
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move v7, v2

    .line 197
    :goto_70
    if-ge v7, v6, :cond_2e2

    .line 199
    sget-object v5, Lgnu/inet/http/HTTPDateFormat;->MONTHS:[Ljava/lang/String;

    aget-object v5, v5, v7

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_83

    .line 205
    :goto_7c
    if-ne v7, v0, :cond_86

    .line 207
    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 208
    const/4 v0, 0x0

    goto :goto_5d

    .line 197
    :cond_83
    add-int/lit8 v7, v7, 0x1

    goto :goto_70

    .line 211
    :cond_86
    add-int/lit8 v0, v1, 0x1

    invoke-direct {p0, p1, v0}, Lgnu/inet/http/HTTPDateFormat;->skipWhitespace(Ljava/lang/String;I)I

    move-result v3

    .line 212
    invoke-virtual {p2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 213
    add-int/lit8 v0, v3, 0x1

    invoke-direct {p0, p1, v0}, Lgnu/inet/http/HTTPDateFormat;->skipNonWhitespace(Ljava/lang/String;I)I
    :try_end_94
    .catch Ljava/lang/NumberFormatException; {:try_start_6b .. :try_end_94} :catch_2d8
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_6b .. :try_end_94} :catch_2ce

    move-result v0

    .line 214
    :try_start_95
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 216
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, p1, v1}, Lgnu/inet/http/HTTPDateFormat;->skipWhitespace(Ljava/lang/String;I)I
    :try_end_a2
    .catch Ljava/lang/NumberFormatException; {:try_start_95 .. :try_end_a2} :catch_2d5
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_95 .. :try_end_a2} :catch_2cb

    move-result v1

    .line 217
    :try_start_a3
    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 218
    add-int/lit8 v3, v1, 0x1

    const/16 v4, 0x3a

    invoke-direct {p0, p1, v3, v4}, Lgnu/inet/http/HTTPDateFormat;->skipTo(Ljava/lang/String;IC)I

    move-result v0

    .line 219
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 221
    add-int/lit8 v1, v0, 0x1

    .line 222
    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 223
    add-int/lit8 v3, v1, 0x1

    const/16 v4, 0x3a

    invoke-direct {p0, p1, v3, v4}, Lgnu/inet/http/HTTPDateFormat;->skipTo(Ljava/lang/String;IC)I

    move-result v0

    .line 224
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 226
    add-int/lit8 v1, v0, 0x1

    .line 227
    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 228
    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, p1, v3}, Lgnu/inet/http/HTTPDateFormat;->skipNonWhitespace(Ljava/lang/String;I)I

    move-result v0

    .line 229
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 231
    add-int/lit8 v6, v0, 0x1

    invoke-direct {p0, p1, v6}, Lgnu/inet/http/HTTPDateFormat;->skipWhitespace(Ljava/lang/String;I)I

    move-result v1

    .line 232
    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 233
    add-int/lit8 v6, v1, 0x1

    invoke-direct {p0, p1, v6}, Lgnu/inet/http/HTTPDateFormat;->skipNonWhitespace(Ljava/lang/String;I)I

    move-result v0

    .line 234
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 338
    :goto_f5
    iget-object v10, p0, Lgnu/inet/http/HTTPDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v11, 0x1

    invoke-virtual {v10, v11, v6}, Ljava/util/Calendar;->set(II)V

    .line 339
    iget-object v6, p0, Lgnu/inet/http/HTTPDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v10, 0x2

    invoke-virtual {v6, v10, v7}, Ljava/util/Calendar;->set(II)V

    .line 340
    iget-object v6, p0, Lgnu/inet/http/HTTPDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v7, 0x5

    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 341
    iget-object v6, p0, Lgnu/inet/http/HTTPDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v7, 0xa

    invoke-virtual {v6, v7, v5}, Ljava/util/Calendar;->set(II)V

    .line 342
    iget-object v5, p0, Lgnu/inet/http/HTTPDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v6, 0xc

    invoke-virtual {v5, v6, v4}, Ljava/util/Calendar;->set(II)V

    .line 343
    iget-object v4, p0, Lgnu/inet/http/HTTPDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xd

    invoke-virtual {v4, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 345
    if-eq v0, v9, :cond_25e

    .line 348
    add-int/lit8 v3, v0, 0x1

    invoke-direct {p0, p1, v3}, Lgnu/inet/http/HTTPDateFormat;->skipWhitespace(Ljava/lang/String;I)I

    move-result v1

    .line 349
    add-int/lit8 v0, v1, 0x1

    .line 350
    :goto_126
    if-ge v0, v9, :cond_241

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_241

    .line 352
    add-int/lit8 v0, v0, 0x1

    goto :goto_126

    .line 239
    :pswitch_135
    invoke-direct {p0, p1, v1}, Lgnu/inet/http/HTTPDateFormat;->skipWhitespace(Ljava/lang/String;I)I
    :try_end_138
    .catch Ljava/lang/NumberFormatException; {:try_start_a3 .. :try_end_138} :catch_2b4
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_a3 .. :try_end_138} :catch_2c9

    move-result v3

    .line 240
    :try_start_139
    invoke-virtual {p2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 241
    add-int/lit8 v1, v3, 0x1

    invoke-direct {p0, p1, v1}, Lgnu/inet/http/HTTPDateFormat;->skipNonWhitespace(Ljava/lang/String;I)I
    :try_end_141
    .catch Ljava/lang/NumberFormatException; {:try_start_139 .. :try_end_141} :catch_2d5
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_139 .. :try_end_141} :catch_2cb

    move-result v1

    .line 242
    :try_start_142
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 244
    add-int/lit8 v4, v1, 0x1

    invoke-direct {p0, p1, v4}, Lgnu/inet/http/HTTPDateFormat;->skipWhitespace(Ljava/lang/String;I)I

    move-result v3

    .line 245
    invoke-virtual {p2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 246
    add-int/lit8 v4, v3, 0x1

    invoke-direct {p0, p1, v4}, Lgnu/inet/http/HTTPDateFormat;->skipNonWhitespace(Ljava/lang/String;I)I

    move-result v1

    .line 247
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move v7, v2

    .line 249
    :goto_15e
    if-ge v7, v6, :cond_2df

    .line 251
    sget-object v5, Lgnu/inet/http/HTTPDateFormat;->MONTHS:[Ljava/lang/String;

    aget-object v5, v5, v7

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_172

    .line 257
    :goto_16a
    if-ne v7, v0, :cond_175

    .line 259
    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 260
    const/4 v0, 0x0

    goto/16 :goto_5d

    .line 249
    :cond_172
    add-int/lit8 v7, v7, 0x1

    goto :goto_15e

    .line 263
    :cond_175
    add-int/lit8 v0, v1, 0x1

    invoke-direct {p0, p1, v0}, Lgnu/inet/http/HTTPDateFormat;->skipWhitespace(Ljava/lang/String;I)I

    move-result v3

    .line 264
    invoke-virtual {p2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 265
    add-int/lit8 v0, v3, 0x1

    invoke-direct {p0, p1, v0}, Lgnu/inet/http/HTTPDateFormat;->skipNonWhitespace(Ljava/lang/String;I)I
    :try_end_183
    .catch Ljava/lang/NumberFormatException; {:try_start_142 .. :try_end_183} :catch_2d8
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_142 .. :try_end_183} :catch_2ce

    move-result v0

    .line 266
    :try_start_184
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 268
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, p1, v1}, Lgnu/inet/http/HTTPDateFormat;->skipWhitespace(Ljava/lang/String;I)I
    :try_end_191
    .catch Ljava/lang/NumberFormatException; {:try_start_184 .. :try_end_191} :catch_2d5
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_184 .. :try_end_191} :catch_2cb

    move-result v1

    .line 269
    :try_start_192
    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 270
    add-int/lit8 v3, v1, 0x1

    const/16 v4, 0x3a

    invoke-direct {p0, p1, v3, v4}, Lgnu/inet/http/HTTPDateFormat;->skipTo(Ljava/lang/String;IC)I

    move-result v0

    .line 271
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 273
    add-int/lit8 v1, v0, 0x1

    .line 274
    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 275
    add-int/lit8 v3, v1, 0x1

    const/16 v4, 0x3a

    invoke-direct {p0, p1, v3, v4}, Lgnu/inet/http/HTTPDateFormat;->skipTo(Ljava/lang/String;IC)I

    move-result v0

    .line 276
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 278
    add-int/lit8 v1, v0, 0x1

    .line 279
    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 280
    add-int/lit8 v0, v1, 0x1

    .line 281
    :goto_1c1
    if-ge v0, v9, :cond_1d0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_1d0

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c1

    .line 285
    :cond_1d0
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1d7
    .catch Ljava/lang/NumberFormatException; {:try_start_192 .. :try_end_1d7} :catch_2b4
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_192 .. :try_end_1d7} :catch_2c9

    move-result v3

    goto/16 :goto_f5

    .line 299
    :cond_1da
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4b

    .line 313
    :cond_1de
    add-int/lit8 v3, v1, 0x1

    .line 314
    :try_start_1e0
    invoke-virtual {p2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 315
    add-int/lit8 v0, v3, 0x1

    invoke-direct {p0, p1, v0}, Lgnu/inet/http/HTTPDateFormat;->skipNonWhitespace(Ljava/lang/String;I)I
    :try_end_1e8
    .catch Ljava/lang/NumberFormatException; {:try_start_1e0 .. :try_end_1e8} :catch_2d8
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1e0 .. :try_end_1e8} :catch_2ce

    move-result v0

    .line 316
    :try_start_1e9
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit16 v6, v1, 0x76c

    .line 318
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, p1, v1}, Lgnu/inet/http/HTTPDateFormat;->skipWhitespace(Ljava/lang/String;I)I
    :try_end_1f8
    .catch Ljava/lang/NumberFormatException; {:try_start_1e9 .. :try_end_1f8} :catch_2d5
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1e9 .. :try_end_1f8} :catch_2cb

    move-result v1

    .line 319
    :try_start_1f9
    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 320
    add-int/lit8 v3, v1, 0x1

    const/16 v4, 0x3a

    invoke-direct {p0, p1, v3, v4}, Lgnu/inet/http/HTTPDateFormat;->skipTo(Ljava/lang/String;IC)I

    move-result v0

    .line 321
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 323
    add-int/lit8 v1, v0, 0x1

    .line 324
    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 325
    add-int/lit8 v3, v1, 0x1

    const/16 v4, 0x3a

    invoke-direct {p0, p1, v3, v4}, Lgnu/inet/http/HTTPDateFormat;->skipTo(Ljava/lang/String;IC)I

    move-result v0

    .line 326
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 328
    add-int/lit8 v1, v0, 0x1

    .line 329
    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 330
    add-int/lit8 v0, v1, 0x1

    .line 331
    :goto_228
    if-ge v0, v9, :cond_237

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_237

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_228

    .line 335
    :cond_237
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_f5

    .line 354
    :cond_241
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 355
    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_269

    .line 357
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 359
    iget-object v3, p0, Lgnu/inet/http/HTTPDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xf

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 376
    :cond_25e
    :goto_25e
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 378
    iget-object v2, p0, Lgnu/inet/http/HTTPDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    goto/16 :goto_5d

    .line 364
    :cond_269
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    mul-int/lit16 v4, v4, 0x258

    add-int/2addr v2, v4

    .line 365
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    add-int/2addr v2, v4

    .line 366
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v2, v4

    .line 367
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    add-int/2addr v2, v4

    .line 368
    const v4, 0xea60

    mul-int/2addr v2, v4

    .line 369
    const/16 v4, 0x2d

    if-ne v4, v3, :cond_2ac

    .line 371
    neg-int v2, v2

    .line 373
    :cond_2ac
    iget-object v3, p0, Lgnu/inet/http/HTTPDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xf

    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V
    :try_end_2b3
    .catch Ljava/lang/NumberFormatException; {:try_start_1f9 .. :try_end_2b3} :catch_2b4
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1f9 .. :try_end_2b3} :catch_2c9

    goto :goto_25e

    .line 380
    :catch_2b4
    move-exception v2

    .line 382
    :goto_2b5
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 388
    :goto_2bc
    const/4 v0, 0x0

    goto/16 :goto_5d

    .line 384
    :catch_2bf
    move-exception v1

    move v1, v2

    .line 386
    :goto_2c1
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    goto :goto_2bc

    .line 384
    :catch_2c9
    move-exception v2

    goto :goto_2c1

    :catch_2cb
    move-exception v1

    move v1, v3

    goto :goto_2c1

    :catch_2ce
    move-exception v0

    move v0, v1

    move v1, v3

    goto :goto_2c1

    .line 380
    :catch_2d2
    move-exception v1

    move v1, v2

    goto :goto_2b5

    :catch_2d5
    move-exception v1

    move v1, v3

    goto :goto_2b5

    :catch_2d8
    move-exception v0

    move v0, v1

    move v1, v3

    goto :goto_2b5

    :cond_2dc
    move v7, v0

    goto/16 :goto_57

    :cond_2df
    move v7, v0

    goto/16 :goto_16a

    :cond_2e2
    move v7, v0

    goto/16 :goto_7c

    :cond_2e5
    move v1, v2

    goto/16 :goto_1f

    .line 188
    :pswitch_data_2e8
    .packed-switch 0x0
        :pswitch_135
        :pswitch_22
        :pswitch_22
        :pswitch_5e
        :pswitch_135
    .end packed-switch
.end method

.method public setCalendar(Ljava/util/Calendar;)V
    .registers 3
    .parameter

    .prologue
    .line 423
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setNumberFormat(Ljava/text/NumberFormat;)V
    .registers 3
    .parameter

    .prologue
    .line 431
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
