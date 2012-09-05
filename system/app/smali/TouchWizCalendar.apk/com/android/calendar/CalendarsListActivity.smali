.class public Lcom/android/calendar/CalendarsListActivity;
.super Landroid/app/Activity;
.source "CalendarsListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/CalendarsListActivity$ItemView;,
        Lcom/android/calendar/CalendarsListActivity$CalendarsAdapter;,
        Lcom/android/calendar/CalendarsListActivity$QueryHandler;
    }
.end annotation


# static fields
.field private static DEFAULT_DOMAIN:Ljava/lang/String;

.field private static mCurrentId:I


# instance fields
.field private TAG:Ljava/lang/String;

.field private mCalendarListView:Landroid/widget/ListView;

.field private mCalendarsCursor:Landroid/database/Cursor;

.field private mCancelButton:Landroid/widget/Button;

.field private mIsGooglemailDomain:Z

.field private mOkButton:Landroid/widget/Button;

.field private mQueryHandler:Lcom/android/calendar/CalendarsListActivity$QueryHandler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 85
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 89
    const-string v0, "CalendarsListActivity"

    iput-object v0, p0, Lcom/android/calendar/CalendarsListActivity;->TAG:Ljava/lang/String;

    .line 545
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/CalendarsListActivity;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/calendar/CalendarsListActivity;->mCalendarsCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/calendar/CalendarsListActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/calendar/CalendarsListActivity;->mCalendarsCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/calendar/CalendarsListActivity;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/calendar/CalendarsListActivity;->mCalendarListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200()I
    .registers 1

    .prologue
    .line 85
    sget v0, Lcom/android/calendar/CalendarsListActivity;->mCurrentId:I

    return v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .prologue
    .line 85
    sget-object v0, Lcom/android/calendar/CalendarsListActivity;->DEFAULT_DOMAIN:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .parameter "x0"

    .prologue
    .line 85
    sput-object p0, Lcom/android/calendar/CalendarsListActivity;->DEFAULT_DOMAIN:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/calendar/CalendarsListActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/calendar/CalendarsListActivity;->mIsGooglemailDomain:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/calendar/CalendarsListActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/android/calendar/CalendarsListActivity;->mIsGooglemailDomain:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/calendar/CalendarsListActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/calendar/CalendarsListActivity;->onRadioChecked(I)V

    return-void
.end method

.method private onRadioChecked(I)V
    .registers 6
    .parameter "position"

    .prologue
    .line 363
    iget-object v2, p0, Lcom/android/calendar/CalendarsListActivity;->mCalendarListView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 367
    iget-object v2, p0, Lcom/android/calendar/CalendarsListActivity;->mCalendarListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 369
    iget-object v2, p0, Lcom/android/calendar/CalendarsListActivity;->mCalendarListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    long-to-int v2, v2

    sput v2, Lcom/android/calendar/CalendarsListActivity;->mCurrentId:I

    .line 373
    :cond_1b
    iget-object v2, p0, Lcom/android/calendar/CalendarsListActivity;->mCalendarListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 375
    .local v0, dataCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_22
    if-ge v1, v0, :cond_34

    .line 377
    if-eq v1, p1, :cond_35

    .line 379
    iget-object v2, p0, Lcom/android/calendar/CalendarsListActivity;->mCalendarListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 381
    iget-object v2, p0, Lcom/android/calendar/CalendarsListActivity;->mCalendarListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 391
    :cond_34
    return-void

    .line 375
    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_22
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 505
    iget-object v1, p0, Lcom/android/calendar/CalendarsListActivity;->mOkButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_23

    .line 511
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 513
    .local v0, result:Landroid/content/Intent;
    const-string v1, "_id"

    iget-object v2, p0, Lcom/android/calendar/CalendarsListActivity;->mCalendarListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/calendar/CalendarsListActivity;->mCalendarListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 519
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/calendar/CalendarsListActivity;->setResult(ILandroid/content/Intent;)V

    .line 521
    invoke-virtual {p0}, Lcom/android/calendar/CalendarsListActivity;->finish()V

    .line 539
    .end local v0           #result:Landroid/content/Intent;
    :cond_22
    :goto_22
    return-void

    .line 529
    :cond_23
    iget-object v1, p0, Lcom/android/calendar/CalendarsListActivity;->mCancelButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_22

    .line 531
    invoke-virtual {p0}, Lcom/android/calendar/CalendarsListActivity;->finish()V

    goto :goto_22
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 399
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 403
    if-nez p1, :cond_95

    .line 405
    invoke-virtual {p0}, Lcom/android/calendar/CalendarsListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 407
    .local v8, intent:Landroid/content/Intent;
    const-string v0, "_id"

    invoke-virtual {v8, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/calendar/CalendarsListActivity;->mCurrentId:I

    .line 415
    .end local v8           #intent:Landroid/content/Intent;
    :goto_14
    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcom/android/calendar/CalendarsListActivity;->setContentView(I)V

    .line 419
    invoke-virtual {p0}, Lcom/android/calendar/CalendarsListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a0048

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/CalendarsListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 423
    const v0, 0x7f0f001d

    invoke-virtual {p0, v0}, Lcom/android/calendar/CalendarsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/calendar/CalendarsListActivity;->mCalendarListView:Landroid/widget/ListView;

    .line 425
    iget-object v0, p0, Lcom/android/calendar/CalendarsListActivity;->mCalendarListView:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 427
    iget-object v0, p0, Lcom/android/calendar/CalendarsListActivity;->mCalendarListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    .line 429
    iget-object v0, p0, Lcom/android/calendar/CalendarsListActivity;->mCalendarListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 431
    iget-object v0, p0, Lcom/android/calendar/CalendarsListActivity;->mCalendarListView:Landroid/widget/ListView;

    new-instance v3, Lcom/android/calendar/CalendarsListActivity$1;

    invoke-direct {v3, p0}, Lcom/android/calendar/CalendarsListActivity$1;-><init>(Lcom/android/calendar/CalendarsListActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 443
    const v0, 0x7f0f00c9

    invoke-virtual {p0, v0}, Lcom/android/calendar/CalendarsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/calendar/CalendarsListActivity;->mOkButton:Landroid/widget/Button;

    .line 445
    iget-object v0, p0, Lcom/android/calendar/CalendarsListActivity;->mOkButton:Landroid/widget/Button;

    const v3, 0x7f0a0076

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 447
    iget-object v0, p0, Lcom/android/calendar/CalendarsListActivity;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    const v0, 0x7f0f00ca

    invoke-virtual {p0, v0}, Lcom/android/calendar/CalendarsListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/calendar/CalendarsListActivity;->mCancelButton:Landroid/widget/Button;

    .line 453
    iget-object v0, p0, Lcom/android/calendar/CalendarsListActivity;->mCancelButton:Landroid/widget/Button;

    const v3, 0x7f0a0077

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 455
    iget-object v0, p0, Lcom/android/calendar/CalendarsListActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 459
    new-instance v0, Lcom/android/calendar/CalendarsListActivity$QueryHandler;

    invoke-virtual {p0}, Lcom/android/calendar/CalendarsListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/android/calendar/CalendarsListActivity$QueryHandler;-><init>(Lcom/android/calendar/CalendarsListActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/calendar/CalendarsListActivity;->mQueryHandler:Lcom/android/calendar/CalendarsListActivity$QueryHandler;

    .line 461
    iget-object v0, p0, Lcom/android/calendar/CalendarsListActivity;->mQueryHandler:Lcom/android/calendar/CalendarsListActivity$QueryHandler;

    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/calendar/Utils;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const-string v5, "calendar_access_level>=500"

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/calendar/CalendarsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    return-void

    .line 411
    :cond_95
    const-string v0, "calendar_id"

    const-wide/16 v3, 0x1

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    long-to-int v0, v3

    sput v0, Lcom/android/calendar/CalendarsListActivity;->mCurrentId:I

    goto/16 :goto_14
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 495
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 497
    const-string v0, "calendar_id"

    const-wide/16 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/android/calendar/CalendarsListActivity;->mCurrentId:I

    .line 499
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outState"

    .prologue
    .line 473
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 485
    const-string v0, "calendar_id"

    sget v1, Lcom/android/calendar/CalendarsListActivity;->mCurrentId:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 487
    return-void
.end method
