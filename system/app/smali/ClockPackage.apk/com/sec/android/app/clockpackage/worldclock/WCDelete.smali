.class public Lcom/sec/android/app/clockpackage/worldclock/WCDelete;
.super Landroid/app/Activity;
.source "WCDelete.java"


# static fields
.field static saveDeleteCheck:[Z


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

.field private mSelectAll:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 118
    new-instance v0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/clockpackage/worldclock/WCDelete$1;-><init>(Lcom/sec/android/app/clockpackage/worldclock/WCDelete;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/clockpackage/worldclock/WCDelete;)Landroid/widget/ArrayAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->mAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/clockpackage/worldclock/WCDelete;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->mSelectAll:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/clockpackage/worldclock/WCDelete;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->mSelectAll:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/clockpackage/worldclock/WCDelete;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->setSelectAll()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/clockpackage/worldclock/WCDelete;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method private bindList()Z
    .registers 4

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->mItems:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    .line 151
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->getHomeListItem()V

    .line 154
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_20

    .line 155
    new-instance v0, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;

    const v1, 0x7f030033

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->mItems:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/clockpackage/worldclock/common/ListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 161
    const/4 v0, 0x1

    :goto_1f
    return v0

    .line 158
    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private deleteReceiver()V
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 128
    return-void
.end method

.method private getDBAll()Landroid/database/Cursor;
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 198
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 202
    :goto_f
    return-object v6

    .line 199
    :catch_10
    move-exception v7

    .line 200
    .local v7, se:Landroid/database/sqlite/SQLiteFullException;
    goto :goto_f
.end method

.method private getHomeListItem()V
    .registers 8

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->getDBAll()Landroid/database/Cursor;

    move-result-object v0

    .line 170
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_c

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_d

    .line 182
    :cond_c
    :goto_c
    return-void

    .line 173
    :cond_d
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 174
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->mItems:Ljava/util/ArrayList;

    .line 175
    :goto_17
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 176
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->mItems:Ljava/util/ArrayList;

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

    .line 179
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_17

    .line 181
    :cond_3f
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_c
.end method

.method private initCity()V
    .registers 2

    .prologue
    .line 106
    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->cities:Ljava/util/HashMap;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->citiesID:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 107
    :cond_8
    invoke-static {p0}, Lcom/sec/android/app/clockpackage/worldclock/CityManager;->initCity(Landroid/content/Context;)V

    .line 109
    :cond_b
    return-void
.end method

.method private initList()V
    .registers 3

    .prologue
    .line 131
    const v0, 0x7f0e0137

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->mList:Landroid/widget/ListView;

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->mList:Landroid/widget/ListView;

    new-instance v1, Lcom/sec/android/app/clockpackage/worldclock/WCDelete$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/clockpackage/worldclock/WCDelete$2;-><init>(Lcom/sec/android/app/clockpackage/worldclock/WCDelete;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 147
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->makeListHead()V

    .line 148
    return-void
.end method

.method private initReceiver()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 112
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 113
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 117
    return-void
.end method

.method private makeListHead()V
    .registers 5

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030035

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 165
    .local v0, layoutHead:Landroid/view/View;
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 166
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->mList:Landroid/widget/ListView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 167
    return-void
.end method

.method private saveCheckState()V
    .registers 4

    .prologue
    .line 269
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    new-array v1, v1, [Z

    sput-object v1, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->saveDeleteCheck:[Z

    .line 270
    const/4 v0, 0x0

    .local v0, count:I
    :goto_b
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2f

    .line 271
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getSelected()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 272
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->saveDeleteCheck:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 270
    :goto_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 274
    :cond_29
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->saveDeleteCheck:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    goto :goto_26

    .line 277
    :cond_2f
    return-void
.end method

.method private setCheckAllFalse()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 298
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->saveDeleteCheck:[Z

    if-eqz v1, :cond_29

    .line 299
    const/4 v0, 0x0

    .local v0, count:I
    :goto_6
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 300
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->setSelected(Z)V

    .line 299
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 302
    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->saveDeleteCheck:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_29

    .line 303
    sget-object v1, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->saveDeleteCheck:[Z

    aput-boolean v2, v1, v0

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 306
    .end local v0           #count:I
    :cond_29
    return-void
.end method

.method private setCheckState()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 279
    sget-object v2, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->saveDeleteCheck:[Z

    if-eqz v2, :cond_40

    .line 280
    const/4 v0, 0x0

    .local v0, count:I
    :goto_7
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_40

    .line 282
    :try_start_f
    sget-object v2, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->saveDeleteCheck:[Z

    aget-boolean v2, v2, v0

    if-ne v2, v5, :cond_24

    .line 283
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->setSelected(Z)V

    .line 280
    :goto_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 285
    :cond_24
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->setSelected(Z)V
    :try_end_30
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_f .. :try_end_30} :catch_31

    goto :goto_21

    .line 287
    :catch_31
    move-exception v1

    .line 288
    .local v1, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->setSelected(Z)V

    .line 290
    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 296
    .end local v0           #count:I
    .end local v1           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_40
    return-void
.end method

.method private setImageToggle()V
    .registers 3

    .prologue
    .line 226
    const v1, 0x7f0e0010

    invoke-virtual {p0, v1}, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 227
    .local v0, selectAll:Landroid/widget/CheckBox;
    iget-boolean v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->mSelectAll:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 228
    return-void
.end method

.method private setSelectAll()V
    .registers 1

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->setImageToggle()V

    .line 223
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->setToggleAll()V

    .line 224
    return-void
.end method

.method private setToggleAll()V
    .registers 5

    .prologue
    .line 230
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->mList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .line 231
    .local v1, length:I
    if-lez v1, :cond_1b

    .line 232
    const/4 v0, 0x1

    .local v0, i:I
    :goto_9
    if-ge v0, v1, :cond_1b

    .line 233
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->mList:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;

    iget-boolean v3, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->mSelectAll:Z

    invoke-virtual {v2, v3}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->setSelected(Z)V

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 236
    .end local v0           #i:I
    :cond_1b
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 237
    return-void
.end method


# virtual methods
.method public deleteDB()Z
    .registers 10

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 208
    :try_start_2
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->mList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .local v0, i:I
    :goto_8
    if-le v0, v4, :cond_49

    .line 209
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->mList:Landroid/widget/ListView;

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;

    .line 210
    .local v1, item:Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->WC_COLUMNS:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 211
    .local v3, whereClause:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getSelected()Z

    move-result v6

    if-eqz v6, :cond_44

    .line 212
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/sec/android/app/clockpackage/worldclock/common/WorldclockConst;->DATA_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v3, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_44
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_44} :catch_47

    .line 208
    :cond_44
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 215
    .end local v0           #i:I
    .end local v1           #item:Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;
    .end local v3           #whereClause:Ljava/lang/String;
    :catch_47
    move-exception v2

    .local v2, se:Landroid/database/sqlite/SQLiteFullException;
    move v4, v5

    .line 218
    .end local v2           #se:Landroid/database/sqlite/SQLiteFullException;
    :cond_49
    return v4
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 102
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->finish()V

    .line 103
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "newConfig"

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 89
    const v0, 0x7f030034

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->setContentView(I)V

    .line 90
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->initList()V

    .line 91
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->setImageToggle()V

    .line 92
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->bindList()Z

    .line 93
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->setDeleteButton()V

    .line 94
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v0, 0x7f030034

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->setContentView(I)V

    .line 57
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->initCity()V

    .line 58
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->initList()V

    .line 59
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->setImageToggle()V

    .line 62
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->bindList()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 63
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->finish()V

    .line 75
    :goto_1b
    return-void

    .line 66
    :cond_1c
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->setDeleteButton()V

    .line 67
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->initReceiver()V

    .line 68
    if-nez p1, :cond_28

    .line 69
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->setCheckAllFalse()V

    goto :goto_1b

    .line 71
    :cond_28
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->setCheckState()V

    .line 72
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->setDeleteButton()V

    .line 73
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->setToggle()V

    goto :goto_1b
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 96
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
    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 81
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 82
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->deleteReceiver()V

    .line 84
    :cond_c
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->saveCheckState()V

    .line 85
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 77
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 78
    return-void
.end method

.method public setDeleteButton()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 247
    const/4 v4, 0x0

    .line 248
    .local v4, selected:Z
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->mList:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v3

    .line 249
    .local v3, length:I
    const/4 v2, 0x1

    .local v2, i:I
    :goto_9
    if-ge v2, v3, :cond_1a

    .line 250
    iget-object v5, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->mList:Landroid/widget/ListView;

    invoke-virtual {v5, v2}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;

    invoke-virtual {v5}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getSelected()Z

    move-result v5

    if-ne v5, v6, :cond_35

    .line 251
    const/4 v4, 0x1

    .line 255
    :cond_1a
    const v5, 0x7f0e0139

    invoke-virtual {p0, v5}, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 256
    .local v1, btnDelete:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    const v5, 0x7f0e013a

    invoke-virtual {p0, v5}, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 257
    .local v0, btnCancel:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    if-eqz v1, :cond_34

    .line 259
    if-nez v4, :cond_38

    .line 260
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    .line 267
    :cond_34
    :goto_34
    return-void

    .line 249
    .end local v0           #btnCancel:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    .end local v1           #btnDelete:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 262
    .restart local v0       #btnCancel:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    .restart local v1       #btnDelete:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;
    :cond_38
    invoke-virtual {v1, v6}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setEnabled(Z)V

    goto :goto_34
.end method

.method public setToggle()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 239
    iput-boolean v3, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->mSelectAll:Z

    .line 240
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->mList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .line 241
    .local v1, length:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_a
    if-ge v0, v1, :cond_26

    .line 242
    iget-boolean v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->mSelectAll:Z

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->mList:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/worldclock/common/ListItem;->getSelected()Z

    move-result v2

    if-eqz v2, :cond_24

    move v2, v3

    :goto_1f
    iput-boolean v2, p0, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->mSelectAll:Z

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 242
    :cond_24
    const/4 v2, 0x0

    goto :goto_1f

    .line 244
    :cond_26
    invoke-direct {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->setImageToggle()V

    .line 245
    return-void
.end method

.method public softkeyRun1(Landroid/view/View;)V
    .registers 4
    .parameter "target"

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->deleteDB()Z

    move-result v0

    if-nez v0, :cond_15

    .line 186
    const v0, 0x7f0b0098

    invoke-virtual {p0, v0}, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 188
    :cond_15
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->finish()V

    .line 189
    return-void
.end method

.method public softkeyRun2(Landroid/view/View;)V
    .registers 2
    .parameter "target"

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/sec/android/app/clockpackage/worldclock/WCDelete;->finish()V

    .line 193
    return-void
.end method
