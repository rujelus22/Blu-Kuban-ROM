.class public Ljava/text/SimpleDateFormat;
.super Ljava/text/DateFormat;
.source "SimpleDateFormat.java"


# static fields
.field static final PATTERN_CHARS:Ljava/lang/String; = "GyMdkHmsSEDFwWahKzZLc"

.field private static final RFC_822_TIMEZONE_FIELD:I = 0x12

.field private static final STAND_ALONE_DAY_OF_WEEK_FIELD:I = 0x14

.field private static final STAND_ALONE_MONTH_FIELD:I = 0x13

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = 0x4243c9da93943590L


# instance fields
.field private transient creationYear:I

.field private defaultCenturyStart:Ljava/util/Date;

.field private formatData:Ljava/text/DateFormatSymbols;

.field private pattern:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 1280
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "defaultCenturyStart"

    const-class v4, Ljava/util/Date;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "formatData"

    const-class v4, Ljava/text/DateFormatSymbols;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "pattern"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "serialVersionOnStream"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/text/SimpleDateFormat;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 233
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/util/Locale;)V

    .line 234
    invoke-static {}, Ljava/text/SimpleDateFormat;->defaultPattern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 235
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 236
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "pattern"

    .prologue
    .line 253
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 254
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V
    .registers 4
    .parameter "template"
    .parameter "value"

    .prologue
    .line 347
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/util/Locale;)V

    .line 348
    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;->validatePattern(Ljava/lang/String;)V

    .line 349
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 350
    invoke-virtual {p2}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormatSymbols;

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 351
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .registers 4
    .parameter "template"
    .parameter "locale"

    .prologue
    .line 368
    invoke-direct {p0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/util/Locale;)V

    .line 369
    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;->validatePattern(Ljava/lang/String;)V

    .line 370
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 371
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0, p2}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 372
    return-void
.end method

.method private constructor <init>(Ljava/util/Locale;)V
    .registers 5
    .parameter "locale"

    .prologue
    const/4 v2, 0x1

    .line 374
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    .line 375
    invoke-static {p1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    .line 376
    iget-object v0, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0, v2}, Ljava/text/NumberFormat;->setParseIntegerOnly(Z)V

    .line 377
    iget-object v0, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    .line 378
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    .line 379
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v1, -0x50

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 380
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Ljava/text/SimpleDateFormat;->creationYear:I

    .line 381
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    .line 382
    return-void
.end method

.method private append(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;CI)V
    .registers 16
    .parameter "buffer"
    .parameter "position"
    .parameter
    .parameter "format"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            "Ljava/util/List",
            "<",
            "Ljava/text/FieldPosition;",
            ">;CI)V"
        }
    .end annotation

    .prologue
    .line 586
    .local p3, fields:Ljava/util/List;,"Ljava/util/List<Ljava/text/FieldPosition;>;"
    const/4 v2, -0x1

    .line 587
    .local v2, field:I
    const-string v7, "GyMdkHmsSEDFwWahKzZLc"

    invoke-virtual {v7, p4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 588
    .local v4, index:I
    const/4 v7, -0x1

    if-ne v4, v7, :cond_29

    .line 589
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown pattern character \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 592
    :cond_29
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 593
    .local v0, beginPosition:I
    const/4 v1, 0x0

    .line 594
    .local v1, dateFormatField:Ljava/text/DateFormat$Field;
    packed-switch v4, :pswitch_data_164

    .line 693
    :goto_31
    const/4 v7, -0x1

    if-eq v2, v7, :cond_3d

    .line 694
    iget-object v7, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-direct {p0, p1, p5, v7}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    .line 697
    :cond_3d
    if-eqz p3, :cond_140

    .line 698
    new-instance p2, Ljava/text/FieldPosition;

    .end local p2
    invoke-direct {p2, v1}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;)V

    .line 699
    .restart local p2
    invoke-virtual {p2, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 700
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    invoke-virtual {p2, v7}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 701
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 711
    :cond_51
    :goto_51
    return-void

    .line 596
    :pswitch_52
    sget-object v1, Ljava/text/DateFormat$Field;->ERA:Ljava/text/DateFormat$Field;

    .line 597
    iget-object v7, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v7, v7, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    iget-object v8, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_31

    .line 600
    :pswitch_65
    sget-object v1, Ljava/text/DateFormat$Field;->YEAR:Ljava/text/DateFormat$Field;

    .line 601
    iget-object v7, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 607
    .local v6, year:I
    const/4 v7, 0x2

    if-ne p5, v7, :cond_78

    .line 608
    const/4 v7, 0x2

    rem-int/lit8 v8, v6, 0x64

    invoke-direct {p0, p1, v7, v8}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    goto :goto_31

    .line 610
    :cond_78
    invoke-direct {p0, p1, p5, v6}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    goto :goto_31

    .line 614
    .end local v6           #year:I
    :pswitch_7c
    sget-object v1, Ljava/text/DateFormat$Field;->MONTH:Ljava/text/DateFormat$Field;

    .line 615
    iget-object v7, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v7, v7, Ljava/text/DateFormatSymbols;->longStandAloneMonths:[Ljava/lang/String;

    iget-object v8, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v8, v8, Ljava/text/DateFormatSymbols;->shortStandAloneMonths:[Ljava/lang/String;

    invoke-direct {p0, p1, p5, v7, v8}, Ljava/text/SimpleDateFormat;->appendMonth(Ljava/lang/StringBuffer;I[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_31

    .line 618
    :pswitch_8a
    sget-object v1, Ljava/text/DateFormat$Field;->MONTH:Ljava/text/DateFormat$Field;

    .line 619
    iget-object v7, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v7, v7, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    iget-object v8, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v8, v8, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    invoke-direct {p0, p1, p5, v7, v8}, Ljava/text/SimpleDateFormat;->appendMonth(Ljava/lang/StringBuffer;I[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_31

    .line 622
    :pswitch_98
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_MONTH:Ljava/text/DateFormat$Field;

    .line 623
    const/4 v2, 0x5

    .line 624
    goto :goto_31

    .line 626
    :pswitch_9c
    sget-object v1, Ljava/text/DateFormat$Field;->HOUR_OF_DAY1:Ljava/text/DateFormat$Field;

    .line 627
    iget-object v7, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v8, 0xb

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 628
    .local v3, hour:I
    if-nez v3, :cond_aa

    const/16 v3, 0x18

    .end local v3           #hour:I
    :cond_aa
    invoke-direct {p0, p1, p5, v3}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    goto :goto_31

    .line 631
    :pswitch_ae
    sget-object v1, Ljava/text/DateFormat$Field;->HOUR_OF_DAY0:Ljava/text/DateFormat$Field;

    .line 632
    const/16 v2, 0xb

    .line 633
    goto/16 :goto_31

    .line 635
    :pswitch_b4
    sget-object v1, Ljava/text/DateFormat$Field;->MINUTE:Ljava/text/DateFormat$Field;

    .line 636
    const/16 v2, 0xc

    .line 637
    goto/16 :goto_31

    .line 639
    :pswitch_ba
    sget-object v1, Ljava/text/DateFormat$Field;->SECOND:Ljava/text/DateFormat$Field;

    .line 640
    const/16 v2, 0xd

    .line 641
    goto/16 :goto_31

    .line 643
    :pswitch_c0
    sget-object v1, Ljava/text/DateFormat$Field;->MILLISECOND:Ljava/text/DateFormat$Field;

    .line 644
    iget-object v7, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v8, 0xe

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 645
    .local v5, value:I
    invoke-direct {p0, p1, p5, v5}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    goto/16 :goto_31

    .line 648
    .end local v5           #value:I
    :pswitch_cf
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    .line 649
    iget-object v7, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v7, v7, Ljava/text/DateFormatSymbols;->longStandAloneWeekdays:[Ljava/lang/String;

    iget-object v8, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v8, v8, Ljava/text/DateFormatSymbols;->shortStandAloneWeekdays:[Ljava/lang/String;

    invoke-direct {p0, p1, p5, v7, v8}, Ljava/text/SimpleDateFormat;->appendDayOfWeek(Ljava/lang/StringBuffer;I[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_31

    .line 652
    :pswitch_de
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    .line 653
    iget-object v7, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v7, v7, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    iget-object v8, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v8, v8, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    invoke-direct {p0, p1, p5, v7, v8}, Ljava/text/SimpleDateFormat;->appendDayOfWeek(Ljava/lang/StringBuffer;I[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_31

    .line 656
    :pswitch_ed
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_YEAR:Ljava/text/DateFormat$Field;

    .line 657
    const/4 v2, 0x6

    .line 658
    goto/16 :goto_31

    .line 660
    :pswitch_f2
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_WEEK_IN_MONTH:Ljava/text/DateFormat$Field;

    .line 661
    const/16 v2, 0x8

    .line 662
    goto/16 :goto_31

    .line 664
    :pswitch_f8
    sget-object v1, Ljava/text/DateFormat$Field;->WEEK_OF_YEAR:Ljava/text/DateFormat$Field;

    .line 665
    const/4 v2, 0x3

    .line 666
    goto/16 :goto_31

    .line 668
    :pswitch_fd
    sget-object v1, Ljava/text/DateFormat$Field;->WEEK_OF_MONTH:Ljava/text/DateFormat$Field;

    .line 669
    const/4 v2, 0x4

    .line 670
    goto/16 :goto_31

    .line 672
    :pswitch_102
    sget-object v1, Ljava/text/DateFormat$Field;->AM_PM:Ljava/text/DateFormat$Field;

    .line 673
    iget-object v7, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v7, v7, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    iget-object v8, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_31

    .line 676
    :pswitch_117
    sget-object v1, Ljava/text/DateFormat$Field;->HOUR1:Ljava/text/DateFormat$Field;

    .line 677
    iget-object v7, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 678
    .restart local v3       #hour:I
    if-nez v3, :cond_125

    const/16 v3, 0xc

    .end local v3           #hour:I
    :cond_125
    invoke-direct {p0, p1, p5, v3}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    goto/16 :goto_31

    .line 681
    :pswitch_12a
    sget-object v1, Ljava/text/DateFormat$Field;->HOUR0:Ljava/text/DateFormat$Field;

    .line 682
    const/16 v2, 0xa

    .line 683
    goto/16 :goto_31

    .line 685
    :pswitch_130
    sget-object v1, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    .line 686
    const/4 v7, 0x1

    invoke-direct {p0, p1, p5, v7}, Ljava/text/SimpleDateFormat;->appendTimeZone(Ljava/lang/StringBuffer;IZ)V

    goto/16 :goto_31

    .line 689
    :pswitch_138
    sget-object v1, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    .line 690
    const/4 v7, 0x0

    invoke-direct {p0, p1, v7}, Ljava/text/SimpleDateFormat;->appendNumericTimeZone(Ljava/lang/StringBuffer;Z)V

    goto/16 :goto_31

    .line 704
    :cond_140
    invoke-virtual {p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v7

    if-eq v7, v1, :cond_152

    invoke-virtual {p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v7

    if-nez v7, :cond_51

    invoke-virtual {p2}, Ljava/text/FieldPosition;->getField()I

    move-result v7

    if-ne v7, v4, :cond_51

    :cond_152
    invoke-virtual {p2}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v7

    if-nez v7, :cond_51

    .line 707
    invoke-virtual {p2, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 708
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    invoke-virtual {p2, v7}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto/16 :goto_51

    .line 594
    :pswitch_data_164
    .packed-switch 0x0
        :pswitch_52
        :pswitch_65
        :pswitch_8a
        :pswitch_98
        :pswitch_9c
        :pswitch_ae
        :pswitch_b4
        :pswitch_ba
        :pswitch_c0
        :pswitch_de
        :pswitch_ed
        :pswitch_f2
        :pswitch_f8
        :pswitch_fd
        :pswitch_102
        :pswitch_117
        :pswitch_12a
        :pswitch_130
        :pswitch_138
        :pswitch_7c
        :pswitch_cf
    .end packed-switch
.end method

.method private appendDayOfWeek(Ljava/lang/StringBuffer;I[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 9
    .parameter "buffer"
    .parameter "count"
    .parameter "longs"
    .parameter "shorts"

    .prologue
    .line 714
    const/4 v2, 0x3

    if-le p2, v2, :cond_14

    const/4 v1, 0x1

    .line 715
    .local v1, isLong:Z
    :goto_4
    if-eqz v1, :cond_16

    move-object v0, p3

    .line 716
    .local v0, days:[Ljava/lang/String;
    :goto_7
    iget-object v2, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    aget-object v2, v0, v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 717
    return-void

    .line 714
    .end local v0           #days:[Ljava/lang/String;
    .end local v1           #isLong:Z
    :cond_14
    const/4 v1, 0x0

    goto :goto_4

    .restart local v1       #isLong:Z
    :cond_16
    move-object v0, p4

    .line 715
    goto :goto_7
.end method

.method private appendMonth(Ljava/lang/StringBuffer;I[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 10
    .parameter "buffer"
    .parameter "count"
    .parameter "longs"
    .parameter "shorts"

    .prologue
    const/4 v4, 0x2

    .line 720
    iget-object v3, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 721
    .local v1, month:I
    if-gt p2, v4, :cond_f

    .line 722
    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, p1, p2, v3}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    .line 729
    :goto_e
    return-void

    .line 726
    :cond_f
    const/4 v3, 0x3

    if-le p2, v3, :cond_1c

    const/4 v0, 0x1

    .line 727
    .local v0, isLong:Z
    :goto_13
    if-eqz v0, :cond_1e

    move-object v2, p3

    .line 728
    .local v2, months:[Ljava/lang/String;
    :goto_16
    aget-object v3, v2, v1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_e

    .line 726
    .end local v0           #isLong:Z
    .end local v2           #months:[Ljava/lang/String;
    :cond_1c
    const/4 v0, 0x0

    goto :goto_13

    .restart local v0       #isLong:Z
    :cond_1e
    move-object v2, p4

    .line 727
    goto :goto_16
.end method

.method private appendNumber(Ljava/lang/StringBuffer;II)V
    .registers 9
    .parameter "buffer"
    .parameter "count"
    .parameter "value"

    .prologue
    .line 786
    iget-object v1, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v1}, Ljava/text/NumberFormat;->getMinimumIntegerDigits()I

    move-result v0

    .line 787
    .local v0, minimumIntegerDigits:I
    iget-object v1, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v1, p2}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 788
    iget-object v1, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/text/FieldPosition;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {v1, v2, p1, v3}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 789
    iget-object v1, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v1, v0}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 790
    return-void
.end method

.method private appendNumericTimeZone(Ljava/lang/StringBuffer;Z)V
    .registers 10
    .parameter "buffer"
    .parameter "generalTimeZone"

    .prologue
    const v6, 0x36ee80

    const/4 v5, 0x2

    .line 765
    iget-object v2, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int v0, v2, v3

    .line 766
    .local v0, offset:I
    const/16 v1, 0x2b

    .line 767
    .local v1, sign:C
    if-gez v0, :cond_1d

    .line 768
    const/16 v1, 0x2d

    .line 769
    neg-int v0, v0

    .line 771
    :cond_1d
    if-eqz p2, :cond_24

    .line 772
    const-string v2, "GMT"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 774
    :cond_24
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 775
    div-int v2, v0, v6

    invoke-direct {p0, p1, v5, v2}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    .line 776
    if-eqz p2, :cond_33

    .line 777
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 779
    :cond_33
    rem-int v2, v0, v6

    const v3, 0xea60

    div-int/2addr v2, v3

    invoke-direct {p0, p1, v5, v2}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    .line 780
    return-void
.end method

.method private appendTimeZone(Ljava/lang/StringBuffer;IZ)V
    .registers 11
    .parameter "buffer"
    .parameter "count"
    .parameter "generalTimeZone"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 741
    if-eqz p3, :cond_40

    .line 742
    iget-object v5, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    .line 743
    .local v3, tz:Ljava/util/TimeZone;
    iget-object v5, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-eqz v5, :cond_2a

    move v1, v4

    .line 744
    .local v1, daylight:Z
    :goto_15
    const/4 v5, 0x4

    if-ge p2, v5, :cond_2c

    .line 745
    .local v2, style:I
    :goto_18
    iget-object v4, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-boolean v4, v4, Ljava/text/DateFormatSymbols;->customZoneStrings:Z

    if-nez v4, :cond_2e

    .line 746
    iget-object v4, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v4, v4, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v1, v2, v4}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 759
    .end local v1           #daylight:Z
    .end local v2           #style:I
    .end local v3           #tz:Ljava/util/TimeZone;
    :goto_29
    return-void

    .restart local v3       #tz:Ljava/util/TimeZone;
    :cond_2a
    move v1, v2

    .line 743
    goto :goto_15

    .restart local v1       #daylight:Z
    :cond_2c
    move v2, v4

    .line 744
    goto :goto_18

    .line 751
    .restart local v2       #style:I
    :cond_2e
    iget-object v4, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v4, v4, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1, v2}, Llibcore/icu/TimeZones;->getDisplayName([[Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    .line 752
    .local v0, custom:Ljava/lang/String;
    if-eqz v0, :cond_40

    .line 753
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_29

    .line 758
    .end local v0           #custom:Ljava/lang/String;
    .end local v1           #daylight:Z
    .end local v2           #style:I
    .end local v3           #tz:Ljava/util/TimeZone;
    :cond_40
    invoke-direct {p0, p1, p3}, Ljava/text/SimpleDateFormat;->appendNumericTimeZone(Ljava/lang/StringBuffer;Z)V

    goto :goto_29
.end method

.method private static convertPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 13
    .parameter "template"
    .parameter "fromChars"
    .parameter "toChars"
    .parameter "check"

    .prologue
    .line 1244
    if-nez p3, :cond_9

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1267
    .end local p0
    :goto_8
    return-object p0

    .line 1247
    .restart local p0
    :cond_9
    const/4 v5, 0x0

    .line 1248
    .local v5, quote:Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1249
    .local v4, output:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1250
    .local v2, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_14
    if-ge v0, v2, :cond_7d

    .line 1252
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1253
    .local v3, next:C
    const/16 v6, 0x27

    if-ne v3, v6, :cond_21

    .line 1254
    if-nez v5, :cond_34

    const/4 v5, 0x1

    .line 1256
    :cond_21
    :goto_21
    if-nez v5, :cond_36

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .local v1, index:I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_36

    .line 1257
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1250
    .end local v1           #index:I
    :goto_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 1254
    :cond_34
    const/4 v5, 0x0

    goto :goto_21

    .line 1258
    :cond_36
    if-eqz p3, :cond_79

    if-nez v5, :cond_79

    const/16 v6, 0x61

    if-lt v3, v6, :cond_42

    const/16 v6, 0x7a

    if-le v3, v6, :cond_4a

    :cond_42
    const/16 v6, 0x41

    if-lt v3, v6, :cond_79

    const/16 v6, 0x5a

    if-gt v3, v6, :cond_79

    .line 1259
    :cond_4a
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid pattern character \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1261
    :cond_79
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_31

    .line 1264
    .end local v3           #next:C
    :cond_7d
    if-eqz v5, :cond_87

    .line 1265
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unterminated quote"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1267
    :cond_87
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_8
.end method

.method private static defaultPattern()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v3, 0x3

    .line 427
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 428
    .local v0, localeData:Llibcore/icu/LocaleData;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Llibcore/icu/LocaleData;->getDateFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v3}, Llibcore/icu/LocaleData;->getTimeFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;
    .registers 5
    .parameter "position"
    .parameter "offset"
    .parameter "zone"

    .prologue
    .line 793
    invoke-virtual {p1, p2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 794
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 795
    const/4 v0, 0x0

    return-object v0
.end method

.method private formatImpl(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;
    .registers 16
    .parameter "date"
    .parameter "buffer"
    .parameter "field"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            "Ljava/util/List",
            "<",
            "Ljava/text/FieldPosition;",
            ">;)",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    .prologue
    .line 534
    .local p4, fields:Ljava/util/List;,"Ljava/util/List<Ljava/text/FieldPosition;>;"
    const/4 v10, 0x0

    .line 535
    .local v10, quote:Z
    const/4 v7, -0x1

    .local v7, last:I
    const/4 v5, 0x0

    .line 536
    .local v5, count:I
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 537
    if-eqz p3, :cond_d

    .line 538
    invoke-virtual {p3}, Ljava/text/FieldPosition;->clear()V

    .line 541
    :cond_d
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    .line 542
    .local v9, patternLength:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_14
    if-ge v6, v9, :cond_74

    .line 543
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 544
    .local v8, next:I
    const/16 v0, 0x27

    if-ne v8, v0, :cond_3d

    .line 545
    if-lez v5, :cond_2b

    .line 546
    int-to-char v4, v7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->append(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;CI)V

    .line 547
    const/4 v5, 0x0

    .line 549
    :cond_2b
    if-ne v7, v8, :cond_39

    .line 550
    const/16 v0, 0x27

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 551
    const/4 v7, -0x1

    .line 555
    :goto_33
    if-nez v10, :cond_3b

    const/4 v10, 0x1

    .line 542
    :goto_36
    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    .line 553
    :cond_39
    move v7, v8

    goto :goto_33

    .line 555
    :cond_3b
    const/4 v10, 0x0

    goto :goto_36

    .line 558
    :cond_3d
    if-nez v10, :cond_63

    if-eq v7, v8, :cond_51

    const/16 v0, 0x61

    if-lt v8, v0, :cond_49

    const/16 v0, 0x7a

    if-le v8, v0, :cond_51

    :cond_49
    const/16 v0, 0x41

    if-lt v8, v0, :cond_63

    const/16 v0, 0x5a

    if-gt v8, v0, :cond_63

    .line 560
    :cond_51
    if-ne v7, v8, :cond_56

    .line 561
    add-int/lit8 v5, v5, 0x1

    goto :goto_36

    .line 563
    :cond_56
    if-lez v5, :cond_60

    .line 564
    int-to-char v4, v7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->append(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;CI)V

    .line 566
    :cond_60
    move v7, v8

    .line 567
    const/4 v5, 0x1

    goto :goto_36

    .line 570
    :cond_63
    if-lez v5, :cond_6e

    .line 571
    int-to-char v4, v7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->append(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;CI)V

    .line 572
    const/4 v5, 0x0

    .line 574
    :cond_6e
    const/4 v7, -0x1

    .line 575
    int-to-char v0, v8

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_36

    .line 578
    .end local v8           #next:I
    :cond_74
    if-lez v5, :cond_7e

    .line 579
    int-to-char v4, v7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->append(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;CI)V

    .line 581
    :cond_7e
    return-object p2
.end method

.method private formatToCharacterIteratorImpl(Ljava/util/Date;)Ljava/text/AttributedCharacterIterator;
    .registers 10
    .parameter "date"

    .prologue
    .line 487
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 488
    .local v2, buffer:Ljava/lang/StringBuffer;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 491
    .local v3, fields:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/text/FieldPosition;>;"
    const/4 v6, 0x0

    invoke-direct {p0, p1, v2, v6, v3}, Ljava/text/SimpleDateFormat;->formatImpl(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    .line 494
    new-instance v0, Ljava/text/AttributedString;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 497
    .local v0, as:Ljava/text/AttributedString;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_37

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/text/FieldPosition;

    .line 498
    .local v5, pos:Ljava/text/FieldPosition;
    invoke-virtual {v5}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v1

    .line 499
    .local v1, attribute:Ljava/text/Format$Field;
    invoke-virtual {v5}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v6

    invoke-virtual {v5}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v7

    invoke-virtual {v0, v1, v1, v6, v7}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    goto :goto_1b

    .line 503
    .end local v1           #attribute:Ljava/text/Format$Field;
    .end local v5           #pos:Ljava/text/FieldPosition;
    :cond_37
    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v6

    return-object v6
.end method

.method private parse(Ljava/lang/String;ICI)I
    .registers 22
    .parameter "string"
    .parameter "offset"
    .parameter "format"
    .parameter "count"

    .prologue
    .line 847
    const-string v3, "GyMdkHmsSEDFwWahKzZLc"

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 848
    .local v13, index:I
    const/4 v3, -0x1

    if-ne v13, v3, :cond_2c

    .line 849
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown pattern character \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 851
    :cond_2c
    const/4 v10, -0x1

    .line 853
    .local v10, field:I
    const/4 v7, 0x0

    .line 854
    .local v7, absolute:I
    if-gez p4, :cond_37

    .line 855
    move/from16 v0, p4

    neg-int v0, v0

    move/from16 p4, v0

    .line 856
    move/from16 v7, p4

    .line 858
    :cond_37
    packed-switch v13, :pswitch_data_1b8

    .line 953
    :goto_3a
    const/4 v3, -0x1

    if-eq v10, v3, :cond_48

    .line 954
    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    invoke-direct/range {v6 .. v11}, Ljava/text/SimpleDateFormat;->parseNumber(ILjava/lang/String;III)I

    move-result p2

    .line 956
    .end local p2
    :cond_48
    :goto_48
    return p2

    .line 860
    .restart local p2
    :pswitch_49
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v3, v3, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/text/SimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result p2

    goto :goto_48

    .line 862
    :pswitch_5b
    const/4 v3, 0x3

    move/from16 v0, p4

    if-lt v0, v3, :cond_62

    .line 863
    const/4 v10, 0x1

    goto :goto_3a

    .line 865
    :cond_62
    new-instance v14, Ljava/text/ParsePosition;

    move/from16 v0, p2

    invoke-direct {v14, v0}, Ljava/text/ParsePosition;-><init>(I)V

    .line 866
    .local v14, position:Ljava/text/ParsePosition;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v1, v14}, Ljava/text/SimpleDateFormat;->parseNumber(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v15

    .line 867
    .local v15, result:Ljava/lang/Number;
    if-nez v15, :cond_7b

    .line 868
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    neg-int v3, v3

    add-int/lit8 p2, v3, -0x1

    goto :goto_48

    .line 870
    :cond_7b
    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v16

    .line 872
    .local v16, year:I
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    sub-int v3, v3, p2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9e

    if-ltz v16, :cond_9e

    .line 873
    move-object/from16 v0, p0

    iget v3, v0, Ljava/text/SimpleDateFormat;->creationYear:I

    div-int/lit8 v3, v3, 0x64

    mul-int/lit8 v3, v3, 0x64

    add-int v16, v16, v3

    .line 874
    move-object/from16 v0, p0

    iget v3, v0, Ljava/text/SimpleDateFormat;->creationYear:I

    move/from16 v0, v16

    if-ge v0, v3, :cond_9e

    .line 875
    add-int/lit8 v16, v16, 0x64

    .line 878
    :cond_9e
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/4 v4, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 879
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    goto :goto_48

    .line 883
    .end local v14           #position:Ljava/text/ParsePosition;
    .end local v15           #result:Ljava/lang/Number;
    .end local v16           #year:I
    :pswitch_ad
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v8, v3, Ljava/text/DateFormatSymbols;->longStandAloneMonths:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v9, v3, Ljava/text/DateFormatSymbols;->shortStandAloneMonths:[Ljava/lang/String;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p4

    invoke-direct/range {v3 .. v9}, Ljava/text/SimpleDateFormat;->parseMonth(Ljava/lang/String;III[Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_48

    .line 886
    :pswitch_c6
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v8, v3, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v9, v3, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p4

    invoke-direct/range {v3 .. v9}, Ljava/text/SimpleDateFormat;->parseMonth(Ljava/lang/String;III[Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto/16 :goto_48

    .line 889
    :pswitch_e0
    const/4 v10, 0x5

    .line 890
    goto/16 :goto_3a

    .line 892
    :pswitch_e3
    new-instance v14, Ljava/text/ParsePosition;

    move/from16 v0, p2

    invoke-direct {v14, v0}, Ljava/text/ParsePosition;-><init>(I)V

    .line 893
    .restart local v14       #position:Ljava/text/ParsePosition;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v1, v14}, Ljava/text/SimpleDateFormat;->parseNumber(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v15

    .line 894
    .restart local v15       #result:Ljava/lang/Number;
    if-nez v15, :cond_fd

    .line 895
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    neg-int v3, v3

    add-int/lit8 p2, v3, -0x1

    goto/16 :goto_48

    .line 897
    :cond_fd
    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v12

    .line 898
    .local v12, hour:I
    const/16 v3, 0x18

    if-ne v12, v3, :cond_106

    .line 899
    const/4 v12, 0x0

    .line 901
    :cond_106
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v12}, Ljava/util/Calendar;->set(II)V

    .line 902
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    goto/16 :goto_48

    .line 904
    .end local v12           #hour:I
    .end local v14           #position:Ljava/text/ParsePosition;
    .end local v15           #result:Ljava/lang/Number;
    :pswitch_115
    const/16 v10, 0xb

    .line 905
    goto/16 :goto_3a

    .line 907
    :pswitch_119
    const/16 v10, 0xc

    .line 908
    goto/16 :goto_3a

    .line 910
    :pswitch_11d
    const/16 v10, 0xd

    .line 911
    goto/16 :goto_3a

    .line 913
    :pswitch_121
    const/16 v10, 0xe

    .line 914
    goto/16 :goto_3a

    .line 916
    :pswitch_125
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v3, v3, Ljava/text/DateFormatSymbols;->longStandAloneWeekdays:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v4, v4, Ljava/text/DateFormatSymbols;->shortStandAloneWeekdays:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/text/SimpleDateFormat;->parseDayOfWeek(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto/16 :goto_48

    .line 918
    :pswitch_13d
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v3, v3, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v4, v4, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/text/SimpleDateFormat;->parseDayOfWeek(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto/16 :goto_48

    .line 920
    :pswitch_155
    const/4 v10, 0x6

    .line 921
    goto/16 :goto_3a

    .line 923
    :pswitch_158
    const/16 v10, 0x8

    .line 924
    goto/16 :goto_3a

    .line 926
    :pswitch_15c
    const/4 v10, 0x3

    .line 927
    goto/16 :goto_3a

    .line 929
    :pswitch_15f
    const/4 v10, 0x4

    .line 930
    goto/16 :goto_3a

    .line 932
    :pswitch_162
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v3, v3, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    const/16 v4, 0x9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/text/SimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result p2

    goto/16 :goto_48

    .line 934
    :pswitch_176
    new-instance v14, Ljava/text/ParsePosition;

    move/from16 v0, p2

    invoke-direct {v14, v0}, Ljava/text/ParsePosition;-><init>(I)V

    .line 935
    .restart local v14       #position:Ljava/text/ParsePosition;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v1, v14}, Ljava/text/SimpleDateFormat;->parseNumber(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v15

    .line 936
    .restart local v15       #result:Ljava/lang/Number;
    if-nez v15, :cond_190

    .line 937
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    neg-int v3, v3

    add-int/lit8 p2, v3, -0x1

    goto/16 :goto_48

    .line 939
    :cond_190
    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v12

    .line 940
    .restart local v12       #hour:I
    const/16 v3, 0xc

    if-ne v12, v3, :cond_199

    .line 941
    const/4 v12, 0x0

    .line 943
    :cond_199
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xa

    invoke-virtual {v3, v4, v12}, Ljava/util/Calendar;->set(II)V

    .line 944
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    goto/16 :goto_48

    .line 946
    .end local v12           #hour:I
    .end local v14           #position:Ljava/text/ParsePosition;
    .end local v15           #result:Ljava/lang/Number;
    :pswitch_1a8
    const/16 v10, 0xa

    .line 947
    goto/16 :goto_3a

    .line 949
    :pswitch_1ac
    invoke-direct/range {p0 .. p2}, Ljava/text/SimpleDateFormat;->parseTimeZone(Ljava/lang/String;I)I

    move-result p2

    goto/16 :goto_48

    .line 951
    :pswitch_1b2
    invoke-direct/range {p0 .. p2}, Ljava/text/SimpleDateFormat;->parseTimeZone(Ljava/lang/String;I)I

    move-result p2

    goto/16 :goto_48

    .line 858
    :pswitch_data_1b8
    .packed-switch 0x0
        :pswitch_49
        :pswitch_5b
        :pswitch_c6
        :pswitch_e0
        :pswitch_e3
        :pswitch_115
        :pswitch_119
        :pswitch_11d
        :pswitch_121
        :pswitch_13d
        :pswitch_155
        :pswitch_158
        :pswitch_15c
        :pswitch_15f
        :pswitch_162
        :pswitch_176
        :pswitch_1a8
        :pswitch_1ac
        :pswitch_1b2
        :pswitch_ad
        :pswitch_125
    .end packed-switch
.end method

.method private parseDayOfWeek(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .parameter "string"
    .parameter "offset"
    .parameter "longs"
    .parameter "shorts"

    .prologue
    const/4 v1, 0x7

    .line 960
    invoke-direct {p0, p1, p2, p3, v1}, Ljava/text/SimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result v0

    .line 961
    .local v0, index:I
    if-gez v0, :cond_b

    .line 962
    invoke-direct {p0, p1, p2, p4, v1}, Ljava/text/SimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result v0

    .line 964
    :cond_b
    return v0
.end method

.method private parseMonth(Ljava/lang/String;III[Ljava/lang/String;[Ljava/lang/String;)I
    .registers 14
    .parameter "string"
    .parameter "offset"
    .parameter "count"
    .parameter "absolute"
    .parameter "longs"
    .parameter "shorts"

    .prologue
    const/4 v4, 0x2

    .line 968
    if-gt p3, v4, :cond_d

    .line 969
    const/4 v5, -0x1

    move-object v0, p0

    move v1, p4

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->parseNumber(ILjava/lang/String;III)I

    move-result v6

    .line 975
    :cond_c
    :goto_c
    return v6

    .line 971
    :cond_d
    invoke-direct {p0, p1, p2, p5, v4}, Ljava/text/SimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result v6

    .line 972
    .local v6, index:I
    if-gez v6, :cond_c

    .line 973
    invoke-direct {p0, p1, p2, p6, v4}, Ljava/text/SimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result v6

    goto :goto_c
.end method

.method private parseNumber(ILjava/lang/String;III)I
    .registers 10
    .parameter "max"
    .parameter "string"
    .parameter "offset"
    .parameter "field"
    .parameter "skew"

    .prologue
    .line 1101
    new-instance v0, Ljava/text/ParsePosition;

    invoke-direct {v0, p3}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1102
    .local v0, position:Ljava/text/ParsePosition;
    invoke-direct {p0, p1, p2, v0}, Ljava/text/SimpleDateFormat;->parseNumber(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v1

    .line 1103
    .local v1, result:Ljava/lang/Number;
    if-nez v1, :cond_13

    .line 1104
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v2

    neg-int v2, v2

    add-int/lit8 v2, v2, -0x1

    .line 1107
    :goto_12
    return v2

    .line 1106
    :cond_13
    iget-object v2, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v3

    add-int/2addr v3, p5

    invoke-virtual {v2, p4, v3}, Ljava/util/Calendar;->set(II)V

    .line 1107
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    goto :goto_12
.end method

.method private parseNumber(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .registers 10
    .parameter "max"
    .parameter "string"
    .parameter "position"

    .prologue
    .line 1073
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, length:I
    const/4 v3, 0x0

    .line 1074
    .local v3, result:I
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    .line 1075
    .local v1, index:I
    if-lez p1, :cond_11

    sub-int v4, v2, v1

    if-ge p1, v4, :cond_11

    .line 1076
    add-int v2, v1, p1

    .line 1079
    :cond_11
    :goto_11
    if-ge v1, v2, :cond_26

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_23

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_26

    .line 1080
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 1082
    :cond_26
    if-nez p1, :cond_32

    .line 1083
    invoke-virtual {p3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1084
    iget-object v4, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v4, p2, p3}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v4

    .line 1097
    :goto_31
    return-object v4

    .line 1088
    :cond_32
    :goto_32
    if-ge v1, v2, :cond_48

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .local v0, digit:I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_48

    .line 1089
    add-int/lit8 v1, v1, 0x1

    .line 1090
    mul-int/lit8 v4, v3, 0xa

    add-int v3, v4, v0

    goto :goto_32

    .line 1092
    .end local v0           #digit:I
    :cond_48
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    if-ne v1, v4, :cond_53

    .line 1093
    invoke-virtual {p3, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1094
    const/4 v4, 0x0

    goto :goto_31

    .line 1096
    :cond_53
    invoke-virtual {p3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1097
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_31
.end method

.method private parseText(Ljava/lang/String;I[Ljava/lang/String;I)I
    .registers 14
    .parameter "string"
    .parameter "offset"
    .parameter "text"
    .parameter "field"

    .prologue
    const/4 v8, -0x1

    .line 1111
    const/4 v6, -0x1

    .line 1112
    .local v6, found:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_3
    array-length v0, p3

    if-ge v7, v0, :cond_35

    .line 1113
    aget-object v0, p3, v7

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1112
    :cond_e
    :goto_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1116
    :cond_11
    const/4 v1, 0x1

    aget-object v3, p3, v7

    const/4 v4, 0x0

    aget-object v0, p3, v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1118
    if-eq v6, v8, :cond_33

    aget-object v0, p3, v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    aget-object v1, p3, v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_e

    .line 1119
    :cond_33
    move v6, v7

    goto :goto_e

    .line 1123
    :cond_35
    if-eq v6, v8, :cond_44

    .line 1124
    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p4, v6}, Ljava/util/Calendar;->set(II)V

    .line 1125
    aget-object v0, p3, v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    .line 1127
    :goto_43
    return v0

    :cond_44
    neg-int v0, p2

    add-int/lit8 v0, v0, -0x1

    goto :goto_43
.end method

.method private parseTimeZone(Ljava/lang/String;I)I
    .registers 26
    .parameter "string"
    .parameter "offset"

    .prologue
    .line 1131
    const-string v2, "GMT"

    const/4 v3, 0x0

    const/4 v4, 0x3

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v10

    .line 1132
    .local v10, foundGMT:Z
    if-eqz v10, :cond_10

    .line 1133
    add-int/lit8 p2, p2, 0x3

    .line 1136
    :cond_10
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    move/from16 v0, p2

    if-ge v0, v2, :cond_bf

    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->charAt(I)C

    move-result v20

    .local v20, sign:C
    const/16 v2, 0x2b

    move/from16 v0, v20

    if-eq v0, v2, :cond_28

    const/16 v2, 0x2d

    move/from16 v0, v20

    if-ne v0, v2, :cond_bf

    .line 1138
    :cond_28
    new-instance v17, Ljava/text/ParsePosition;

    add-int/lit8 v2, p2, 0x1

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1139
    .local v17, position:Ljava/text/ParsePosition;
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v19

    .line 1140
    .local v19, result:Ljava/lang/Number;
    if-nez v19, :cond_47

    .line 1141
    invoke-virtual/range {v17 .. v17}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v2

    neg-int v2, v2

    add-int/lit8 p2, v2, -0x1

    .line 1191
    .end local v17           #position:Ljava/text/ParsePosition;
    .end local v19           #result:Ljava/lang/Number;
    .end local v20           #sign:C
    .end local p2
    :goto_46
    return p2

    .line 1143
    .restart local v17       #position:Ljava/text/ParsePosition;
    .restart local v19       #result:Ljava/lang/Number;
    .restart local v20       #sign:C
    .restart local p2
    :cond_47
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Number;->intValue()I

    move-result v11

    .line 1144
    .local v11, hour:I
    const v2, 0x36ee80

    mul-int v18, v11, v2

    .line 1145
    .local v18, raw:I
    invoke-virtual/range {v17 .. v17}, Ljava/text/ParsePosition;->getIndex()I

    move-result v13

    .line 1146
    .local v13, index:I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v13, v2, :cond_ac

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_ac

    .line 1147
    add-int/lit8 v2, v13, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1148
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v19

    .line 1149
    if-nez v19, :cond_81

    .line 1150
    invoke-virtual/range {v17 .. v17}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v2

    neg-int v2, v2

    add-int/lit8 p2, v2, -0x1

    goto :goto_46

    .line 1152
    :cond_81
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Number;->intValue()I

    move-result v16

    .line 1153
    .local v16, minute:I
    const v2, 0xea60

    mul-int v2, v2, v16

    add-int v18, v18, v2

    .line 1157
    .end local v16           #minute:I
    :cond_8c
    :goto_8c
    const/16 v2, 0x2d

    move/from16 v0, v20

    if-ne v0, v2, :cond_97

    .line 1158
    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    .line 1160
    :cond_97
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    new-instance v3, Ljava/util/SimpleTimeZone;

    const-string v4, ""

    move/from16 v0, v18

    invoke-direct {v3, v0, v4}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1161
    invoke-virtual/range {v17 .. v17}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    goto :goto_46

    .line 1154
    :cond_ac
    const/16 v2, 0x18

    if-lt v11, v2, :cond_8c

    .line 1155
    div-int/lit8 v2, v11, 0x64

    const v3, 0x36ee80

    mul-int/2addr v2, v3

    rem-int/lit8 v3, v11, 0x64

    const v4, 0xea60

    mul-int/2addr v3, v4

    add-int v18, v2, v3

    goto :goto_8c

    .line 1163
    .end local v11           #hour:I
    .end local v13           #index:I
    .end local v17           #position:Ljava/text/ParsePosition;
    .end local v18           #raw:I
    .end local v19           #result:Ljava/lang/Number;
    .end local v20           #sign:C
    :cond_bf
    if-eqz v10, :cond_d0

    .line 1164
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto/16 :goto_46

    .line 1167
    :cond_d0
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->internalZoneStrings()[[Ljava/lang/String;

    move-result-object v22

    .line 1168
    .local v22, zones:[[Ljava/lang/String;
    move-object/from16 v8, v22

    .local v8, arr$:[[Ljava/lang/String;
    array-length v15, v8

    .local v15, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_dc
    if-ge v12, v15, :cond_137

    aget-object v9, v8, v12

    .line 1169
    .local v9, element:[Ljava/lang/String;
    const/4 v14, 0x1

    .local v14, j:I
    :goto_e1
    const/4 v2, 0x5

    if-ge v14, v2, :cond_134

    .line 1170
    const/4 v3, 0x1

    aget-object v5, v9, v14

    const/4 v6, 0x0

    aget-object v2, v9, v14

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    move-object/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_131

    .line 1171
    const/4 v2, 0x0

    aget-object v2, v9, v2

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v21

    .line 1172
    .local v21, zone:Ljava/util/TimeZone;
    if-nez v21, :cond_108

    .line 1173
    move/from16 v0, p2

    neg-int v2, v0

    add-int/lit8 p2, v2, -0x1

    goto/16 :goto_46

    .line 1175
    :cond_108
    invoke-virtual/range {v21 .. v21}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v18

    .line 1176
    .restart local v18       #raw:I
    const/4 v2, 0x3

    if-eq v14, v2, :cond_112

    const/4 v2, 0x4

    if-ne v14, v2, :cond_117

    .line 1184
    :cond_112
    const v2, 0x36ee80

    add-int v18, v18, v2

    .line 1186
    :cond_117
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    new-instance v3, Ljava/util/SimpleTimeZone;

    const-string v4, ""

    move/from16 v0, v18

    invoke-direct {v3, v0, v4}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1187
    aget-object v2, v9, v14

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int p2, p2, v2

    goto/16 :goto_46

    .line 1169
    .end local v18           #raw:I
    .end local v21           #zone:Ljava/util/TimeZone;
    :cond_131
    add-int/lit8 v14, v14, 0x1

    goto :goto_e1

    .line 1168
    :cond_134
    add-int/lit8 v12, v12, 0x1

    goto :goto_dc

    .line 1191
    .end local v9           #element:[Ljava/lang/String;
    .end local v14           #j:I
    :cond_137
    move/from16 v0, p2

    neg-int v2, v0

    add-int/lit8 p2, v2, -0x1

    goto/16 :goto_46
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 7
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1297
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v1

    .line 1298
    .local v1, fields:Ljava/io/ObjectInputStream$GetField;
    const-string v3, "serialVersionOnStream"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v2

    .line 1300
    .local v2, version:I
    if-lez v2, :cond_35

    .line 1301
    const-string v3, "defaultCenturyStart"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 1305
    .local v0, date:Ljava/util/Date;
    :goto_1a
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->set2DigitYearStart(Ljava/util/Date;)V

    .line 1306
    const-string v3, "formatData"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/text/DateFormatSymbols;

    iput-object v3, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 1307
    const-string v3, "pattern"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 1308
    return-void

    .line 1303
    .end local v0           #date:Ljava/util/Date;
    :cond_35
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .restart local v0       #date:Ljava/util/Date;
    goto :goto_1a
.end method

.method private validateFormat(C)V
    .registers 6
    .parameter "format"

    .prologue
    .line 266
    const-string v1, "GyMdkHmsSEDFwWahKzZLc"

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 267
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_28

    .line 268
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown pattern character \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 270
    :cond_28
    return-void
.end method

.method private validatePattern(Ljava/lang/String;)V
    .registers 10
    .parameter "template"

    .prologue
    .line 284
    const/4 v5, 0x0

    .line 285
    .local v5, quote:Z
    const/4 v2, -0x1

    .local v2, last:I
    const/4 v0, 0x0

    .line 287
    .local v0, count:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 288
    .local v4, patternLength:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v4, :cond_51

    .line 289
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 290
    .local v3, next:I
    const/16 v6, 0x27

    if-ne v3, v6, :cond_26

    .line 291
    if-lez v0, :cond_19

    .line 292
    int-to-char v6, v2

    invoke-direct {p0, v6}, Ljava/text/SimpleDateFormat;->validateFormat(C)V

    .line 293
    const/4 v0, 0x0

    .line 295
    :cond_19
    if-ne v2, v3, :cond_22

    .line 296
    const/4 v2, -0x1

    .line 300
    :goto_1c
    if-nez v5, :cond_24

    const/4 v5, 0x1

    .line 288
    :goto_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 298
    :cond_22
    move v2, v3

    goto :goto_1c

    .line 300
    :cond_24
    const/4 v5, 0x0

    goto :goto_1f

    .line 303
    :cond_26
    if-nez v5, :cond_48

    if-eq v2, v3, :cond_3a

    const/16 v6, 0x61

    if-lt v3, v6, :cond_32

    const/16 v6, 0x7a

    if-le v3, v6, :cond_3a

    :cond_32
    const/16 v6, 0x41

    if-lt v3, v6, :cond_48

    const/16 v6, 0x5a

    if-gt v3, v6, :cond_48

    .line 305
    :cond_3a
    if-ne v2, v3, :cond_3f

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 308
    :cond_3f
    if-lez v0, :cond_45

    .line 309
    int-to-char v6, v2

    invoke-direct {p0, v6}, Ljava/text/SimpleDateFormat;->validateFormat(C)V

    .line 311
    :cond_45
    move v2, v3

    .line 312
    const/4 v0, 0x1

    goto :goto_1f

    .line 315
    :cond_48
    if-lez v0, :cond_4f

    .line 316
    int-to-char v6, v2

    invoke-direct {p0, v6}, Ljava/text/SimpleDateFormat;->validateFormat(C)V

    .line 317
    const/4 v0, 0x0

    .line 319
    :cond_4f
    const/4 v2, -0x1

    goto :goto_1f

    .line 322
    .end local v3           #next:I
    :cond_51
    if-lez v0, :cond_57

    .line 323
    int-to-char v6, v2

    invoke-direct {p0, v6}, Ljava/text/SimpleDateFormat;->validateFormat(C)V

    .line 326
    :cond_57
    if-eqz v5, :cond_61

    .line 327
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unterminated quote"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 329
    :cond_61
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1288
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 1289
    .local v0, fields:Ljava/io/ObjectOutputStream$PutField;
    const-string v1, "defaultCenturyStart"

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1290
    const-string v1, "formatData"

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1291
    const-string v1, "pattern"

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1292
    const-string v1, "serialVersionOnStream"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1293
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 1294
    return-void
.end method


# virtual methods
.method public applyLocalizedPattern(Ljava/lang/String;)V
    .registers 5
    .parameter "template"

    .prologue
    .line 392
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getLocalPatternChars()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GyMdkHmsSEDFwWahKzZLc"

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Ljava/text/SimpleDateFormat;->convertPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 393
    return-void
.end method

.method public applyPattern(Ljava/lang/String;)V
    .registers 2
    .parameter "template"

    .prologue
    .line 407
    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;->validatePattern(Ljava/lang/String;)V

    .line 408
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 409
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 5

    .prologue
    .line 420
    invoke-super {p0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 421
    .local v0, clone:Ljava/text/SimpleDateFormat;
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/DateFormatSymbols;

    iput-object v1, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 422
    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, v0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    .line 423
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "object"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 445
    if-ne p0, p1, :cond_5

    .line 452
    :cond_4
    :goto_4
    return v1

    .line 448
    :cond_5
    instance-of v3, p1, Ljava/text/SimpleDateFormat;

    if-nez v3, :cond_b

    move v1, v2

    .line 449
    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 451
    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 452
    .local v0, simple:Ljava/text/SimpleDateFormat;
    invoke-super {p0, p1}, Ljava/text/DateFormat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    iget-object v3, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    iget-object v3, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v3, v4}, Ljava/text/DateFormatSymbols;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_28
    move v1, v2

    goto :goto_4
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 5
    .parameter "date"
    .parameter "buffer"
    .parameter "fieldPos"

    .prologue
    .line 821
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/text/SimpleDateFormat;->formatImpl(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .registers 5
    .parameter "object"

    .prologue
    .line 473
    if-nez p1, :cond_8

    .line 474
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 476
    :cond_8
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_13

    .line 477
    check-cast p1, Ljava/util/Date;

    .end local p1
    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;->formatToCharacterIteratorImpl(Ljava/util/Date;)Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    .line 480
    :goto_12
    return-object v0

    .line 479
    .restart local p1
    :cond_13
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_27

    .line 480
    new-instance v0, Ljava/util/Date;

    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->formatToCharacterIteratorImpl(Ljava/util/Date;)Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    goto :goto_12

    .line 482
    .restart local p1
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public get2DigitYearStart()Ljava/util/Date;
    .registers 2

    .prologue
    .line 829
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getDateFormatSymbols()Ljava/text/DateFormatSymbols;
    .registers 2

    .prologue
    .line 838
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormatSymbols;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 843
    invoke-super {p0}, Ljava/text/DateFormat;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Ljava/text/SimpleDateFormat;->creationYear:I

    add-int/2addr v0, v1

    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .registers 16
    .parameter "string"
    .parameter "position"

    .prologue
    .line 1002
    const/4 v9, 0x0

    .line 1003
    .local v9, quote:Z
    const/4 v4, -0x1

    .local v4, last:I
    const/4 v0, 0x0

    .local v0, count:I
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    .line 1004
    .local v7, offset:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 1005
    .local v5, length:I
    iget-object v11, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v11}, Ljava/util/Calendar;->clear()V

    .line 1006
    iget-object v11, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v10

    .line 1007
    .local v10, zone:Ljava/util/TimeZone;
    iget-object v11, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v8

    .line 1008
    .local v8, patternLength:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1d
    if-ge v3, v8, :cond_aa

    .line 1009
    iget-object v11, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1010
    .local v6, next:I
    const/16 v11, 0x27

    if-ne v6, v11, :cond_59

    .line 1011
    if-lez v0, :cond_3b

    .line 1012
    int-to-char v11, v4

    invoke-direct {p0, p1, v7, v11, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;ICI)I

    move-result v7

    if-gez v7, :cond_3a

    .line 1013
    neg-int v11, v7

    add-int/lit8 v11, v11, -0x1

    invoke-direct {p0, p2, v11, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v1

    .line 1069
    .end local v6           #next:I
    :goto_39
    return-object v1

    .line 1015
    .restart local v6       #next:I
    :cond_3a
    const/4 v0, 0x0

    .line 1017
    :cond_3b
    if-ne v4, v6, :cond_55

    .line 1018
    if-ge v7, v5, :cond_47

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x27

    if-eq v11, v12, :cond_4c

    .line 1019
    :cond_47
    invoke-direct {p0, p2, v7, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v1

    goto :goto_39

    .line 1021
    :cond_4c
    add-int/lit8 v7, v7, 0x1

    .line 1022
    const/4 v4, -0x1

    .line 1026
    :goto_4f
    if-nez v9, :cond_57

    const/4 v9, 0x1

    .line 1008
    :goto_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 1024
    :cond_55
    move v4, v6

    goto :goto_4f

    .line 1026
    :cond_57
    const/4 v9, 0x0

    goto :goto_52

    .line 1029
    :cond_59
    if-nez v9, :cond_87

    if-eq v4, v6, :cond_6d

    const/16 v11, 0x61

    if-lt v6, v11, :cond_65

    const/16 v11, 0x7a

    if-le v6, v11, :cond_6d

    :cond_65
    const/16 v11, 0x41

    if-lt v6, v11, :cond_87

    const/16 v11, 0x5a

    if-gt v6, v11, :cond_87

    .line 1031
    :cond_6d
    if-ne v4, v6, :cond_72

    .line 1032
    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    .line 1034
    :cond_72
    if-lez v0, :cond_84

    .line 1035
    int-to-char v11, v4

    neg-int v12, v0

    invoke-direct {p0, p1, v7, v11, v12}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;ICI)I

    move-result v7

    if-gez v7, :cond_84

    .line 1036
    neg-int v11, v7

    add-int/lit8 v11, v11, -0x1

    invoke-direct {p0, p2, v11, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v1

    goto :goto_39

    .line 1039
    :cond_84
    move v4, v6

    .line 1040
    const/4 v0, 0x1

    goto :goto_52

    .line 1043
    :cond_87
    if-lez v0, :cond_99

    .line 1044
    int-to-char v11, v4

    invoke-direct {p0, p1, v7, v11, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;ICI)I

    move-result v7

    if-gez v7, :cond_98

    .line 1045
    neg-int v11, v7

    add-int/lit8 v11, v11, -0x1

    invoke-direct {p0, p2, v11, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v1

    goto :goto_39

    .line 1047
    :cond_98
    const/4 v0, 0x0

    .line 1049
    :cond_99
    const/4 v4, -0x1

    .line 1050
    if-ge v7, v5, :cond_a2

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eq v11, v6, :cond_a7

    .line 1051
    :cond_a2
    invoke-direct {p0, p2, v7, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v1

    goto :goto_39

    .line 1053
    :cond_a7
    add-int/lit8 v7, v7, 0x1

    goto :goto_52

    .line 1056
    .end local v6           #next:I
    :cond_aa
    if-lez v0, :cond_bc

    .line 1057
    int-to-char v11, v4

    invoke-direct {p0, p1, v7, v11, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;ICI)I

    move-result v7

    if-gez v7, :cond_bc

    .line 1058
    neg-int v11, v7

    add-int/lit8 v11, v11, -0x1

    invoke-direct {p0, p2, v11, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v1

    goto/16 :goto_39

    .line 1063
    :cond_bc
    :try_start_bc
    iget-object v11, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_c1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_bc .. :try_end_c1} :catch_cc

    move-result-object v1

    .line 1067
    .local v1, date:Ljava/util/Date;
    invoke-virtual {p2, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1068
    iget-object v11, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v11, v10}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto/16 :goto_39

    .line 1064
    .end local v1           #date:Ljava/util/Date;
    :catch_cc
    move-exception v2

    .line 1065
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-direct {p0, p2, v7, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v1

    goto/16 :goto_39
.end method

.method public set2DigitYearStart(Ljava/util/Date;)V
    .registers 4
    .parameter "date"

    .prologue
    .line 1217
    invoke-virtual {p1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    iput-object v1, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    .line 1218
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1219
    .local v0, cal:Ljava/util/Calendar;
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 1220
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    iput v1, p0, Ljava/text/SimpleDateFormat;->creationYear:I

    .line 1221
    return-void
.end method

.method public setDateFormatSymbols(Ljava/text/DateFormatSymbols;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 1230
    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormatSymbols;

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 1231
    return-void
.end method

.method public toLocalizedPattern()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1240
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    const-string v1, "GyMdkHmsSEDFwWahKzZLc"

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getLocalPatternChars()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/text/SimpleDateFormat;->convertPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toPattern()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1277
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    return-object v0
.end method
