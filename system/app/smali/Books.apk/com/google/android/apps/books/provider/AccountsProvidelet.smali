.class public Lcom/google/android/apps/books/provider/AccountsProvidelet;
.super Lcom/google/android/apps/books/provider/NotifyingProvidelet;
.source "AccountsProvidelet.java"


# instance fields
.field private final mDbHelper:Lcom/google/android/apps/books/provider/database/BooksDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/books/provider/database/BooksDatabase;Lcom/google/android/apps/books/util/pool/Pool;)V
    .registers 4
    .parameter "context"
    .parameter "dbHelper"
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
    iput-object p2, p0, Lcom/google/android/apps/books/provider/AccountsProvidelet;->mDbHelper:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    .line 33
    return-void
.end method


# virtual methods
.method protected deleteWithoutNotify(ILandroid/net/Uri;Lcom/google/android/apps/books/util/SelectionBuilder;)I
    .registers 11
    .parameter "match"
    .parameter "uri"
    .parameter "builder"

    .prologue
    .line 93
    iget-object v1, p0, Lcom/google/android/apps/books/provider/AccountsProvidelet;->mDbHelper:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v1}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 95
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    packed-switch p1, :pswitch_data_3a

    .line 106
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 97
    :pswitch_f
    const-string v1, "accounts"

    invoke-virtual {p3, v1}, Lcom/google/android/apps/books/util/SelectionBuilder;->table(Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/apps/books/util/SelectionBuilder;->delete(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v1

    .line 101
    :goto_19
    return v1

    :pswitch_1a
    const-string v1, "accounts"

    invoke-virtual {p3, v1}, Lcom/google/android/apps/books/util/SelectionBuilder;->table(Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v1

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Accounts;->getAccountId(Landroid/net/Uri;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/apps/books/util/SelectionBuilder;->delete(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v1

    goto :goto_19

    .line 95
    nop

    :pswitch_data_3a
    .packed-switch 0x3e8
        :pswitch_f
        :pswitch_1a
    .end packed-switch
.end method

.method protected insertWithoutNotify(ILandroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 9
    .parameter "match"
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 37
    iget-object v3, p0, Lcom/google/android/apps/books/provider/AccountsProvidelet;->mDbHelper:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v3}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 38
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    packed-switch p1, :pswitch_data_1c

    .line 44
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3

    .line 40
    :pswitch_f
    const-string v3, "accounts"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 41
    .local v0, accountId:J
    invoke-static {v0, v1}, Lcom/google/android/apps/books/provider/BooksContract$Accounts;->buildAccountUri(J)Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 38
    nop

    :pswitch_data_1c
    .packed-switch 0x3e8
        :pswitch_f
    .end packed-switch
.end method

.method protected queryWithoutNotify(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/books/util/SelectionBuilder;)Landroid/database/Cursor;
    .registers 14
    .parameter "match"
    .parameter "uri"
    .parameter "projection"
    .parameter "sortOrder"
    .parameter "builder"

    .prologue
    const/4 v3, 0x0

    .line 52
    iget-object v0, p0, Lcom/google/android/apps/books/provider/AccountsProvidelet;->mDbHelper:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v0}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 54
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    packed-switch p1, :pswitch_data_42

    .line 65
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 56
    :pswitch_10
    const-string v0, "accounts"

    invoke-virtual {p5, v0}, Lcom/google/android/apps/books/util/SelectionBuilder;->table(Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    move-object v2, p3

    move-object v4, v3

    move-object v5, p4

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/books/util/SelectionBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 60
    :goto_1e
    return-object v0

    :pswitch_1f
    const-string v0, "accounts"

    invoke-virtual {p5, v0}, Lcom/google/android/apps/books/util/SelectionBuilder;->table(Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    const-string v2, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Accounts;->getAccountId(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v4}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v0

    move-object v2, p3

    move-object v4, v3

    move-object v5, p4

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/books/util/SelectionBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1e

    .line 54
    :pswitch_data_42
    .packed-switch 0x3e8
        :pswitch_10
        :pswitch_1f
    .end packed-switch
.end method

.method protected updateWithoutNotify(ILandroid/net/Uri;Landroid/content/ContentValues;Lcom/google/android/apps/books/util/SelectionBuilder;)I
    .registers 12
    .parameter "match"
    .parameter "uri"
    .parameter "values"
    .parameter "builder"

    .prologue
    .line 73
    iget-object v1, p0, Lcom/google/android/apps/books/provider/AccountsProvidelet;->mDbHelper:Lcom/google/android/apps/books/provider/database/BooksDatabase;

    invoke-virtual {v1}, Lcom/google/android/apps/books/provider/database/BooksDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 75
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    packed-switch p1, :pswitch_data_3a

    .line 86
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 77
    :pswitch_f
    const-string v1, "accounts"

    invoke-virtual {p4, v1}, Lcom/google/android/apps/books/util/SelectionBuilder;->table(Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lcom/google/android/apps/books/util/SelectionBuilder;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)I

    move-result v1

    .line 81
    :goto_19
    return v1

    :pswitch_1a
    const-string v1, "accounts"

    invoke-virtual {p4, v1}, Lcom/google/android/apps/books/util/SelectionBuilder;->table(Ljava/lang/String;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v1

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Lcom/google/android/apps/books/provider/BooksContract$Accounts;->getAccountId(Landroid/net/Uri;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/books/util/SelectionBuilder;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/android/apps/books/util/SelectionBuilder;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lcom/google/android/apps/books/util/SelectionBuilder;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)I

    move-result v1

    goto :goto_19

    .line 75
    nop

    :pswitch_data_3a
    .packed-switch 0x3e8
        :pswitch_f
        :pswitch_1a
    .end packed-switch
.end method
