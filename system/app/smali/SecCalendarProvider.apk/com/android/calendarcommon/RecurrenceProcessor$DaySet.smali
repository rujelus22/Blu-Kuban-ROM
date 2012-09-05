.class public Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;
.super Ljava/lang/Object;
.source "RecurrenceProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendarcommon/RecurrenceProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DaySet"
.end annotation


# instance fields
.field private mDays:I

.field private mMonth:I

.field private mR:Lcom/android/calendarcommon/EventRecurrence;

.field private mTime:Landroid/text/format/Time;

.field private mYear:I


# direct methods
.method public constructor <init>(Z)V
    .registers 4
    .parameter "zulu"

    .prologue
    .line 432
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 433
    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->mTime:Landroid/text/format/Time;

    .line 434
    return-void
.end method

.method private static generateDaysList(Landroid/text/format/Time;Lcom/android/calendarcommon/EventRecurrence;)I
    .registers 15
    .parameter "generated"
    .parameter "r"

    .prologue
    const/4 v12, 0x1

    .line 688
    const/4 v4, 0x0

    .line 696
    .local v4, days:I
    const/4 v10, 0x4

    invoke-virtual {p0, v10}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v8

    .line 699
    .local v8, lastDayThisMonth:I
    iget v3, p1, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    .line 700
    .local v3, count:I
    if-lez v3, :cond_5e

    .line 702
    iget v7, p0, Landroid/text/format/Time;->monthDay:I

    .line 703
    .local v7, j:I
    :goto_d
    const/16 v10, 0x8

    if-lt v7, v10, :cond_14

    .line 704
    add-int/lit8 v7, v7, -0x7

    goto :goto_d

    .line 706
    :cond_14
    iget v5, p0, Landroid/text/format/Time;->weekDay:I

    .line 707
    .local v5, first:I
    if-lt v5, v7, :cond_3c

    .line 708
    sub-int v10, v5, v7

    add-int/lit8 v5, v10, 0x1

    .line 717
    :goto_1c
    iget-object v0, p1, Lcom/android/calendarcommon/EventRecurrence;->byday:[I

    .line 718
    .local v0, byday:[I
    iget-object v1, p1, Lcom/android/calendarcommon/EventRecurrence;->bydayNum:[I

    .line 719
    .local v1, bydayNum:[I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_21
    if-ge v6, v3, :cond_5e

    .line 720
    aget v9, v1, v6

    .line 721
    .local v9, v:I
    aget v10, v0, v6

    invoke-static {v10}, Lcom/android/calendarcommon/EventRecurrence;->day2TimeDay(I)I

    move-result v10

    sub-int/2addr v10, v5

    add-int/lit8 v7, v10, 0x1

    .line 722
    if-gtz v7, :cond_32

    .line 723
    add-int/lit8 v7, v7, 0x7

    .line 725
    :cond_32
    if-nez v9, :cond_41

    .line 727
    :goto_34
    if-gt v7, v8, :cond_4d

    .line 730
    shl-int v10, v12, v7

    or-int/2addr v4, v10

    .line 727
    add-int/lit8 v7, v7, 0x7

    goto :goto_34

    .line 710
    .end local v0           #byday:[I
    .end local v1           #bydayNum:[I
    .end local v6           #i:I
    .end local v9           #v:I
    :cond_3c
    sub-int v10, v5, v7

    add-int/lit8 v5, v10, 0x8

    goto :goto_1c

    .line 733
    .restart local v0       #byday:[I
    .restart local v1       #bydayNum:[I
    .restart local v6       #i:I
    .restart local v9       #v:I
    :cond_41
    if-lez v9, :cond_50

    .line 736
    add-int/lit8 v10, v9, -0x1

    mul-int/lit8 v10, v10, 0x7

    add-int/2addr v7, v10

    .line 737
    if-gt v7, v8, :cond_4d

    .line 741
    shl-int v10, v12, v7

    or-int/2addr v4, v10

    .line 719
    :cond_4d
    :goto_4d
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 747
    :cond_50
    :goto_50
    if-gt v7, v8, :cond_55

    add-int/lit8 v7, v7, 0x7

    goto :goto_50

    .line 753
    :cond_55
    mul-int/lit8 v10, v9, 0x7

    add-int/2addr v7, v10

    .line 754
    if-lt v7, v12, :cond_4d

    .line 757
    shl-int v10, v12, v7

    or-int/2addr v4, v10

    goto :goto_4d

    .line 767
    .end local v0           #byday:[I
    .end local v1           #bydayNum:[I
    .end local v5           #first:I
    .end local v6           #i:I
    .end local v7           #j:I
    .end local v9           #v:I
    :cond_5e
    iget v10, p1, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    const/4 v11, 0x5

    if-le v10, v11, :cond_a1

    .line 768
    iget v3, p1, Lcom/android/calendarcommon/EventRecurrence;->bymonthdayCount:I

    .line 769
    if-eqz v3, :cond_a1

    .line 770
    iget-object v2, p1, Lcom/android/calendarcommon/EventRecurrence;->bymonthday:[I

    .line 771
    .local v2, bymonthday:[I
    iget v10, p1, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    if-nez v10, :cond_86

    .line 772
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_6e
    if-ge v6, v3, :cond_a1

    .line 773
    aget v9, v2, v6

    .line 774
    .restart local v9       #v:I
    if-ltz v9, :cond_7a

    .line 775
    shl-int v10, v12, v9

    or-int/2addr v4, v10

    .line 772
    :cond_77
    :goto_77
    add-int/lit8 v6, v6, 0x1

    goto :goto_6e

    .line 777
    :cond_7a
    add-int v10, v8, v9

    add-int/lit8 v7, v10, 0x1

    .line 778
    .restart local v7       #j:I
    if-lt v7, v12, :cond_77

    if-gt v7, v8, :cond_77

    .line 779
    shl-int v10, v12, v7

    or-int/2addr v4, v10

    goto :goto_77

    .line 786
    .end local v6           #i:I
    .end local v7           #j:I
    .end local v9           #v:I
    :cond_86
    const/4 v7, 0x1

    .restart local v7       #j:I
    :goto_87
    if-gt v7, v8, :cond_a1

    .line 788
    shl-int v10, v12, v7

    and-int/2addr v10, v4

    if-eqz v10, :cond_95

    .line 789
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_8f
    if-ge v6, v3, :cond_9b

    .line 790
    aget v10, v2, v6

    if-ne v10, v7, :cond_98

    .line 786
    .end local v6           #i:I
    :cond_95
    :goto_95
    add-int/lit8 v7, v7, 0x1

    goto :goto_87

    .line 789
    .restart local v6       #i:I
    :cond_98
    add-int/lit8 v6, v6, 0x1

    goto :goto_8f

    .line 794
    :cond_9b
    shl-int v10, v12, v7

    xor-int/lit8 v10, v10, -0x1

    and-int/2addr v4, v10

    goto :goto_95

    .line 801
    .end local v2           #bymonthday:[I
    .end local v6           #i:I
    .end local v7           #j:I
    :cond_a1
    return v4
.end method


# virtual methods
.method get(Landroid/text/format/Time;I)Z
    .registers 9
    .parameter "iterator"
    .parameter "day"

    .prologue
    const/4 v3, 0x1

    .line 624
    iget v1, p1, Landroid/text/format/Time;->year:I

    .line 625
    .local v1, realYear:I
    iget v0, p1, Landroid/text/format/Time;->month:I

    .line 627
    .local v0, realMonth:I
    const/4 v2, 0x0

    .line 635
    .local v2, t:Landroid/text/format/Time;
    if-lt p2, v3, :cond_c

    const/16 v4, 0x1c

    if-le p2, v4, :cond_1a

    .line 637
    :cond_c
    iget-object v2, p0, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->mTime:Landroid/text/format/Time;

    .line 638
    invoke-virtual {v2, p2, v0, v1}, Landroid/text/format/Time;->set(III)V

    .line 639
    invoke-static {v2}, Lcom/android/calendarcommon/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 640
    iget v1, v2, Landroid/text/format/Time;->year:I

    .line 641
    iget v0, v2, Landroid/text/format/Time;->month:I

    .line 642
    iget p2, v2, Landroid/text/format/Time;->monthDay:I

    .line 655
    :cond_1a
    iget v4, p0, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->mYear:I

    if-ne v1, v4, :cond_22

    iget v4, p0, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->mMonth:I

    if-eq v0, v4, :cond_38

    .line 656
    :cond_22
    if-nez v2, :cond_2c

    .line 657
    iget-object v2, p0, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->mTime:Landroid/text/format/Time;

    .line 658
    invoke-virtual {v2, p2, v0, v1}, Landroid/text/format/Time;->set(III)V

    .line 659
    invoke-static {v2}, Lcom/android/calendarcommon/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 667
    :cond_2c
    iput v1, p0, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->mYear:I

    .line 668
    iput v0, p0, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->mMonth:I

    .line 669
    iget-object v4, p0, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->mR:Lcom/android/calendarcommon/EventRecurrence;

    invoke-static {v2, v4}, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->generateDaysList(Landroid/text/format/Time;Lcom/android/calendarcommon/EventRecurrence;)I

    move-result v4

    iput v4, p0, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->mDays:I

    .line 674
    :cond_38
    iget v4, p0, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->mDays:I

    shl-int v5, v3, p2

    and-int/2addr v4, v5

    if-eqz v4, :cond_40

    :goto_3f
    return v3

    :cond_40
    const/4 v3, 0x0

    goto :goto_3f
.end method

.method getfirstweekend(Landroid/text/format/Time;)I
    .registers 5
    .parameter "time"

    .prologue
    .line 524
    const/4 v0, 0x1

    .line 525
    .local v0, day:I
    iget v1, p1, Landroid/text/format/Time;->weekDay:I

    if-eqz v1, :cond_a

    iget v1, p1, Landroid/text/format/Time;->weekDay:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_c

    .line 526
    :cond_a
    const/4 v0, 0x1

    .line 530
    :goto_b
    return v0

    .line 528
    :cond_c
    iget v1, p1, Landroid/text/format/Time;->weekDay:I

    rsub-int/lit8 v0, v1, 0x7

    goto :goto_b
.end method

.method getfourthweekend(Landroid/text/format/Time;)I
    .registers 6
    .parameter "time"

    .prologue
    .line 562
    const/4 v0, 0x1

    .line 563
    .local v0, day:I
    invoke-virtual {p0, p1}, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->getthirdweekend(Landroid/text/format/Time;)I

    move-result v0

    .line 564
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1, p1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 565
    .local v1, time1:Landroid/text/format/Time;
    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 566
    invoke-static {v1}, Lcom/android/calendarcommon/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 567
    iget v2, v1, Landroid/text/format/Time;->weekDay:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_17

    .line 568
    add-int/lit8 v0, v0, 0x1

    .line 572
    :cond_16
    :goto_16
    return v0

    .line 569
    :cond_17
    iget v2, v1, Landroid/text/format/Time;->weekDay:I

    if-nez v2, :cond_16

    .line 570
    add-int/lit8 v0, v0, 0x6

    goto :goto_16
.end method

.method getlastday(Landroid/text/format/Time;)I
    .registers 4
    .parameter "iterator"

    .prologue
    .line 619
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v0

    .line 620
    .local v0, day:I
    return v0
.end method

.method getsecondweekend(Landroid/text/format/Time;)I
    .registers 6
    .parameter "time"

    .prologue
    .line 534
    const/4 v0, 0x1

    .line 535
    .local v0, day:I
    invoke-virtual {p0, p1}, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->getfirstweekend(Landroid/text/format/Time;)I

    move-result v0

    .line 536
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1, p1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 537
    .local v1, time1:Landroid/text/format/Time;
    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 538
    invoke-static {v1}, Lcom/android/calendarcommon/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 539
    iget v2, v1, Landroid/text/format/Time;->weekDay:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_17

    .line 540
    add-int/lit8 v0, v0, 0x1

    .line 544
    :cond_16
    :goto_16
    return v0

    .line 541
    :cond_17
    iget v2, v1, Landroid/text/format/Time;->weekDay:I

    if-nez v2, :cond_16

    .line 542
    add-int/lit8 v0, v0, 0x6

    goto :goto_16
.end method

.method getthirdweekend(Landroid/text/format/Time;)I
    .registers 6
    .parameter "time"

    .prologue
    .line 548
    const/4 v0, 0x1

    .line 549
    .local v0, day:I
    invoke-virtual {p0, p1}, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->getsecondweekend(Landroid/text/format/Time;)I

    move-result v0

    .line 550
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1, p1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 551
    .local v1, time1:Landroid/text/format/Time;
    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 552
    invoke-static {v1}, Lcom/android/calendarcommon/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 553
    iget v2, v1, Landroid/text/format/Time;->weekDay:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_17

    .line 554
    add-int/lit8 v0, v0, 0x1

    .line 558
    :cond_16
    :goto_16
    return v0

    .line 555
    :cond_17
    iget v2, v1, Landroid/text/format/Time;->weekDay:I

    if-nez v2, :cond_16

    .line 556
    add-int/lit8 v0, v0, 0x6

    goto :goto_16
.end method

.method getweek_day(Landroid/text/format/Time;)I
    .registers 12
    .parameter "iterator"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x6

    const/4 v5, 0x1

    .line 443
    const/4 v0, 0x1

    .line 444
    .local v0, day:I
    iget-object v3, p0, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->mR:Lcom/android/calendarcommon/EventRecurrence;

    iget-object v3, v3, Lcom/android/calendarcommon/EventRecurrence;->bysetpos:[I

    aget v3, v3, v7

    if-ne v3, v5, :cond_35

    .line 445
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2, p1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 446
    .local v2, time:Landroid/text/format/Time;
    iput v5, v2, Landroid/text/format/Time;->monthDay:I

    .line 447
    invoke-static {v2}, Lcom/android/calendarcommon/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 448
    iget v3, v2, Landroid/text/format/Time;->weekDay:I

    if-eqz v3, :cond_23

    iget v3, v2, Landroid/text/format/Time;->weekDay:I

    if-eq v3, v6, :cond_23

    .line 449
    iget v0, v2, Landroid/text/format/Time;->monthDay:I

    .line 520
    .end local v2           #time:Landroid/text/format/Time;
    :cond_22
    :goto_22
    return v0

    .line 451
    .restart local v2       #time:Landroid/text/format/Time;
    :cond_23
    iget v3, v2, Landroid/text/format/Time;->weekDay:I

    if-nez v3, :cond_2c

    .line 452
    iget v3, v2, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v3, 0x1

    goto :goto_22

    .line 453
    :cond_2c
    iget v3, v2, Landroid/text/format/Time;->weekDay:I

    if-ne v3, v6, :cond_22

    .line 454
    iget v3, v2, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v3, 0x2

    goto :goto_22

    .line 456
    .end local v2           #time:Landroid/text/format/Time;
    :cond_35
    iget-object v3, p0, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->mR:Lcom/android/calendarcommon/EventRecurrence;

    iget-object v3, v3, Lcom/android/calendarcommon/EventRecurrence;->bysetpos:[I

    aget v3, v3, v7

    if-ne v3, v9, :cond_79

    .line 457
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2, p1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 458
    .restart local v2       #time:Landroid/text/format/Time;
    iput v5, v2, Landroid/text/format/Time;->monthDay:I

    .line 459
    invoke-static {v2}, Lcom/android/calendarcommon/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 460
    iget v3, v2, Landroid/text/format/Time;->weekDay:I

    if-eq v3, v5, :cond_58

    iget v3, v2, Landroid/text/format/Time;->weekDay:I

    if-eq v3, v9, :cond_58

    iget v3, v2, Landroid/text/format/Time;->weekDay:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_58

    iget v3, v2, Landroid/text/format/Time;->weekDay:I

    if-ne v3, v8, :cond_5d

    .line 462
    :cond_58
    iget v3, v2, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v3, 0x1

    goto :goto_22

    .line 464
    :cond_5d
    iget v3, v2, Landroid/text/format/Time;->weekDay:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_67

    .line 465
    iget v3, v2, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v3, 0x3

    goto :goto_22

    .line 466
    :cond_67
    iget v3, v2, Landroid/text/format/Time;->weekDay:I

    if-ne v3, v6, :cond_70

    .line 467
    iget v3, v2, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v3, 0x3

    goto :goto_22

    .line 468
    :cond_70
    iget v3, v2, Landroid/text/format/Time;->weekDay:I

    if-nez v3, :cond_22

    .line 469
    iget v3, v2, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v3, 0x2

    goto :goto_22

    .line 471
    .end local v2           #time:Landroid/text/format/Time;
    :cond_79
    iget-object v3, p0, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->mR:Lcom/android/calendarcommon/EventRecurrence;

    iget-object v3, v3, Lcom/android/calendarcommon/EventRecurrence;->bysetpos:[I

    aget v3, v3, v7

    const/4 v4, 0x3

    if-ne v3, v4, :cond_c7

    .line 472
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2, p1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 473
    .restart local v2       #time:Landroid/text/format/Time;
    iput v5, v2, Landroid/text/format/Time;->monthDay:I

    .line 474
    invoke-static {v2}, Lcom/android/calendarcommon/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 475
    iget v3, v2, Landroid/text/format/Time;->weekDay:I

    if-eq v3, v5, :cond_99

    iget v3, v2, Landroid/text/format/Time;->weekDay:I

    if-eq v3, v9, :cond_99

    iget v3, v2, Landroid/text/format/Time;->weekDay:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_9e

    .line 476
    :cond_99
    iget v3, v2, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v3, 0x2

    goto :goto_22

    .line 478
    :cond_9e
    iget v3, v2, Landroid/text/format/Time;->weekDay:I

    if-ne v3, v8, :cond_a8

    .line 479
    iget v3, v2, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v3, 0x4

    goto/16 :goto_22

    .line 480
    :cond_a8
    iget v3, v2, Landroid/text/format/Time;->weekDay:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_b3

    .line 481
    iget v3, v2, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v3, 0x4

    goto/16 :goto_22

    .line 482
    :cond_b3
    iget v3, v2, Landroid/text/format/Time;->weekDay:I

    if-ne v3, v6, :cond_bd

    .line 483
    iget v3, v2, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v3, 0x4

    goto/16 :goto_22

    .line 484
    :cond_bd
    iget v3, v2, Landroid/text/format/Time;->weekDay:I

    if-nez v3, :cond_22

    .line 485
    iget v3, v2, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v3, 0x3

    goto/16 :goto_22

    .line 487
    .end local v2           #time:Landroid/text/format/Time;
    :cond_c7
    iget-object v3, p0, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->mR:Lcom/android/calendarcommon/EventRecurrence;

    iget-object v3, v3, Lcom/android/calendarcommon/EventRecurrence;->bysetpos:[I

    aget v3, v3, v7

    if-ne v3, v8, :cond_11b

    .line 488
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2, p1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 489
    .restart local v2       #time:Landroid/text/format/Time;
    iput v5, v2, Landroid/text/format/Time;->monthDay:I

    .line 490
    invoke-static {v2}, Lcom/android/calendarcommon/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 491
    iget v3, v2, Landroid/text/format/Time;->weekDay:I

    if-eq v3, v5, :cond_e1

    iget v3, v2, Landroid/text/format/Time;->weekDay:I

    if-ne v3, v9, :cond_e7

    .line 492
    :cond_e1
    iget v3, v2, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v3, 0x3

    goto/16 :goto_22

    .line 494
    :cond_e7
    iget v3, v2, Landroid/text/format/Time;->weekDay:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_f2

    .line 495
    iget v3, v2, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v3, 0x5

    goto/16 :goto_22

    .line 496
    :cond_f2
    iget v3, v2, Landroid/text/format/Time;->weekDay:I

    if-ne v3, v8, :cond_fc

    .line 497
    iget v3, v2, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v3, 0x5

    goto/16 :goto_22

    .line 498
    :cond_fc
    iget v3, v2, Landroid/text/format/Time;->weekDay:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_107

    .line 499
    iget v3, v2, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v3, 0x5

    goto/16 :goto_22

    .line 500
    :cond_107
    iget v3, v2, Landroid/text/format/Time;->weekDay:I

    if-ne v3, v6, :cond_111

    .line 501
    iget v3, v2, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v3, 0x5

    goto/16 :goto_22

    .line 502
    :cond_111
    iget v3, v2, Landroid/text/format/Time;->weekDay:I

    if-nez v3, :cond_22

    .line 503
    iget v3, v2, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v3, 0x4

    goto/16 :goto_22

    .line 505
    .end local v2           #time:Landroid/text/format/Time;
    :cond_11b
    iget-object v3, p0, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->mR:Lcom/android/calendarcommon/EventRecurrence;

    iget-object v3, v3, Lcom/android/calendarcommon/EventRecurrence;->bysetpos:[I

    aget v3, v3, v7

    const/4 v4, -0x1

    if-ne v3, v4, :cond_22

    .line 506
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2, p1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 508
    .restart local v2       #time:Landroid/text/format/Time;
    invoke-virtual {p1, v8}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v1

    .line 509
    .local v1, lastday:I
    iput v1, v2, Landroid/text/format/Time;->monthDay:I

    .line 510
    invoke-static {v2}, Lcom/android/calendarcommon/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 511
    iget v3, v2, Landroid/text/format/Time;->weekDay:I

    if-eqz v3, :cond_13d

    iget v3, v2, Landroid/text/format/Time;->weekDay:I

    if-eq v3, v6, :cond_13d

    .line 512
    move v0, v1

    goto/16 :goto_22

    .line 514
    :cond_13d
    iget v3, v2, Landroid/text/format/Time;->weekDay:I

    if-nez v3, :cond_147

    .line 515
    iget v3, v2, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v3, -0x2

    goto/16 :goto_22

    .line 516
    :cond_147
    iget v3, v2, Landroid/text/format/Time;->weekDay:I

    if-ne v3, v6, :cond_22

    .line 517
    iget v3, v2, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v3, -0x1

    goto/16 :goto_22
.end method

.method getweekend_day(Landroid/text/format/Time;)I
    .registers 10
    .parameter "iterator"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 576
    const/4 v0, 0x1

    .line 577
    .local v0, day:I
    iget-object v3, p0, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->mR:Lcom/android/calendarcommon/EventRecurrence;

    iget-object v3, v3, Lcom/android/calendarcommon/EventRecurrence;->bysetpos:[I

    aget v3, v3, v5

    if-ne v3, v6, :cond_1b

    .line 578
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2, p1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 579
    .local v2, time:Landroid/text/format/Time;
    iput v6, v2, Landroid/text/format/Time;->monthDay:I

    .line 580
    invoke-static {v2}, Lcom/android/calendarcommon/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 581
    invoke-virtual {p0, v2}, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->getfirstweekend(Landroid/text/format/Time;)I

    move-result v0

    .line 615
    .end local v2           #time:Landroid/text/format/Time;
    :cond_1a
    :goto_1a
    return v0

    .line 583
    :cond_1b
    iget-object v3, p0, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->mR:Lcom/android/calendarcommon/EventRecurrence;

    iget-object v3, v3, Lcom/android/calendarcommon/EventRecurrence;->bysetpos:[I

    aget v3, v3, v5

    const/4 v4, 0x2

    if-ne v3, v4, :cond_33

    .line 584
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2, p1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 585
    .restart local v2       #time:Landroid/text/format/Time;
    iput v6, v2, Landroid/text/format/Time;->monthDay:I

    .line 586
    invoke-static {v2}, Lcom/android/calendarcommon/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 587
    invoke-virtual {p0, v2}, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->getsecondweekend(Landroid/text/format/Time;)I

    move-result v0

    .line 589
    goto :goto_1a

    .end local v2           #time:Landroid/text/format/Time;
    :cond_33
    iget-object v3, p0, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->mR:Lcom/android/calendarcommon/EventRecurrence;

    iget-object v3, v3, Lcom/android/calendarcommon/EventRecurrence;->bysetpos:[I

    aget v3, v3, v5

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4b

    .line 590
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2, p1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 591
    .restart local v2       #time:Landroid/text/format/Time;
    iput v6, v2, Landroid/text/format/Time;->monthDay:I

    .line 592
    invoke-static {v2}, Lcom/android/calendarcommon/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 593
    invoke-virtual {p0, v2}, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->getthirdweekend(Landroid/text/format/Time;)I

    move-result v0

    .line 595
    goto :goto_1a

    .end local v2           #time:Landroid/text/format/Time;
    :cond_4b
    iget-object v3, p0, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->mR:Lcom/android/calendarcommon/EventRecurrence;

    iget-object v3, v3, Lcom/android/calendarcommon/EventRecurrence;->bysetpos:[I

    aget v3, v3, v5

    if-ne v3, v7, :cond_62

    .line 596
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2, p1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 597
    .restart local v2       #time:Landroid/text/format/Time;
    iput v6, v2, Landroid/text/format/Time;->monthDay:I

    .line 598
    invoke-static {v2}, Lcom/android/calendarcommon/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 599
    invoke-virtual {p0, v2}, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->getfourthweekend(Landroid/text/format/Time;)I

    move-result v0

    .line 601
    goto :goto_1a

    .end local v2           #time:Landroid/text/format/Time;
    :cond_62
    iget-object v3, p0, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->mR:Lcom/android/calendarcommon/EventRecurrence;

    iget-object v3, v3, Lcom/android/calendarcommon/EventRecurrence;->bysetpos:[I

    aget v3, v3, v5

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1a

    .line 602
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2, p1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 604
    .restart local v2       #time:Landroid/text/format/Time;
    invoke-virtual {p1, v7}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v1

    .line 605
    .local v1, lastday:I
    iput v1, v2, Landroid/text/format/Time;->monthDay:I

    .line 606
    invoke-static {v2}, Lcom/android/calendarcommon/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 607
    iget v3, v2, Landroid/text/format/Time;->weekDay:I

    if-eqz v3, :cond_82

    iget v3, v2, Landroid/text/format/Time;->weekDay:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_84

    .line 608
    :cond_82
    move v0, v1

    goto :goto_1a

    .line 610
    :cond_84
    iget v3, v2, Landroid/text/format/Time;->weekDay:I

    sub-int v0, v1, v3

    goto :goto_1a
.end method

.method setRecurrence(Lcom/android/calendarcommon/EventRecurrence;)V
    .registers 3
    .parameter "r"

    .prologue
    .line 438
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->mYear:I

    .line 439
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->mMonth:I

    .line 440
    iput-object p1, p0, Lcom/android/calendarcommon/RecurrenceProcessor$DaySet;->mR:Lcom/android/calendarcommon/EventRecurrence;

    .line 441
    return-void
.end method
