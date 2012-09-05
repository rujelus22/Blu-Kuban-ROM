.class public Lcom/android/providers/tasks/SyncStateContentProviderHelper;
.super Ljava/lang/Object;
.source "SyncStateContentProviderHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/tasks/SyncStateContentProviderHelper$Provider;
    }
.end annotation


# static fields
.field private static final ACCOUNT_PROJECTION:[Ljava/lang/String;

.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static DB_VERSION:J

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private final mInternalProviderInterface:Lcom/android/providers/tasks/SyncStateContentProviderHelper$Provider;

.field final mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 47
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/tasks/SyncStateContentProviderHelper;->sURIMatcher:Landroid/content/UriMatcher;

    .line 51
    const-string v0, "content://syncstate/state"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/tasks/SyncStateContentProviderHelper;->CONTENT_URI:Landroid/net/Uri;

    .line 59
    const-wide/16 v0, 0x3

    sput-wide v0, Lcom/android/providers/tasks/SyncStateContentProviderHelper;->DB_VERSION:J

    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_sync_account"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "_sync_account_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/tasks/SyncStateContentProviderHelper;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    .line 65
    sget-object v0, Lcom/android/providers/tasks/SyncStateContentProviderHelper;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "syncstate"

    const-string v2, "state"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .registers 3
    .parameter "openHelper"

    .prologue
    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/android/providers/tasks/SyncStateContentProviderHelper;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 70
    new-instance v0, Lcom/android/providers/tasks/SyncStateContentProviderHelper$Provider;

    invoke-direct {v0, p0}, Lcom/android/providers/tasks/SyncStateContentProviderHelper$Provider;-><init>(Lcom/android/providers/tasks/SyncStateContentProviderHelper;)V

    iput-object v0, p0, Lcom/android/providers/tasks/SyncStateContentProviderHelper;->mInternalProviderInterface:Lcom/android/providers/tasks/SyncStateContentProviderHelper$Provider;

    .line 71
    return-void
.end method

.method static synthetic access$000()Landroid/content/UriMatcher;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/providers/tasks/SyncStateContentProviderHelper;->sURIMatcher:Landroid/content/UriMatcher;

    return-object v0
.end method

.method static synthetic access$100()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/providers/tasks/SyncStateContentProviderHelper;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method public asContentProvider()Landroid/content/ContentProvider;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/providers/tasks/SyncStateContentProviderHelper;->mInternalProviderInterface:Lcom/android/providers/tasks/SyncStateContentProviderHelper$Provider;

    return-object v0
.end method

.method public createDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6
    .parameter "db"

    .prologue
    .line 78
    const-string v1, "DROP TABLE IF EXISTS _sync_state"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 79
    const-string v1, "CREATE TABLE _sync_state (_id INTEGER PRIMARY KEY,_sync_account TEXT,_sync_account_type TEXT,data TEXT,UNIQUE(_sync_account, _sync_account_type));"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 87
    const-string v1, "DROP TABLE IF EXISTS _sync_state_metadata"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 88
    const-string v1, "CREATE TABLE _sync_state_metadata (version INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 91
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 92
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "version"

    sget-wide v2, Lcom/android/providers/tasks/SyncStateContentProviderHelper;->DB_VERSION:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 93
    const-string v1, "_sync_state_metadata"

    const-string v2, "version"

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 94
    return-void
.end method

.method public discardSyncData(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)V
    .registers 8
    .parameter "db"
    .parameter "account"

    .prologue
    const/4 v1, 0x0

    .line 218
    if-eqz p2, :cond_18

    .line 219
    const-string v0, "_sync_state"

    const-string v1, "_sync_account = ? AND _sync_account_type = ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 223
    :goto_17
    return-void

    .line 221
    :cond_18
    const-string v0, "_sync_state"

    invoke-virtual {p1, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_17
.end method

.method public matches(Landroid/net/Uri;)Z
    .registers 4
    .parameter "url"

    .prologue
    .line 168
    const-string v0, "syncstate"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onAccountsChanged([Landroid/accounts/Account;)V
    .registers 14
    .parameter "accounts"

    .prologue
    const/4 v3, 0x0

    .line 200
    iget-object v1, p0, Lcom/android/providers/tasks/SyncStateContentProviderHelper;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 201
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "_sync_state"

    sget-object v2, Lcom/android/providers/tasks/SyncStateContentProviderHelper;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 203
    .local v11, c:Landroid/database/Cursor;
    :cond_13
    :goto_13
    :try_start_13
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 204
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 205
    .local v9, accountName:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 206
    .local v10, accountType:Ljava/lang/String;
    new-instance v8, Landroid/accounts/Account;

    invoke-direct {v8, v9, v10}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .local v8, account:Landroid/accounts/Account;
    invoke-static {p1, v8}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 208
    const-string v1, "_sync_state"

    const-string v2, "_sync_account = ? AND _sync_account_type = ?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v9, v3, v4

    const/4 v4, 0x1

    aput-object v10, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_13 .. :try_end_3e} :catchall_3f

    goto :goto_13

    .line 213
    .end local v8           #account:Landroid/accounts/Account;
    .end local v9           #accountName:Ljava/lang/String;
    .end local v10           #accountType:Ljava/lang/String;
    :catchall_3f
    move-exception v1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_44
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 215
    return-void
.end method

.method protected onDatabaseOpened(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6
    .parameter "db"

    .prologue
    .line 97
    const-string v2, "select version from _sync_state_metadata"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 99
    .local v0, version:J
    sget-wide v2, Lcom/android/providers/tasks/SyncStateContentProviderHelper;->DB_VERSION:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_10

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/providers/tasks/SyncStateContentProviderHelper;->createDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 102
    :cond_10
    return-void
.end method
