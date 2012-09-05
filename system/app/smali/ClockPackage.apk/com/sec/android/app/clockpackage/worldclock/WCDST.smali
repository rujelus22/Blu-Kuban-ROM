.class public Lcom/sec/android/app/clockpackage/worldclock/WCDST;
.super Landroid/app/Activity;
.source "WCDST.java"


# instance fields
.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mList:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 180
    new-instance v0, Lcom/sec/android/app/clockpackage/worldclock/WCDST$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/worldclock/WCDST$1;-><init>(Lcom/sec/android/app/clockpackage/worldclock/WCDST;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDST;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/clockpackage/worldclock/WCDST;)Landroid/widget/ArrayAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDST;->mAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method private bindList()V
    .registers 4

    .prologue
    .line 224
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDST;->mItems:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    .line 226
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCDST;->getHomeListItem()V

    .line 230
    :cond_7
    new-instance v0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;

    const v1, 0x7f030037

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDST;->mItems:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDST;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDST;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDST;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 234
    return-void
.end method

.method private deleteReceiver()V
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDST;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/worldclock/WCDST;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 200
    return-void
.end method

.method private getDBAll()Landroid/database/Cursor;
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 291
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCDST;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->DATA_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_e} :catch_10

    move-result-object v6

    .line 299
    :goto_f
    return-object v6

    .line 293
    :catch_10
    move-exception v7

    .line 295
    .local v7, se:Landroid/database/sqlite/SQLiteFullException;
    goto :goto_f
.end method

.method private getHomeListItem()V
    .registers 8

    .prologue
    .line 238
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCDST;->getDBAll()Landroid/database/Cursor;

    move-result-object v0

    .line 240
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_c

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_d

    .line 261
    :cond_c
    :goto_c
    return-void

    .line 246
    :cond_d
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 250
    :goto_10
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_38

    .line 252
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDST;->mItems:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_10

    .line 259
    :cond_38
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_c
.end method

.method private initCity()V
    .registers 2

    .prologue
    .line 158
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->cities:Ljava/util/HashMap;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->citiesID:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 160
    :cond_8
    invoke-static {p0}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->initCity(Landroid/content/Context;)V

    .line 164
    :cond_b
    return-void
.end method

.method private initList()V
    .registers 3

    .prologue
    .line 206
    const v0, 0x7f0e013b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/worldclock/WCDST;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDST;->mList:Landroid/widget/ListView;

    .line 208
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDST;->mList:Landroid/widget/ListView;

    new-instance v1, Lcom/sec/android/app/clockpackage/worldclock/WCDST$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/worldclock/WCDST$2;-><init>(Lcom/sec/android/app/clockpackage/worldclock/WCDST;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 220
    return-void
.end method

.method private initReceiver()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 170
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 172
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDST;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/sec/android/app/clockpackage/worldclock/WCDST;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 178
    return-void
.end method


# virtual methods
.method public getContentValues(I)Landroid/content/ContentValues;
    .registers 5
    .parameter "dst"

    .prologue
    .line 340
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 342
    .local v0, c:Landroid/content/ContentValues;
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 344
    return-object v0
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 148
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 150
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCDST;->finish()V

    .line 152
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 133
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCDST;->bindList()V

    .line 135
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const v0, 0x7f030036

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/worldclock/WCDST;->setContentView(I)V

    .line 101
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCDST;->initCity()V

    .line 103
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCDST;->initList()V

    .line 105
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCDST;->bindList()V

    .line 107
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCDST;->initReceiver()V

    .line 109
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 139
    const/16 v0, 0x52

    if-ne v0, p1, :cond_12

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_11
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 119
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 121
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCDST;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 123
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCDST;->deleteReceiver()V

    .line 127
    :cond_c
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 113
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 115
    return-void
.end method

.method public setDBDST()Z
    .registers 10

    .prologue
    const/4 v4, 0x0

    .line 311
    :try_start_1
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDST;->mList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .local v0, i:I
    :goto_7
    if-lez v0, :cond_4e

    .line 313
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDST;->mList:Landroid/widget/ListView;

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;

    .line 315
    .local v1, item:Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 317
    .local v3, whereClause:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCDST;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->DATA_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getDST()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/sec/android/app/clockpackage/worldclock/WCDST;->getContentValues(I)Landroid/content/ContentValues;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v3, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_45
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_45} :catch_4c

    move-result v5

    if-gez v5, :cond_49

    .line 334
    .end local v0           #i:I
    .end local v1           #item:Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;
    .end local v3           #whereClause:Ljava/lang/String;
    :goto_48
    return v4

    .line 311
    .restart local v0       #i:I
    .restart local v1       #item:Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;
    .restart local v3       #whereClause:Ljava/lang/String;
    :cond_49
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 328
    .end local v0           #i:I
    .end local v1           #item:Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;
    .end local v3           #whereClause:Ljava/lang/String;
    :catch_4c
    move-exception v2

    .line 330
    .local v2, se:Landroid/database/sqlite/SQLiteFullException;
    goto :goto_48

    .line 334
    .end local v2           #se:Landroid/database/sqlite/SQLiteFullException;
    .restart local v0       #i:I
    :cond_4e
    const/4 v4, 0x1

    goto :goto_48
.end method

.method public softkeyRun1(Landroid/view/View;)V
    .registers 4
    .parameter "target"

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCDST;->setDBDST()Z

    move-result v0

    if-nez v0, :cond_15

    .line 269
    const v0, 0x7f0b0098

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/worldclock/WCDST;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 273
    :cond_15
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCDST;->finish()V

    .line 275
    return-void
.end method

.method public softkeyRun2(Landroid/view/View;)V
    .registers 2
    .parameter "target"

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCDST;->finish()V

    .line 281
    return-void
.end method
