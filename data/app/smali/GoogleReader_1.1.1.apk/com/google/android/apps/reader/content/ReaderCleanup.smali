.class public Lcom/google/android/apps/reader/content/ReaderCleanup;
.super Ljava/lang/Object;
.source "ReaderCleanup.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ReaderCleanup"


# instance fields
.field protected final mAccount:Lcom/google/android/accounts/Account;

.field protected final mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field protected final mFileCache:Lcom/google/android/apps/reader/content/ReaderFileCache;

.field protected final mMaxAge:J


# direct methods
.method protected constructor <init>(Lcom/google/android/accounts/Account;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/reader/content/ReaderFileCache;I)V
    .registers 7
    .parameter "account"
    .parameter "database"
    .parameter "fileCache"
    .parameter "priority"

    .prologue
    const/4 v1, 0x1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    if-nez p2, :cond_e

    .line 55
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Database is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_e
    if-nez p3, :cond_18

    .line 58
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "File cache is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_18
    if-nez p1, :cond_22

    .line 61
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Account is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_22
    if-ge p4, v1, :cond_2a

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 66
    :cond_2a
    const/16 v0, 0xa

    if-le p4, v0, :cond_34

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 69
    :cond_34
    iput-object p1, p0, Lcom/google/android/apps/reader/content/ReaderCleanup;->mAccount:Lcom/google/android/accounts/Account;

    .line 70
    iput-object p2, p0, Lcom/google/android/apps/reader/content/ReaderCleanup;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 71
    iput-object p3, p0, Lcom/google/android/apps/reader/content/ReaderCleanup;->mFileCache:Lcom/google/android/apps/reader/content/ReaderFileCache;

    .line 72
    if-ne p4, v1, :cond_42

    .line 75
    const-wide/32 v0, 0x240c8400

    iput-wide v0, p0, Lcom/google/android/apps/reader/content/ReaderCleanup;->mMaxAge:J

    .line 85
    :goto_41
    return-void

    .line 76
    :cond_42
    const/4 v0, 0x5

    if-gt p4, v0, :cond_4b

    .line 79
    const-wide/32 v0, 0xf731400

    iput-wide v0, p0, Lcom/google/android/apps/reader/content/ReaderCleanup;->mMaxAge:J

    goto :goto_41

    .line 83
    :cond_4b
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/google/android/apps/reader/content/ReaderCleanup;->mMaxAge:J

    goto :goto_41
.end method

.method private deleteItemCategories()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 195
    const-string v0, "account_name = ? AND item_id NOT IN (SELECT id FROM items WHERE account_name = ?)"

    .line 196
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/reader/content/ReaderCleanup;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v2, v2, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/google/android/apps/reader/content/ReaderCleanup;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v2, v2, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v2, v1, v5

    .line 199
    iget-object v2, p0, Lcom/google/android/apps/reader/content/ReaderCleanup;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "item_categories"

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 200
    const-string v1, "Deleted %d item categories"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 201
    return-void
.end method

.method private deleteItemLinks()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 208
    const-string v0, "account_name = ? AND item_id NOT IN (SELECT id FROM items WHERE account_name = ?)"

    .line 209
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/reader/content/ReaderCleanup;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v2, v2, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/google/android/apps/reader/content/ReaderCleanup;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v2, v2, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v2, v1, v5

    .line 212
    iget-object v2, p0, Lcom/google/android/apps/reader/content/ReaderCleanup;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "item_links"

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 213
    const-string v1, "Deleted %d item links"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 214
    return-void
.end method

.method private deleteItemPositions()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 169
    const-string v0, "account_name = ? AND item_positions.item_list_id NOT IN (SELECT id FROM item_lists WHERE account_name = ?)"

    .line 170
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/reader/content/ReaderCleanup;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v2, v2, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/google/android/apps/reader/content/ReaderCleanup;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v2, v2, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v2, v1, v5

    .line 173
    iget-object v2, p0, Lcom/google/android/apps/reader/content/ReaderCleanup;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "item_positions"

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 174
    const-string v1, "Deleted %d item positions"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 175
    return-void
.end method

.method private deleteItems()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 182
    const-string v0, "items.account_name = ? AND items.id NOT IN (SELECT item_id FROM item_positions WHERE account_name = ?)"

    .line 183
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/reader/content/ReaderCleanup;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v2, v2, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/google/android/apps/reader/content/ReaderCleanup;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v2, v2, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v2, v1, v5

    .line 186
    iget-object v2, p0, Lcom/google/android/apps/reader/content/ReaderCleanup;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "items"

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 187
    const-string v1, "Deleted %d items"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 188
    return-void
.end method


# virtual methods
.method protected deleteItemLists()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 130
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderCleanup;->getMinDate()J

    move-result-wide v0

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing unreferenced item lists and those predating "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 138
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    const-string v5, "account_name = ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const-string v5, "timestamp = 0 AND date < ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const-string v5, " OR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string v5, "timestamp != 0 AND timestamp < ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string v5, " OR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const-string v5, "timestamp > ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 158
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/apps/reader/content/ReaderCleanup;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v6, v6, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x3

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .line 160
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ReaderCleanup;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "item_lists"

    invoke-virtual {v0, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 161
    const-string v1, "Deleted %d item lists"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 162
    return-void
.end method

.method protected final getMinDate()J
    .registers 7

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/google/android/apps/reader/content/ReaderCleanup;->mMaxAge:J

    .line 122
    .local v0, maxAge:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 123
    .local v2, now:J
    sub-long v4, v2, v0

    return-wide v4
.end method

.method public run()V
    .registers 4

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cleaning-up database for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/reader/content/ReaderCleanup;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v1, v1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ReaderCleanup;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 96
    :try_start_1b
    invoke-virtual {p0}, Lcom/google/android/apps/reader/content/ReaderCleanup;->deleteItemLists()V

    .line 99
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/ReaderCleanup;->deleteItemPositions()V

    .line 100
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/ReaderCleanup;->deleteItems()V

    .line 101
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/ReaderCleanup;->deleteItemCategories()V

    .line 102
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/ReaderCleanup;->deleteItemLinks()V

    .line 104
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ReaderCleanup;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2f
    .catchall {:try_start_1b .. :try_end_2f} :catchall_48

    .line 106
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ReaderCleanup;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 111
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ReaderCleanup;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "VACUUM;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ReaderCleanup;->mFileCache:Lcom/google/android/apps/reader/content/ReaderFileCache;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/content/ReaderFileCache;->deleteDeprecatedFormats()V

    .line 114
    iget-object v0, p0, Lcom/google/android/apps/reader/content/ReaderCleanup;->mFileCache:Lcom/google/android/apps/reader/content/ReaderFileCache;

    iget-wide v1, p0, Lcom/google/android/apps/reader/content/ReaderCleanup;->mMaxAge:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/reader/content/ReaderFileCache;->deleteItemHtmlByAge(J)V

    .line 118
    return-void

    .line 106
    :catchall_48
    move-exception v0

    iget-object v1, p0, Lcom/google/android/apps/reader/content/ReaderCleanup;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method
