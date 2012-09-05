.class Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;
.super Landroid/widget/LinearLayout;
.source "ClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/ClockWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeAndDate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$FormatChangeObserver;,
        Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$TimeChangedReceiver;
    }
.end annotation


# instance fields
.field private mAM:Landroid/widget/TextView;

.field private mCalendar:Ljava/util/Calendar;

.field private mContext:Landroid/content/Context;

.field private mDate_Month:Landroid/widget/TextView;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mHour01:Landroid/widget/ImageView;

.field private mHour02:Landroid/widget/ImageView;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMin01:Landroid/widget/ImageView;

.field private mMin02:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 556
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 476
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mHandler:Landroid/os/Handler;

    .line 557
    iput-object p1, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mContext:Landroid/content/Context;

    .line 558
    return-void
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;Ljava/util/Calendar;)Ljava/util/Calendar;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 474
    iput-object p1, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 474
    invoke-direct {p0}, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->refreshTimeAndDate()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private convertTimeToImage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter "hourString"
    .parameter "minString"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 640
    const/16 v4, 0xa

    new-array v3, v4, [I

    fill-array-data v3, :array_84

    .line 648
    .local v3, unlock_clock_drawables:[I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    new-array v0, v4, [I

    .line 649
    .local v0, choiceHourNumber:[I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    new-array v1, v4, [I

    .line 650
    .local v1, choiceMinNumber:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_2d

    .line 651
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v0, v2

    .line 650
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 653
    :cond_2d
    const/4 v2, 0x0

    :goto_2e
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_45

    .line 654
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v1, v2

    .line 653
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 658
    :cond_45
    aget v4, v0, v6

    if-ne v4, v7, :cond_6c

    .line 660
    iget-object v4, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mHour01:Landroid/widget/ImageView;

    aget v5, v3, v7

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 666
    :goto_50
    iget-object v4, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mHour02:Landroid/widget/ImageView;

    aget v5, v0, v7

    aget v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 667
    iget-object v4, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mMin01:Landroid/widget/ImageView;

    aget v5, v1, v6

    aget v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 668
    iget-object v4, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mMin02:Landroid/widget/ImageView;

    aget v5, v1, v7

    aget v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 669
    return-void

    .line 661
    :cond_6c
    aget v4, v0, v6

    if-nez v4, :cond_79

    .line 662
    iget-object v4, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mHour01:Landroid/widget/ImageView;

    const v5, 0x10807a1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_50

    .line 664
    :cond_79
    iget-object v4, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mHour01:Landroid/widget/ImageView;

    aget v5, v0, v6

    aget v5, v3, v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_50

    .line 640
    nop

    :array_84
    .array-data 0x4
        0x89t 0x7t 0x8t 0x1t
        0x8bt 0x7t 0x8t 0x1t
        0x8et 0x7t 0x8t 0x1t
        0x90t 0x7t 0x8t 0x1t
        0x92t 0x7t 0x8t 0x1t
        0x94t 0x7t 0x8t 0x1t
        0x96t 0x7t 0x8t 0x1t
        0x98t 0x7t 0x8t 0x1t
        0x9at 0x7t 0x8t 0x1t
        0x9ct 0x7t 0x8t 0x1t
    .end array-data
.end method

.method private refreshTimeAndDate()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 610
    iget-object v5, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 613
    iget-object v5, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    if-ne v5, v8, :cond_80

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v5, "HH"

    invoke-direct {v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 615
    .local v1, hourFormat:Ljava/text/SimpleDateFormat;
    :goto_19
    iget-object v5, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 617
    .local v2, hourString:Ljava/lang/String;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "mm"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 618
    .local v4, minuteFormat:Ljava/text/SimpleDateFormat;
    iget-object v5, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 620
    .local v3, minString:Ljava/lang/String;
    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->convertTimeToImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mAM:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    if-ne v5, v8, :cond_88

    const/16 v5, 0x8

    :goto_43
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 624
    iget-object v5, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mCalendar:Ljava/util/Calendar;

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-nez v5, :cond_8a

    .line 625
    iget-object v5, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mAM:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mContext:Landroid/content/Context;

    const v7, 0x1040075

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 631
    :goto_62
    iget-object v5, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mContext:Landroid/content/Context;

    const v6, 0x10400b2

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 635
    .local v0, dateFormat:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mContext:Landroid/content/Context;

    const v6, 0x10400b3

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 636
    iget-object v5, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mDate_Month:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mCalendar:Ljava/util/Calendar;

    invoke-static {v0, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 637
    return-void

    .line 613
    .end local v0           #dateFormat:Ljava/lang/String;
    .end local v1           #hourFormat:Ljava/text/SimpleDateFormat;
    .end local v2           #hourString:Ljava/lang/String;
    .end local v3           #minString:Ljava/lang/String;
    .end local v4           #minuteFormat:Ljava/text/SimpleDateFormat;
    :cond_80
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v5, "hh"

    invoke-direct {v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_19

    .line 623
    .restart local v1       #hourFormat:Ljava/text/SimpleDateFormat;
    .restart local v2       #hourString:Ljava/lang/String;
    .restart local v3       #minString:Ljava/lang/String;
    .restart local v4       #minuteFormat:Ljava/text/SimpleDateFormat;
    :cond_88
    const/4 v5, 0x0

    goto :goto_43

    .line 627
    :cond_8a
    iget-object v5, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mAM:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mContext:Landroid/content/Context;

    const v7, 0x1040076

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_62
.end method


# virtual methods
.method public getTTSMessage()Ljava/lang/String;
    .registers 13

    .prologue
    const/4 v8, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 673
    const-string v0, ""

    .line 675
    .local v0, TTSMessage:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mContext:Landroid/content/Context;

    const v7, 0x10400b2

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 678
    .local v1, dateFormat:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mCalendar:Ljava/util/Calendar;

    invoke-static {v1, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 680
    .local v2, dateText:Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .line 681
    .local v5, timeText:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_70

    .line 682
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "HH"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 683
    .local v3, hourText:Ljava/lang/String;
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "mm"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 684
    .local v4, minuteText:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mContext:Landroid/content/Context;

    const v7, 0x10405c0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 697
    :goto_56
    move-object v0, v5

    .line 698
    const-string v6, "ClockWidget"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TTS Message = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    return-object v0

    .line 687
    .end local v3           #hourText:Ljava/lang/String;
    .end local v4           #minuteText:Ljava/lang/String;
    :cond_70
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "hh"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 688
    .restart local v3       #hourText:Ljava/lang/String;
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "mm"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 689
    .restart local v4       #minuteText:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mCalendar:Ljava/util/Calendar;

    const/16 v7, 0x9

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-nez v6, :cond_b4

    .line 690
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mContext:Landroid/content/Context;

    const v7, 0x10405b4

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_56

    .line 692
    :cond_b4
    iget-object v6, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mContext:Landroid/content/Context;

    const v7, 0x10405b5

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_56
.end method

.method protected onAttachedToWindow()V
    .registers 6

    .prologue
    .line 562
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 565
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_29

    .line 566
    new-instance v1, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$TimeChangedReceiver;

    invoke-direct {v1, p0, p0}, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$TimeChangedReceiver;-><init>(Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 567
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 568
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 569
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 570
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 571
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 575
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_29
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_42

    .line 576
    new-instance v1, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$FormatChangeObserver;

    invoke-direct {v1, p0, p0}, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate$FormatChangeObserver;-><init>(Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 577
    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 581
    :cond_42
    invoke-direct {p0}, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->refreshTimeAndDate()V

    .line 582
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 586
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 587
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_e

    .line 588
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 590
    :cond_e
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1d

    .line 591
    iget-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 593
    :cond_1d
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 597
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 598
    const v0, 0x102036c

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mHour01:Landroid/widget/ImageView;

    .line 599
    const v0, 0x102036d

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mHour02:Landroid/widget/ImageView;

    .line 600
    const v0, 0x102036f

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mMin01:Landroid/widget/ImageView;

    .line 601
    const v0, 0x1020370

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mMin02:Landroid/widget/ImageView;

    .line 602
    const v0, 0x1020371

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mAM:Landroid/widget/TextView;

    .line 603
    const v0, 0x1020373

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mDate_Month:Landroid/widget/TextView;

    .line 604
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/ClockWidget$TimeAndDate;->mCalendar:Ljava/util/Calendar;

    .line 605
    return-void
.end method
