.class public Lcom/android/calendar/TwSelectCalendarsActivity;
.super Landroid/app/Activity;
.source "TwSelectCalendarsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/TwSelectCalendarsActivity$CalendarItemView;,
        Lcom/android/calendar/TwSelectCalendarsActivity$CalendarsAdapter;
    }
.end annotation


# static fields
.field private static DEFAULT_DOMAIN:Ljava/lang/String;


# instance fields
.field private final PROJECTION:[Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private mCalendarList:Landroid/widget/ListView;

.field private mCalendarsAdapter:Lcom/android/calendar/TwSelectCalendarsActivity$CalendarsAdapter;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCursor:Landroid/database/Cursor;

.field private mHeaderAllCheckBox:Landroid/widget/CheckBox;

.field private mIsGooglemailDomain:Z

.field private mObserver:Landroid/database/ContentObserver;

.field mValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    const-string v0, "TwSelectCalendarsActivity2"

    iput-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->TAG:Ljava/lang/String;

    .line 62
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "calendar_displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "visible"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sync_events"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->PROJECTION:[Ljava/lang/String;

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mCursor:Landroid/database/Cursor;

    .line 99
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mValues:Landroid/content/ContentValues;

    .line 338
    new-instance v0, Lcom/android/calendar/TwSelectCalendarsActivity$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/calendar/TwSelectCalendarsActivity$5;-><init>(Lcom/android/calendar/TwSelectCalendarsActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mObserver:Landroid/database/ContentObserver;

    .line 462
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/TwSelectCalendarsActivity;)Landroid/widget/CheckBox;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/TwSelectCalendarsActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/calendar/TwSelectCalendarsActivity;->updateAllCheckState()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/calendar/TwSelectCalendarsActivity;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mCalendarList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/calendar/TwSelectCalendarsActivity;)[Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/calendar/TwSelectCalendarsActivity;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/calendar/TwSelectCalendarsActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/calendar/TwSelectCalendarsActivity;->initAllCheckState()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/calendar/TwSelectCalendarsActivity;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/calendar/TwSelectCalendarsActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mIsGooglemailDomain:Z

    return v0
.end method

.method private initAllCheckState()V
    .registers 8

    .prologue
    .line 270
    const/4 v3, 0x1

    .line 272
    .local v3, everyBodyIsOn:Z
    iget-object v6, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mCalendarList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v2

    .line 273
    .local v2, dataCount:I
    iget-object v6, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mCalendarList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    .line 274
    .local v4, headerCount:I
    iget-object v1, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mCursor:Landroid/database/Cursor;

    .line 277
    .local v1, cursor:Landroid/database/Cursor;
    move v5, v4

    .local v5, i:I
    :goto_10
    if-ge v5, v2, :cond_2d

    .line 278
    sub-int v6, v5, v4

    invoke-interface {v1, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 280
    const/4 v6, 0x3

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_25

    const/4 v0, 0x1

    .line 281
    .local v0, checked:Z
    :goto_1f
    if-nez v0, :cond_27

    .line 282
    const/4 v3, 0x0

    .line 277
    :goto_22
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 280
    .end local v0           #checked:Z
    :cond_25
    const/4 v0, 0x0

    goto :goto_1f

    .line 284
    .restart local v0       #checked:Z
    :cond_27
    iget-object v6, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mCalendarList:Landroid/widget/ListView;

    invoke-virtual {v6, v5, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_22

    .line 288
    .end local v0           #checked:Z
    :cond_2d
    iget-object v6, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 289
    return-void
.end method

.method private startCalendarMetafeedSync()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 353
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 354
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "force"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 355
    const-string v1, "metafeedonly"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 356
    const/4 v1, 0x0

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 358
    return-void
.end method

.method private updateAllCheckState()V
    .registers 7

    .prologue
    .line 293
    const/4 v2, 0x1

    .line 295
    .local v2, everyBodyIsOn:Z
    iget-object v5, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mCalendarList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .line 296
    .local v1, dataCount:I
    iget-object v5, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mCalendarList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    .line 298
    .local v3, headerCount:I
    move v4, v3

    .local v4, i:I
    :goto_e
    if-ge v4, v1, :cond_1b

    if-eqz v2, :cond_1b

    .line 299
    iget-object v5, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mCalendarList:Landroid/widget/ListView;

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    .line 300
    .local v0, checked:Z
    if-nez v0, :cond_21

    .line 301
    const/4 v2, 0x0

    .line 306
    .end local v0           #checked:Z
    :cond_1b
    iget-object v5, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 307
    return-void

    .line 298
    .restart local v0       #checked:Z
    :cond_21
    add-int/lit8 v4, v4, 0x1

    goto :goto_e
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "icicle"

    .prologue
    const/4 v3, 0x0

    .line 113
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    const v0, 0x7f030036

    invoke-virtual {p0, v0}, Lcom/android/calendar/TwSelectCalendarsActivity;->setContentView(I)V

    .line 116
    invoke-virtual {p0}, Lcom/android/calendar/TwSelectCalendarsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, -0x3

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 119
    invoke-virtual {p0}, Lcom/android/calendar/TwSelectCalendarsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 121
    const v0, 0x7f0f001d

    invoke-virtual {p0, v0}, Lcom/android/calendar/TwSelectCalendarsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mCalendarList:Landroid/widget/ListView;

    .line 122
    iget-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mCalendarList:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 124
    invoke-virtual {p0}, Lcom/android/calendar/TwSelectCalendarsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030037

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 125
    .local v6, allitem:Landroid/view/View;
    const v0, 0x7f0f000d

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mHeaderAllCheckBox:Landroid/widget/CheckBox;

    .line 127
    invoke-virtual {p0}, Lcom/android/calendar/TwSelectCalendarsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/TwSelectCalendarsActivity;->DEFAULT_DOMAIN:Ljava/lang/String;

    .line 128
    sget-object v0, Lcom/android/calendar/TwSelectCalendarsActivity;->DEFAULT_DOMAIN:Ljava/lang/String;

    const-string v1, "googlemail.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mIsGooglemailDomain:Z

    .line 131
    new-instance v0, Lcom/android/calendar/TwSelectCalendarsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/TwSelectCalendarsActivity$1;-><init>(Lcom/android/calendar/TwSelectCalendarsActivity;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    new-instance v0, Lcom/android/calendar/TwSelectCalendarsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/calendar/TwSelectCalendarsActivity$2;-><init>(Lcom/android/calendar/TwSelectCalendarsActivity;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 156
    iget-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mCalendarList:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/calendar/TwSelectCalendarsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mCursor:Landroid/database/Cursor;

    .line 166
    iget-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/android/calendar/TwSelectCalendarsActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 167
    invoke-virtual {p0}, Lcom/android/calendar/TwSelectCalendarsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 168
    new-instance v0, Lcom/android/calendar/TwSelectCalendarsActivity$CalendarsAdapter;

    iget-object v1, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mCursor:Landroid/database/Cursor;

    invoke-direct {v0, p0, p0, v1}, Lcom/android/calendar/TwSelectCalendarsActivity$CalendarsAdapter;-><init>(Lcom/android/calendar/TwSelectCalendarsActivity;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mCalendarsAdapter:Lcom/android/calendar/TwSelectCalendarsActivity$CalendarsAdapter;

    .line 169
    iget-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mCalendarList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mCalendarsAdapter:Lcom/android/calendar/TwSelectCalendarsActivity$CalendarsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 170
    iget-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mCalendarList:Landroid/widget/ListView;

    new-instance v1, Lcom/android/calendar/TwSelectCalendarsActivity$3;

    invoke-direct {v1, p0}, Lcom/android/calendar/TwSelectCalendarsActivity$3;-><init>(Lcom/android/calendar/TwSelectCalendarsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 207
    iget-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mCalendarList:Landroid/widget/ListView;

    new-instance v1, Lcom/android/calendar/TwSelectCalendarsActivity$4;

    invoke-direct {v1, p0}, Lcom/android/calendar/TwSelectCalendarsActivity$4;-><init>(Lcom/android/calendar/TwSelectCalendarsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 214
    invoke-direct {p0}, Lcom/android/calendar/TwSelectCalendarsActivity;->startCalendarMetafeedSync()V

    .line 215
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    .line 241
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 244
    const/4 v1, 0x2

    const v2, 0x7f0a008d

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 245
    .local v0, item:Landroid/view/MenuItem;
    const v1, 0x2020164

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 246
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 9
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 251
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_2c

    .line 266
    invoke-virtual {p0, p1}, Lcom/android/calendar/TwSelectCalendarsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_c
    return v2

    .line 255
    :pswitch_d
    const-string v0, "authorities"

    .line 257
    .local v0, AUTHORITIES_FILTER_KEY:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.SYNC_SETTINGS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "authorities"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "com.android.calendar"

    aput-object v6, v4, v5

    const-string v5, "com.seven.provider.calendar"

    aput-object v5, v4, v2

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    invoke-virtual {p0, v1}, Lcom/android/calendar/TwSelectCalendarsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_c

    .line 251
    nop

    :pswitch_data_2c
    .packed-switch 0x2
        :pswitch_d
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 234
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 235
    iget-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 237
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 224
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 225
    iget-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 226
    return-void
.end method

.method public setAllItemChecked(Z)V
    .registers 14
    .parameter "bCheckStatus"

    .prologue
    const/4 v11, 0x0

    .line 310
    iget-object v8, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mCalendarList:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .line 311
    .local v1, dataCount:I
    iget-object v8, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mCalendarList:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    .line 312
    .local v2, headerCount:I
    iget-object v0, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mCursor:Landroid/database/Cursor;

    .line 314
    .local v0, cursor:Landroid/database/Cursor;
    move v3, v2

    .local v3, i:I
    :goto_10
    if-ge v3, v1, :cond_55

    .line 318
    iget-object v8, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mCalendarList:Landroid/widget/ListView;

    invoke-virtual {v8, v3, p1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 320
    sub-int v8, v3, v2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 321
    const/4 v8, 0x0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 323
    .local v4, id:J
    const/4 v8, 0x6

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 324
    .local v6, sync_event:I
    sget-object v8, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 325
    .local v7, uri:Landroid/net/Uri;
    iget-object v8, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 326
    iget-object v8, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mValues:Landroid/content/ContentValues;

    const-string v9, "visible"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 327
    if-nez v6, :cond_4b

    if-eqz p1, :cond_4b

    .line 329
    iget-object v8, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mValues:Landroid/content/ContentValues;

    const-string v9, "sync_events"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 331
    :cond_4b
    iget-object v8, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v9, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v8, v7, v9, v11, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 314
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 333
    .end local v4           #id:J
    .end local v6           #sync_event:I
    .end local v7           #uri:Landroid/net/Uri;
    :cond_55
    iget-object v8, p0, Lcom/android/calendar/TwSelectCalendarsActivity;->mCalendarList:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->invalidate()V

    .line 334
    return-void
.end method
