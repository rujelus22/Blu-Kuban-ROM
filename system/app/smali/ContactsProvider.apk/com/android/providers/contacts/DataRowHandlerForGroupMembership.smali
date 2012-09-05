.class public Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;
.super Lcom/android/providers/contacts/DataRowHandler;
.source "DataRowHandlerForGroupMembership.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/DataRowHandlerForGroupMembership$RawContactsQuery;
    }
.end annotation


# instance fields
.field private final mGroupIdCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Ljava/util/HashMap;)V
    .registers 6
    .parameter "context"
    .parameter "dbHelper"
    .parameter "aggregator"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/providers/contacts/ContactsDatabaseHelper;",
            "Lcom/android/providers/contacts/ContactAggregator;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p4, groupIdCache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;>;>;"
    const-string v0, "vnd.android.cursor.item/group_membership"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/providers/contacts/DataRowHandler;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Ljava/lang/String;)V

    .line 75
    iput-object p4, p0, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->mGroupIdCache:Ljava/util/HashMap;

    .line 76
    return-void
.end method

.method private getOrMakeGroup(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Lcom/android/providers/contacts/AccountWithDataSet;)J
    .registers 28
    .parameter "db"
    .parameter "rawContactId"
    .parameter "sourceId"
    .parameter "accountWithDataSet"

    .prologue
    .line 192
    if-nez p5, :cond_4b

    .line 193
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/DataRowHandler;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 194
    const-string v4, "raw_contacts"

    sget-object v5, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership$RawContactsQuery;->COLUMNS:[Ljava/lang/String;

    const-string v6, "_id=?"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/providers/contacts/DataRowHandler;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 197
    .local v13, c:Landroid/database/Cursor;
    :try_start_20
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 198
    const/4 v3, 0x2

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 199
    .local v11, accountName:Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 200
    .local v12, accountType:Ljava/lang/String;
    const/4 v3, 0x3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 201
    .local v15, dataSet:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_48

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_48

    .line 202
    new-instance p5, Lcom/android/providers/contacts/AccountWithDataSet;

    .end local p5
    move-object/from16 v0, p5

    invoke-direct {v0, v11, v12, v15}, Lcom/android/providers/contacts/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_20 .. :try_end_48} :catchall_55

    .line 207
    .end local v11           #accountName:Ljava/lang/String;
    .end local v12           #accountType:Ljava/lang/String;
    .end local v15           #dataSet:Ljava/lang/String;
    .restart local p5
    :cond_48
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 211
    .end local v13           #c:Landroid/database/Cursor;
    :cond_4b
    if-nez p5, :cond_5a

    .line 212
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "if the groupmembership only has a sourceid the the contact must be associated with an account"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 207
    .end local p5
    .restart local v13       #c:Landroid/database/Cursor;
    :catchall_55
    move-exception v3

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v3

    .line 217
    .end local v13           #c:Landroid/database/Cursor;
    .restart local p5
    :cond_5a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->mGroupIdCache:Ljava/util/HashMap;

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 218
    .local v16, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;>;"
    if-nez v16, :cond_7b

    .line 219
    new-instance v16, Ljava/util/ArrayList;

    .end local v16           #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;>;"
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 220
    .restart local v16       #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->mGroupIdCache:Ljava/util/HashMap;

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_7b
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 224
    .local v14, count:I
    const/16 v21, 0x0

    .local v21, i:I
    :goto_81
    move/from16 v0, v21

    if-ge v0, v14, :cond_c1

    .line 225
    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;

    .line 226
    .local v17, entry:Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->accountName:Ljava/lang/String;

    invoke-virtual/range {p5 .. p5}, Lcom/android/providers/contacts/AccountWithDataSet;->getAccountName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_be

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->accountType:Ljava/lang/String;

    invoke-virtual/range {p5 .. p5}, Lcom/android/providers/contacts/AccountWithDataSet;->getAccountType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_be

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->dataSet:Ljava/lang/String;

    invoke-virtual/range {p5 .. p5}, Lcom/android/providers/contacts/AccountWithDataSet;->getDataSet()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_be

    .line 229
    move-object/from16 v0, v17

    iget-wide v3, v0, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->groupId:J

    .line 281
    :goto_bd
    return-wide v3

    .line 224
    :cond_be
    add-int/lit8 v21, v21, 0x1

    goto :goto_81

    .line 233
    .end local v17           #entry:Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;
    :cond_c1
    new-instance v17, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;

    invoke-direct/range {v17 .. v17}, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;-><init>()V

    .line 234
    .restart local v17       #entry:Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;
    invoke-virtual/range {p5 .. p5}, Lcom/android/providers/contacts/AccountWithDataSet;->getAccountName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->accountName:Ljava/lang/String;

    .line 235
    invoke-virtual/range {p5 .. p5}, Lcom/android/providers/contacts/AccountWithDataSet;->getAccountType()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->accountType:Ljava/lang/String;

    .line 236
    invoke-virtual/range {p5 .. p5}, Lcom/android/providers/contacts/AccountWithDataSet;->getDataSet()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->dataSet:Ljava/lang/String;

    .line 237
    move-object/from16 v0, p4

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->sourceId:Ljava/lang/String;

    .line 238
    const/4 v3, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 243
    invoke-virtual/range {p5 .. p5}, Lcom/android/providers/contacts/AccountWithDataSet;->getDataSet()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_132

    .line 244
    const-string v4, "groups"

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "_id"

    aput-object v6, v5, v3

    const-string v6, "sourceid=? AND account_name=? AND account_type=? AND data_set IS NULL"

    const/4 v3, 0x3

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p4, v7, v3

    const/4 v3, 0x1

    invoke-virtual/range {p5 .. p5}, Lcom/android/providers/contacts/AccountWithDataSet;->getAccountName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    const/4 v3, 0x2

    invoke-virtual/range {p5 .. p5}, Lcom/android/providers/contacts/AccountWithDataSet;->getAccountType()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 262
    .restart local v13       #c:Landroid/database/Cursor;
    :goto_11b
    :try_start_11b
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_163

    .line 263
    const/4 v3, 0x0

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move-object/from16 v0, v17

    iput-wide v3, v0, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->groupId:J
    :try_end_12a
    .catchall {:try_start_11b .. :try_end_12a} :catchall_1bf

    .line 278
    :goto_12a
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 281
    move-object/from16 v0, v17

    iget-wide v3, v0, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->groupId:J

    goto :goto_bd

    .line 252
    .end local v13           #c:Landroid/database/Cursor;
    :cond_132
    const-string v4, "groups"

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "_id"

    aput-object v6, v5, v3

    const-string v6, "sourceid=? AND account_name=? AND account_type=? AND data_set=?"

    const/4 v3, 0x4

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p4, v7, v3

    const/4 v3, 0x1

    invoke-virtual/range {p5 .. p5}, Lcom/android/providers/contacts/AccountWithDataSet;->getAccountName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    const/4 v3, 0x2

    invoke-virtual/range {p5 .. p5}, Lcom/android/providers/contacts/AccountWithDataSet;->getAccountType()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    const/4 v3, 0x3

    invoke-virtual/range {p5 .. p5}, Lcom/android/providers/contacts/AccountWithDataSet;->getDataSet()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .restart local v13       #c:Landroid/database/Cursor;
    goto :goto_11b

    .line 265
    :cond_163
    :try_start_163
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 266
    .local v20, groupValues:Landroid/content/ContentValues;
    const-string v3, "account_name"

    invoke-virtual/range {p5 .. p5}, Lcom/android/providers/contacts/AccountWithDataSet;->getAccountName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v3, "account_type"

    invoke-virtual/range {p5 .. p5}, Lcom/android/providers/contacts/AccountWithDataSet;->getAccountType()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v3, "data_set"

    invoke-virtual/range {p5 .. p5}, Lcom/android/providers/contacts/AccountWithDataSet;->getDataSet()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v3, "sourceid"

    move-object/from16 v0, v20

    move-object/from16 v1, p4

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v3, "groups"

    const-string v4, "account_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v18

    .line 271
    .local v18, groupId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v18, v3

    if-gez v3, :cond_1c4

    .line 272
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to create a new group with this sourceid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1bf
    .catchall {:try_start_163 .. :try_end_1bf} :catchall_1bf

    .line 278
    .end local v18           #groupId:J
    .end local v20           #groupValues:Landroid/content/ContentValues;
    :catchall_1bf
    move-exception v3

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v3

    .line 275
    .restart local v18       #groupId:J
    .restart local v20       #groupValues:Landroid/content/ContentValues;
    :cond_1c4
    :try_start_1c4
    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/android/providers/contacts/ContactsProvider2$GroupIdCacheEntry;->groupId:J
    :try_end_1ca
    .catchall {:try_start_1c4 .. :try_end_1ca} :catchall_1bf

    goto/16 :goto_12a
.end method

.method private hasFavoritesGroupMembership(Landroid/database/sqlite/SQLiteDatabase;J)Z
    .registers 13
    .parameter "db"
    .parameter "rawContactId"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 118
    iget-object v4, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v5, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v4, v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v0

    .line 120
    .local v0, groupMembershipMimetypeId:J
    const-wide/16 v4, 0x0

    const-string v6, "SELECT COUNT(*) FROM data LEFT OUTER JOIN groups ON data.data1=groups._id WHERE mimetype_id=? AND data.raw_contact_id=? AND favorites!=0"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {p1, v6, v7}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_26

    .line 123
    .local v2, isStarred:Z
    :goto_25
    return v2

    .end local v2           #isStarred:Z
    :cond_26
    move v2, v3

    .line 120
    goto :goto_25
.end method

.method private resolveGroupSourceIdInValues(Lcom/android/providers/contacts/TransactionContext;JLandroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Z)V
    .registers 17
    .parameter "txContext"
    .parameter "rawContactId"
    .parameter "db"
    .parameter "values"
    .parameter "isInsert"

    .prologue
    .line 152
    const-string v0, "group_sourceid"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    .line 153
    .local v7, containsGroupSourceId:Z
    const-string v0, "data1"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    .line 154
    .local v6, containsGroupId:Z
    if-eqz v7, :cond_18

    if-eqz v6, :cond_18

    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "you are not allowed to set both the GroupMembership.GROUP_SOURCE_ID and GroupMembership.GROUP_ROW_ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_18
    if-nez v7, :cond_26

    if-nez v6, :cond_26

    .line 161
    if-eqz p6, :cond_47

    .line 162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "you must set exactly one of GroupMembership.GROUP_SOURCE_ID and GroupMembership.GROUP_ROW_ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_26
    if-eqz v7, :cond_47

    .line 171
    const-string v0, "group_sourceid"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 172
    .local v4, sourceId:Ljava/lang/String;
    invoke-virtual {p1, p2, p3}, Lcom/android/providers/contacts/TransactionContext;->getAccountWithDataSetForRawContact(J)Lcom/android/providers/contacts/AccountWithDataSet;

    move-result-object v5

    move-object v0, p0

    move-object v1, p4

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->getOrMakeGroup(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Lcom/android/providers/contacts/AccountWithDataSet;)J

    move-result-wide v8

    .line 174
    .local v8, groupId:J
    const-string v0, "group_sourceid"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 175
    const-string v0, "data1"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 177
    .end local v4           #sourceId:Ljava/lang/String;
    .end local v8           #groupId:J
    :cond_47
    return-void
.end method

.method private updateRawContactsStar(Landroid/database/sqlite/SQLiteDatabase;JZ)V
    .registers 11
    .parameter "db"
    .parameter "rawContactId"
    .parameter "starred"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 108
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 109
    .local v0, rawContactValues:Landroid/content/ContentValues;
    const-string v4, "starred"

    if-eqz p4, :cond_2b

    move v1, v2

    :goto_c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    const-string v1, "raw_contacts"

    const-string v4, "_id=?"

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {p1, v1, v0, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2a

    .line 112
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandler;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v1, p2, p3}, Lcom/android/providers/contacts/ContactAggregator;->updateStarred(J)V

    .line 114
    :cond_2a
    return-void

    :cond_2b
    move v1, v3

    .line 109
    goto :goto_c
.end method

.method private updateVisibility(Lcom/android/providers/contacts/TransactionContext;J)V
    .registers 8
    .parameter "txContext"
    .parameter "rawContactId"

    .prologue
    .line 140
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v0

    .line 141
    .local v0, contactId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_d

    .line 148
    :cond_c
    :goto_c
    return-void

    .line 145
    :cond_d
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateContactVisibleOnlyIfChanged(Lcom/android/providers/contacts/TransactionContext;J)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 146
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandler;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v2, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->updateAggregationAfterVisibilityChange(J)V

    goto :goto_c
.end method


# virtual methods
.method public delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I
    .registers 10
    .parameter "db"
    .parameter "txContext"
    .parameter "c"

    .prologue
    .line 128
    const/4 v5, 0x2

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 129
    .local v2, rawContactId:J
    invoke-direct {p0, p1, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->hasFavoritesGroupMembership(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v4

    .line 130
    .local v4, wasStarred:Z
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/DataRowHandler;->delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I

    move-result v0

    .line 131
    .local v0, count:I
    invoke-direct {p0, p1, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->hasFavoritesGroupMembership(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v1

    .line 132
    .local v1, isStarred:Z
    if-eqz v4, :cond_19

    if-nez v1, :cond_19

    .line 133
    const/4 v5, 0x0

    invoke-direct {p0, p1, v2, v3, v5}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->updateRawContactsStar(Landroid/database/sqlite/SQLiteDatabase;JZ)V

    .line 135
    :cond_19
    invoke-direct {p0, p2, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->updateVisibility(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 136
    return v0
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J
    .registers 15
    .parameter "db"
    .parameter "txContext"
    .parameter "rawContactId"
    .parameter "values"

    .prologue
    const/4 v6, 0x1

    .line 81
    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-object v4, p1

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->resolveGroupSourceIdInValues(Lcom/android/providers/contacts/TransactionContext;JLandroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Z)V

    .line 82
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandler;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J

    move-result-wide v7

    .line 83
    .local v7, dataId:J
    invoke-direct {p0, p1, p3, p4}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->hasFavoritesGroupMembership(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 84
    invoke-direct {p0, p1, p3, p4, v6}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->updateRawContactsStar(Landroid/database/sqlite/SQLiteDatabase;JZ)V

    .line 86
    :cond_16
    invoke-direct {p0, p2, p3, p4}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->updateVisibility(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 87
    return-wide v7
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z
    .registers 16
    .parameter "db"
    .parameter "txContext"
    .parameter "values"
    .parameter "c"
    .parameter "callerIsSyncAdapter"

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 93
    invoke-interface {p4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 94
    .local v2, rawContactId:J
    invoke-direct {p0, p1, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->hasFavoritesGroupMembership(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v8

    .local v8, wasStarred:Z
    move-object v0, p0

    move-object v1, p2

    move-object v4, p1

    move-object v5, p3

    .line 95
    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->resolveGroupSourceIdInValues(Lcom/android/providers/contacts/TransactionContext;JLandroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Z)V

    .line 96
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandler;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    move-result v0

    if-nez v0, :cond_18

    .line 104
    :goto_17
    return v6

    .line 99
    :cond_18
    invoke-direct {p0, p1, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->hasFavoritesGroupMembership(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v7

    .line 100
    .local v7, isStarred:Z
    if-eq v8, v7, :cond_21

    .line 101
    invoke-direct {p0, p1, v2, v3, v7}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->updateRawContactsStar(Landroid/database/sqlite/SQLiteDatabase;JZ)V

    .line 103
    :cond_21
    invoke-direct {p0, p2, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForGroupMembership;->updateVisibility(Lcom/android/providers/contacts/TransactionContext;J)V

    move v6, v9

    .line 104
    goto :goto_17
.end method
