.class Lorg/apache/log4j/RollingCalendar;
.super Ljava/util/GregorianCalendar;
.source "DailyRollingFileAppender.java"


# instance fields
.field type:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 372
    invoke-direct {p0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 369
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/log4j/RollingCalendar;->type:I

    .line 373
    return-void
.end method

.method constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;)V
    .registers 4
    .parameter "tz"
    .parameter "locale"

    .prologue
    .line 376
    invoke-direct {p0, p1, p2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 369
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/log4j/RollingCalendar;->type:I

    .line 377
    return-void
.end method


# virtual methods
.method public getNextCheckDate(Ljava/util/Date;)Ljava/util/Date;
    .registers 10
    .parameter "now"

    .prologue
    const/16 v7, 0xd

    const/16 v6, 0xb

    const/4 v5, 0x1

    const/16 v4, 0xc

    const/4 v3, 0x0

    .line 388
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 390
    iget v1, p0, Lorg/apache/log4j/RollingCalendar;->type:I

    packed-switch v1, :pswitch_data_9a

    .line 438
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unknown periodicity type."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 392
    :pswitch_18
    invoke-virtual {p0, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 393
    const/16 v1, 0xe

    invoke-virtual {p0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 394
    invoke-virtual {p0, v4, v5}, Ljava/util/GregorianCalendar;->add(II)V

    .line 440
    :goto_23
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1

    .line 397
    :pswitch_28
    invoke-virtual {p0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 398
    invoke-virtual {p0, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 399
    const/16 v1, 0xe

    invoke-virtual {p0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 400
    invoke-virtual {p0, v6, v5}, Ljava/util/GregorianCalendar;->add(II)V

    goto :goto_23

    .line 403
    :pswitch_37
    invoke-virtual {p0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 404
    invoke-virtual {p0, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 405
    const/16 v1, 0xe

    invoke-virtual {p0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 406
    invoke-virtual {p0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 407
    .local v0, hour:I
    if-ge v0, v4, :cond_4c

    .line 408
    invoke-virtual {p0, v6, v4}, Ljava/util/Calendar;->set(II)V

    goto :goto_23

    .line 410
    :cond_4c
    invoke-virtual {p0, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 411
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v5}, Ljava/util/GregorianCalendar;->add(II)V

    goto :goto_23

    .line 415
    .end local v0           #hour:I
    :pswitch_54
    invoke-virtual {p0, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 416
    invoke-virtual {p0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 417
    invoke-virtual {p0, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 418
    const/16 v1, 0xe

    invoke-virtual {p0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 419
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v5}, Ljava/util/GregorianCalendar;->add(II)V

    goto :goto_23

    .line 422
    :pswitch_67
    const/4 v1, 0x7

    invoke-virtual {p0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 423
    invoke-virtual {p0, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 424
    invoke-virtual {p0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 425
    invoke-virtual {p0, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 426
    const/16 v1, 0xe

    invoke-virtual {p0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 427
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v5}, Ljava/util/GregorianCalendar;->add(II)V

    goto :goto_23

    .line 430
    :pswitch_82
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v5}, Ljava/util/Calendar;->set(II)V

    .line 431
    invoke-virtual {p0, v6, v3}, Ljava/util/Calendar;->set(II)V

    .line 432
    invoke-virtual {p0, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 433
    invoke-virtual {p0, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 434
    const/16 v1, 0xe

    invoke-virtual {p0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 435
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v5}, Ljava/util/GregorianCalendar;->add(II)V

    goto :goto_23

    .line 390
    nop

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_18
        :pswitch_28
        :pswitch_37
        :pswitch_54
        :pswitch_67
        :pswitch_82
    .end packed-switch
.end method

.method public getNextCheckMillis(Ljava/util/Date;)J
    .registers 4
    .parameter "now"

    .prologue
    .line 384
    invoke-virtual {p0, p1}, Lorg/apache/log4j/RollingCalendar;->getNextCheckDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method setType(I)V
    .registers 2
    .parameter "type"

    .prologue
    .line 380
    iput p1, p0, Lorg/apache/log4j/RollingCalendar;->type:I

    .line 381
    return-void
.end method
