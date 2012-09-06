.class public Lcom/google/android/apps/reader/content/ReaderDatabase;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ReaderDatabase.java"


# static fields
.field public static final TABLE_FRIENDS:Ljava/lang/String; = "friends"

.field public static final TABLE_ITEMS:Ljava/lang/String; = "items"

.field public static final TABLE_ITEM_CATEGORIES:Ljava/lang/String; = "item_categories"

.field public static final TABLE_ITEM_LINKS:Ljava/lang/String; = "item_links"

.field public static final TABLE_ITEM_LISTS:Ljava/lang/String; = "item_lists"

.field public static final TABLE_ITEM_POSITIONS:Ljava/lang/String; = "item_positions"

.field public static final TABLE_OVERVIEW:Ljava/lang/String; = "overview"

.field public static final TABLE_PENDING_ACTIONS:Ljava/lang/String; = "pending_actions"

.field public static final TABLE_RECOMMENDATIONS:Ljava/lang/String; = "recommendations"

.field public static final TABLE_STREAM_DETAILS:Ljava/lang/String; = "stream_details"

.field public static final TABLE_SUBSCRIPTIONS:Ljava/lang/String; = "subscriptions"

.field public static final TABLE_SUBSCRIPTION_CATEGORIES:Ljava/lang/String; = "subscription_categories"

.field public static final TABLE_TAGS:Ljava/lang/String; = "tags"

.field public static final TABLE_TIMESTAMPS:Ljava/lang/String; = "timestamps"

.field public static final TABLE_UNREAD_COUNTS:Ljava/lang/String; = "unread_counts"

.field public static final TABLE_USAGE:Ljava/lang/String; = "usage"

.field public static final TABLE_USER_INFO:Ljava/lang/String; = "user_info"


# instance fields
.field private final mTables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/reader/content/Table;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .registers 25
    .parameter "context"
    .parameter "name"
    .parameter "factory"
    .parameter "version"

    .prologue
    .line 180
    invoke-direct/range {p0 .. p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 171
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/reader/content/ReaderDatabase;->mTables:Ljava/util/ArrayList;

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/reader/content/ReaderDatabase;->createTagsTable()Lcom/google/android/apps/reader/content/Table;

    move-result-object v14

    .line 182
    .local v14, tags:Lcom/google/android/apps/reader/content/Table;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/reader/content/ReaderDatabase;->createSubscriptionsTable()Lcom/google/android/apps/reader/content/Table;

    move-result-object v13

    .line 183
    .local v13, subscriptions:Lcom/google/android/apps/reader/content/Table;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/reader/content/ReaderDatabase;->createRecommendationsTable()Lcom/google/android/apps/reader/content/Table;

    move-result-object v10

    .line 184
    .local v10, recommendations:Lcom/google/android/apps/reader/content/Table;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/reader/content/ReaderDatabase;->createFriendsTable()Lcom/google/android/apps/reader/content/Table;

    move-result-object v2

    .line 185
    .local v2, friends:Lcom/google/android/apps/reader/content/Table;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/reader/content/ReaderDatabase;->createUnreadCountsTable()Lcom/google/android/apps/reader/content/Table;

    move-result-object v16

    .line 186
    .local v16, unreadCounts:Lcom/google/android/apps/reader/content/Table;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/reader/content/ReaderDatabase;->createSubscriptionCategoriesTable()Lcom/google/android/apps/reader/content/Table;

    move-result-object v12

    .line 187
    .local v12, subscriptionCategories:Lcom/google/android/apps/reader/content/Table;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/reader/content/ReaderDatabase;->createItemsTable()Lcom/google/android/apps/reader/content/Table;

    move-result-object v7

    .line 188
    .local v7, items:Lcom/google/android/apps/reader/content/Table;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/reader/content/ReaderDatabase;->createItemCategoriesTable()Lcom/google/android/apps/reader/content/Table;

    move-result-object v3

    .line 189
    .local v3, itemCategories:Lcom/google/android/apps/reader/content/Table;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/reader/content/ReaderDatabase;->createItemLinksTable()Lcom/google/android/apps/reader/content/Table;

    move-result-object v4

    .line 190
    .local v4, itemLinks:Lcom/google/android/apps/reader/content/Table;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/reader/content/ReaderDatabase;->createItemPositionsTable()Lcom/google/android/apps/reader/content/Table;

    move-result-object v6

    .line 191
    .local v6, itemPositions:Lcom/google/android/apps/reader/content/Table;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/reader/content/ReaderDatabase;->createUserInfoTable()Lcom/google/android/apps/reader/content/Table;

    move-result-object v18

    .line 192
    .local v18, userInfo:Lcom/google/android/apps/reader/content/Table;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/reader/content/ReaderDatabase;->createOverviewTable()Lcom/google/android/apps/reader/content/Table;

    move-result-object v8

    .line 193
    .local v8, overview:Lcom/google/android/apps/reader/content/Table;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/reader/content/ReaderDatabase;->createStreamDetailsTable()Lcom/google/android/apps/reader/content/Table;

    move-result-object v11

    .line 194
    .local v11, streamDetails:Lcom/google/android/apps/reader/content/Table;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/reader/content/ReaderDatabase;->createPendingActionsTable()Lcom/google/android/apps/reader/content/Table;

    move-result-object v9

    .line 195
    .local v9, pendingActions:Lcom/google/android/apps/reader/content/Table;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/reader/content/ReaderDatabase;->createTimestampsTable()Lcom/google/android/apps/reader/content/Table;

    move-result-object v15

    .line 196
    .local v15, timestamps:Lcom/google/android/apps/reader/content/Table;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/reader/content/ReaderDatabase;->createItemListsTable()Lcom/google/android/apps/reader/content/Table;

    move-result-object v5

    .line 197
    .local v5, itemLists:Lcom/google/android/apps/reader/content/Table;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/reader/content/ReaderDatabase;->createUsageTable()Lcom/google/android/apps/reader/content/Table;

    move-result-object v17

    .line 198
    .local v17, usage:Lcom/google/android/apps/reader/content/Table;
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/ReaderDatabase;->addTable(Lcom/google/android/apps/reader/content/Table;)V

    .line 199
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/ReaderDatabase;->addTable(Lcom/google/android/apps/reader/content/Table;)V

    .line 200
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/ReaderDatabase;->addTable(Lcom/google/android/apps/reader/content/Table;)V

    .line 201
    move-object/from16 v0, p0

    move-object v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/ReaderDatabase;->addTable(Lcom/google/android/apps/reader/content/Table;)V

    .line 202
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/ReaderDatabase;->addTable(Lcom/google/android/apps/reader/content/Table;)V

    .line 203
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/ReaderDatabase;->addTable(Lcom/google/android/apps/reader/content/Table;)V

    .line 204
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/ReaderDatabase;->addTable(Lcom/google/android/apps/reader/content/Table;)V

    .line 205
    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/ReaderDatabase;->addTable(Lcom/google/android/apps/reader/content/Table;)V

    .line 206
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/ReaderDatabase;->addTable(Lcom/google/android/apps/reader/content/Table;)V

    .line 207
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/ReaderDatabase;->addTable(Lcom/google/android/apps/reader/content/Table;)V

    .line 208
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/ReaderDatabase;->addTable(Lcom/google/android/apps/reader/content/Table;)V

    .line 209
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/ReaderDatabase;->addTable(Lcom/google/android/apps/reader/content/Table;)V

    .line 210
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/ReaderDatabase;->addTable(Lcom/google/android/apps/reader/content/Table;)V

    .line 211
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/ReaderDatabase;->addTable(Lcom/google/android/apps/reader/content/Table;)V

    .line 212
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/ReaderDatabase;->addTable(Lcom/google/android/apps/reader/content/Table;)V

    .line 213
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/ReaderDatabase;->addTable(Lcom/google/android/apps/reader/content/Table;)V

    .line 214
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/ReaderDatabase;->addTable(Lcom/google/android/apps/reader/content/Table;)V

    .line 215
    return-void
.end method


# virtual methods
.method protected addTable(Lcom/google/android/apps/reader/content/Table;)V
    .registers 3
    .parameter

    .prologue
    .line 559
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ReaderDatabase;->mTables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    return-void
.end method

.method protected createAllTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6
    .parameter "db"

    .prologue
    .line 572
    iget-object v3, p0, Lcom/google/android/apps/reader/content/ReaderDatabase;->mTables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/reader/content/Table;

    .line 573
    .local v2, table:Lcom/google/android/apps/reader/content/Table;
    invoke-virtual {v2}, Lcom/google/android/apps/reader/content/Table;->getCreateTableStatement()Ljava/lang/String;

    move-result-object v1

    .line 574
    .local v1, sql:Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_6

    .line 576
    .end local v1           #sql:Ljava/lang/String;
    .end local v2           #table:Lcom/google/android/apps/reader/content/Table;
    :cond_1a
    return-void
.end method

.method protected createFriendsTable()Lcom/google/android/apps/reader/content/Table;
    .registers 5

    .prologue
    .line 388
    new-instance v0, Lcom/google/android/apps/reader/content/Table;

    const-string v1, "friends"

    invoke-direct {v0, v1}, Lcom/google/android/apps/reader/content/Table;-><init>(Ljava/lang/String;)V

    .line 391
    .local v0, friends:Lcom/google/android/apps/reader/content/Table;
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "account_name"

    const-string v3, "TEXT NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 392
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "photo_url"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 395
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "_id"

    const-string v3, "INTEGER NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 396
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "contact_id"

    const-string v3, "INTEGER NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 397
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "display_name"

    const-string v3, "TEXT NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 398
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "photo_uri"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 399
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "stream"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 400
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "email_address"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 401
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "is_me"

    const-string v3, "INTEGER NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 402
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "is_hidden"

    const-string v3, "INTEGER NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 403
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "is_new"

    const-string v3, "INTEGER NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 404
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "uses_reader"

    const-string v3, "INTEGER NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 405
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "is_blocked"

    const-string v3, "INTEGER NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 406
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "has_profile"

    const-string v3, "INTEGER NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 407
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "is_ignored"

    const-string v3, "INTEGER NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 408
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "is_new_follower"

    const-string v3, "INTEGER NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 409
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "is_anonymous"

    const-string v3, "INTEGER NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 410
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "has_shared_items"

    const-string v3, "INTEGER NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 412
    return-object v0
.end method

.method protected createItemCategoriesTable()Lcom/google/android/apps/reader/content/Table;
    .registers 5

    .prologue
    .line 324
    new-instance v0, Lcom/google/android/apps/reader/content/Table;

    const-string v1, "item_categories"

    invoke-direct {v0, v1}, Lcom/google/android/apps/reader/content/Table;-><init>(Ljava/lang/String;)V

    .line 325
    .local v0, table:Lcom/google/android/apps/reader/content/Table;
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "account_name"

    const-string v3, "TEXT NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 326
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "item_id"

    const-string v3, "TEXT NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 327
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "stream_id"

    const-string v3, "TEXT NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 334
    const-string v1, "UNIQUE (account_name, item_id, stream_id) ON CONFLICT REPLACE"

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addConstraint(Ljava/lang/String;)V

    .line 336
    return-object v0
.end method

.method protected createItemLinksTable()Lcom/google/android/apps/reader/content/Table;
    .registers 5

    .prologue
    .line 340
    new-instance v0, Lcom/google/android/apps/reader/content/Table;

    const-string v1, "item_links"

    invoke-direct {v0, v1}, Lcom/google/android/apps/reader/content/Table;-><init>(Ljava/lang/String;)V

    .line 341
    .local v0, itemLinks:Lcom/google/android/apps/reader/content/Table;
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "account_name"

    const-string v3, "TEXT NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 342
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "item_id"

    const-string v3, "TEXT NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 343
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "_id"

    const-string v3, "INTEGER NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 344
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "rel"

    const-string v3, "TEXT NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 345
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "href"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 346
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "type"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 347
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "length"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 348
    return-object v0
.end method

.method protected createItemListsTable()Lcom/google/android/apps/reader/content/Table;
    .registers 5

    .prologue
    .line 474
    new-instance v0, Lcom/google/android/apps/reader/content/Table;

    const-string v1, "item_lists"

    invoke-direct {v0, v1}, Lcom/google/android/apps/reader/content/Table;-><init>(Ljava/lang/String;)V

    .line 477
    .local v0, itemLists:Lcom/google/android/apps/reader/content/Table;
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "account_name"

    const-string v3, "TEXT NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 481
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "id"

    const-string v3, "TEXT NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 487
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "timestamp"

    const-string v3, "INTEGER NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 490
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "date"

    const-string v3, "INTEGER NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 493
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "newest_item_timestamp"

    const-string v3, "INTEGER"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 494
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "last_read_item_timestamp"

    const-string v3, "INTEGER"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 497
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "continuation"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 500
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "title"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 503
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "stream_id"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 510
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "exclude_read"

    const-string v3, "INTEGER NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 512
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "account_name"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "id"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->setUnique([Ljava/lang/String;)V

    .line 514
    return-object v0
.end method

.method protected createItemPositionsTable()Lcom/google/android/apps/reader/content/Table;
    .registers 5

    .prologue
    .line 352
    new-instance v0, Lcom/google/android/apps/reader/content/Table;

    const-string v1, "item_positions"

    invoke-direct {v0, v1}, Lcom/google/android/apps/reader/content/Table;-><init>(Ljava/lang/String;)V

    .line 355
    .local v0, table:Lcom/google/android/apps/reader/content/Table;
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "item_list_id"

    const-string v3, "TEXT NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 358
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "account_name"

    const-string v3, "TEXT NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 359
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "item_id"

    const-string v3, "TEXT NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 362
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "position"

    const-string v3, "INTEGER NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 382
    const-string v1, "UNIQUE (account_name, item_list_id, item_id) ON CONFLICT IGNORE"

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addConstraint(Ljava/lang/String;)V

    .line 384
    return-object v0
.end method

.method protected createItemsTable()Lcom/google/android/apps/reader/content/Table;
    .registers 5

    .prologue
    .line 289
    new-instance v0, Lcom/google/android/apps/reader/content/Table;

    const-string v1, "items"

    invoke-direct {v0, v1}, Lcom/google/android/apps/reader/content/Table;-><init>(Ljava/lang/String;)V

    .line 290
    .local v0, items:Lcom/google/android/apps/reader/content/Table;
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "account_name"

    const-string v3, "TEXT NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 291
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "_id"

    const-string v3, "INTEGER NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 292
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "id"

    const-string v3, "INTEGER NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 293
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "external_id"

    const-string v3, "TEXT NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 294
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "crawl_time"

    const-string v3, "TEXT NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 295
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "title"

    const-string v3, "TEXT NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 296
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "title_plaintext"

    const-string v3, "TEXT NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 297
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "author"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 298
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "alternate_href"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 299
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "source_title"

    const-string v3, "TEXT NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 300
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "source_title_plaintext"

    const-string v3, "TEXT NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 301
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "source_alternate_href"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 302
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "source_stream_id"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 303
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "published"

    const-string v3, "INTEGER NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 304
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "updated"

    const-string v3, "INTEGER NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 305
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "read"

    const-string v3, "BOOLEAN NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 306
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "starred"

    const-string v3, "BOOLEAN NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 307
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "liked"

    const-string v3, "BOOLEAN NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 308
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "shared"

    const-string v3, "BOOLEAN NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 309
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "locked"

    const-string v3, "BOOLEAN NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 310
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "source_link"

    const-string v3, "BOOLEAN NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 311
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "source_post"

    const-string v3, "BOOLEAN NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 312
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "like_count"

    const-string v3, "INTEGER NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 313
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "broadcaster"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 314
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "annotation"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 317
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "timestamp"

    const-string v3, "INTEGER NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 319
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "account_name"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "id"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->setUnique([Ljava/lang/String;)V

    .line 320
    return-object v0
.end method

.method protected createOverviewTable()Lcom/google/android/apps/reader/content/Table;
    .registers 5

    .prologue
    .line 429
    new-instance v0, Lcom/google/android/apps/reader/content/Table;

    const-string v1, "overview"

    invoke-direct {v0, v1}, Lcom/google/android/apps/reader/content/Table;-><init>(Ljava/lang/String;)V

    .line 430
    .local v0, overview:Lcom/google/android/apps/reader/content/Table;
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "_id"

    const-string v3, "INTEGER NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 431
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "account_name"

    const-string v3, "TEXT NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 432
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "account_type"

    const-string v3, "TEXT NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 433
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "sid"

    const-string v3, "TEXT NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 434
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "summary"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 435
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "image_url"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 436
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "position"

    const-string v3, "INTEGER"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 437
    return-object v0
.end method

.method protected createPendingActionsTable()Lcom/google/android/apps/reader/content/Table;
    .registers 5

    .prologue
    .line 518
    new-instance v0, Lcom/google/android/apps/reader/content/Table;

    const-string v1, "pending_actions"

    invoke-direct {v0, v1}, Lcom/google/android/apps/reader/content/Table;-><init>(Ljava/lang/String;)V

    .line 521
    .local v0, pendingActions:Lcom/google/android/apps/reader/content/Table;
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "_id"

    const-string v3, "INTEGER PRIMARY KEY AUTOINCREMENT"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 524
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "account_name"

    const-string v3, "TEXT NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 527
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "url"

    const-string v3, "TEXT NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 530
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "data"

    const-string v3, "TEXT NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 533
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "created"

    const-string v3, "INTEGER NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 536
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "committed"

    const-string v3, "INTEGER"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 538
    return-object v0
.end method

.method protected createRecommendationsTable()Lcom/google/android/apps/reader/content/Table;
    .registers 5

    .prologue
    .line 247
    new-instance v0, Lcom/google/android/apps/reader/content/Table;

    const-string v1, "recommendations"

    invoke-direct {v0, v1}, Lcom/google/android/apps/reader/content/Table;-><init>(Ljava/lang/String;)V

    .line 248
    .local v0, recommendations:Lcom/google/android/apps/reader/content/Table;
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "account_name"

    const-string v3, "TEXT NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 249
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "account_type"

    const-string v3, "TEXT NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 250
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "_id"

    const-string v3, "INTEGER NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 251
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "id"

    const-string v3, "TEXT NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 252
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "position"

    const-string v3, "INTEGER NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 253
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "title"

    const-string v3, "TEXT NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 254
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "snippet"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 255
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "account_name"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "id"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->setUnique([Ljava/lang/String;)V

    .line 256
    return-object v0
.end method

.method protected createStreamDetailsTable()Lcom/google/android/apps/reader/content/Table;
    .registers 5

    .prologue
    .line 441
    new-instance v0, Lcom/google/android/apps/reader/content/Table;

    const-string v1, "stream_details"

    invoke-direct {v0, v1}, Lcom/google/android/apps/reader/content/Table;-><init>(Ljava/lang/String;)V

    .line 442
    .local v0, details:Lcom/google/android/apps/reader/content/Table;
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "_id"

    const-string v3, "INTEGER NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 443
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "stream_id"

    const-string v3, "TEXT NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 444
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "account_name"

    const-string v3, "TEXT NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 445
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "account_type"

    const-string v3, "TEXT NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 446
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "subscribers"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 447
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "updated"

    const-string v3, "INTEGER"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 448
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "feed_url"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 449
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "day_chart_url"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 450
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "hour_chart_url"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 451
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "week_chart_url"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 452
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "account_name"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "stream_id"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->setUnique([Ljava/lang/String;)V

    .line 453
    return-object v0
.end method

.method protected createSubscriptionCategoriesTable()Lcom/google/android/apps/reader/content/Table;
    .registers 5

    .prologue
    .line 273
    new-instance v0, Lcom/google/android/apps/reader/content/Table;

    const-string v1, "subscription_categories"

    invoke-direct {v0, v1}, Lcom/google/android/apps/reader/content/Table;-><init>(Ljava/lang/String;)V

    .line 274
    .local v0, table:Lcom/google/android/apps/reader/content/Table;
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "account_name"

    const-string v3, "TEXT NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 275
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "subscription_id"

    const-string v3, "TEXT NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 276
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "tag_id"

    const-string v3, "TEXT NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 283
    const-string v1, "UNIQUE (account_name, subscription_id, tag_id) ON CONFLICT REPLACE"

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addConstraint(Ljava/lang/String;)V

    .line 285
    return-object v0
.end method

.method protected createSubscriptionsTable()Lcom/google/android/apps/reader/content/Table;
    .registers 5

    .prologue
    .line 234
    new-instance v0, Lcom/google/android/apps/reader/content/Table;

    const-string v1, "subscriptions"

    invoke-direct {v0, v1}, Lcom/google/android/apps/reader/content/Table;-><init>(Ljava/lang/String;)V

    .line 235
    .local v0, subscriptions:Lcom/google/android/apps/reader/content/Table;
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "account_name"

    const-string v3, "TEXT NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 236
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "_id"

    const-string v3, "INTEGER NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 237
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "id"

    const-string v3, "TEXT NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 238
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "title"

    const-string v3, "TEXT NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 239
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "sortid"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 240
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "firstitemmsec"

    const-string v3, "INTEGER"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 241
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "html_url"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 242
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "account_name"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "id"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->setUnique([Ljava/lang/String;)V

    .line 243
    return-object v0
.end method

.method protected createTagsTable()Lcom/google/android/apps/reader/content/Table;
    .registers 5

    .prologue
    .line 220
    new-instance v0, Lcom/google/android/apps/reader/content/Table;

    const-string v1, "tags"

    invoke-direct {v0, v1}, Lcom/google/android/apps/reader/content/Table;-><init>(Ljava/lang/String;)V

    .line 221
    .local v0, tags:Lcom/google/android/apps/reader/content/Table;
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "account_name"

    const-string v3, "TEXT NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 222
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "_id"

    const-string v3, "INTEGER NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 223
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "id"

    const-string v3, "TEXT NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 224
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "label"

    const-string v3, "TEXT NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 225
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "sortid"

    const-string v3, "TEXT NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 228
    const-string v1, "UNIQUE (account_name, id) ON CONFLICT IGNORE"

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addConstraint(Ljava/lang/String;)V

    .line 230
    return-object v0
.end method

.method protected createTimestampsTable()Lcom/google/android/apps/reader/content/Table;
    .registers 5

    .prologue
    .line 457
    new-instance v0, Lcom/google/android/apps/reader/content/Table;

    const-string v1, "timestamps"

    invoke-direct {v0, v1}, Lcom/google/android/apps/reader/content/Table;-><init>(Ljava/lang/String;)V

    .line 460
    .local v0, timestamps:Lcom/google/android/apps/reader/content/Table;
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "account_name"

    const-string v3, "TEXT NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 463
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "url"

    const-string v3, "TEXT NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 466
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "timestamp"

    const-string v3, "INTEGER NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 468
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "account_name"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "url"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->setUnique([Ljava/lang/String;)V

    .line 470
    return-object v0
.end method

.method protected createUnreadCountsTable()Lcom/google/android/apps/reader/content/Table;
    .registers 5

    .prologue
    .line 260
    new-instance v0, Lcom/google/android/apps/reader/content/Table;

    const-string v1, "unread_counts"

    invoke-direct {v0, v1}, Lcom/google/android/apps/reader/content/Table;-><init>(Ljava/lang/String;)V

    .line 261
    .local v0, table:Lcom/google/android/apps/reader/content/Table;
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "account_name"

    const-string v3, "TEXT NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 262
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "_id"

    const-string v3, "INTEGER NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 263
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "stream_id"

    const-string v3, "TEXT KEY NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 264
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "newest_item_timestamp"

    const-string v3, "INTEGER NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 265
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "last_read_item_timestamp"

    const-string v3, "INTEGER NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 266
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "unread_count"

    const-string v3, "INTEGER NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 267
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "max_unread_count"

    const-string v3, "INTEGER NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 268
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "account_name"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "stream_id"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->setUnique([Ljava/lang/String;)V

    .line 269
    return-object v0
.end method

.method protected createUsageTable()Lcom/google/android/apps/reader/content/Table;
    .registers 5

    .prologue
    .line 542
    new-instance v0, Lcom/google/android/apps/reader/content/Table;

    const-string v1, "usage"

    invoke-direct {v0, v1}, Lcom/google/android/apps/reader/content/Table;-><init>(Ljava/lang/String;)V

    .line 545
    .local v0, usage:Lcom/google/android/apps/reader/content/Table;
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "account_name"

    const-string v3, "TEXT NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 548
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "stream_id"

    const-string v3, "TEXT NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 551
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "timestamp"

    const-string v3, "INTEGER NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 553
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "account_name"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "stream_id"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->setUnique([Ljava/lang/String;)V

    .line 555
    return-object v0
.end method

.method protected createUserInfoTable()Lcom/google/android/apps/reader/content/Table;
    .registers 5

    .prologue
    .line 416
    new-instance v0, Lcom/google/android/apps/reader/content/Table;

    const-string v1, "user_info"

    invoke-direct {v0, v1}, Lcom/google/android/apps/reader/content/Table;-><init>(Ljava/lang/String;)V

    .line 417
    .local v0, userInfo:Lcom/google/android/apps/reader/content/Table;
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "account_name"

    const-string v3, "TEXT NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 418
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "_id"

    const-string v3, "INTEGER NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 419
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "user_id"

    const-string v3, "TEXT NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 420
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "user_name"

    const-string v3, "TEXT NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 421
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "user_profile_id"

    const-string v3, "TEXT NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 422
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "user_email"

    const-string v3, "TEXT NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 423
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "blogger_user"

    const-string v3, "BOOLEAN NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 424
    new-instance v1, Lcom/google/android/apps/reader/content/Column;

    const-string v2, "signup_time"

    const-string v3, "INTEGER NOT NULL"

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/reader/content/Column;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/content/Table;->addColumn(Lcom/google/android/apps/reader/content/Column;)V

    .line 425
    return-object v0
.end method

.method protected dropAllTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6
    .parameter "db"

    .prologue
    .line 563
    iget-object v3, p0, Lcom/google/android/apps/reader/content/ReaderDatabase;->mTables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/reader/content/Table;

    .line 564
    .local v2, table:Lcom/google/android/apps/reader/content/Table;
    invoke-virtual {v2}, Lcom/google/android/apps/reader/content/Table;->getDropTableStatement()Ljava/lang/String;

    move-result-object v1

    .line 565
    .local v1, sql:Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_6

    .line 568
    .end local v1           #sql:Ljava/lang/String;
    .end local v2           #table:Lcom/google/android/apps/reader/content/Table;
    :cond_1a
    const-string v3, "DROP TABLE IF EXISTS item_contents;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 569
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 580
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 582
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/content/ReaderDatabase;->createAllTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 583
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 585
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 587
    return-void

    .line 585
    :catchall_d
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 604
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 606
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/content/ReaderDatabase;->dropAllTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 607
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/content/ReaderDatabase;->createAllTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 608
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    .line 610
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 612
    return-void

    .line 610
    :catchall_10
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 591
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 593
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/content/ReaderDatabase;->dropAllTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 594
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/content/ReaderDatabase;->createAllTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 595
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    .line 597
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 599
    return-void

    .line 597
    :catchall_10
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method
