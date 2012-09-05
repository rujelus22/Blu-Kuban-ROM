.class public Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;
.super Landroid/app/Activity;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter;
    }
.end annotation


# static fields
.field private static final SETTINGS:[Ljava/lang/String;


# instance fields
.field array:[I

.field mCPOrder:Lcom/sec/android/widgetapp/apnews/engine/CPOrder;

.field private mCtx:Landroid/content/Context;

.field private mListView:Landroid/widget/ListView;

.field private mPref:Lcom/sec/android/widgetapp/apnews/engine/Preferences;

.field private mSettingsAdapter:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter;

.field private mSettingsArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/apnews/engine/SettingsItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 56
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "AP Mobile news"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->SETTINGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_c

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->array:[I

    .line 154
    return-void

    .line 50
    :array_c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->setCheckBox()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->queryDummy()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->mSettingsArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->mCtx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;IZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->onBtnCheckChanged(IZ)V

    return-void
.end method

.method private onBtnCheckChanged(IZ)V
    .registers 6
    .parameter "position"
    .parameter "check"

    .prologue
    const/4 v0, 0x1

    .line 322
    invoke-direct {p0}, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->queryDummy()Z

    move-result v1

    if-ne v1, v0, :cond_13

    .line 323
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 325
    const/16 v0, 0x3e

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->showDialog(I)V

    .line 331
    :cond_12
    :goto_12
    return-void

    .line 328
    :cond_13
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v1, v2, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 329
    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->mCPOrder:Lcom/sec/android/widgetapp/apnews/engine/CPOrder;

    sget-object v2, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->SETTINGS:[Ljava/lang/String;

    aget-object v2, v2, p1

    if-eqz p2, :cond_2b

    :goto_27
    invoke-virtual {v1, v2, v0}, Lcom/sec/android/widgetapp/apnews/engine/CPOrder;->setCPCheck(Ljava/lang/String;I)V

    goto :goto_12

    :cond_2b
    const/4 v0, 0x0

    goto :goto_27
.end method

.method private queryDummy()Z
    .registers 10

    .prologue
    .line 394
    const/4 v8, 0x0

    .line 395
    .local v8, fHasException:Z
    const/4 v6, 0x0

    .line 397
    .local v6, cs:Landroid/database/Cursor;
    :try_start_2
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://APNews/APNEWS_DUMMY"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_17} :catch_1e
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2 .. :try_end_17} :catch_26

    move-result-object v6

    .line 414
    :goto_18
    if-eqz v6, :cond_1d

    .line 415
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 417
    :cond_1d
    return v8

    .line 402
    :catch_1e
    move-exception v7

    .line 403
    .local v7, e:Landroid/database/sqlite/SQLiteFullException;
    if-eqz v6, :cond_24

    .line 404
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 406
    :cond_24
    const/4 v8, 0x1

    .line 412
    goto :goto_18

    .line 407
    .end local v7           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_26
    move-exception v7

    .line 408
    .local v7, e:Landroid/database/sqlite/SQLiteDiskIOException;
    if-eqz v6, :cond_2c

    .line 409
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 411
    :cond_2c
    const/4 v8, 0x1

    goto :goto_18
.end method

.method private setCheckBox()V
    .registers 5

    .prologue
    .line 98
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->mListView:Landroid/widget/ListView;

    if-eqz v2, :cond_1a

    .line 99
    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 100
    .local v0, focusView:Landroid/view/View;
    if-eqz v0, :cond_1b

    .line 101
    const v2, 0x7f0c0034

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 102
    .local v1, parentsubview:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_1a

    .line 103
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->performClick()Z

    .line 109
    .end local v0           #focusView:Landroid/view/View;
    .end local v1           #parentsubview:Landroid/widget/LinearLayout;
    :cond_1a
    :goto_1a
    return-void

    .line 106
    .restart local v0       #focusView:Landroid/view/View;
    :cond_1b
    const-string v2, ""

    const-string v3, "View is null"

    invoke-static {v2, v3}, Lcom/sec/android/widgetapp/apnews/activity/settings/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method private setListView()V
    .registers 10

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    .line 132
    iget-object v5, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->mCPOrder:Lcom/sec/android/widgetapp/apnews/engine/CPOrder;

    invoke-virtual {v5}, Lcom/sec/android/widgetapp/apnews/engine/CPOrder;->getCPOrder()Ljava/util/ArrayList;

    move-result-object v0

    .line 133
    .local v0, OrderList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    if-ge v1, v8, :cond_50

    .line 134
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 135
    .local v4, order:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_12
    if-ge v3, v8, :cond_4d

    .line 136
    sget-object v5, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->SETTINGS:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 137
    new-instance v2, Lcom/sec/android/widgetapp/apnews/engine/SettingsItem;

    invoke-direct {v2}, Lcom/sec/android/widgetapp/apnews/engine/SettingsItem;-><init>()V

    .line 138
    .local v2, item:Lcom/sec/android/widgetapp/apnews/engine/SettingsItem;
    sget-object v5, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->SETTINGS:[Ljava/lang/String;

    aget-object v5, v5, v3

    iput-object v5, v2, Lcom/sec/android/widgetapp/apnews/engine/SettingsItem;->mSettingsName:Ljava/lang/String;

    .line 139
    iget-object v5, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->mSettingsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v5, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->array:[I

    aput v3, v5, v1

    .line 141
    iget-object v5, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->array:[I

    aget v5, v5, v1

    iput v5, v2, Lcom/sec/android/widgetapp/apnews/engine/SettingsItem;->mSettingsID:I

    .line 142
    iget-object v5, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->mCPOrder:Lcom/sec/android/widgetapp/apnews/engine/CPOrder;

    sget-object v6, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->SETTINGS:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Lcom/sec/android/widgetapp/apnews/engine/CPOrder;->getCPCheck(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v7, :cond_49

    .line 143
    iput-boolean v7, v2, Lcom/sec/android/widgetapp/apnews/engine/SettingsItem;->mSettingCheck:Z

    .line 135
    .end local v2           #item:Lcom/sec/android/widgetapp/apnews/engine/SettingsItem;
    :cond_46
    :goto_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 145
    .restart local v2       #item:Lcom/sec/android/widgetapp/apnews/engine/SettingsItem;
    :cond_49
    const/4 v5, 0x0

    iput-boolean v5, v2, Lcom/sec/android/widgetapp/apnews/engine/SettingsItem;->mSettingCheck:Z

    goto :goto_46

    .line 133
    .end local v2           #item:Lcom/sec/android/widgetapp/apnews/engine/SettingsItem;
    :cond_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 149
    .end local v3           #j:I
    .end local v4           #order:Ljava/lang/String;
    :cond_50
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 368
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 370
    invoke-direct {p0}, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->queryDummy()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 371
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 373
    const/16 v0, 0x3e

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->showDialog(I)V

    .line 391
    :cond_14
    :goto_14
    :sswitch_14
    return-void

    .line 377
    :cond_15
    sparse-switch p1, :sswitch_data_2e

    goto :goto_14

    .line 382
    :sswitch_19
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->mSettingsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 383
    invoke-direct {p0}, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->setListView()V

    .line 385
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->mSettingsAdapter:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 386
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->mSettingsAdapter:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter;->notifyDataSetChanged()V

    goto :goto_14

    .line 377
    :sswitch_data_2e
    .sparse-switch
        0x1e -> :sswitch_14
        0x46 -> :sswitch_19
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f030018

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->setContentView(I)V

    .line 66
    iput-object p0, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->mCtx:Landroid/content/Context;

    .line 67
    new-instance v0, Lcom/sec/android/widgetapp/apnews/engine/Preferences;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/apnews/engine/Preferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->mPref:Lcom/sec/android/widgetapp/apnews/engine/Preferences;

    .line 69
    const v0, 0x7f0c004f

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->mListView:Landroid/widget/ListView;

    .line 70
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$1;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$1;-><init>(Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$2;

    invoke-direct {v1, p0}, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$2;-><init>(Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->mSettingsArrayList:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter;

    const v1, 0x7f030015

    iget-object v2, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->mSettingsArrayList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter;-><init>(Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->mSettingsAdapter:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter;

    .line 94
    new-instance v0, Lcom/sec/android/widgetapp/apnews/engine/CPOrder;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/apnews/engine/CPOrder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->mCPOrder:Lcom/sec/android/widgetapp/apnews/engine/CPOrder;

    .line 95
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    const v3, 0x7f0a001e

    .line 277
    move-object v0, p0

    .line 278
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_8

    .line 317
    :goto_7
    return-object v2

    .line 282
    :cond_8
    packed-switch p1, :pswitch_data_34

    goto :goto_7

    .line 285
    :pswitch_c
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 287
    .local v1, twalertdialog3:Landroid/app/AlertDialog$Builder;
    const/high16 v2, 0x7f02

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 288
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 291
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 294
    const v2, 0x7f0a0006

    new-instance v3, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$3;

    invoke-direct {v3, p0}, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$3;-><init>(Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 302
    new-instance v2, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$4;

    invoke-direct {v2, p0}, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$4;-><init>(Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 315
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_7

    .line 282
    :pswitch_data_34
    .packed-switch 0x3e
        :pswitch_c
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 112
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->mPref:Lcom/sec/android/widgetapp/apnews/engine/Preferences;

    if-eqz v0, :cond_7

    .line 113
    iput-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->mPref:Lcom/sec/android/widgetapp/apnews/engine/Preferences;

    .line 114
    :cond_7
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->mCPOrder:Lcom/sec/android/widgetapp/apnews/engine/CPOrder;

    if-eqz v0, :cond_d

    .line 115
    iput-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->mCPOrder:Lcom/sec/android/widgetapp/apnews/engine/CPOrder;

    .line 117
    :cond_d
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->mSettingsArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1d

    .line 118
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->mSettingsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 119
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->mSettingsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 120
    iput-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->mSettingsArrayList:Ljava/util/ArrayList;

    .line 123
    :cond_1d
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->mSettingsAdapter:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter;

    if-eqz v0, :cond_28

    .line 124
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->mSettingsAdapter:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter;->clear()V

    .line 125
    iput-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->mSettingsAdapter:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter;

    .line 128
    :cond_28
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 129
    return-void
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 334
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 336
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 11
    .parameter "menu"

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 349
    invoke-static {}, Lcom/sec/android/widgetapp/apnews/engine/Util;->getDeviceDensity()I

    move-result v0

    const/16 v1, 0xf0

    if-lt v0, v1, :cond_30

    .line 350
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.samsung.sec.android.clockpackage/alarm"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 351
    .local v6, checkcursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 352
    .local v7, count:I
    if-eqz v6, :cond_25

    .line 353
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 354
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 357
    :cond_25
    const/16 v0, 0xa

    if-lt v7, v0, :cond_35

    .line 358
    invoke-interface {p1, v8}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 364
    .end local v6           #checkcursor:Landroid/database/Cursor;
    .end local v7           #count:I
    :cond_30
    :goto_30
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 360
    .restart local v6       #checkcursor:Landroid/database/Cursor;
    .restart local v7       #count:I
    :cond_35
    invoke-interface {p1, v8}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_30
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 339
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 341
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->mSettingsArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 342
    invoke-direct {p0}, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->setListView()V

    .line 344
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->mSettingsAdapter:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 345
    iget-object v0, p0, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings;->mSettingsAdapter:Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/apnews/activity/settings/Settings$SettingsItemAdapter;->notifyDataSetChanged()V

    .line 346
    return-void
.end method
