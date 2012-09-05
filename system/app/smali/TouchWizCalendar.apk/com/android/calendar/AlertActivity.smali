.class public Lcom/android/calendar/AlertActivity;
.super Landroid/app/Activity;
.source "AlertActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/AlertActivity$QueryHandler;
    }
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;

.field private static final SELECTIONARG:[Ljava/lang/String;


# instance fields
.field private eventsID:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/calendar/AlertAdapter$AlertItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/android/calendar/AlertAdapter;

.field public mCursor:Landroid/database/Cursor;

.field private mDismissAllButton:Landroid/widget/Button;

.field private mDismissAllListener:Landroid/view/View$OnClickListener;

.field private mDismissListener:Landroid/view/View$OnClickListener;

.field private mHeaderAllCheckBox:Landroid/widget/CheckBox;

.field private mListView:Landroid/widget/ListView;

.field private mQueryHandler:Lcom/android/calendar/AlertActivity$QueryHandler;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSnoozeAllButton:Landroid/widget/Button;

.field private mSnoozeAllListener:Landroid/view/View$OnClickListener;

.field private mSnoozeListener:Landroid/view/View$OnClickListener;

.field private mViewListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 61
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "title"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "begin"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "end"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "event_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "state"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "alarmTime"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/AlertActivity;->PROJECTION:[Ljava/lang/String;

    .line 105
    new-array v0, v3, [Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/calendar/AlertActivity;->SELECTIONARG:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 224
    new-instance v0, Lcom/android/calendar/AlertActivity$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/AlertActivity$1;-><init>(Lcom/android/calendar/AlertActivity;)V

    iput-object v0, p0, Lcom/android/calendar/AlertActivity;->mViewListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 418
    new-instance v0, Lcom/android/calendar/AlertActivity$3;

    invoke-direct {v0, p0}, Lcom/android/calendar/AlertActivity$3;-><init>(Lcom/android/calendar/AlertActivity;)V

    iput-object v0, p0, Lcom/android/calendar/AlertActivity;->mSnoozeAllListener:Landroid/view/View$OnClickListener;

    .line 450
    new-instance v0, Lcom/android/calendar/AlertActivity$4;

    invoke-direct {v0, p0}, Lcom/android/calendar/AlertActivity$4;-><init>(Lcom/android/calendar/AlertActivity;)V

    iput-object v0, p0, Lcom/android/calendar/AlertActivity;->mSnoozeListener:Landroid/view/View$OnClickListener;

    .line 487
    new-instance v0, Lcom/android/calendar/AlertActivity$5;

    invoke-direct {v0, p0}, Lcom/android/calendar/AlertActivity$5;-><init>(Lcom/android/calendar/AlertActivity;)V

    iput-object v0, p0, Lcom/android/calendar/AlertActivity;->mDismissAllListener:Landroid/view/View$OnClickListener;

    .line 498
    new-instance v0, Lcom/android/calendar/AlertActivity$6;

    invoke-direct {v0, p0}, Lcom/android/calendar/AlertActivity$6;-><init>(Lcom/android/calendar/AlertActivity;)V

    iput-object v0, p0, Lcom/android/calendar/AlertActivity;->mDismissListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/AlertActivity;)Lcom/android/calendar/AlertAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/calendar/AlertActivity;->mAdapter:Lcom/android/calendar/AlertAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/AlertActivity;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/calendar/AlertActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/AlertActivity;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/calendar/AlertActivity;->setAllItemChecked(Z)V

    return-void
.end method

.method static synthetic access$300(JJJJI)Landroid/content/ContentValues;
    .registers 10
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 56
    invoke-static/range {p0 .. p8}, Lcom/android/calendar/AlertActivity;->makeContentValues(JJJJI)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/AlertActivity;)Lcom/android/calendar/AlertActivity$QueryHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/calendar/AlertActivity;->mQueryHandler:Lcom/android/calendar/AlertActivity$QueryHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/calendar/AlertActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/calendar/AlertActivity;->dismissFiredAlarms()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/calendar/AlertActivity;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/calendar/AlertActivity;->eventsID:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/calendar/AlertActivity;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/AlertActivity;->dismissAlarm(J)V

    return-void
.end method

.method static synthetic access$800()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 56
    sget-object v0, Lcom/android/calendar/AlertActivity;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 56
    sget-object v0, Lcom/android/calendar/AlertActivity;->SELECTIONARG:[Ljava/lang/String;

    return-object v0
.end method

.method private addListHeaderView()V
    .registers 5

    .prologue
    .line 304
    iget-object v1, p0, Lcom/android/calendar/AlertActivity;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 306
    invoke-virtual {p0}, Lcom/android/calendar/AlertActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03002e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 307
    .local v0, allItem:Landroid/view/View;
    const v1, 0x7f0f00cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/calendar/AlertActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    .line 308
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 310
    new-instance v1, Lcom/android/calendar/AlertActivity$2;

    invoke-direct {v1, p0}, Lcom/android/calendar/AlertActivity$2;-><init>(Lcom/android/calendar/AlertActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    iget-object v1, p0, Lcom/android/calendar/AlertActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 319
    return-void
.end method

.method private dismissAlarm(J)V
    .registers 10
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 141
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 142
    .local v4, values:Landroid/content/ContentValues;
    sget-object v0, Lcom/android/calendar/AlertActivity;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 147
    .local v5, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/calendar/AlertActivity;->mQueryHandler:Lcom/android/calendar/AlertActivity$QueryHandler;

    const/4 v1, 0x0

    sget-object v3, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/AlertActivity$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method private dismissFiredAlarms()V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 133
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 134
    .local v4, values:Landroid/content/ContentValues;
    sget-object v0, Lcom/android/calendar/AlertActivity;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 135
    const-string v5, "state=1"

    .line 136
    .local v5, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/calendar/AlertActivity;->mQueryHandler:Lcom/android/calendar/AlertActivity$QueryHandler;

    const/4 v1, 0x0

    sget-object v3, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/calendar/AlertActivity$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method private static makeContentValues(JJJJI)Landroid/content/ContentValues;
    .registers 15
    .parameter "eventId"
    .parameter "begin"
    .parameter "end"
    .parameter "alarmTime"
    .parameter "minutes"

    .prologue
    const/4 v5, 0x0

    .line 210
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 211
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "event_id"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 212
    const-string v3, "begin"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 213
    const-string v3, "end"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 214
    const-string v3, "alarmTime"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 216
    .local v0, currentTime:J
    const-string v3, "creationTime"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 217
    const-string v3, "receivedTime"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 218
    const-string v3, "notifyTime"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 219
    const-string v3, "state"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 220
    const-string v3, "minutes"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 221
    return-object v2
.end method

.method private setAllItemChecked(Z)V
    .registers 5
    .parameter "Checked"

    .prologue
    .line 381
    iget-object v1, p0, Lcom/android/calendar/AlertActivity;->eventsID:Ljava/util/HashMap;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/calendar/AlertActivity;->eventsID:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_e

    .line 393
    :cond_d
    :goto_d
    return-void

    .line 383
    :cond_e
    iget-object v1, p0, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 384
    :cond_14
    :goto_14
    iget-object v1, p0, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 385
    iget-object v1, p0, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 386
    .local v0, ID:Ljava/lang/Long;
    iget-object v1, p0, Lcom/android/calendar/AlertActivity;->eventsID:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 387
    iget-object v1, p0, Lcom/android/calendar/AlertActivity;->eventsID:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/AlertAdapter$AlertItem;

    invoke-virtual {v1, p1}, Lcom/android/calendar/AlertAdapter$AlertItem;->setChecked(Z)V

    goto :goto_14

    .line 390
    .end local v0           #ID:Ljava/lang/Long;
    :cond_3b
    iget-object v1, p0, Lcom/android/calendar/AlertActivity;->mAdapter:Lcom/android/calendar/AlertAdapter;

    invoke-virtual {v1}, Lcom/android/calendar/AlertAdapter;->notifyDataSetChanged()V

    .line 391
    invoke-virtual {p0, p1}, Lcom/android/calendar/AlertActivity;->updateButtonState(Z)V

    goto :goto_d
.end method


# virtual methods
.method public getItemForView(Landroid/view/View;)Landroid/database/Cursor;
    .registers 4
    .parameter "view"

    .prologue
    .line 529
    iget-object v1, p0, Lcom/android/calendar/AlertActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 530
    .local v0, index:I
    if-gez v0, :cond_a

    .line 531
    const/4 v1, 0x0

    .line 533
    :goto_9
    return-object v1

    :cond_a
    iget-object v1, p0, Lcom/android/calendar/AlertActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    goto :goto_9
.end method

.method public isAnyOneSelected()Z
    .registers 5

    .prologue
    .line 396
    const/4 v1, 0x0

    .line 397
    .local v1, isAnyOne:Z
    iget-object v2, p0, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    const/4 v3, -0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 398
    :cond_7
    iget-object v2, p0, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 399
    iget-object v2, p0, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x6

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 400
    .local v0, ID:Ljava/lang/Long;
    iget-object v2, p0, Lcom/android/calendar/AlertActivity;->eventsID:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/calendar/AlertActivity;->eventsID:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/AlertAdapter$AlertItem;

    invoke-virtual {v2}, Lcom/android/calendar/AlertAdapter$AlertItem;->getChecked()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 402
    const/4 v1, 0x1

    .line 406
    .end local v0           #ID:Ljava/lang/Long;
    :cond_31
    if-eqz v1, :cond_35

    .line 407
    const/4 v2, 0x1

    .line 409
    :goto_34
    return v2

    :cond_35
    const/4 v2, 0x0

    goto :goto_34
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "icicle"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 257
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 259
    const v1, 0x7f030008

    invoke-virtual {p0, v1}, Lcom/android/calendar/AlertActivity;->setContentView(I)V

    .line 260
    const v1, 0x7f0a003f

    invoke-virtual {p0, v1}, Lcom/android/calendar/AlertActivity;->setTitle(I)V

    .line 262
    invoke-virtual {p0}, Lcom/android/calendar/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 263
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 264
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 266
    invoke-virtual {p0}, Lcom/android/calendar/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 268
    invoke-virtual {p0}, Lcom/android/calendar/AlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/AlertActivity;->mResolver:Landroid/content/ContentResolver;

    .line 269
    new-instance v1, Lcom/android/calendar/AlertActivity$QueryHandler;

    iget-object v2, p0, Lcom/android/calendar/AlertActivity;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {v1, p0, v2}, Lcom/android/calendar/AlertActivity$QueryHandler;-><init>(Lcom/android/calendar/AlertActivity;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/calendar/AlertActivity;->mQueryHandler:Lcom/android/calendar/AlertActivity$QueryHandler;

    .line 271
    new-instance v1, Lcom/android/calendar/AlertAdapter;

    const v2, 0x7f030020

    invoke-direct {v1, p0, v2, p0}, Lcom/android/calendar/AlertAdapter;-><init>(Landroid/content/Context;ILcom/android/calendar/AlertActivity;)V

    iput-object v1, p0, Lcom/android/calendar/AlertActivity;->mAdapter:Lcom/android/calendar/AlertAdapter;

    .line 275
    const v1, 0x7f0f0012

    invoke-virtual {p0, v1}, Lcom/android/calendar/AlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/calendar/AlertActivity;->mListView:Landroid/widget/ListView;

    .line 276
    iget-object v1, p0, Lcom/android/calendar/AlertActivity;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 278
    iget-object v1, p0, Lcom/android/calendar/AlertActivity;->mAdapter:Lcom/android/calendar/AlertAdapter;

    iget-object v1, v1, Lcom/android/calendar/AlertAdapter;->itemId:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/android/calendar/AlertActivity;->eventsID:Ljava/util/HashMap;

    .line 279
    invoke-direct {p0}, Lcom/android/calendar/AlertActivity;->addListHeaderView()V

    .line 281
    iget-object v1, p0, Lcom/android/calendar/AlertActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/calendar/AlertActivity;->mAdapter:Lcom/android/calendar/AlertAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 282
    iget-object v1, p0, Lcom/android/calendar/AlertActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/calendar/AlertActivity;->mViewListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 284
    const v1, 0x7f0f00c9

    invoke-virtual {p0, v1}, Lcom/android/calendar/AlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/calendar/AlertActivity;->mSnoozeAllButton:Landroid/widget/Button;

    .line 285
    const v1, 0x7f0f00ca

    invoke-virtual {p0, v1}, Lcom/android/calendar/AlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/calendar/AlertActivity;->mDismissAllButton:Landroid/widget/Button;

    .line 288
    iget-object v1, p0, Lcom/android/calendar/AlertActivity;->mSnoozeAllButton:Landroid/widget/Button;

    const v2, 0x7f0a005b

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 289
    iget-object v1, p0, Lcom/android/calendar/AlertActivity;->mDismissAllButton:Landroid/widget/Button;

    const v2, 0x7f0a005c

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 293
    iget-object v1, p0, Lcom/android/calendar/AlertActivity;->mSnoozeAllButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/calendar/AlertActivity;->mSnoozeListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    iget-object v1, p0, Lcom/android/calendar/AlertActivity;->mDismissAllButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/calendar/AlertActivity;->mDismissListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    iget-object v1, p0, Lcom/android/calendar/AlertActivity;->mSnoozeAllButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 299
    iget-object v1, p0, Lcom/android/calendar/AlertActivity;->mDismissAllButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 300
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 349
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 351
    iget-object v0, p0, Lcom/android/calendar/AlertActivity;->mAdapter:Lcom/android/calendar/AlertAdapter;

    if-eqz v0, :cond_11

    .line 352
    iget-object v0, p0, Lcom/android/calendar/AlertActivity;->mAdapter:Lcom/android/calendar/AlertAdapter;

    iget-object v0, v0, Lcom/android/calendar/AlertAdapter;->itemId:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 353
    iput-object v1, p0, Lcom/android/calendar/AlertActivity;->mAdapter:Lcom/android/calendar/AlertAdapter;

    .line 355
    :cond_11
    iget-object v0, p0, Lcom/android/calendar/AlertActivity;->eventsID:Ljava/util/HashMap;

    if-eqz v0, :cond_17

    .line 356
    iput-object v1, p0, Lcom/android/calendar/AlertActivity;->eventsID:Ljava/util/HashMap;

    .line 358
    :cond_17
    iget-object v0, p0, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_22

    .line 359
    iget-object v0, p0, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 360
    iput-object v1, p0, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    .line 362
    :cond_22
    return-void
.end method

.method protected onResume()V
    .registers 9

    .prologue
    .line 324
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 329
    sget-object v3, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI_BY_INSTANCE:Landroid/net/Uri;

    .line 330
    .local v3, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/calendar/AlertActivity;->mQueryHandler:Lcom/android/calendar/AlertActivity$QueryHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v4, Lcom/android/calendar/AlertActivity;->PROJECTION:[Ljava/lang/String;

    const-string v5, "state=?"

    sget-object v6, Lcom/android/calendar/AlertActivity;->SELECTIONARG:[Ljava/lang/String;

    const-string v7, "begin ASC,title ASC"

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/AlertActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 339
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 340
    invoke-static {p0}, Lcom/android/calendar/AlertService;->updateAlertNotification(Landroid/content/Context;)Z

    .line 342
    iget-object v0, p0, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_f

    .line 343
    iget-object v0, p0, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 345
    :cond_f
    return-void
.end method

.method public updateAllCheckState()V
    .registers 6

    .prologue
    .line 365
    iget-object v3, p0, Lcom/android/calendar/AlertActivity;->eventsID:Ljava/util/HashMap;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_e

    .line 378
    :cond_d
    :goto_d
    return-void

    .line 367
    :cond_e
    const/4 v2, 0x1

    .line 368
    .local v2, everyBodyOn:Z
    iget-object v3, p0, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    const/4 v4, -0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 369
    :cond_15
    iget-object v3, p0, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 370
    iget-object v3, p0, Lcom/android/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x6

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 371
    .local v0, eventId:J
    iget-object v3, p0, Lcom/android/calendar/AlertActivity;->eventsID:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/android/calendar/AlertActivity;->eventsID:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/AlertAdapter$AlertItem;

    invoke-virtual {v3}, Lcom/android/calendar/AlertAdapter$AlertItem;->getChecked()Z

    move-result v3

    if-nez v3, :cond_15

    .line 373
    const/4 v2, 0x0

    .line 377
    .end local v0           #eventId:J
    :cond_43
    iget-object v3, p0, Lcom/android/calendar/AlertActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_d
.end method

.method public updateButtonState(Z)V
    .registers 3
    .parameter "isEnabled"

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/calendar/AlertActivity;->mSnoozeAllButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 414
    iget-object v0, p0, Lcom/android/calendar/AlertActivity;->mDismissAllButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 415
    return-void
.end method
