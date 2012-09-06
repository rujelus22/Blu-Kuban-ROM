.class public Lcom/android/calendar/SearchActivity;
.super Landroid/app/Activity;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Lcom/android/calendar/CalendarController$EventHandler;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mIsMultipane:Z


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mController:Lcom/android/calendar/CalendarController;

.field private mCurrentEventId:J

.field private mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

.field private mEventInfoFragment:Lcom/android/calendar/EventInfoFragment;

.field private mObserver:Landroid/database/ContentObserver;

.field private mQuery:Ljava/lang/String;

.field private mSearchView:Landroid/widget/SearchView;

.field private mShowEventDetailsWithAgenda:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    const-class v0, Lcom/android/calendar/SearchActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/SearchActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/calendar/SearchActivity;->mCurrentEventId:J

    .line 79
    new-instance v0, Lcom/android/calendar/SearchActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/SearchActivity$1;-><init>(Lcom/android/calendar/SearchActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/calendar/SearchActivity;->mObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private deleteEvent(JJJ)V
    .registers 17
    .parameter "eventId"
    .parameter "startMillis"
    .parameter "endMillis"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

    const/4 v7, -0x1

    move-wide v1, p3

    move-wide v3, p5

    move-wide v5, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/DeleteEventHelper;->delete(JJJI)V

    .line 219
    sget-boolean v0, Lcom/android/calendar/SearchActivity;->mIsMultipane:Z

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mEventInfoFragment:Lcom/android/calendar/EventInfoFragment;

    if-eqz v0, :cond_3a

    iget-wide v0, p0, Lcom/android/calendar/SearchActivity;->mCurrentEventId:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_3a

    .line 221
    invoke-virtual {p0}, Lcom/android/calendar/SearchActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    .line 222
    .local v8, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v8}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v9

    .line 223
    .local v9, ft:Landroid/app/FragmentTransaction;
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mEventInfoFragment:Lcom/android/calendar/EventInfoFragment;

    invoke-virtual {v9, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 224
    invoke-virtual {v9}, Landroid/app/FragmentTransaction;->commit()I

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/SearchActivity;->mEventInfoFragment:Lcom/android/calendar/EventInfoFragment;

    .line 226
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mController:Lcom/android/calendar/CalendarController;

    const v1, 0x7f100010

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarController;->deregisterEventHandler(Ljava/lang/Integer;)V

    .line 227
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/calendar/SearchActivity;->mCurrentEventId:J

    .line 229
    .end local v8           #fragmentManager:Landroid/app/FragmentManager;
    .end local v9           #ft:Landroid/app/FragmentTransaction;
    :cond_3a
    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .registers 5
    .parameter "intent"

    .prologue
    .line 280
    const-string v1, "android.intent.action.SEARCH"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 281
    const-string v1, "query"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, query:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/calendar/SearchActivity;->search(Ljava/lang/String;Landroid/text/format/Time;)V

    .line 284
    .end local v0           #query:Ljava/lang/String;
    :cond_16
    return-void
.end method

.method private initFragments(JLjava/lang/String;)V
    .registers 10
    .parameter "timeMillis"
    .parameter "query"

    .prologue
    const v5, 0x7f10009f

    .line 156
    invoke-virtual {p0}, Lcom/android/calendar/SearchActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 157
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 159
    .local v1, ft:Landroid/app/FragmentTransaction;
    new-instance v2, Lcom/android/calendar/agenda/AgendaFragment;

    const/4 v4, 0x1

    invoke-direct {v2, p1, p2, v4}, Lcom/android/calendar/agenda/AgendaFragment;-><init>(JZ)V

    .line 160
    .local v2, searchResultsFragment:Lcom/android/calendar/agenda/AgendaFragment;
    invoke-virtual {v1, v5, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 161
    iget-object v4, p0, Lcom/android/calendar/SearchActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v4, v5, v2}, Lcom/android/calendar/CalendarController;->registerEventHandler(ILcom/android/calendar/CalendarController$EventHandler;)V

    .line 163
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 164
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 165
    .local v3, t:Landroid/text/format/Time;
    invoke-virtual {v3, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 166
    invoke-direct {p0, p3, v3}, Lcom/android/calendar/SearchActivity;->search(Ljava/lang/String;Landroid/text/format/Time;)V

    .line 167
    return-void
.end method

.method private search(Ljava/lang/String;Landroid/text/format/Time;)V
    .registers 8
    .parameter "searchQuery"
    .parameter "goToTime"

    .prologue
    const/4 v4, 0x1

    .line 196
    new-instance v1, Landroid/provider/SearchRecentSuggestions;

    invoke-static {p0}, Lcom/android/calendar/Utils;->getSearchAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v4}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 199
    .local v1, suggestions:Landroid/provider/SearchRecentSuggestions;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    new-instance v0, Lcom/android/calendar/CalendarController$EventInfo;

    invoke-direct {v0}, Lcom/android/calendar/CalendarController$EventInfo;-><init>()V

    .line 203
    .local v0, searchEventInfo:Lcom/android/calendar/CalendarController$EventInfo;
    const-wide/16 v2, 0x100

    iput-wide v2, v0, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    .line 204
    iput-object p1, v0, Lcom/android/calendar/CalendarController$EventInfo;->query:Ljava/lang/String;

    .line 205
    iput v4, v0, Lcom/android/calendar/CalendarController$EventInfo;->viewType:I

    .line 206
    if-eqz p2, :cond_1f

    .line 207
    iput-object p2, v0, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    .line 209
    :cond_1f
    iget-object v2, p0, Lcom/android/calendar/SearchActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v2, p0, v0}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;Lcom/android/calendar/CalendarController$EventInfo;)V

    .line 210
    iput-object p1, p0, Lcom/android/calendar/SearchActivity;->mQuery:Ljava/lang/String;

    .line 211
    iget-object v2, p0, Lcom/android/calendar/SearchActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v2, :cond_37

    .line 212
    iget-object v2, p0, Lcom/android/calendar/SearchActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v3, p0, Lcom/android/calendar/SearchActivity;->mQuery:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 213
    iget-object v2, p0, Lcom/android/calendar/SearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->clearFocus()V

    .line 215
    :cond_37
    return-void
.end method

.method private showEventInfo(Lcom/android/calendar/CalendarController$EventInfo;)V
    .registers 14
    .parameter

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/calendar/SearchActivity;->mShowEventDetailsWithAgenda:Z

    if-eqz v0, :cond_43

    .line 171
    invoke-virtual {p0}, Lcom/android/calendar/SearchActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v11

    .line 174
    new-instance v0, Lcom/android/calendar/EventInfoFragment;

    iget-wide v2, p1, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    iget-object v1, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    iget-object v1, p1, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    iget-wide v8, p1, Lcom/android/calendar/CalendarController$EventInfo;->extraLong:J

    long-to-int v8, v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/calendar/EventInfoFragment;-><init>(Landroid/content/Context;JJJIZI)V

    iput-object v0, p0, Lcom/android/calendar/SearchActivity;->mEventInfoFragment:Lcom/android/calendar/EventInfoFragment;

    .line 177
    const v0, 0x7f100010

    iget-object v1, p0, Lcom/android/calendar/SearchActivity;->mEventInfoFragment:Lcom/android/calendar/EventInfoFragment;

    invoke-virtual {v11, v0, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 178
    invoke-virtual {v11}, Landroid/app/FragmentTransaction;->commit()I

    .line 179
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mController:Lcom/android/calendar/CalendarController;

    const v1, 0x7f100010

    iget-object v2, p0, Lcom/android/calendar/SearchActivity;->mEventInfoFragment:Lcom/android/calendar/EventInfoFragment;

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/CalendarController;->registerEventHandler(ILcom/android/calendar/CalendarController$EventHandler;)V

    .line 191
    :goto_3e
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    iput-wide v0, p0, Lcom/android/calendar/SearchActivity;->mCurrentEventId:J

    .line 192
    return-void

    .line 181
    :cond_43
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p1, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 183
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 184
    const-class v0, Lcom/android/calendar/EventInfoActivity;

    invoke-virtual {v2, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 185
    const-string v3, "beginTime"

    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    if-eqz v0, :cond_7e

    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    :goto_67
    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 187
    const-string v3, "endTime"

    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    if-eqz v0, :cond_81

    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    :goto_77
    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 189
    invoke-virtual {p0, v2}, Lcom/android/calendar/SearchActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3e

    .line 185
    :cond_7e
    const-wide/16 v0, -0x1

    goto :goto_67

    .line 187
    :cond_81
    const-wide/16 v0, -0x1

    goto :goto_77
.end method


# virtual methods
.method public eventsChanged()V
    .registers 10

    .prologue
    const/4 v4, 0x0

    .line 309
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x80

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 310
    return-void
.end method

.method public getSupportedEventTypes()J
    .registers 3

    .prologue
    .line 314
    const-wide/16 v0, 0x12

    return-wide v0
.end method

.method public handleEvent(Lcom/android/calendar/CalendarController$EventInfo;)V
    .registers 9
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 319
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    if-nez v0, :cond_13

    const-wide/16 v5, -0x1

    .line 320
    .local v5, endTime:J
    :goto_7
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    .line 321
    invoke-direct {p0, p1}, Lcom/android/calendar/SearchActivity;->showEventInfo(Lcom/android/calendar/CalendarController$EventInfo;)V

    .line 325
    :cond_12
    :goto_12
    return-void

    .line 319
    .end local v5           #endTime:J
    :cond_13
    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->endTime:Landroid/text/format/Time;

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    goto :goto_7

    .line 322
    .restart local v5       #endTime:J
    :cond_1a
    iget-wide v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->eventType:J

    const-wide/16 v2, 0x10

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    .line 323
    iget-wide v1, p1, Lcom/android/calendar/CalendarController$EventInfo;->id:J

    iget-object v0, p1, Lcom/android/calendar/CalendarController$EventInfo;->startTime:Landroid/text/format/Time;

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/calendar/SearchActivity;->deleteEvent(JJJ)V

    goto :goto_12
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "icicle"

    .prologue
    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 93
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-static {p0}, Lcom/android/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcom/android/calendar/CalendarController;

    move-result-object v4

    iput-object v4, p0, Lcom/android/calendar/SearchActivity;->mController:Lcom/android/calendar/CalendarController;

    .line 97
    const v4, 0x7f090007

    invoke-static {p0, v4}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v4

    sput-boolean v4, Lcom/android/calendar/SearchActivity;->mIsMultipane:Z

    .line 98
    const v4, 0x7f090003

    invoke-static {p0, v4}, Lcom/android/calendar/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/calendar/SearchActivity;->mShowEventDetailsWithAgenda:Z

    .line 101
    const v4, 0x7f04002d

    invoke-virtual {p0, v4}, Lcom/android/calendar/SearchActivity;->setContentView(I)V

    .line 103
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/android/calendar/SearchActivity;->setDefaultKeyMode(I)V

    .line 105
    invoke-virtual {p0}, Lcom/android/calendar/SearchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/calendar/SearchActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 107
    sget-boolean v4, Lcom/android/calendar/SearchActivity;->mIsMultipane:Z

    if-eqz v4, :cond_80

    .line 108
    invoke-virtual {p0}, Lcom/android/calendar/SearchActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 118
    :goto_38
    iget-object v4, p0, Lcom/android/calendar/SearchActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v4, v6, p0}, Lcom/android/calendar/CalendarController;->registerEventHandler(ILcom/android/calendar/CalendarController$EventHandler;)V

    .line 120
    new-instance v4, Lcom/android/calendar/DeleteEventHelper;

    invoke-direct {v4, p0, p0, v6}, Lcom/android/calendar/DeleteEventHelper;-><init>(Landroid/content/Context;Landroid/app/Activity;Z)V

    iput-object v4, p0, Lcom/android/calendar/SearchActivity;->mDeleteEventHelper:Lcom/android/calendar/DeleteEventHelper;

    .line 123
    const-wide/16 v1, 0x0

    .line 124
    .local v1, millis:J
    if-eqz p1, :cond_4e

    .line 126
    const-string v4, "key_restore_time"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 131
    :cond_4e
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_5c

    .line 133
    invoke-virtual {p0}, Lcom/android/calendar/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v4}, Lcom/android/calendar/Utils;->timeFromIntentInMillis(Landroid/content/Intent;)J

    move-result-wide v1

    .line 136
    :cond_5c
    invoke-virtual {p0}, Lcom/android/calendar/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 137
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.SEARCH"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 139
    if-eqz p1, :cond_89

    const-string v4, "key_restore_search_query"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_89

    .line 140
    const-string v4, "key_restore_search_query"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, query:Ljava/lang/String;
    :goto_7c
    invoke-direct {p0, v1, v2, v3}, Lcom/android/calendar/SearchActivity;->initFragments(JLjava/lang/String;)V

    .line 146
    .end local v3           #query:Ljava/lang/String;
    :cond_7f
    return-void

    .line 111
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #millis:J
    :cond_80
    invoke-virtual {p0}, Lcom/android/calendar/SearchActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {v4, v6, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    goto :goto_38

    .line 142
    .restart local v0       #intent:Landroid/content/Intent;
    .restart local v1       #millis:J
    :cond_89
    const-string v4, "query"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #query:Ljava/lang/String;
    goto :goto_7c
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    .line 233
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 234
    invoke-virtual {p0}, Lcom/android/calendar/SearchActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0f0003

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 235
    const v1, 0x7f1000aa

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 236
    .local v0, item:Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 237
    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 238
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    iput-object v1, p0, Lcom/android/calendar/SearchActivity;->mSearchView:Landroid/widget/SearchView;

    .line 239
    iget-object v1, p0, Lcom/android/calendar/SearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-static {v1, p0}, Lcom/android/calendar/Utils;->setUpSearchView(Landroid/widget/SearchView;Landroid/app/Activity;)V

    .line 240
    iget-object v1, p0, Lcom/android/calendar/SearchActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v2, p0, Lcom/android/calendar/SearchActivity;->mQuery:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 241
    iget-object v1, p0, Lcom/android/calendar/SearchActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 242
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 150
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 151
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v0}, Lcom/android/calendar/CalendarController;->deregisterAllEventHandlers()V

    .line 152
    invoke-static {p0}, Lcom/android/calendar/CalendarController;->removeInstance(Landroid/content/Context;)V

    .line 153
    return-void
.end method

.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 347
    invoke-static {p0}, Lcom/android/calendar/Utils;->returnToCalendarHome(Landroid/content/Context;)V

    .line 348
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 342
    const/4 v0, 0x1

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 275
    invoke-virtual {p0, p1}, Lcom/android/calendar/SearchActivity;->setIntent(Landroid/content/Intent;)V

    .line 276
    invoke-direct {p0, p1}, Lcom/android/calendar/SearchActivity;->handleIntent(Landroid/content/Intent;)V

    .line 277
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 16
    .parameter "item"

    .prologue
    .line 247
    const/4 v4, 0x0

    .line 248
    .local v4, t:Landroid/text/format/Time;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_36

    .line 263
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 250
    :sswitch_a
    new-instance v4, Landroid/text/format/Time;

    .end local v4           #t:Landroid/text/format/Time;
    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 251
    .restart local v4       #t:Landroid/text/format/Time;
    invoke-virtual {v4}, Landroid/text/format/Time;->setToNow()V

    .line 252
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x20

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 253
    const/4 v0, 0x1

    goto :goto_9

    .line 255
    :sswitch_20
    const/4 v0, 0x0

    goto :goto_9

    .line 257
    :sswitch_22
    iget-object v5, p0, Lcom/android/calendar/SearchActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v7, 0x40

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    move-object v6, p0

    invoke-virtual/range {v5 .. v13}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JI)V

    .line 258
    const/4 v0, 0x1

    goto :goto_9

    .line 260
    :sswitch_31
    invoke-static {p0}, Lcom/android/calendar/Utils;->returnToCalendarHome(Landroid/content/Context;)V

    .line 261
    const/4 v0, 0x1

    goto :goto_9

    .line 248
    :sswitch_data_36
    .sparse-switch
        0x102002c -> :sswitch_31
        0x7f1000a7 -> :sswitch_a
        0x7f1000aa -> :sswitch_20
        0x7f1000ac -> :sswitch_22
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 303
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 304
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/calendar/SearchActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 305
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .registers 3
    .parameter "newText"

    .prologue
    .line 329
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .registers 15
    .parameter "query"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 334
    iput-object p1, p0, Lcom/android/calendar/SearchActivity;->mQuery:Ljava/lang/String;

    .line 335
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mController:Lcom/android/calendar/CalendarController;

    const-wide/16 v2, 0x100

    const-wide/16 v6, -0x1

    const-wide/16 v9, 0x0

    invoke-virtual {p0}, Lcom/android/calendar/SearchActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v12

    move-object v1, p0

    move-object v5, v4

    move-object v11, p1

    invoke-virtual/range {v0 .. v12}, Lcom/android/calendar/CalendarController;->sendEvent(Ljava/lang/Object;JLandroid/text/format/Time;Landroid/text/format/Time;JIJLjava/lang/String;Landroid/content/ComponentName;)V

    .line 337
    return v8
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 295
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 296
    iget-object v0, p0, Lcom/android/calendar/SearchActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/calendar/SearchActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 298
    invoke-virtual {p0}, Lcom/android/calendar/SearchActivity;->eventsChanged()V

    .line 299
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outState"

    .prologue
    .line 288
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 289
    const-string v0, "key_restore_time"

    iget-object v1, p0, Lcom/android/calendar/SearchActivity;->mController:Lcom/android/calendar/CalendarController;

    invoke-virtual {v1}, Lcom/android/calendar/CalendarController;->getTime()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 290
    const-string v0, "key_restore_search_query"

    iget-object v1, p0, Lcom/android/calendar/SearchActivity;->mQuery:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    return-void
.end method
