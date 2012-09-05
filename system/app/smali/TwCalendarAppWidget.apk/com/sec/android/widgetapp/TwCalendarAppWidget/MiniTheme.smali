.class public Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;
.super Ljava/lang/Object;
.source "MiniTheme.java"

# interfaces
.implements Lcom/sec/android/widgetapp/TwCalendarAppWidget/WidgetTheme;


# static fields
.field static final EVENT_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCalendar:Landroid/view/View;

.field private mContainer:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;

.field mEventLoader:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;

.field private mLocation:Landroid/widget/TextView;

.field private mMore:Landroid/widget/TextView;

.field private mNoEvent:Landroid/widget/TextView;

.field private mRoundContainer:Lcom/sec/android/widgetapp/TwCalendarAppWidget/RoundView;

.field private mTitle:Landroid/widget/TextView;

.field private mToday:Landroid/widget/TextView;

.field private mWhen:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 52
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "begin"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "end"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "calendar_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "event_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "facebook_schedule_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->EVENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 99
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->mActivity:Landroid/app/Activity;

    .line 102
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->init(Landroid/app/Activity;)V

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;)Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->mContainer:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;Ljava/util/ArrayList;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->updateView(Ljava/util/ArrayList;)V

    return-void
.end method

.method private init(Landroid/app/Activity;)V
    .registers 8
    .parameter "activity"

    .prologue
    const/high16 v5, 0x4110

    const/high16 v4, 0x40c0

    .line 106
    const v0, 0x7f030003

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 108
    const v0, 0x7f0b0014

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->mContainer:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;

    .line 110
    const v0, 0x7f0b0002

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->mToday:Landroid/widget/TextView;

    .line 111
    const v0, 0x7f0b000e

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->mTitle:Landroid/widget/TextView;

    .line 112
    const v0, 0x7f0b000f

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->mWhen:Landroid/widget/TextView;

    .line 113
    const v0, 0x7f0b0012

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->mLocation:Landroid/widget/TextView;

    .line 114
    const v0, 0x7f0b0015

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->mMore:Landroid/widget/TextView;

    .line 115
    const v0, 0x7f0b0009

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->mCalendar:Landroid/view/View;

    .line 116
    const v0, 0x7f0b0006

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->mNoEvent:Landroid/widget/TextView;

    .line 117
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->mNoEvent:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    const v0, 0x7f0b0016

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/RoundView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->mRoundContainer:Lcom/sec/android/widgetapp/TwCalendarAppWidget/RoundView;

    .line 119
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_bd

    .line 120
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->mRoundContainer:Lcom/sec/android/widgetapp/TwCalendarAppWidget/RoundView;

    invoke-virtual {v0, v5, v5}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/RoundView;->setRound(FF)V

    .line 125
    :goto_b5
    new-instance v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;

    invoke-direct {v0, p1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->mEventLoader:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;

    .line 126
    return-void

    .line 122
    :cond_bd
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->mRoundContainer:Lcom/sec/android/widgetapp/TwCalendarAppWidget/RoundView;

    invoke-virtual {v0, v4, v4}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/RoundView;->setRound(FF)V

    goto :goto_b5
.end method

.method private updateView(Ljava/util/ArrayList;)V
    .registers 32
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
    .line 140
    .local p1, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;>;"
    new-instance v26, Landroid/text/format/Time;

    invoke-direct/range {v26 .. v26}, Landroid/text/format/Time;-><init>()V

    .line 141
    .local v26, time:Landroid/text/format/Time;
    invoke-virtual/range {v26 .. v26}, Landroid/text/format/Time;->setToNow()V

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "date_format"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 147
    .local v13, dateFormat:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080022

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 148
    .local v19, format:Ljava/lang/String;
    if-eqz v13, :cond_3e

    .line 149
    const-string v2, "MM-dd-yyyy"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 164
    :cond_3e
    :goto_3e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, v19

    invoke-static {v0, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 167
    .local v14, dateViewText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->mToday:Landroid/widget/TextView;

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    const v18, 0x10016

    .line 171
    .local v18, flags:I
    const/4 v15, 0x0

    .line 172
    .local v15, event:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;
    if-eqz p1, :cond_7f

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_7f

    .line 173
    const/16 v20, 0x0

    .local v20, i:I
    :goto_5f
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v20

    if-ge v0, v2, :cond_7f

    .line 174
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #event:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;
    check-cast v15, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;

    .line 175
    .restart local v15       #event:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;
    iget-boolean v2, v15, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->allDay:Z

    if-nez v2, :cond_7f

    iget-wide v2, v15, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->startMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-lez v2, :cond_c4

    .line 181
    .end local v20           #i:I
    :cond_7f
    move-object v11, v15

    .line 183
    .local v11, clickEvent:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->mContainer:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;

    new-instance v3, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v11}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme$1;-><init>(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;->setOnSingleTapUpListener(Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView$onSingleTapUpListener;)V

    .line 203
    if-nez v15, :cond_c7

    .line 204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->mNoEvent:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->mRoundContainer:Lcom/sec/android/widgetapp/TwCalendarAppWidget/RoundView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/RoundView;->setVisibility(I)V

    .line 206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->mMore:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 368
    :goto_aa
    return-void

    .line 151
    .end local v11           #clickEvent:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;
    .end local v14           #dateViewText:Ljava/lang/String;
    .end local v15           #event:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;
    .end local v18           #flags:I
    :cond_ab
    const-string v2, "yyyy-MM-dd"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_3e

    .line 173
    .restart local v14       #dateViewText:Ljava/lang/String;
    .restart local v15       #event:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;
    .restart local v18       #flags:I
    .restart local v20       #i:I
    :cond_c4
    add-int/lit8 v20, v20, 0x1

    goto :goto_5f

    .line 213
    .end local v20           #i:I
    .restart local v11       #clickEvent:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;
    :cond_c7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->mNoEvent:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->mRoundContainer:Lcom/sec/android/widgetapp/TwCalendarAppWidget/RoundView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/RoundView;->setVisibility(I)V

    .line 215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->mMore:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->mMore:Landroid/widget/TextView;

    new-instance v3, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme$2;-><init>(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget v12, v15, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->color:I

    .line 238
    .local v12, color:I
    if-nez v12, :cond_f5

    .line 239
    const v12, -0x222223

    .line 241
    :cond_f5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->mCalendar:Landroid/view/View;

    invoke-virtual {v2, v12}, Landroid/view/View;->setBackgroundColor(I)V

    .line 244
    iget-object v0, v15, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->title:Ljava/lang/CharSequence;

    move-object/from16 v27, v0

    check-cast v27, Ljava/lang/String;

    .line 245
    .local v27, titleString:Ljava/lang/String;
    if-eqz v27, :cond_10a

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_115

    .line 246
    :cond_10a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->mActivity:Landroid/app/Activity;

    const v3, 0x7f08001c

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 324
    :cond_115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->mTitle:Landroid/widget/TextView;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-wide v4, v15, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->startMillis:J

    .line 328
    .local v4, start:J
    iget-boolean v10, v15, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->allDay:Z

    .line 329
    .local v10, allDay:Z
    iget-object v2, v15, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->facebook_scheudle_id:Ljava/lang/CharSequence;

    if-eqz v2, :cond_18f

    const/16 v17, 0x1

    .line 330
    .local v17, facebook:Z
    :goto_128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->getCalendarPreferenceNotificationMoment(Landroid/content/Context;)Z

    move-result v22

    .line 331
    .local v22, notificationMoment:Z
    if-eqz v10, :cond_192

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->mWhen:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 351
    :goto_13b
    iget-object v0, v15, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->location:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/String;

    .line 352
    .local v21, locationString:Ljava/lang/String;
    if-eqz v21, :cond_1f1

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1f1

    .line 353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->mLocation:Landroid/widget/TextView;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    :cond_152
    :goto_152
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 360
    .local v24, size:I
    const/4 v2, 0x1

    move/from16 v0, v24

    if-le v0, v2, :cond_204

    .line 361
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->mMore:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 363
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v6, v24, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    move-object/from16 v0, v19

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    .line 364
    .local v23, plusMore:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->mMore:Landroid/widget/TextView;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_aa

    .line 329
    .end local v17           #facebook:Z
    .end local v21           #locationString:Ljava/lang/String;
    .end local v22           #notificationMoment:Z
    .end local v23           #plusMore:Ljava/lang/String;
    .end local v24           #size:I
    :cond_18f
    const/16 v17, 0x0

    goto :goto_128

    .line 334
    .restart local v17       #facebook:Z
    .restart local v22       #notificationMoment:Z
    :cond_192
    if-eqz v17, :cond_1bd

    .line 335
    new-instance v25, Landroid/text/format/Time;

    invoke-direct/range {v25 .. v25}, Landroid/text/format/Time;-><init>()V

    .line 337
    .local v25, startTime:Landroid/text/format/Time;
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 338
    .local v28, tz:Ljava/lang/String;
    const-string v2, "UTC"

    move-object/from16 v0, v25

    iput-object v2, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 339
    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 340
    move-object/from16 v0, v28

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 341
    const/4 v2, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 342
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    .line 344
    .end local v25           #startTime:Landroid/text/format/Time;
    .end local v28           #tz:Ljava/lang/String;
    :cond_1bd
    iget-object v0, v15, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;->timezone:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;

    .line 345
    .local v16, eventTimezone:Ljava/lang/String;
    if-nez v22, :cond_1cd

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1cd

    if-eqz v17, :cond_1ee

    :cond_1cd
    const/4 v9, 0x0

    .line 346
    .local v9, timezone:Ljava/lang/String;
    :goto_1ce
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->mWhen:Landroid/widget/TextView;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x0

    const/4 v8, 0x0

    move-wide v6, v4

    invoke-static/range {v2 .. v9}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->formatDateTimeString(Landroid/content/Context;ZJJZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->mWhen:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_13b

    .end local v9           #timezone:Ljava/lang/String;
    :cond_1ee
    move-object/from16 v9, v16

    .line 345
    goto :goto_1ce

    .line 354
    .end local v16           #eventTimezone:Ljava/lang/String;
    .restart local v21       #locationString:Ljava/lang/String;
    :cond_1f1
    if-eqz v21, :cond_1f9

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_152

    .line 355
    :cond_1f9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->mLocation:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_152

    .line 366
    .restart local v24       #size:I
    :cond_204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->mMore:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_aa
.end method


# virtual methods
.method public onDestroy()V
    .registers 1

    .prologue
    .line 406
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->mEventLoader:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;->stopBackgroundThread()V

    .line 130
    return-void
.end method

.method public onRefresh()V
    .registers 1

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->reloadCurrentDayEvents()V

    .line 374
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->mEventLoader:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;->startBackgroundThread()V

    .line 134
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->reloadCurrentDayEvents()V

    .line 135
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 410
    const/4 v0, 0x0

    return v0
.end method

.method public reloadCurrentDayEvents()V
    .registers 14

    .prologue
    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 378
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 379
    .local v4, time:Landroid/text/format/Time;
    invoke-virtual {v4}, Landroid/text/format/Time;->setToNow()V

    .line 380
    iput v0, v4, Landroid/text/format/Time;->hour:I

    .line 381
    iput v0, v4, Landroid/text/format/Time;->minute:I

    .line 382
    iput v0, v4, Landroid/text/format/Time;->second:I

    .line 383
    invoke-virtual {v4, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    .line 386
    .local v2, millis:J
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .local v5, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/Event;>;"
    iget-object v6, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;->mEventLoader:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;

    new-instance v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme$3;-><init>(Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;JLandroid/text/format/Time;Ljava/util/ArrayList;)V

    const/4 v12, 0x0

    move-object v8, v5

    move-wide v9, v2

    move-object v11, v0

    invoke-virtual/range {v6 .. v12}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;->loadEventsInBackground(ILjava/util/ArrayList;JLjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 401
    return-void
.end method
