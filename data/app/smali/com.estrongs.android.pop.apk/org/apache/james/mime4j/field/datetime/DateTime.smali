.class public Lorg/apache/james/mime4j/field/datetime/DateTime;
.super Ljava/lang/Object;


# instance fields
.field private final date:Ljava/util/Date;

.field private final day:I

.field private final hour:I

.field private final minute:I

.field private final month:I

.field private final second:I

.field private final timeZone:I

.field private final year:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIII)V
    .registers 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/datetime/DateTime;->convertToYear(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->year:I

    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->year:I

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-static/range {v0 .. v6}, Lorg/apache/james/mime4j/field/datetime/DateTime;->convertToDate(IIIIIII)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->date:Ljava/util/Date;

    iput p2, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->month:I

    iput p3, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->day:I

    iput p4, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->hour:I

    iput p5, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->minute:I

    iput p6, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->second:I

    iput p7, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->timeZone:I

    return-void
.end method

.method public static convertToDate(IIIIIII)Ljava/util/Date;
    .registers 14

    new-instance v0, Ljava/util/GregorianCalendar;

    const-string v1, "GMT+0"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    add-int/lit8 v2, p1, -0x1

    move v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/high16 v1, -0x8000

    if-eq p6, v1, :cond_2d

    div-int/lit8 v1, p6, 0x64

    mul-int/lit8 v1, v1, 0x3c

    rem-int/lit8 v2, p6, 0x64

    add-int/2addr v1, v2

    const/16 v2, 0xc

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    :cond_2d
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method private convertToYear(Ljava/lang/String;)I
    .registers 4

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    packed-switch v1, :pswitch_data_1c

    :goto_b
    return v0

    :pswitch_c
    if-ltz v0, :cond_15

    const/16 v1, 0x32

    if-ge v0, v1, :cond_15

    add-int/lit16 v0, v0, 0x7d0

    goto :goto_b

    :cond_15
    add-int/lit16 v0, v0, 0x76c

    goto :goto_b

    :pswitch_18
    add-int/lit16 v0, v0, 0x76c

    goto :goto_b

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_c
        :pswitch_c
        :pswitch_18
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    goto :goto_4

    :cond_15
    check-cast p1, Lorg/apache/james/mime4j/field/datetime/DateTime;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->date:Ljava/util/Date;

    if-nez v2, :cond_21

    iget-object v2, p1, Lorg/apache/james/mime4j/field/datetime/DateTime;->date:Ljava/util/Date;

    if-eqz v2, :cond_2d

    move v0, v1

    goto :goto_4

    :cond_21
    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->date:Ljava/util/Date;

    iget-object v3, p1, Lorg/apache/james/mime4j/field/datetime/DateTime;->date:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    move v0, v1

    goto :goto_4

    :cond_2d
    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->day:I

    iget v3, p1, Lorg/apache/james/mime4j/field/datetime/DateTime;->day:I

    if-eq v2, v3, :cond_35

    move v0, v1

    goto :goto_4

    :cond_35
    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->hour:I

    iget v3, p1, Lorg/apache/james/mime4j/field/datetime/DateTime;->hour:I

    if-eq v2, v3, :cond_3d

    move v0, v1

    goto :goto_4

    :cond_3d
    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->minute:I

    iget v3, p1, Lorg/apache/james/mime4j/field/datetime/DateTime;->minute:I

    if-eq v2, v3, :cond_45

    move v0, v1

    goto :goto_4

    :cond_45
    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->month:I

    iget v3, p1, Lorg/apache/james/mime4j/field/datetime/DateTime;->month:I

    if-eq v2, v3, :cond_4d

    move v0, v1

    goto :goto_4

    :cond_4d
    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->second:I

    iget v3, p1, Lorg/apache/james/mime4j/field/datetime/DateTime;->second:I

    if-eq v2, v3, :cond_55

    move v0, v1

    goto :goto_4

    :cond_55
    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->timeZone:I

    iget v3, p1, Lorg/apache/james/mime4j/field/datetime/DateTime;->timeZone:I

    if-eq v2, v3, :cond_5d

    move v0, v1

    goto :goto_4

    :cond_5d
    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->year:I

    iget v3, p1, Lorg/apache/james/mime4j/field/datetime/DateTime;->year:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public getDate()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getDay()I
    .registers 2

    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->day:I

    return v0
.end method

.method public getHour()I
    .registers 2

    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->hour:I

    return v0
.end method

.method public getMinute()I
    .registers 2

    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->minute:I

    return v0
.end method

.method public getMonth()I
    .registers 2

    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->month:I

    return v0
.end method

.method public getSecond()I
    .registers 2

    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->second:I

    return v0
.end method

.method public getTimeZone()I
    .registers 2

    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->timeZone:I

    return v0
.end method

.method public getYear()I
    .registers 2

    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->year:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->date:Ljava/util/Date;

    if-nez v0, :cond_2b

    const/4 v0, 0x0

    :goto_5
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->day:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->hour:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->minute:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->month:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->second:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->timeZone:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->year:I

    add-int/2addr v0, v1

    return v0

    :cond_2b
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/DateTime;->date:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    goto :goto_5
.end method

.method public print()V
    .registers 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/DateTime;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/DateTime;->getYear()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/DateTime;->getMonth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/DateTime;->getDay()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/DateTime;->getHour()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/DateTime;->getMinute()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/DateTime;->getSecond()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/DateTime;->getTimeZone()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
