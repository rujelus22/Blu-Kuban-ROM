.class Lcom/google/android/apps/reader/content/ItemList;
.super Ljava/lang/Object;
.source "ItemList.java"


# instance fields
.field private final mAccount:Lcom/google/android/accounts/Account;

.field private final mExcludeTarget:Ljava/lang/String;

.field private final mId:Ljava/lang/String;

.field private final mQuery:Ljava/lang/String;

.field private final mRanking:Ljava/lang/String;

.field private final mStreamId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "account"
    .parameter "query"
    .parameter "streamId"

    .prologue
    const/4 v0, 0x0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    if-nez p1, :cond_c

    .line 170
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 172
    :cond_c
    if-nez p2, :cond_14

    .line 173
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 175
    :cond_14
    iput-object p1, p0, Lcom/google/android/apps/reader/content/ItemList;->mAccount:Lcom/google/android/accounts/Account;

    .line 176
    iput-object p2, p0, Lcom/google/android/apps/reader/content/ItemList;->mQuery:Ljava/lang/String;

    .line 177
    iput-object p3, p0, Lcom/google/android/apps/reader/content/ItemList;->mStreamId:Ljava/lang/String;

    .line 178
    iput-object v0, p0, Lcom/google/android/apps/reader/content/ItemList;->mExcludeTarget:Ljava/lang/String;

    .line 179
    iput-object v0, p0, Lcom/google/android/apps/reader/content/ItemList;->mRanking:Ljava/lang/String;

    .line 180
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/ItemList;->createId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/content/ItemList;->mId:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public constructor <init>(Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "account"
    .parameter "streamId"
    .parameter "excludeTarget"
    .parameter "ranking"

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    if-nez p1, :cond_b

    .line 149
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 151
    :cond_b
    if-nez p2, :cond_13

    .line 152
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 154
    :cond_13
    if-nez p4, :cond_1b

    .line 155
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 157
    :cond_1b
    iput-object p1, p0, Lcom/google/android/apps/reader/content/ItemList;->mAccount:Lcom/google/android/accounts/Account;

    .line 158
    iput-object p2, p0, Lcom/google/android/apps/reader/content/ItemList;->mStreamId:Ljava/lang/String;

    .line 159
    iput-object p3, p0, Lcom/google/android/apps/reader/content/ItemList;->mExcludeTarget:Ljava/lang/String;

    .line 160
    iput-object p4, p0, Lcom/google/android/apps/reader/content/ItemList;->mRanking:Ljava/lang/String;

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/reader/content/ItemList;->mQuery:Ljava/lang/String;

    .line 162
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/ItemList;->createId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/content/ItemList;->mId:Ljava/lang/String;

    .line 163
    return-void
.end method

.method private copyTimestamps(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V
    .registers 13
    .parameter "db"
    .parameter "values"

    .prologue
    const/4 v9, 0x2

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 533
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ItemList;->mStreamId:Ljava/lang/String;

    if-eqz v0, :cond_4e

    .line 534
    const-string v1, "unread_counts"

    .line 535
    .local v1, table:Ljava/lang/String;
    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "newest_item_timestamp"

    aput-object v0, v2, v6

    const-string v0, "last_read_item_timestamp"

    aput-object v0, v2, v7

    .line 538
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "account_name = ? AND stream_id = ?"

    .line 539
    .local v3, selection:Ljava/lang/String;
    new-array v4, v9, [Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/apps/reader/content/ItemList;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v0, v0, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v4, v6

    iget-object v0, p0, Lcom/google/android/apps/reader/content/ItemList;->mStreamId:Ljava/lang/String;

    aput-object v0, v4, v7

    .local v4, selectionArgs:[Ljava/lang/String;
    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    .line 542
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 544
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_29
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 545
    const-string v0, "newest_item_timestamp"

    const/4 v5, 0x0

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p2, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 546
    const-string v0, "last_read_item_timestamp"

    const/4 v5, 0x1

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p2, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_4b
    .catchall {:try_start_29 .. :try_end_4b} :catchall_4f

    .line 549
    :cond_4b
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 552
    .end local v1           #table:Ljava/lang/String;
    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_4e
    return-void

    .line 549
    .restart local v1       #table:Ljava/lang/String;
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    .restart local v8       #cursor:Landroid/database/Cursor;
    :catchall_4f
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private createId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/ItemList;->getBaseUri()Landroid/net/Uri;

    move-result-object v0

    .line 235
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static deleteByStreamId(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    const-string v0, "account_name = ? AND stream_id = ?"

    .line 72
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 73
    const-string v2, "item_lists"

    invoke-virtual {p0, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 74
    return-void
.end method

.method private getBaseUri()Landroid/net/Uri;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 223
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ItemList;->mQuery:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 224
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ItemList;->mStreamId:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/reader/content/ItemList;->mQuery:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/google/android/apps/reader/net/ReaderUri;->searchItemsIds(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    .line 226
    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ItemList;->mStreamId:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/reader/content/ItemList;->mExcludeTarget:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/reader/content/ItemList;->mRanking:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/apps/reader/content/ItemList;->map(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/reader/net/ReaderUri;->streamContents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_d
.end method

.method private getItemListColumnAsLong(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)J
    .registers 16
    .parameter "db"
    .parameter "columnName"
    .parameter "defaultValue"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 358
    const-string v1, "item_lists"

    .line 359
    .local v1, table:Ljava/lang/String;
    new-array v2, v10, [Ljava/lang/String;

    aput-object p2, v2, v9

    .line 360
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "account_name = ? AND id = ?"

    .line 361
    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/apps/reader/content/ItemList;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v0, v0, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v4, v9

    iget-object v0, p0, Lcom/google/android/apps/reader/content/ItemList;->mId:Ljava/lang/String;

    aput-object v0, v4, v10

    .line 362
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 363
    .local v5, groupBy:Ljava/lang/String;
    const/4 v6, 0x0

    .line 364
    .local v6, having:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, orderBy:Ljava/lang/String;
    move-object v0, p1

    .line 365
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 368
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_1f
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 369
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_33

    move-result-wide v9

    .line 374
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :goto_2d
    return-wide v9

    :cond_2e
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-wide v9, p3

    goto :goto_2d

    :catchall_33
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static invalidateByStreamId(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;)I
    .registers 9
    .parameter "db"
    .parameter "account"
    .parameter "streamId"

    .prologue
    .line 55
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 56
    .local v0, values:Landroid/content/ContentValues;
    const-string v3, "timestamp"

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 58
    const-string v2, "account_name = ? AND stream_id = ?"

    .line 59
    .local v2, whereClause:Ljava/lang/String;
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v1, v3

    const/4 v3, 0x1

    aput-object p2, v1, v3

    .line 60
    .local v1, whereArgs:[Ljava/lang/String;
    const-string v3, "item_lists"

    invoke-virtual {p0, v3, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public static invalidateByStreamIds(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/util/List;)I
    .registers 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/google/android/accounts/Account;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 86
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 87
    const-string v0, "timestamp"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "account_name = ? AND stream_id IN ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    const/4 v2, 0x0

    :goto_18
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2d

    .line 91
    if-eqz v2, :cond_25

    .line 92
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :cond_25
    const/16 v3, 0x3f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 96
    :cond_2d
    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 99
    iget-object v3, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 103
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 104
    const-string v2, "item_lists"

    invoke-virtual {p0, v2, v1, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static map(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "ranking"

    .prologue
    .line 112
    if-nez p0, :cond_a

    .line 113
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Ranking is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_a
    const-string v0, "newest"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 116
    const-string v0, "n"

    .line 128
    :goto_14
    return-object v0

    .line 117
    :cond_15
    const-string v0, "oldest"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 118
    const-string v0, "o"

    goto :goto_14

    .line 119
    :cond_20
    const-string v0, "auto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 120
    const-string v0, "a"

    goto :goto_14

    .line 121
    :cond_2b
    const-string v0, "hybrid"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 122
    const-string v0, "h"

    goto :goto_14

    .line 123
    :cond_36
    const-string v0, "date"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 124
    const-string v0, "n"

    goto :goto_14

    .line 125
    :cond_41
    const-string v0, "magic"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 126
    const-string v0, "a"

    goto :goto_14

    .line 128
    :cond_4c
    const-string v0, "n"

    goto :goto_14
.end method


# virtual methods
.method public createItemsIdsUri(I)Landroid/net/Uri;
    .registers 5
    .parameter "n"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ItemList;->mQuery:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 209
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ItemList;->mStreamId:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/reader/content/ItemList;->mQuery:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/reader/net/ReaderUri;->searchItemsIds(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    .line 211
    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ItemList;->mStreamId:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/reader/content/ItemList;->mExcludeTarget:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/reader/content/ItemList;->mRanking:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/apps/reader/content/ItemList;->map(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/apps/reader/net/ReaderUri;->streamItemsIds(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_c
.end method

.method public createStreamContentsUri(I)Landroid/net/Uri;
    .registers 5
    .parameter "n"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ItemList;->mStreamId:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/reader/content/ItemList;->mExcludeTarget:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/reader/content/ItemList;->mRanking:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/apps/reader/content/ItemList;->map(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/apps/reader/net/ReaderUri;->streamContents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public deleteItemPositions(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6
    .parameter

    .prologue
    .line 249
    const-string v0, "account_name = ? AND item_list_id = ?"

    .line 250
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/reader/content/ItemList;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v3, v3, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/apps/reader/content/ItemList;->mId:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 253
    const-string v2, "item_positions"

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 254
    return-void
.end method

.method public deleteReadItemPositions(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6
    .parameter

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ItemList;->excludesRead()Z

    move-result v0

    if-nez v0, :cond_e

    .line 268
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tried to filter unfiltered stream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    const-string v1, "account_name = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    const-string v1, "item_list_id = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    const-string v1, "item_id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    const-string v1, "SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    const-string v1, "items.id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    const-string v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    const-string v1, "item_positions, items"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    const-string v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    const-string v1, "item_positions.account_name = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    const-string v1, "item_positions.item_list_id = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    const-string v1, "items.account_name = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    const-string v1, "items.read"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    const-string v1, "item_positions.account_name = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    const-string v1, "item_positions.item_id = items.id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/reader/content/ItemList;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v3, v3, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/apps/reader/content/ItemList;->mId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/apps/reader/content/ItemList;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v3, v3, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/apps/reader/content/ItemList;->mId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/android/apps/reader/content/ItemList;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v3, v3, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/android/apps/reader/content/ItemList;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v3, v3, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 299
    const-string v2, "item_positions"

    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 300
    return-void
.end method

.method public excludesRead()Z
    .registers 3

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ItemList;->mExcludeTarget:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 201
    const-string v0, "user/-/state/com.google/read"

    iget-object v1, p0, Lcom/google/android/apps/reader/content/ItemList;->mExcludeTarget:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/apps/reader/provider/ReaderStream;->unsetUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 203
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getAccount()Lcom/google/android/accounts/Account;
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ItemList;->mAccount:Lcom/google/android/accounts/Account;

    return-object v0
.end method

.method public getCacheTimestamp(Landroid/database/sqlite/SQLiteDatabase;)J
    .registers 5
    .parameter "db"

    .prologue
    .line 388
    const-string v0, "timestamp"

    const-wide/16 v1, -0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/apps/reader/content/ItemList;->getItemListColumnAsLong(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCrawlTimestamp(Landroid/database/sqlite/SQLiteDatabase;J)J
    .registers 13
    .parameter "db"
    .parameter "defaultValue"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 398
    const-string v1, "newest"

    iget-object v4, p0, Lcom/google/android/apps/reader/content/ItemList;->mRanking:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 399
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 400
    .local v0, builder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "item_positions, items"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 401
    const-string v1, "item_positions.account_name = "

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 402
    iget-object v1, p0, Lcom/google/android/apps/reader/content/ItemList;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v1, v1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 403
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 404
    const-string v1, "items.account_name = "

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 405
    iget-object v1, p0, Lcom/google/android/apps/reader/content/ItemList;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v1, v1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 406
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 407
    const-string v1, "item_positions.item_list_id = "

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 408
    iget-object v1, p0, Lcom/google/android/apps/reader/content/ItemList;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    .line 409
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 410
    const-string v1, "item_positions.item_id = items.id"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 411
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 412
    const-string v1, "item_positions.position = 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 413
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "crawl_time"

    aput-object v1, v2, v5

    .local v2, projection:[Ljava/lang/String;
    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    .line 416
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 418
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_66
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_75

    .line 419
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_70
    .catchall {:try_start_66 .. :try_end_70} :catchall_7a

    move-result-wide v3

    .line 424
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 427
    .end local v0           #builder:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v2           #projection:[Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    :goto_74
    return-wide v3

    .line 424
    .restart local v0       #builder:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v8       #cursor:Landroid/database/Cursor;
    :cond_75
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-wide v3, p2

    goto :goto_74

    :catchall_7a
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    .end local v0           #builder:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v2           #projection:[Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_7f
    move-wide v3, p2

    .line 427
    goto :goto_74
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ItemList;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getItemCount(Landroid/database/sqlite/SQLiteDatabase;)I
    .registers 13
    .parameter "db"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 435
    const-string v1, "item_positions"

    .line 436
    .local v1, table:Ljava/lang/String;
    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "COUNT(1)"

    aput-object v0, v2, v9

    .line 439
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "account_name = ? AND item_list_id = ?"

    .line 440
    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/apps/reader/content/ItemList;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v0, v0, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v4, v9

    iget-object v0, p0, Lcom/google/android/apps/reader/content/ItemList;->mId:Ljava/lang/String;

    aput-object v0, v4, v10

    .line 443
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 444
    .local v5, groupBy:Ljava/lang/String;
    const/4 v6, 0x0

    .line 445
    .local v6, having:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, sortOrder:Ljava/lang/String;
    move-object v0, p1

    .line 446
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 449
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_21
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 450
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_35

    move-result v0

    .line 455
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :goto_2f
    return v0

    :cond_30
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v0, v9

    goto :goto_2f

    :catchall_35
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getLocalContent(Landroid/database/sqlite/SQLiteDatabase;Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 15
    .parameter "db"
    .parameter "extras"

    .prologue
    .line 464
    if-nez p1, :cond_8

    .line 465
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 467
    :cond_8
    if-nez p2, :cond_10

    .line 468
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 470
    :cond_10
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/content/ItemList;->getItemCount(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v9

    .line 472
    .local v9, count:I
    const-string v1, "item_lists"

    .line 473
    .local v1, table:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "continuation"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "title"

    aput-object v3, v2, v0

    .line 476
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "account_name = ? AND id = ?"

    .line 477
    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/google/android/apps/reader/content/ItemList;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v5, v5, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v0, 0x1

    iget-object v5, p0, Lcom/google/android/apps/reader/content/ItemList;->mId:Ljava/lang/String;

    aput-object v5, v4, v0

    .line 480
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 481
    .local v5, groupBy:Ljava/lang/String;
    const/4 v6, 0x0

    .line 482
    .local v6, having:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, sortOrder:Ljava/lang/String;
    move-object v0, p1

    .line 483
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 486
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_3c
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 487
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 488
    .local v8, continuation:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 489
    .local v11, title:Ljava/lang/String;
    const-string v0, "android.intent.extra.TITLE"

    invoke-virtual {p2, v0, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    invoke-static {v9, v8}, Lcom/google/android/feeds/FeedLoader;->documentInfo(ILjava/lang/String;)Ljava/lang/Object;
    :try_end_54
    .catchall {:try_start_3c .. :try_end_54} :catchall_61

    move-result-object v0

    .line 495
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .end local v8           #continuation:Ljava/lang/String;
    .end local v11           #title:Ljava/lang/String;
    :goto_58
    return-object v0

    .line 492
    :cond_59
    :try_start_59
    invoke-static {v9}, Lcom/google/android/feeds/FeedLoader;->documentInfo(I)Ljava/lang/Object;
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_61

    move-result-object v0

    .line 495
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_58

    :catchall_61
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getMaxPosition(Landroid/database/sqlite/SQLiteDatabase;)I
    .registers 13
    .parameter "db"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 503
    const-string v1, "item_positions"

    .line 504
    .local v1, table:Ljava/lang/String;
    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "MAX(position)"

    aput-object v0, v2, v9

    .line 507
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "account_name = ? AND item_list_id = ?"

    .line 508
    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/apps/reader/content/ItemList;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v0, v0, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v4, v9

    iget-object v0, p0, Lcom/google/android/apps/reader/content/ItemList;->mId:Ljava/lang/String;

    aput-object v0, v4, v10

    .line 511
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 512
    .local v5, groupBy:Ljava/lang/String;
    const/4 v6, 0x0

    .line 513
    .local v6, having:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, sortOrder:Ljava/lang/String;
    move-object v0, p1

    .line 514
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 517
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_21
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 518
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_35

    move-result v0

    .line 523
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :goto_2f
    return v0

    :cond_30
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v0, v9

    goto :goto_2f

    :catchall_35
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getStreamId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ItemList;->mStreamId:Ljava/lang/String;

    return-object v0
.end method

.method public isMagic()Z
    .registers 3

    .prologue
    .line 192
    const-string v0, "auto"

    iget-object v1, p0, Lcom/google/android/apps/reader/content/ItemList;->mRanking:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSearch()Z
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ItemList;->mQuery:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public notifyChange(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 555
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ItemList;->mAccount:Lcom/google/android/accounts/Account;

    invoke-static {p1, v0}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->notifyChange(Landroid/content/Context;Lcom/google/android/accounts/Account;)V

    .line 556
    return-void
.end method

.method public replaceItemList(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;JJLjava/lang/String;Ljava/lang/String;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 335
    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V

    .line 336
    const-string v0, "account_name"

    iget-object v1, p0, Lcom/google/android/apps/reader/content/ItemList;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v1, v1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v0, "id"

    iget-object v1, p0, Lcom/google/android/apps/reader/content/ItemList;->mId:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v0, "timestamp"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 339
    const-string v0, "date"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 340
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/reader/content/ItemList;->copyTimestamps(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    .line 341
    if-eqz p7, :cond_2f

    .line 342
    const-string v0, "continuation"

    invoke-virtual {p2, v0, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :cond_2f
    if-eqz p8, :cond_36

    .line 345
    const-string v0, "title"

    invoke-virtual {p2, v0, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :cond_36
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ItemList;->mStreamId:Ljava/lang/String;

    if-eqz v0, :cond_41

    .line 348
    const-string v0, "stream_id"

    iget-object v1, p0, Lcom/google/android/apps/reader/content/ItemList;->mStreamId:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :cond_41
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ItemList;->mExcludeTarget:Ljava/lang/String;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/google/android/apps/reader/content/ItemList;->mExcludeTarget:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderStream;->isRead(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    const/4 v0, 0x1

    .line 352
    :goto_4e
    const-string v1, "exclude_read"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 354
    const-string v0, "item_lists"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 355
    return-void

    .line 351
    :cond_5e
    const/4 v0, 0x0

    goto :goto_4e
.end method

.method public setItemPosition(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;JI)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 313
    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V

    .line 314
    const-string v0, "account_name"

    iget-object v1, p0, Lcom/google/android/apps/reader/content/ItemList;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v1, v1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v0, "item_list_id"

    iget-object v1, p0, Lcom/google/android/apps/reader/content/ItemList;->mId:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v0, "item_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 317
    const-string v0, "position"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 318
    const-string v0, "item_positions"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 319
    return-void
.end method
