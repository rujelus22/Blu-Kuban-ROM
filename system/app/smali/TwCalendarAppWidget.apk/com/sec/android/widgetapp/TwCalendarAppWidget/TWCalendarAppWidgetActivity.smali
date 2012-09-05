.class public Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;
.super Landroid/app/Activity;
.source "TWCalendarAppWidgetActivity.java"

# interfaces
.implements Lcom/sec/android/touchwiz/appwidget/IWidgetObserver;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mObserver:Landroid/database/ContentObserver;

.field private mTheme:Lcom/sec/android/widgetapp/TwCalendarAppWidget/WidgetTheme;

.field private mThemeName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    const-string v0, "TWCalendarAppWidgetActivity"

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;->TAG:Ljava/lang/String;

    .line 77
    new-instance v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity$1;-><init>(Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 90
    new-instance v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity$2;-><init>(Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;->mObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;)Lcom/sec/android/widgetapp/TwCalendarAppWidget/WidgetTheme;
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;->mTheme:Lcom/sec/android/widgetapp/TwCalendarAppWidget/WidgetTheme;

    return-object v0
.end method

.method private setTheme()V
    .registers 3

    .prologue
    .line 125
    const-string v0, "Agenda"

    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;->mThemeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 126
    new-instance v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/AgendaTheme;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;->mTheme:Lcom/sec/android/widgetapp/TwCalendarAppWidget/WidgetTheme;

    .line 133
    :goto_11
    return-void

    .line 127
    :cond_12
    const-string v0, "Mini"

    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;->mThemeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 128
    new-instance v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MiniTheme;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;->mTheme:Lcom/sec/android/widgetapp/TwCalendarAppWidget/WidgetTheme;

    goto :goto_11

    .line 130
    :cond_24
    new-instance v0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/MonthTheme;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;->mTheme:Lcom/sec/android/widgetapp/TwCalendarAppWidget/WidgetTheme;

    goto :goto_11
.end method


# virtual methods
.method public fireOnPause()V
    .registers 1

    .prologue
    .line 171
    return-void
.end method

.method public fireOnResume()V
    .registers 1

    .prologue
    .line 176
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "newConfig"

    .prologue
    .line 163
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 165
    invoke-direct {p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;->setTheme()V

    .line 166
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;->mTheme:Lcom/sec/android/widgetapp/TwCalendarAppWidget/WidgetTheme;

    invoke-interface {v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/WidgetTheme;->onResume()V

    .line 167
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 110
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 111
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.samsung.sec.android.SAMSUNG_WIDGET.themename"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;->mThemeName:Ljava/lang/String;

    .line 120
    invoke-direct {p0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;->setTheme()V

    .line 122
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;->mTheme:Lcom/sec/android/widgetapp/TwCalendarAppWidget/WidgetTheme;

    invoke-interface {v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/WidgetTheme;->onDestroy()V

    .line 182
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 183
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 153
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 154
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;->mTheme:Lcom/sec/android/widgetapp/TwCalendarAppWidget/WidgetTheme;

    invoke-interface {v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/WidgetTheme;->onPause()V

    .line 156
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 158
    return-void
.end method

.method protected onResume()V
    .registers 6

    .prologue
    .line 137
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 138
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;->mTheme:Lcom/sec/android/widgetapp/TwCalendarAppWidget/WidgetTheme;

    invoke-interface {v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/WidgetTheme;->onResume()V

    .line 140
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 141
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 149
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;->mTheme:Lcom/sec/android/widgetapp/TwCalendarAppWidget/WidgetTheme;

    invoke-interface {v0, p1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/WidgetTheme;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 189
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 191
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x1

    goto :goto_c
.end method

.method public queryDayView()Ljava/lang/String;
    .registers 3

    .prologue
    .line 202
    const-string v0, "preferences_day_view"

    const-string v1, "2"

    invoke-static {p0, v0, v1}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/Utils;->GetPreferenceFromCalendar(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 203
    const-string v0, "com.android.calendar.DayActivity"

    .line 205
    :goto_12
    return-object v0

    :cond_13
    const-string v0, "com.android.calendar.DayEventListActivity"

    goto :goto_12
.end method

.method public reloadCurrentDayEvents()V
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sec/android/widgetapp/TwCalendarAppWidget/TWCalendarAppWidgetActivity;->mTheme:Lcom/sec/android/widgetapp/TwCalendarAppWidget/WidgetTheme;

    invoke-interface {v0}, Lcom/sec/android/widgetapp/TwCalendarAppWidget/WidgetTheme;->reloadCurrentDayEvents()V

    .line 196
    return-void
.end method
