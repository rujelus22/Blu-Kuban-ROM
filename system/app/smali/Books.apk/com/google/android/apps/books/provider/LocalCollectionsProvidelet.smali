.class Lcom/google/android/apps/books/provider/LocalCollectionsProvidelet;
.super Lcom/google/android/apps/books/provider/NotifyingProvidelet;
.source "LocalCollectionsProvidelet.java"


# instance fields
.field private final mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/books/provider/database/BooksDatabase;Lcom/google/android/apps/books/util/pool/Pool;)V
    .registers 5
    .parameter "context"
    .parameter "database"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/books/provider/database/BooksDatabase;",
            "Lcom/google/android/apps/books/util/pool/Pool",
            "<",
            "Lcom/google/android/apps/books/util/SelectionBuilder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p3, builderPool:Lcom/google/android/apps/books/util/pool/Pool;,"Lcom/google/android/apps/books/util/pool/Pool<Lcom/google/android/apps/books/util/SelectionBuilder;>;"
    invoke-direct {p0, p1, p3}, Lcom/google/android/apps/books/provider/NotifyingProvidelet;-><init>(Landroid/content/Context;Lcom/google/android/apps/books/util/pool/Pool;)V

    .line 32
    const-string v0, "missing database"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iput-object p2, p0, Lcom/google/android/apps/books/provider/LocalCollectionsProvidelet;->mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    .line 34
    return-void
.end method

.method private augmentSelectionBuilder(Lcom/google/android/apps/books/util/SelectionBuilder;ILandroid/net/Uri;)Lcom/google/android/apps/books/util/SelectionBuilder;
    .registers 10
    .parameter "builder"
    .parameter "match"
    .parameter "uri"

    .prologue
    .line 82
    packed-switch p2, :pswitch_data_42

    .line 95
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad match "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    :pswitch_26
    invoke-direct {p0, p1, p3}, Lcom/google/android/apps/books/provider/LocalCollectionsProvidelet;->restrictAccount(Lcom/google/android/apps/books/util/SelectionBuilder;Landroid/net/Uri;)V

    .line 98
    :goto_29
    :pswitch_29
    return-object p1

    .line 89
    :pswitch_2a
    invoke-direct {p0, p1, p3}, Lcom/google/android/apps/books/provider/LocalCollectionsProvidelet;->restrictAccount(Lcom/google/android/apps/books/util/SelectionBuilder;Landroid/net/Uri;)V

    .line 90
    invoke-static {p3}, Lcom/google/android/apps/books/provider/BooksContract$Collections;->getCollectionId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 91
    .local v0, collectionId:J
    const-string v2, "collection_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1, v2, v3}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    goto :goto_29

    .line 82
    nop

    :pswitch_data_42
    .packed-switch 0x2bc
        :pswitch_29
        :pswitch_26
        :pswitch_2a
    .end packed-switch
.end method

.method private restrictAccount(Lcom/google/android/apps/books/util/SelectionBuilder;Landroid/net/Uri;)V
    .registers 7
    .parameter "builder"
    .parameter "uri"

    .prologue
    .line 102
    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Collections;->getAccountName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, account:Ljava/lang/String;
    const-string v1, "account_name=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p1, v1, v2}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 104
    return-void
.end method


# virtual methods
.method public deleteWithoutNotify(ILandroid/net/Uri;Lcom/google/android/apps/books/util/SelectionBuilder;)I
    .registers 6
    .parameter "match"
    .parameter "uri"
    .parameter "builder"

    .prologue
    .line 68
    invoke-direct {p0, p3, p1, p2}, Lcom/google/android/apps/books/provider/LocalCollectionsProvidelet;->augmentSelectionBuilder(Lcom/google/android/apps/books/util/SelectionBuilder;ILandroid/net/Uri;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 69
    iget-object v1, p0, Lcom/google/android/apps/books/provider/LocalCollectionsProvidelet;->mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v1}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 70
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "collections"

    invoke-virtual {p3, v1}, Lcom/google/android/apps/books/util/SelectionBuilder;->table(Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/apps/books/util/SelectionBuilder;->delete(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v1

    return v1
.end method

.method public insertWithoutNotify(ILandroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 11
    .parameter "match"
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 46
    const/16 v4, 0x2bc

    if-eq p1, v4, :cond_27

    .line 47
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad match "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 50
    :cond_27
    const-string v4, "account_name"

    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, accountName:Ljava/lang/String;
    const-string v4, "collection_id"

    invoke-virtual {p3, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 53
    .local v1, collectionId:J
    iget-object v4, p0, Lcom/google/android/apps/books/provider/LocalCollectionsProvidelet;->mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v4}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 54
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "collections"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, p3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 55
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/books/provider/BooksContract$Collections;->itemUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v4

    return-object v4
.end method

.method public queryWithoutNotify(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/books/util/SelectionBuilder;)Landroid/database/Cursor;
    .registers 8
    .parameter "match"
    .parameter "uri"
    .parameter "projection"
    .parameter "sortOrder"
    .parameter "builder"

    .prologue
    .line 39
    invoke-direct {p0, p5, p1, p2}, Lcom/google/android/apps/books/provider/LocalCollectionsProvidelet;->augmentSelectionBuilder(Lcom/google/android/apps/books/util/SelectionBuilder;ILandroid/net/Uri;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 40
    iget-object v1, p0, Lcom/google/android/apps/books/provider/LocalCollectionsProvidelet;->mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v1}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 41
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "collections"

    invoke-virtual {p5, v1}, Lcom/google/android/apps/books/util/SelectionBuilder;->table(Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v1

    invoke-virtual {v1, v0, p3, p4}, Lcom/google/android/apps/books/util/SelectionBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public updateWithoutNotify(ILandroid/net/Uri;Landroid/content/ContentValues;Lcom/google/android/apps/books/util/SelectionBuilder;)I
    .registers 7
    .parameter "match"
    .parameter "uri"
    .parameter "values"
    .parameter "builder"

    .prologue
    .line 61
    invoke-direct {p0, p4, p1, p2}, Lcom/google/android/apps/books/provider/LocalCollectionsProvidelet;->augmentSelectionBuilder(Lcom/google/android/apps/books/util/SelectionBuilder;ILandroid/net/Uri;)Lcom/google/android/apps/books/util/SelectionBuilder;

    .line 62
    iget-object v1, p0, Lcom/google/android/apps/books/provider/LocalCollectionsProvidelet;->mDatabase:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v1}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 63
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "collections"

    invoke-virtual {p4, v1}, Lcom/google/android/apps/books/util/SelectionBuilder;->table(Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lcom/google/android/apps/books/util/SelectionBuilder;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)I

    move-result v1

    return v1
.end method
