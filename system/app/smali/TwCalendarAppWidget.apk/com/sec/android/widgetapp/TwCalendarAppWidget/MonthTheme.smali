.class public Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;
.super Ljava/lang/Object;
.source "MonthTheme.java"

# interfaces
.implements Lcom/sec/android/widgetapp/TwCalendarAppWidget/WidgetTheme;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mAlarm:Landroid/view/View;

.field private mCalendar:Landroid/view/View;

.field private mDay:Landroid/widget/TextView;

.field private mDay0:Landroid/widget/TextView;

.field private mDay1:Landroid/widget/TextView;

.field private mDay2:Landroid/widget/TextView;

.field private mDay3:Landroid/widget/TextView;

.field private mDay4:Landroid/widget/TextView;

.field private mDay5:Landroid/widget/TextView;

.field private mDay6:Landroid/widget/TextView;

.field private mEventContainer:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;

.field mEventLoader:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;

.field private mLocation:Landroid/widget/TextView;

.field private mMonthTitle:Landroid/widget/TextView;

.field mMonthView:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;

.field private mMore:Landroid/widget/TextView;

.field private mNoEvent:Landroid/widget/TextView;

.field private mRoundContainer:Lcom/sec/android/widgetapp/TwCalendarAppWidget/RoundView;

.field private mStartDay:I

.field private mTime:Landroid/text/format/Time;

.field private mTitle:Landroid/widget/TextView;

.field private mWeekDay:Landroid/widget/TextView;

.field private mWhen:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3
    .parameter "activity"

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "MonthTheme"

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->TAG:Ljava/lang/String;

    .line 91
    iput-object p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mActivity:Landroid/app/Activity;

    .line 92
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->init(Landroid/app/Activity;)V

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;)Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mEventContainer:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private arrangeEventList(Ljava/util/ArrayList;I)V
    .registers 10
    .parameter
    .parameter "currentDay"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 451
    .local p1, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;>;"
    const/4 v1, 0x0

    .line 452
    .local v1, dirty:Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 453
    .local v0, alldayEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 454
    .local v5, norEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;>;"
    iget-object v6, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mMonthView:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;

    invoke-virtual {v6}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->getEventList()Ljava/util/ArrayList;

    move-result-object v4

    .line 455
    .local v4, monthEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;

    .line 456
    .local v2, event:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;
    const/4 v6, -0x1

    if-eq p2, v6, :cond_2c

    .line 457
    iget v6, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->startDay:I

    if-gt v6, p2, :cond_15

    iget v6, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->endDay:I

    if-lt v6, p2, :cond_15

    .line 461
    :cond_2c
    iget-boolean v6, v2, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->allDay:Z

    if-eqz v6, :cond_37

    .line 462
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    if-nez v1, :cond_15

    .line 464
    const/4 v1, 0x1

    goto :goto_15

    .line 466
    :cond_37
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    if-nez v1, :cond_15

    .line 468
    const/4 v1, 0x1

    goto :goto_15

    .line 472
    .end local v2           #event:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;
    :cond_3e
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 473
    if-eqz v1, :cond_4e

    .line 474
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 475
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 476
    iget-object v6, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mActivity:Landroid/app/Activity;

    invoke-static {p1, v6}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->computePositions(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 479
    :cond_4e
    return-void
.end method

.method private init(Landroid/app/Activity;)V
    .registers 7
    .parameter "activity"

    .prologue
    const/high16 v3, 0x40a0

    .line 96
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mActivity:Landroid/app/Activity;

    const v2, 0x7f030004

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 98
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0b0018

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mMonthTitle:Landroid/widget/TextView;

    .line 99
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0b0024

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mDay:Landroid/widget/TextView;

    .line 100
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0b0025

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mWeekDay:Landroid/widget/TextView;

    .line 101
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0b000e

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mTitle:Landroid/widget/TextView;

    .line 102
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0b000f

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mWhen:Landroid/widget/TextView;

    .line 103
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0b0012

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mLocation:Landroid/widget/TextView;

    .line 104
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0b0009

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mCalendar:Landroid/view/View;

    .line 105
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0b0010

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mAlarm:Landroid/view/View;

    .line 106
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0b0015

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mMore:Landroid/widget/TextView;

    .line 108
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0b001b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mDay0:Landroid/widget/TextView;

    .line 109
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0b001c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mDay1:Landroid/widget/TextView;

    .line 110
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0b001d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mDay2:Landroid/widget/TextView;

    .line 111
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0b001e

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mDay3:Landroid/widget/TextView;

    .line 112
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0b001f

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mDay4:Landroid/widget/TextView;

    .line 113
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0b0020

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mDay5:Landroid/widget/TextView;

    .line 114
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0b0021

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mDay6:Landroid/widget/TextView;

    .line 116
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0b0023

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mEventContainer:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;

    .line 117
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mEventContainer:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;

    const v2, 0x7f02000c

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;->setPressedImage(I)V

    .line 119
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0b0026

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/RoundView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mRoundContainer:Lcom/sec/android/widgetapp/TwCalendarAppWidget/RoundView;

    .line 120
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1a7

    .line 121
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mRoundContainer:Lcom/sec/android/widgetapp/TwCalendarAppWidget/RoundView;

    invoke-virtual {v1, v3, v3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/RoundView;->setRound(FF)V

    .line 126
    :goto_10c
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0b0006

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mNoEvent:Landroid/widget/TextView;

    .line 127
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mNoEvent:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08002a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mActivity:Landroid/app/Activity;

    const-string v2, "preferences_first_day_of_week"

    const-string v3, "1"

    invoke-static {v1, v2, v3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->GetPreferenceFromCalendar(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mStartDay:I

    .line 131
    iget v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mStartDay:I

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v1, -0x1

    .line 133
    .local v0, diff:I
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->setWeekday(I)V

    .line 135
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    iput-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mTime:Landroid/text/format/Time;

    .line 136
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mTime:Landroid/text/format/Time;

    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 137
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mTime:Landroid/text/format/Time;

    invoke-direct {p0, v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->setTitle(Landroid/text/format/Time;)V

    .line 138
    new-instance v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;

    invoke-direct {v1, p1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mEventLoader:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;

    .line 139
    const v1, 0x7f0b0022

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;

    iput-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mMonthView:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;

    .line 140
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mMonthView:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;

    iget v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mStartDay:I

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->setStartDay(I)V

    .line 141
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mMonthView:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mEventLoader:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->setEventLoader(Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;)V

    .line 142
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mMonthView:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;

    check-cast p1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;

    .end local p1
    invoke-virtual {v1, p1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->init(Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;)V

    .line 143
    return-void

    .line 123
    .end local v0           #diff:I
    .restart local p1
    :cond_1a7
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mRoundContainer:Lcom/sec/android/widgetapp/TwCalendarAppWidget/RoundView;

    invoke-virtual {v1, v3, v3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/RoundView;->setRound(FF)V

    goto/16 :goto_10c
.end method

.method private setTitle(Landroid/text/format/Time;)V
    .registers 7
    .parameter "time"

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .local v0, format:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mMonthTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    return-void
.end method

.method private setWeekday(I)V
    .registers 5
    .parameter "diff"

    .prologue
    const/16 v2, 0x14

    .line 483
    add-int/lit8 v1, p1, 0x1

    rem-int/lit8 v1, v1, 0x7

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 485
    .local v0, dayString:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mDay0:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    add-int/lit8 v1, p1, 0x2

    rem-int/lit8 v1, v1, 0x7

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 489
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mDay1:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    add-int/lit8 v1, p1, 0x3

    rem-int/lit8 v1, v1, 0x7

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 493
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mDay2:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    add-int/lit8 v1, p1, 0x4

    rem-int/lit8 v1, v1, 0x7

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 497
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mDay3:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    add-int/lit8 v1, p1, 0x5

    rem-int/lit8 v1, v1, 0x7

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 501
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mDay4:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    add-int/lit8 v1, p1, 0x6

    rem-int/lit8 v1, v1, 0x7

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 505
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mDay5:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    add-int/lit8 v1, p1, 0x7

    rem-int/lit8 v1, v1, 0x7

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 509
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mDay6:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 510
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .registers 2

    .prologue
    .line 549
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mMonthView:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->clear()V

    .line 550
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mEventLoader:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;->stopBackgroundThread()V

    .line 522
    return-void
.end method

.method public onRefresh()V
    .registers 2

    .prologue
    .line 525
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->updateView()V

    .line 527
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mMonthView:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->reloadEvents()V

    .line 528
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 513
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mEventLoader:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;->startBackgroundThread()V

    .line 515
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->updateView()V

    .line 517
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mMonthView:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->reloadEvents()V

    .line 518
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 554
    const/4 v0, 0x0

    return v0
.end method

.method public reloadCurrentDayEvents()V
    .registers 7

    .prologue
    .line 438
    iget-object v4, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mMonthView:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;

    invoke-virtual {v4}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->getSelectedMillis()J

    move-result-wide v2

    .line 441
    .local v2, millis:J
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 443
    .local v0, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;>;"
    iget-object v4, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mTime:Landroid/text/format/Time;

    invoke-virtual {v4, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 444
    iget-object v4, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mTime:Landroid/text/format/Time;

    iget-wide v4, v4, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->getJulianDay(JJ)I

    move-result v1

    .line 446
    .local v1, julianDay:I
    invoke-direct {p0, v0, v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->arrangeEventList(Ljava/util/ArrayList;I)V

    .line 447
    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->setCurrentDayEvents(Ljava/util/ArrayList;)V

    .line 448
    return-void
.end method

.method setCurrentDayEvents(Ljava/util/ArrayList;)V
    .registers 29
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p1, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mMonthView:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;

    invoke-virtual {v2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->getSelectedDate()Landroid/text/format/Time;

    move-result-object v13

    .line 222
    .local v13, currentTime:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mDay:Landroid/widget/TextView;

    const-string v3, "dd "

    const/4 v6, 0x1

    invoke-virtual {v13, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    invoke-static {v3, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mWeekDay:Landroid/widget/TextView;

    const-string v3, "EEEE"

    const/4 v6, 0x1

    invoke-virtual {v13, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    invoke-static {v3, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    const/4 v14, 0x0

    .line 228
    .local v14, event:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;
    if-eqz p1, :cond_57

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_57

    .line 229
    const/16 v18, 0x0

    .local v18, i:I
    :goto_37
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_57

    .line 230
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #event:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;
    check-cast v14, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;

    .line 231
    .restart local v14       #event:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;
    iget-boolean v2, v14, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->allDay:Z

    if-nez v2, :cond_57

    iget-wide v2, v14, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->startMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-lez v2, :cond_82

    .line 237
    .end local v18           #i:I
    :cond_57
    if-nez v14, :cond_85

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mRoundContainer:Lcom/sec/android/widgetapp/TwCalendarAppWidget/RoundView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/RoundView;->setVisibility(I)V

    .line 239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mNoEvent:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mMore:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mEventContainer:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;

    new-instance v3, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme$1;-><init>(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;->setOnSingleTapUpListener(Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView$onSingleTapUpListener;)V

    .line 434
    :goto_81
    return-void

    .line 229
    .restart local v18       #i:I
    :cond_82
    add-int/lit8 v18, v18, 0x1

    goto :goto_37

    .line 261
    .end local v18           #i:I
    :cond_85
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mRoundContainer:Lcom/sec/android/widgetapp/TwCalendarAppWidget/RoundView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/RoundView;->setVisibility(I)V

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mNoEvent:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    move-object v11, v14

    .line 266
    .local v11, clickEvent:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mEventContainer:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;

    new-instance v3, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v11}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme$2;-><init>(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;->setOnSingleTapUpListener(Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView$onSingleTapUpListener;)V

    .line 281
    iget v12, v14, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->color:I

    .line 282
    .local v12, color:I
    if-nez v12, :cond_ac

    .line 283
    const v12, -0x222223

    .line 285
    :cond_ac
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mCalendar:Landroid/view/View;

    invoke-virtual {v2, v12}, Landroid/view/View;->setBackgroundColor(I)V

    .line 288
    iget-object v0, v14, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->title:Ljava/lang/CharSequence;

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/String;

    .line 289
    .local v24, titleString:Ljava/lang/String;
    if-eqz v24, :cond_c1

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_cc

    .line 290
    :cond_c1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mActivity:Landroid/app/Activity;

    const v3, 0x7f08001c

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 367
    :cond_cc
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mTitle:Landroid/widget/TextView;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-wide v4, v14, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->startMillis:J

    .line 371
    .local v4, start:J
    iget-boolean v10, v14, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->allDay:Z

    .line 372
    .local v10, allDay:Z
    iget-object v2, v14, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->facebook_scheudle_id:Ljava/lang/CharSequence;

    if-eqz v2, :cond_168

    const/16 v16, 0x1

    .line 373
    .local v16, facebook:Z
    :goto_df
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->getCalendarPreferenceNotificationMoment(Landroid/content/Context;)Z

    move-result v20

    .line 374
    .local v20, notificationMoment:Z
    if-eqz v10, :cond_16c

    .line 375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mWhen:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 394
    :goto_f2
    iget-object v0, v14, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->location:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/String;

    .line 395
    .local v19, locationString:Ljava/lang/String;
    if-eqz v19, :cond_1c8

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1c8

    .line 396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mLocation:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mLocation:Landroid/widget/TextView;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    :goto_111
    iget-boolean v2, v14, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->hasAlarm:Z

    if-eqz v2, :cond_1d2

    .line 405
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mAlarm:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 411
    :goto_11d
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 412
    .local v22, size:I
    const/4 v2, 0x1

    move/from16 v0, v22

    if-le v0, v2, :cond_1dd

    .line 413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mMore:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 414
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 415
    .local v17, format:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v6, v22, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 416
    .local v21, plusMore:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mMore:Landroid/widget/TextView;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mMore:Landroid/widget/TextView;

    new-instance v3, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme$3;-><init>(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_81

    .line 372
    .end local v16           #facebook:Z
    .end local v17           #format:Ljava/lang/String;
    .end local v19           #locationString:Ljava/lang/String;
    .end local v20           #notificationMoment:Z
    .end local v21           #plusMore:Ljava/lang/String;
    .end local v22           #size:I
    :cond_168
    const/16 v16, 0x0

    goto/16 :goto_df

    .line 377
    .restart local v16       #facebook:Z
    .restart local v20       #notificationMoment:Z
    :cond_16c
    if-eqz v16, :cond_197

    .line 378
    new-instance v23, Landroid/text/format/Time;

    invoke-direct/range {v23 .. v23}, Landroid/text/format/Time;-><init>()V

    .line 380
    .local v23, startTime:Landroid/text/format/Time;
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 381
    .local v25, tz:Ljava/lang/String;
    const-string v2, "UTC"

    move-object/from16 v0, v23

    iput-object v2, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 382
    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 383
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 384
    const/4 v2, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 385
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    .line 387
    .end local v23           #startTime:Landroid/text/format/Time;
    .end local v25           #tz:Ljava/lang/String;
    :cond_197
    iget-object v15, v14, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->timezone:Ljava/lang/CharSequence;

    check-cast v15, Ljava/lang/String;

    .line 388
    .local v15, eventTimezone:Ljava/lang/String;
    if-nez v20, :cond_1a5

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a5

    if-eqz v16, :cond_1c6

    :cond_1a5
    const/4 v9, 0x0

    .line 389
    .local v9, timezone:Ljava/lang/String;
    :goto_1a6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mWhen:Landroid/widget/TextView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x0

    const/4 v8, 0x0

    move-wide v6, v4

    invoke-static/range {v2 .. v9}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->formatDateTimeString(Landroid/content/Context;ZJJZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mWhen:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_f2

    .end local v9           #timezone:Ljava/lang/String;
    :cond_1c6
    move-object v9, v15

    .line 388
    goto :goto_1a6

    .line 399
    .end local v15           #eventTimezone:Ljava/lang/String;
    .restart local v19       #locationString:Ljava/lang/String;
    :cond_1c8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mLocation:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_111

    .line 407
    :cond_1d2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mAlarm:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_11d

    .line 431
    .restart local v22       #size:I
    :cond_1dd
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mMore:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_81
.end method

.method updateView()V
    .registers 5

    .prologue
    .line 532
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mActivity:Landroid/app/Activity;

    const-string v2, "preferences_first_day_of_week"

    const-string v3, "1"

    invoke-static {v1, v2, v3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->GetPreferenceFromCalendar(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mStartDay:I

    .line 534
    iget v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mStartDay:I

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v1, -0x1

    .line 535
    .local v0, diff:I
    invoke-direct {p0, v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->setWeekday(I)V

    .line 537
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    iput-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mTime:Landroid/text/format/Time;

    .line 538
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mTime:Landroid/text/format/Time;

    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 539
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mTime:Landroid/text/format/Time;

    invoke-direct {p0, v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->setTitle(Landroid/text/format/Time;)V

    .line 541
    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mMonthView:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;->queryDayView()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->setDayViewClassName(Ljava/lang/String;)V

    .line 542
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mMonthView:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;

    iget v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mStartDay:I

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->setStartDay(I)V

    .line 543
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mMonthView:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mTime:Landroid/text/format/Time;

    invoke-virtual {v1, v2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->setSelectedTime(Landroid/text/format/Time;)V

    .line 544
    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mMonthView:Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;

    invoke-virtual {v2, v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthView;->init(Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;)V

    .line 545
    return-void
.end method
