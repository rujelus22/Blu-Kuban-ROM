.class public Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;
.super Landroid/app/Activity;
.source "WCReOrder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter",
            "<",
            "Ljava/lang/String;",
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

.field private mItemsBackup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsCount:I

.field private mList:Lcom/sec/android/touchwiz/widget/TwDndListView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 225
    new-instance v0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$1;-><init>(Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 238
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;)Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->mAdapter:Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter;

    return-object v0
.end method

.method private deleteReceiver()V
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 236
    return-void
.end method

.method private getDBAll()Landroid/database/Cursor;
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 175
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 179
    :goto_f
    return-object v6

    .line 176
    :catch_10
    move-exception v7

    .line 177
    .local v7, se:Landroid/database/sqlite/SQLiteFullException;
    goto :goto_f
.end method

.method private getHomeListItem()V
    .registers 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 136
    :cond_6
    :goto_6
    return-void

    .line 121
    :cond_7
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->getDBAll()Landroid/database/Cursor;

    move-result-object v8

    .line 122
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_6

    .line 125
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->mItemsBackup:Ljava/util/ArrayList;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->mItems:Ljava/util/ArrayList;

    .line 128
    :goto_24
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_6b

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->mItemsBackup:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v9, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->mItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x4

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x5

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getFloat(I)F

    move-result v6

    const/4 v7, 0x6

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getFloat(I)F

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;-><init>(ILjava/lang/String;Ljava/lang/String;IIFF)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_24

    .line 134
    :cond_6b
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->mItemsCount:I

    .line 135
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_6
.end method

.method private initCity()V
    .registers 2

    .prologue
    .line 96
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->cities:Ljava/util/HashMap;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->citiesID:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 97
    :cond_8
    invoke-static {p0}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->initCity(Landroid/content/Context;)V

    .line 99
    :cond_b
    return-void
.end method

.method private initList()V
    .registers 5

    .prologue
    .line 102
    const v0, 0x7f03003f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->setContentView(I)V

    .line 103
    const v0, 0x7f0e014b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwDndListView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    .line 104
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->getHomeListItem()V

    .line 106
    new-instance v0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030040

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->mItems:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter;-><init>(Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->mAdapter:Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter;

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->mAdapter:Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->mAdapter:Lcom/sec/android/app/clockpackage/worldclock/WCReOrder$ReOrderListAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDndController(Lcom/sec/android/touchwiz/widget/TwDndController;)V

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    const v1, 0x7f02025f

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDragGrabHandleDrawable(I)V

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setCacheColorHint(I)V

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->mList:Lcom/sec/android/touchwiz/widget/TwDndListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwDndListView;->setDndMode(Z)V

    .line 116
    return-void
.end method

.method private initReceiver()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 220
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 221
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 224
    return-void
.end method

.method private saveDB()Z
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 196
    :try_start_1
    iget-object v4, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;

    .line 197
    .local v1, item:Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->DATA_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->getContentValues(Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;)Landroid/content/ContentValues;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_20
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_20} :catch_24

    move-result-object v4

    if-nez v4, :cond_7

    .line 205
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;
    :goto_23
    return v3

    .line 201
    :catch_24
    move-exception v2

    .line 202
    .local v2, se:Landroid/database/sqlite/SQLiteFullException;
    goto :goto_23

    .line 205
    .end local v2           #se:Landroid/database/sqlite/SQLiteFullException;
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_26
    const/4 v3, 0x1

    goto :goto_23
.end method


# virtual methods
.method public deleteDB()Z
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 182
    const-string v3, ""

    .line 184
    .local v3, whereClause:Ljava/lang/String;
    :try_start_3
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;

    .line 185
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

    .line 186
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->DATA_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v3, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3f
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3f} :catch_40

    goto :goto_9

    .line 188
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;
    :catch_40
    move-exception v2

    .line 192
    :goto_41
    return v4

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_42
    const/4 v4, 0x1

    goto :goto_41
.end method

.method public getContentValues(Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;)Landroid/content/ContentValues;
    .registers 5
    .parameter "item"

    .prologue
    .line 208
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 209
    .local v0, c:Landroid/content/ContentValues;
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getTopLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getTimeZoneID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getDST()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 212
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getUniaueID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 214
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getLatitude()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 215
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {p1}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getLongitude()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 216
    return-object v0
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 92
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->finish()V

    .line 93
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 82
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->initList()V

    .line 83
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->softkeyStatus()V

    .line 84
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->initCity()V

    .line 67
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->initList()V

    .line 68
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->softkeyStatus()V

    .line 69
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->initReceiver()V

    .line 70
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 86
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
    .line 75
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 76
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 77
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->deleteReceiver()V

    .line 79
    :cond_c
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 73
    return-void
.end method

.method public softkeyRun1(Landroid/view/View;)V
    .registers 6
    .parameter "target"

    .prologue
    const v3, 0x7f0b0098

    const/4 v2, 0x1

    .line 139
    const v0, 0x7f0e0139

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 141
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->deleteDB()Z

    move-result v0

    if-nez v0, :cond_24

    .line 142
    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 146
    :cond_20
    :goto_20
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->finish()V

    .line 147
    return-void

    .line 143
    :cond_24
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->saveDB()Z

    move-result v0

    if-nez v0, :cond_20

    .line 144
    invoke-virtual {p0, v3}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_20
.end method

.method public softkeyRun2(Landroid/view/View;)V
    .registers 2
    .parameter "target"

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->finish()V

    .line 150
    return-void
.end method

.method public softkeyStatus()V
    .registers 7

    .prologue
    .line 152
    const/4 v0, 0x0

    .line 154
    .local v0, b:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    iget v5, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->mItemsCount:I

    if-ge v3, v5, :cond_25

    .line 155
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->mItemsBackup:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;

    invoke-virtual {v5}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getTopLabel()Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, bitem:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;

    invoke-virtual {v5}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getTopLabel()Ljava/lang/String;

    move-result-object v4

    .line 157
    .local v4, item:Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_34

    .line 158
    const/4 v0, 0x1

    .line 162
    .end local v1           #bitem:Ljava/lang/String;
    .end local v4           #item:Ljava/lang/String;
    :cond_25
    const v5, 0x7f0e0139

    invoke-virtual {p0, v5}, Lcom/sec/android/app/clockpackage/worldclock/WCReOrder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 164
    .local v2, btnDelete:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    if-eqz v2, :cond_33

    .line 166
    invoke-virtual {v2, v0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 170
    :cond_33
    return-void

    .line 154
    .end local v2           #btnDelete:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    .restart local v1       #bitem:Ljava/lang/String;
    .restart local v4       #item:Ljava/lang/String;
    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method
