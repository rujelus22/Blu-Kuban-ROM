.class public Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;
.super Landroid/app/Activity;
.source "AlarmDelete.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field mAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

.field private mCheckItemCount:I

.field private mCheckNeedFinish:Z

.field private mDeleteKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field mList:Landroid/widget/ListView;

.field private mNeedFinish:Z

.field mSelectAllCheck:Landroid/widget/CheckBox;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/sec/android/app/clockpackage/alarm/Alarm;->DEBUG:Z

    sput-boolean v0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->mCheckItemCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->onSelectAllCheck(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->updateSelectAllCheck()V

    return-void
.end method

.method private checkFinish()V
    .registers 2

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->mNeedFinish:Z

    if-eqz v0, :cond_13

    .line 357
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->mAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_13

    .line 359
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->setResult(I)V

    .line 361
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->finish()V

    .line 367
    :cond_13
    return-void
.end method

.method private checkNeedFinish()V
    .registers 2

    .prologue
    .line 372
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->setResult(I)V

    .line 374
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->finish()V

    .line 375
    return-void
.end method

.method private getAlarmData()Landroid/database/Cursor;
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 253
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "createtime DESC"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private onSelectAllCheck(Z)V
    .registers 6
    .parameter "checked"

    .prologue
    const/4 v3, 0x0

    .line 172
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->mSelectAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 174
    if-eqz p1, :cond_2f

    .line 176
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->mAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->getCount()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->mCheckItemCount:I

    .line 178
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->mDeleteKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 188
    :goto_16
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->mList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 190
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1d
    if-ge v1, v0, :cond_37

    .line 192
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->mList:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-eq v2, p1, :cond_2c

    .line 194
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->mList:Landroid/widget/ListView;

    invoke-virtual {v2, v1, p1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 190
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 182
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_2f
    iput v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->mCheckItemCount:I

    .line 184
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->mDeleteKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_16

    .line 200
    .restart local v0       #count:I
    .restart local v1       #i:I
    :cond_37
    return-void
.end method

.method private updateSelectAllCheck()V
    .registers 8

    .prologue
    .line 204
    const/4 v0, 0x1

    .line 206
    .local v0, allChecked:Z
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->mList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v2

    .line 208
    .local v2, count:I
    const/4 v1, 0x0

    .line 210
    .local v1, checkCount:I
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->mList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    .local v3, i:I
    :goto_e
    if-ge v3, v2, :cond_1f

    .line 215
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->mList:Landroid/widget/ListView;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 217
    const/4 v0, 0x0

    .line 210
    :goto_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 221
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 227
    :cond_1f
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->mList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    if-gt v2, v4, :cond_5e

    .line 228
    const-string v4, "AlarmDelete"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mList.getHeaderViewsCount() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->mList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const-string v4, "AlarmDelete"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v0, 0x0

    .line 233
    :cond_5e
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->mSelectAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eq v4, v0, :cond_6b

    .line 235
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->mSelectAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 239
    :cond_6b
    iput v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->mCheckItemCount:I

    .line 241
    iget v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->mCheckItemCount:I

    if-nez v4, :cond_78

    .line 243
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->mDeleteKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 249
    :goto_77
    return-void

    .line 247
    :cond_78
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->mDeleteKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_77
.end method


# virtual methods
.method public onBackPressed()V
    .registers 2

    .prologue
    .line 347
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->setResult(I)V

    .line 349
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 351
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v2, 0x7f030002

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->setContentView(I)V

    .line 63
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "finish_delete"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->mNeedFinish:Z

    .line 66
    iput-boolean v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->mCheckNeedFinish:Z

    .line 76
    const v2, 0x7f0e000b

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->mDeleteKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 78
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->mDeleteKey:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 80
    const v2, 0x102000a

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->mList:Landroid/widget/ListView;

    .line 82
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->mList:Landroid/widget/ListView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 84
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->getAlarmData()Landroid/database/Cursor;

    move-result-object v0

    .line 86
    .local v0, c:Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->startManagingCursor(Landroid/database/Cursor;)V

    .line 88
    new-instance v2, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->mAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    .line 90
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->mAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->setMode(I)V

    .line 92
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->mAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    new-instance v3, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete$1;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->setCheckStateBridge(Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter$CheckStateBridge;)V

    .line 103
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v3, 0x7f030006

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->mList:Landroid/widget/ListView;

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 108
    .local v1, headerView:Landroid/view/View;
    const v2, 0x7f0e0038

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->mSelectAllCheck:Landroid/widget/CheckBox;

    .line 111
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->mList:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 113
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->mList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->mAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->mList:Landroid/widget/ListView;

    new-instance v3, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete$2;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 154
    if-eqz p1, :cond_96

    .line 156
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->mList:Landroid/widget/ListView;

    new-instance v3, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete$3;

    invoke-direct {v3, p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete$3;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 168
    :cond_96
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 380
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 382
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->mCheckNeedFinish:Z

    .line 384
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->checkFinish()V

    .line 386
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 391
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 393
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->mCheckNeedFinish:Z

    .line 395
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->checkFinish()V

    .line 396
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->updateSelectAllCheck()V

    .line 397
    return-void
.end method

.method public onSoftkeyCancel(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 338
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->setResult(I)V

    .line 340
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->finish()V

    .line 342
    return-void
.end method

.method public onSoftkeyDelete(Landroid/view/View;)V
    .registers 13
    .parameter "v"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 262
    iget-boolean v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->mCheckNeedFinish:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_b

    .line 263
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->checkNeedFinish()V

    .line 334
    :goto_a
    return-void

    .line 267
    :cond_b
    iget-object v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->mAdapter:Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;

    invoke-virtual {v7}, Lcom/sec/android/app/clockpackage/alarm/CustomCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 269
    .local v1, c:Landroid/database/Cursor;
    iget-object v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->mList:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    .line 271
    .local v4, headerCount:I
    const/4 v3, 0x0

    .line 273
    .local v3, deleteCount:I
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "alarm.db"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 276
    .local v6, path:Ljava/lang/String;
    invoke-static {v6, v10, v9}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 279
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    .local v0, builder:Ljava/lang/StringBuilder;
    move v5, v4

    .local v5, i:I
    :goto_33
    :try_start_33
    iget-object v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->mList:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getCount()I

    move-result v7

    if-ge v5, v7, :cond_77

    .line 287
    iget-object v7, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->mList:Landroid/widget/ListView;

    invoke-virtual {v7, v5}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v7

    if-eqz v7, :cond_74

    .line 289
    sub-int v7, v5, v4

    invoke-interface {v1, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 291
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_56

    .line 293
    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 295
    :cond_56
    const-string v7, "_id"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    const-string v7, " = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    const/4 v7, 0x0

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 301
    const-string v7, "alarm"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    add-int/2addr v3, v7

    .line 285
    :cond_74
    add-int/lit8 v5, v5, 0x1

    goto :goto_33

    .line 308
    :cond_77
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7a
    .catchall {:try_start_33 .. :try_end_7a} :catchall_b9

    .line 312
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 316
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 318
    if-lez v3, :cond_95

    .line 320
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 322
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.samsung.sec.android.clockpackage.alarm.NOTIFY_ALARM_CHANGE"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->sendBroadcast(Landroid/content/Intent;)V

    .line 326
    :cond_95
    sget-boolean v7, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->DEBUG:Z

    if-eqz v7, :cond_b1

    .line 328
    const-string v7, "AlarmDelete"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Delete item count : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_b1
    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->setResult(I)V

    .line 332
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDelete;->finish()V

    goto/16 :goto_a

    .line 312
    :catchall_b9
    move-exception v7

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7
.end method
