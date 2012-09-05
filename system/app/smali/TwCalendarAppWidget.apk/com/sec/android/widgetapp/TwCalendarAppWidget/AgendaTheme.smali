.class public Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;
.super Ljava/lang/Object;
.source "AgendaTheme.java"

# interfaces
.implements Lcom/sec/android/widgetapp/TwCalendarAppWidget/WidgetTheme;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAgendaListView:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;

.field private mEventLoader:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;

.field private mMain:Landroid/widget/LinearLayout;

.field private mNoEvent:Landroid/widget/TextView;

.field private mNoEventView:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;

.field private mTime:Landroid/text/format/Time;

.field private mTodayView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;->mActivity:Landroid/app/Activity;

    .line 45
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;->init(Landroid/app/Activity;)V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private init(Landroid/app/Activity;)V
    .registers 8
    .parameter "activity"

    .prologue
    const v5, 0x7f0b0005

    const v4, 0x7f0b0001

    const/4 v3, 0x0

    .line 50
    const v0, 0x7f030001

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 51
    const v0, 0x7f0b0003

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;->mMain:Landroid/widget/LinearLayout;

    .line 52
    const v0, 0x7f0b0007

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;->mAgendaListView:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;

    .line 53
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;->mAgendaListView:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;->mAgendaListView:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;

    iget-object v1, v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->mWindowAdapter:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 54
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;->mAgendaListView:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;

    invoke-virtual {p1, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->setView(Landroid/view/View;Landroid/widget/TextView;)V

    .line 55
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;->mAgendaListView:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;

    invoke-virtual {v0, v3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->setFocusable(Z)V

    .line 56
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;->mAgendaListView:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;

    invoke-virtual {v0, v3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->setFocusableInTouchMode(Z)V

    .line 57
    invoke-virtual {p1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;->mTodayView:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;->mTodayView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 59
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;->mTodayView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 60
    invoke-virtual {p1, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;->mNoEventView:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;

    .line 61
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;->mNoEventView:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;

    const v1, 0x7f02000c

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;->setPressedImage(I)V

    .line 62
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;->mNoEventView:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;

    new-instance v1, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme$1;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme$1;-><init>(Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;->setOnSingleTapUpListener(Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView$onSingleTapUpListener;)V

    .line 68
    const v0, 0x7f0b0006

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;->mNoEvent:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;->mNoEvent:Landroid/widget/TextView;

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

    .line 71
    new-instance v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;

    invoke-direct {v0, p1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;->mEventLoader:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;

    .line 72
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;->mAgendaListView:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;->mEventLoader:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->setEventLoader(Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;)V

    .line 73
    return-void
.end method

.method private setEventList()V
    .registers 6

    .prologue
    .line 85
    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->getCalendarPreferenceHideDeclined(Landroid/content/Context;)Z

    move-result v0

    .line 86
    .local v0, hideDeclined:Z
    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->getCalendarPreferenceNotificationMoment(Landroid/content/Context;)Z

    move-result v1

    .line 88
    .local v1, notificationMoment:Z
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    iput-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;->mTime:Landroid/text/format/Time;

    .line 89
    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;->mTime:Landroid/text/format/Time;

    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 92
    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;->mAgendaListView:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;

    invoke-virtual {v2, v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->setHideDeclinedEvents(Z)V

    .line 93
    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;->mAgendaListView:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;

    invoke-virtual {v2, v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->setNotificationMoment(Z)V

    .line 94
    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;->mAgendaListView:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;

    iget-object v3, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;->mTime:Landroid/text/format/Time;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->goTo(Landroid/text/format/Time;Z)V

    .line 95
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;->mAgendaListView:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;

    iget-object v0, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->mWindowAdapter:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->close()V

    .line 127
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;->mEventLoader:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;->stopBackgroundThread()V

    .line 76
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;->mAgendaListView:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;

    iget-object v0, v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaListView;->mWindowAdapter:Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaWindowAdapter;->stopImageLoaderThread()V

    .line 77
    return-void
.end method

.method public onRefresh()V
    .registers 1

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;->setEventList()V

    .line 99
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;->mEventLoader:Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/eventLoader/EventLoader;->startBackgroundThread()V

    .line 81
    invoke-direct {p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;->setEventList()V

    .line 82
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public reloadCurrentDayEvents()V
    .registers 6

    .prologue
    .line 102
    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;->mNoEventView:Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/ContainerView;->setVisibility(I)V

    .line 103
    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "date_format"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, dateFormat:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080022

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, format:Ljava/lang/String;
    if-eqz v0, :cond_36

    .line 106
    const-string v2, "MM-dd-yyyy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 107
    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 119
    :cond_36
    :goto_36
    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;->mTodayView:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    return-void

    .line 108
    :cond_44
    const-string v2, "yyyy-MM-dd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 109
    iget-object v2, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_36
.end method
