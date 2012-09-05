.class public Lcom/google/android/apps/books/provider/database/VolumesUrlRelativizer;
.super Ljava/lang/Object;
.source "VolumesUrlRelativizer.java"


# static fields
.field private static final COLUMNS:[Ljava/lang/String;


# instance fields
.field private final mDb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 26
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "volume_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "buy_url"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "cover_url"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "cover_content_status"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/books/provider/database/VolumesUrlRelativizer;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "db"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/android/apps/books/provider/database/VolumesUrlRelativizer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 33
    return-void
.end method

.method private upgradeVolume(Landroid/database/Cursor;)V
    .registers 12
    .parameter "cursor"

    .prologue
    .line 52
    const-string v7, "account_name"

    invoke-static {p1, v7}, Lcom/google/android/apps/books/util/CursorUtils;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, accountName:Ljava/lang/String;
    const-string v7, "volume_id"

    invoke-static {p1, v7}, Lcom/google/android/apps/books/util/CursorUtils;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, volumeId:Ljava/lang/String;
    const-string v7, "buy_url"

    invoke-static {p1, v7}, Lcom/google/android/apps/books/util/CursorUtils;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, buyUrl:Ljava/lang/String;
    const-string v7, "cover_url"

    invoke-static {p1, v7}, Lcom/google/android/apps/books/util/CursorUtils;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, coverUrl:Ljava/lang/String;
    if-eqz v1, :cond_22

    .line 58
    invoke-static {v1}, Lcom/google/android/apps/books/util/Config;->makeRelative(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    :cond_22
    if-eqz v2, :cond_2c

    .line 61
    invoke-static {v2}, Lcom/google/android/apps/books/util/Config;->makeRelative(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 64
    :cond_2c
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 65
    .local v3, values:Landroid/content/ContentValues;
    const-string v7, "buy_url"

    invoke-virtual {v3, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v7, "cover_url"

    invoke-virtual {v3, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v6, "account_name=? AND volume_id=?"

    .line 69
    .local v6, whereClause:Ljava/lang/String;
    const/4 v7, 0x2

    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v5, v7

    const/4 v7, 0x1

    aput-object v4, v5, v7

    .line 70
    .local v5, whereArgs:[Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/apps/books/provider/database/VolumesUrlRelativizer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "volumes"

    const-string v9, "account_name=? AND volume_id=?"

    invoke-virtual {v7, v8, v3, v9, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 71
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 38
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/VolumesUrlRelativizer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TRIGGER IF EXISTS clear_cover"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/google/android/apps/books/provider/database/VolumesUrlRelativizer;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "volumes"

    sget-object v2, Lcom/google/android/apps/books/provider/database/VolumesUrlRelativizer;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 43
    .local v8, cursor:Landroid/database/Cursor;
    :goto_16
    :try_start_16
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 44
    invoke-direct {p0, v8}, Lcom/google/android/apps/books/provider/database/VolumesUrlRelativizer;->upgradeVolume(Landroid/database/Cursor;)V
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_20

    goto :goto_16

    .line 47
    :catchall_20
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_25
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 49
    return-void
.end method
