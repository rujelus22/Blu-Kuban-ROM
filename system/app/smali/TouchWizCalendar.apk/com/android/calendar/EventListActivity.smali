.class public Lcom/android/calendar/EventListActivity;
.super Landroid/app/Activity;
.source "EventListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/EventListActivity$EventAdapter;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mCancelCallback:Ljava/lang/Runnable;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentMilli:J

.field private mEventAdapter:Lcom/android/calendar/EventListActivity$EventAdapter;

.field private mEventList:Landroid/widget/ListView;

.field private mEventListType:I

.field mEventLoader:Lcom/android/calendar/EventLoader;

.field private mEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;"
        }
    .end annotation
.end field

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mJulianDay:I

.field private mMoreEventGp:I

.field private mMoreEventId:J

.field private mObserver:Landroid/database/ContentObserver;

.field private mTime:Landroid/text/format/Time;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 139
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 143
    const-string v0, "EventListActivity"

    iput-object v0, p0, Lcom/android/calendar/EventListActivity;->TAG:Ljava/lang/String;

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/EventListActivity;->mEvents:Ljava/util/ArrayList;

    .line 519
    new-instance v0, Lcom/android/calendar/EventListActivity$4;

    invoke-direct {v0, p0}, Lcom/android/calendar/EventListActivity$4;-><init>(Lcom/android/calendar/EventListActivity;)V

    iput-object v0, p0, Lcom/android/calendar/EventListActivity;->mCancelCallback:Ljava/lang/Runnable;

    .line 659
    new-instance v0, Lcom/android/calendar/EventListActivity$5;

    invoke-direct {v0, p0}, Lcom/android/calendar/EventListActivity$5;-><init>(Lcom/android/calendar/EventListActivity;)V

    iput-object v0, p0, Lcom/android/calendar/EventListActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 687
    new-instance v0, Lcom/android/calendar/EventListActivity$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/EventListActivity$6;-><init>(Lcom/android/calendar/EventListActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/calendar/EventListActivity;->mObserver:Landroid/database/ContentObserver;

    .line 711
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/EventListActivity;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/calendar/EventListActivity;->mEvents:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/EventListActivity;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 139
    iget-wide v0, p0, Lcom/android/calendar/EventListActivity;->mCurrentMilli:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/calendar/EventListActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 139
    iget v0, p0, Lcom/android/calendar/EventListActivity;->mEventListType:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/calendar/EventListActivity;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 139
    iget-wide v0, p0, Lcom/android/calendar/EventListActivity;->mMoreEventId:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/calendar/EventListActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 139
    iget v0, p0, Lcom/android/calendar/EventListActivity;->mMoreEventGp:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/calendar/EventListActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 139
    iget v0, p0, Lcom/android/calendar/EventListActivity;->mJulianDay:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/calendar/EventListActivity;Ljava/util/ArrayList;II)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 139
    invoke-direct {p0, p1, p2, p3}, Lcom/android/calendar/EventListActivity;->setAllDayEvents(Ljava/util/ArrayList;II)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/calendar/EventListActivity;Ljava/util/ArrayList;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/calendar/EventListActivity;->setMoreEvents(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/calendar/EventListActivity;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/calendar/EventListActivity;->mEventList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/calendar/EventListActivity;)Lcom/android/calendar/EventListActivity$EventAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/calendar/EventListActivity;->mEventAdapter:Lcom/android/calendar/EventListActivity$EventAdapter;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/calendar/EventListActivity;Lcom/android/calendar/EventListActivity$EventAdapter;)Lcom/android/calendar/EventListActivity$EventAdapter;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/calendar/EventListActivity;->mEventAdapter:Lcom/android/calendar/EventListActivity$EventAdapter;

    return-object p1
.end method

.method private setAllDayEvents(Ljava/util/ArrayList;II)V
    .registers 10
    .parameter
    .parameter "firstday"
    .parameter "lastday"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 535
    .local p1, ordEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 539
    .local v3, longEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 543
    .local v0, annEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    iget-object v4, p0, Lcom/android/calendar/EventListActivity;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 547
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_13
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/Event;

    .line 557
    .local v1, event:Lcom/android/calendar/Event;
    const/4 v4, -0x1

    if-eq p2, v4, :cond_2a

    .line 559
    iget v4, v1, Lcom/android/calendar/Event;->startDay:I

    if-gt v4, p3, :cond_13

    iget v4, v1, Lcom/android/calendar/Event;->endDay:I

    if-lt v4, p2, :cond_13

    .line 569
    :cond_2a
    iget v4, v1, Lcom/android/calendar/Event;->eventType:I

    if-eqz v4, :cond_32

    .line 571
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 573
    :cond_32
    iget v4, v1, Lcom/android/calendar/Event;->startDay:I

    iget v5, v1, Lcom/android/calendar/Event;->endDay:I

    if-ge v4, v5, :cond_40

    iget-boolean v4, v1, Lcom/android/calendar/Event;->allDay:Z

    if-nez v4, :cond_40

    .line 577
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 583
    :cond_40
    iget-boolean v4, v1, Lcom/android/calendar/Event;->allDay:Z

    if-eqz v4, :cond_13

    .line 585
    iget-object v4, p0, Lcom/android/calendar/EventListActivity;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 593
    .end local v1           #event:Lcom/android/calendar/Event;
    :cond_4a
    iget-object v4, p0, Lcom/android/calendar/EventListActivity;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 595
    iget-object v4, p0, Lcom/android/calendar/EventListActivity;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 599
    return-void
.end method

.method private setMoreEvents(Ljava/util/ArrayList;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 605
    .local p1, ordEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    iget v3, p0, Lcom/android/calendar/EventListActivity;->mJulianDay:I

    iget v4, p0, Lcom/android/calendar/EventListActivity;->mJulianDay:I

    invoke-static {p1, v3, v4, p0}, Lcom/android/calendar/Utils;->setAllDayEvents(Ljava/util/ArrayList;IILandroid/content/Context;)I

    .line 609
    const/4 v1, 0x0

    .line 627
    .local v1, groupId:I
    iget-object v3, p0, Lcom/android/calendar/EventListActivity;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 629
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    .line 635
    .local v0, event:Lcom/android/calendar/Event;
    invoke-virtual {v0}, Lcom/android/calendar/Event;->getGroupId()I

    move-result v3

    iget v4, p0, Lcom/android/calendar/EventListActivity;->mMoreEventGp:I

    if-ne v3, v4, :cond_11

    .line 637
    iget-object v3, p0, Lcom/android/calendar/EventListActivity;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 649
    .end local v0           #event:Lcom/android/calendar/Event;
    :cond_2b
    return-void
.end method


# virtual methods
.method clearCachedEvents()V
    .registers 1

    .prologue
    .line 515
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "icicle"

    .prologue
    const/4 v8, 0x1

    .line 209
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 213
    const v5, 0x7f030021

    invoke-virtual {p0, v5}, Lcom/android/calendar/EventListActivity;->setContentView(I)V

    .line 215
    invoke-virtual {p0}, Lcom/android/calendar/EventListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/android/calendar/EventListActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 219
    invoke-virtual {p0}, Lcom/android/calendar/EventListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 223
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "beginTime"

    invoke-static {p0, v3}, Lcom/android/calendar/Utils;->timeFromIntentInMillis(Landroid/content/Context;Landroid/content/Intent;)J

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/calendar/EventListActivity;->mCurrentMilli:J

    .line 225
    const-string v5, "eventlist_type"

    invoke-virtual {v3, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/calendar/EventListActivity;->mEventListType:I

    .line 227
    const-string v5, "more_event_id"

    const-wide/16 v6, -0x1

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/calendar/EventListActivity;->mMoreEventId:J

    .line 229
    const-string v5, "more_event_group"

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/calendar/EventListActivity;->mMoreEventGp:I

    .line 255
    new-instance v5, Landroid/text/format/Time;

    const/4 v6, 0x0

    invoke-static {p0, v6}, Lcom/android/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/calendar/EventListActivity;->mTime:Landroid/text/format/Time;

    .line 257
    iget-object v5, p0, Lcom/android/calendar/EventListActivity;->mTime:Landroid/text/format/Time;

    iget-wide v6, p0, Lcom/android/calendar/EventListActivity;->mCurrentMilli:J

    invoke-virtual {v5, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 259
    iget-object v5, p0, Lcom/android/calendar/EventListActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v5, v8}, Landroid/text/format/Time;->normalize(Z)J

    .line 261
    iget-wide v5, p0, Lcom/android/calendar/EventListActivity;->mCurrentMilli:J

    iget-object v7, p0, Lcom/android/calendar/EventListActivity;->mTime:Landroid/text/format/Time;

    iget-wide v7, v7, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v5, v6, v7, v8}, Lcom/android/calendar/Utils;->getJulianDay(JJ)I

    move-result v5

    iput v5, p0, Lcom/android/calendar/EventListActivity;->mJulianDay:I

    .line 283
    invoke-virtual {p0}, Lcom/android/calendar/EventListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "date_format"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, dateFormat:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/calendar/EventListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00e2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 289
    .local v2, format:Ljava/lang/String;
    if-eqz v1, :cond_89

    .line 291
    const-string v5, "MM-dd-yyyy"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c8

    .line 293
    invoke-virtual {p0}, Lcom/android/calendar/EventListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00e3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 303
    :cond_89
    :goto_89
    iget-wide v5, p0, Lcom/android/calendar/EventListActivity;->mCurrentMilli:J

    invoke-static {v2, v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 307
    .local v4, titleString:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/android/calendar/EventListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 311
    new-instance v5, Lcom/android/calendar/EventLoader;

    invoke-direct {v5, p0}, Lcom/android/calendar/EventLoader;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/calendar/EventListActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    .line 315
    const v5, 0x7f0f009b

    invoke-virtual {p0, v5}, Lcom/android/calendar/EventListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/android/calendar/EventListActivity;->mEventList:Landroid/widget/ListView;

    .line 317
    iget-object v5, p0, Lcom/android/calendar/EventListActivity;->mEventList:Landroid/widget/ListView;

    new-instance v6, Lcom/android/calendar/EventListActivity$1;

    invoke-direct {v6, p0}, Lcom/android/calendar/EventListActivity$1;-><init>(Lcom/android/calendar/EventListActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 353
    const v5, 0x7f0f00d0

    invoke-virtual {p0, v5}, Lcom/android/calendar/EventListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 355
    .local v0, backButton:Landroid/widget/Button;
    const v5, 0x7f0a0088

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 357
    new-instance v5, Lcom/android/calendar/EventListActivity$2;

    invoke-direct {v5, p0}, Lcom/android/calendar/EventListActivity$2;-><init>(Lcom/android/calendar/EventListActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    return-void

    .line 295
    .end local v0           #backButton:Landroid/widget/Button;
    .end local v4           #titleString:Ljava/lang/String;
    :cond_c8
    const-string v5, "yyyy-MM-dd"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_89

    .line 297
    invoke-virtual {p0}, Lcom/android/calendar/EventListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00e4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_89
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 429
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 433
    invoke-virtual {p0}, Lcom/android/calendar/EventListActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 435
    iget-object v0, p0, Lcom/android/calendar/EventListActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    invoke-virtual {v0}, Lcom/android/calendar/EventLoader;->stopBackgroundThread()V

    .line 439
    :cond_e
    iget-object v0, p0, Lcom/android/calendar/EventListActivity;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/calendar/EventListActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 441
    iget-object v0, p0, Lcom/android/calendar/EventListActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/calendar/EventListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 445
    return-void
.end method

.method protected onResume()V
    .registers 6

    .prologue
    .line 385
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 389
    iget-object v1, p0, Lcom/android/calendar/EventListActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    invoke-virtual {v1}, Lcom/android/calendar/EventLoader;->startBackgroundThread()V

    .line 391
    invoke-virtual {p0}, Lcom/android/calendar/EventListActivity;->reloadEvents()V

    .line 397
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 401
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 403
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 405
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 407
    iget-object v1, p0, Lcom/android/calendar/EventListActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/EventListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 411
    iget-object v1, p0, Lcom/android/calendar/EventListActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/calendar/EventListActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 413
    return-void
.end method

.method reloadEvents()V
    .registers 8

    .prologue
    .line 455
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 457
    .local v2, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    iget-object v0, p0, Lcom/android/calendar/EventListActivity;->mEventLoader:Lcom/android/calendar/EventLoader;

    const/4 v1, 0x1

    iget-wide v3, p0, Lcom/android/calendar/EventListActivity;->mCurrentMilli:J

    new-instance v5, Lcom/android/calendar/EventListActivity$3;

    invoke-direct {v5, p0, v2}, Lcom/android/calendar/EventListActivity$3;-><init>(Lcom/android/calendar/EventListActivity;Ljava/util/ArrayList;)V

    iget-object v6, p0, Lcom/android/calendar/EventListActivity;->mCancelCallback:Ljava/lang/Runnable;

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/EventLoader;->loadEventsInBackground(ILjava/util/ArrayList;JLjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 507
    return-void
.end method
