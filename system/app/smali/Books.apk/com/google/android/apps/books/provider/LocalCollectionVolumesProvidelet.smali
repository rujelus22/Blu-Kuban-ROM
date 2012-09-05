.class Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;
.super Ljava/lang/Object;
.source "LocalCollectionVolumesProvidelet.java"

# interfaces
.implements Lcom/google/android/apps/books/provider/Providelet;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/books/provider/database/BooksDatabase;)V
    .registers 4
    .parameter "context"
    .parameter "database"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "missing context"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v0, "missing database"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iput-object p1, p0, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    .line 49
    return-void
.end method

.method private checkValues(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .registers 6
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 57
    const-string v1, "timestamp"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 58
    .local v0, timestamp:Ljava/lang/Long;
    const-string v1, "Missing timestamp"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->isCallerSyncAdapter(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "dirty"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    :cond_19
    const/4 v1, 0x1

    :goto_1a
    const-string v2, "Non sync-adapter should allow provider to control dirty flag"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 62
    return-void

    .line 59
    :cond_20
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method private getSelectionBuilder(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;
    .registers 10
    .parameter "match"
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 156
    new-instance v0, Lcom/google/android/apps/books/util/SelectionBuilder;

    invoke-direct {v0}, Lcom/google/android/apps/books/util/SelectionBuilder;-><init>()V

    .line 157
    .local v0, builder:Lcom/google/android/apps/books/util/SelectionBuilder;
    invoke-virtual {v0, p3, p4}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 158
    packed-switch p1, :pswitch_data_46

    .line 170
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad match "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 162
    :pswitch_2e
    invoke-direct {p0, v0, p2}, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->restrictAccountAndCollectionId(Lcom/google/android/apps/books/util/SelectionBuilder;Landroid/net/Uri;)V

    .line 172
    :goto_31
    :pswitch_31
    return-object v0

    .line 165
    :pswitch_32
    invoke-direct {p0, v0, p2}, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->restrictAccountAndCollectionId(Lcom/google/android/apps/books/util/SelectionBuilder;Landroid/net/Uri;)V

    .line 166
    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumes;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, volumeId:Ljava/lang/String;
    const-string v2, "volume_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    goto :goto_31

    .line 158
    nop

    :pswitch_data_46
    .packed-switch 0x2c6
        :pswitch_31
        :pswitch_2e
        :pswitch_32
    .end packed-switch
.end method

.method private isCallerSyncAdapter(Landroid/net/Uri;)Z
    .registers 4
    .parameter "uri"

    .prologue
    .line 52
    const-string v0, "callerIsSyncAdapter"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/google/android/apps/books/util/UriUtils;->readBooleanQueryParameter(Landroid/net/Uri;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private notifyChange(Landroid/net/Uri;)V
    .registers 6
    .parameter "uri"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->mContext:Landroid/content/Context;

    .line 189
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 190
    .local v2, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 194
    .local v1, observer:Landroid/database/ContentObserver;
    const/4 v3, 0x1

    invoke-virtual {v2, p1, v1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 195
    return-void
.end method

.method private restrictAccountAndCollectionId(Lcom/google/android/apps/books/util/SelectionBuilder;Landroid/net/Uri;)V
    .registers 10
    .parameter "builder"
    .parameter "uri"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 176
    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumes;->getAccountName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, account:Ljava/lang/String;
    const-string v3, "account_name=?"

    new-array v4, v5, [Ljava/lang/String;

    aput-object v0, v4, v6

    invoke-virtual {p1, v3, v4}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 178
    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumes;->getCollectionId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 179
    .local v1, collectionId:J
    const-string v3, "collection_id=?"

    new-array v4, v5, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v3, v4}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 180
    return-void
.end method


# virtual methods
.method public delete(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9
    .parameter "match"
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 136
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->getSelectionBuilder(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    .line 137
    .local v0, builder:Lcom/google/android/apps/books/util/SelectionBuilder;
    iget-object v3, p0, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v3}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 138
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "collection_volumes"

    invoke-virtual {v0, v3}, Lcom/google/android/apps/books/util/SelectionBuilder;->table(Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->delete(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v1

    .line 139
    .local v1, count:I
    if-eqz v1, :cond_19

    .line 140
    invoke-direct {p0, p2}, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->notifyChange(Landroid/net/Uri;)V

    .line 142
    :cond_19
    return v1
.end method

.method public insert(ILandroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 13
    .parameter "match"
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 89
    invoke-direct {p0, p2, p3}, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->checkValues(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 91
    const/16 v6, 0x2c6

    if-eq p1, v6, :cond_2a

    .line 92
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad match "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for URI "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 94
    :cond_2a
    invoke-direct {p0, p2}, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->isCallerSyncAdapter(Landroid/net/Uri;)Z

    move-result v6

    if-nez v6, :cond_3a

    .line 95
    const-string v6, "dirty"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    :cond_3a
    const-string v6, "account_name"

    invoke-virtual {p3, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, accountName:Ljava/lang/String;
    const-string v6, "collection_id"

    invoke-virtual {p3, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 100
    .local v1, collectionId:J
    const-string v6, "volume_id"

    invoke-virtual {p3, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 102
    .local v5, volumeId:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v6}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 103
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v6, "collection_volumes"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7, p3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 105
    invoke-direct {p0, p2}, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->notifyChange(Landroid/net/Uri;)V

    .line 109
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumes;->dirUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    .line 110
    .local v3, collectionUri:Landroid/net/Uri;
    invoke-direct {p0, v3}, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->notifyChange(Landroid/net/Uri;)V

    .line 112
    invoke-static {v0, v1, v2, v5}, Lcom/google/android/apps/books/provider/BooksContract$CollectionVolumes;->itemUri(Ljava/lang/String;JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    return-object v6
.end method

.method public query(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 15
    .parameter "match"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->getSelectionBuilder(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    .line 71
    .local v0, builder:Lcom/google/android/apps/books/util/SelectionBuilder;
    invoke-direct {p0, p2}, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->isCallerSyncAdapter(Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 72
    const-string v4, "dirty!=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 75
    :cond_1a
    iget-object v4, p0, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v4}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 76
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "view_collection_volumes"

    invoke-virtual {v0, v4}, Lcom/google/android/apps/books/util/SelectionBuilder;->table(Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, p3, p6}, Lcom/google/android/apps/books/util/SelectionBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 78
    .local v1, c:Landroid/database/Cursor;
    iget-object v4, p0, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 79
    .local v3, resolver:Landroid/content/ContentResolver;
    invoke-interface {v1, v3, p2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 81
    return-object v1
.end method

.method public update(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10
    .parameter "match"
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 121
    invoke-direct {p0, p2, p3}, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->checkValues(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 123
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->getSelectionBuilder(ILandroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    .line 124
    .local v0, builder:Lcom/google/android/apps/books/util/SelectionBuilder;
    iget-object v3, p0, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v3}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 125
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "collection_volumes"

    invoke-virtual {v0, v3}, Lcom/google/android/apps/books/util/SelectionBuilder;->table(Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v3

    invoke-virtual {v3, v2, p3}, Lcom/google/android/apps/books/util/SelectionBuilder;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)I

    move-result v1

    .line 126
    .local v1, count:I
    if-eqz v1, :cond_1c

    .line 127
    invoke-direct {p0, p2}, Lcom/google/android/apps/books/provider/LocalCollectionVolumesProvidelet;->notifyChange(Landroid/net/Uri;)V

    .line 129
    :cond_1c
    return v1
.end method
