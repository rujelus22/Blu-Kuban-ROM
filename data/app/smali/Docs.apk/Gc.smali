.class public LGc;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ClientFlagDatabaseImpl.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    .line 47
    const-string v0, "ClientFlag.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 48
    return-void
.end method


# virtual methods
.method a(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter

    .prologue
    .line 74
    const-string v0, "DROP TABLE IF EXISTS ClientFlag"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 75
    const-string v0, "DROP INDEX IF EXISTS ClientFlag_i;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method b(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter

    .prologue
    .line 80
    const-string v0, "CREATE TABLE ClientFlag (ClientFlag_id INTEGER PRIMARY KEY AUTOINCREMENT,KEY TEXT UNIQUE NOT NULL, VALUE TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 87
    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS ClientFlag_i ON ClientFlag (KEY);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter

    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 54
    :try_start_3
    invoke-virtual {p0, p1}, LGc;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 55
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    .line 57
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 59
    return-void

    .line 57
    :catchall_d
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 65
    :try_start_3
    invoke-virtual {p0, p1}, LGc;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 66
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_10

    .line 68
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 70
    invoke-virtual {p0, p1}, LGc;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 71
    return-void

    .line 68
    :catchall_10
    move-exception v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method
