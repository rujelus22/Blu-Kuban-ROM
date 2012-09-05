.class public Lcom/android/calendar/SearchResult;
.super Landroid/app/Activity;
.source "SearchResult.java"


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static DEBUG:Z


# instance fields
.field private mAgendaListView:Lcom/android/calendar/AgendaListView;

.field private mProviderStatusObserver:Landroid/database/ContentObserver;

.field private searchStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/calendar/SearchResult;->DEBUG:Z

    .line 40
    const-string v0, "content://com.android.calendar/searchresult"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/SearchResult;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 155
    new-instance v0, Lcom/android/calendar/SearchResult$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/SearchResult$1;-><init>(Lcom/android/calendar/SearchResult;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/calendar/SearchResult;->mProviderStatusObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/SearchResult;)Lcom/android/calendar/AgendaListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/calendar/SearchResult;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    return-object v0
.end method

.method private registerProviderStatusObserver()V
    .registers 5

    .prologue
    .line 134
    const-string v0, "-------------------------"

    const-string v1, "--------------registerProviderStatusObserver()-----------------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {p0}, Lcom/android/calendar/SearchResult;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$ProviderStatus;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/calendar/SearchResult;->mProviderStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 137
    return-void
.end method

.method private startEventInfo(Landroid/content/Intent;)V
    .registers 17
    .parameter "intent"

    .prologue
    .line 90
    new-instance v13, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 92
    .local v13, it:Landroid/content/Intent;
    const-wide/16 v9, 0x0

    .line 93
    .local v9, dtstart:J
    const-wide/16 v7, 0x0

    .line 94
    .local v7, dtend:J
    const/4 v11, 0x0

    .line 95
    .local v11, duration:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/calendar/SearchResult;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "dtstart"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "dtend"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "duration"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 98
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_4b

    .line 99
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 100
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 101
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 102
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 104
    :cond_48
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 107
    :cond_4b
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-nez v0, :cond_5f

    .line 108
    if-eqz v11, :cond_75

    .line 109
    new-instance v14, Lcom/android/calendar/vcal/pim/vcalendar/Duration;

    invoke-direct {v14}, Lcom/android/calendar/vcal/pim/vcalendar/Duration;-><init>()V

    .line 111
    .local v14, parser:Lcom/android/calendar/vcal/pim/vcalendar/Duration;
    :try_start_58
    invoke-virtual {v14, v11}, Lcom/android/calendar/vcal/pim/vcalendar/Duration;->parse(Ljava/lang/String;)V
    :try_end_5b
    .catch Lcom/android/calendar/vcal/pim/vcalendar/DateException; {:try_start_58 .. :try_end_5b} :catch_70

    .line 115
    :goto_5b
    invoke-virtual {v14, v9, v10}, Lcom/android/calendar/vcal/pim/vcalendar/Duration;->addTo(J)J

    move-result-wide v7

    .line 121
    .end local v14           #parser:Lcom/android/calendar/vcal/pim/vcalendar/Duration;
    :cond_5f
    :goto_5f
    const-string v0, "beginTime"

    invoke-virtual {v13, v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 122
    const-string v0, "endTime"

    invoke-virtual {v13, v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 123
    invoke-virtual {p0, v13}, Lcom/android/calendar/SearchResult;->startActivity(Landroid/content/Intent;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/calendar/SearchResult;->finish()V

    .line 125
    return-void

    .line 112
    .restart local v14       #parser:Lcom/android/calendar/vcal/pim/vcalendar/Duration;
    :catch_70
    move-exception v12

    .line 113
    .local v12, e:Lcom/android/calendar/vcal/pim/vcalendar/DateException;
    invoke-virtual {v12}, Lcom/android/calendar/vcal/pim/vcalendar/DateException;->printStackTrace()V

    goto :goto_5b

    .line 117
    .end local v12           #e:Lcom/android/calendar/vcal/pim/vcalendar/DateException;
    .end local v14           #parser:Lcom/android/calendar/vcal/pim/vcalendar/Duration;
    :cond_75
    move-wide v7, v9

    goto :goto_5f
.end method

.method private unregisterProviderStatusObserver()V
    .registers 3

    .prologue
    .line 147
    const-string v0, "-------------------------"

    const-string v1, "--------------unregisterProviderStatusObserver()-----------------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {p0}, Lcom/android/calendar/SearchResult;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/SearchResult;->mProviderStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 149
    return-void
.end method


# virtual methods
.method public getSearchString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/calendar/SearchResult;->searchStr:Ljava/lang/String;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "icicle"

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    const-wide/32 v2, 0x400000

    invoke-virtual {v1, v2, v3}, Ldalvik/system/VMRuntime;->setMinimumHeapSize(J)J

    .line 57
    const v1, 0x7f0a0091

    invoke-virtual {p0, v1}, Lcom/android/calendar/SearchResult;->setTitle(I)V

    .line 58
    const v1, 0x7f03002d

    invoke-virtual {p0, v1}, Lcom/android/calendar/SearchResult;->setContentView(I)V

    .line 60
    if-nez p1, :cond_2e

    .line 62
    invoke-virtual {p0}, Lcom/android/calendar/SearchResult;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 63
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 64
    invoke-direct {p0, v0}, Lcom/android/calendar/SearchResult;->startEventInfo(Landroid/content/Intent;)V

    .line 69
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2e
    :goto_2e
    const v1, 0x7f0f0009

    invoke-virtual {p0, v1}, Lcom/android/calendar/SearchResult;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/AgendaListView;

    iput-object v1, p0, Lcom/android/calendar/SearchResult;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    .line 70
    iget-object v1, p0, Lcom/android/calendar/SearchResult;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    iget-object v2, p0, Lcom/android/calendar/SearchResult;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    iget-object v2, v2, Lcom/android/calendar/AgendaListView;->mWindowAdapter:Lcom/android/calendar/AgendaWindowAdapter;

    invoke-virtual {v1, v2}, Lcom/android/calendar/AgendaListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 72
    return-void

    .line 65
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_43
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SEARCH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 66
    const-string v1, "query"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/SearchResult;->searchStr:Ljava/lang/String;

    goto :goto_2e
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 5
    .parameter "newIntent"

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 80
    move-object v0, p1

    .line 81
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 82
    invoke-direct {p0, v0}, Lcom/android/calendar/SearchResult;->startEventInfo(Landroid/content/Intent;)V

    .line 86
    :cond_13
    :goto_13
    return-void

    .line 83
    :cond_14
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SEARCH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 84
    const-string v1, "query"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/SearchResult;->searchStr:Ljava/lang/String;

    goto :goto_13
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 170
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 171
    invoke-direct {p0}, Lcom/android/calendar/SearchResult;->unregisterProviderStatusObserver()V

    .line 172
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 194
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 195
    const-string v0, "searchStr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/SearchResult;->searchStr:Ljava/lang/String;

    .line 196
    return-void
.end method

.method protected onResume()V
    .registers 6

    .prologue
    .line 176
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 179
    invoke-direct {p0}, Lcom/android/calendar/SearchResult;->registerProviderStatusObserver()V

    .line 180
    iget-object v2, p0, Lcom/android/calendar/SearchResult;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v2}, Lcom/android/calendar/AgendaListView;->onResume()V

    .line 183
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 184
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v2, "preferences_hide_declined"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 186
    .local v0, hideDeclined:Z
    iget-object v2, p0, Lcom/android/calendar/SearchResult;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    invoke-virtual {v2, v0}, Lcom/android/calendar/AgendaListView;->setHideDeclinedEvents(Z)V

    .line 187
    iget-object v2, p0, Lcom/android/calendar/SearchResult;->mAgendaListView:Lcom/android/calendar/AgendaListView;

    new-instance v3, Landroid/text/format/Time;

    const/4 v4, 0x0

    invoke-static {p0, v4}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/calendar/AgendaListView;->goTo(Landroid/text/format/Time;Z)V

    .line 190
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 200
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 201
    const-string v0, "searchStr"

    iget-object v1, p0, Lcom/android/calendar/SearchResult;->searchStr:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void
.end method
