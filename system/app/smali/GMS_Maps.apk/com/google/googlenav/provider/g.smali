.class Lcom/google/googlenav/provider/g;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "search_history.db"

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    const-string v0, "CREATE TABLE suggestions (_id INTEGER PRIMARY KEY AUTOINCREMENT, data1 TEXT, singleResult INTEGER, displayQuery TEXT, latitude INTEGER DEFAULT 200000000, longitude INTEGER DEFAULT 200000000);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1a

    if-le p3, p2, :cond_1a

    const-string v0, "ALTER TABLE suggestions ADD COLUMN displayQuery TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS history"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE suggestions ADD COLUMN latitude INTEGER DEFAULT 200000000"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE suggestions ADD COLUMN longitude INTEGER DEFAULT 200000000"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_19
    return-void

    :cond_1a
    const/4 v0, 0x5

    if-ne p2, v0, :cond_2f

    if-le p3, p2, :cond_2f

    const-string v0, "DROP TABLE IF EXISTS history"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE suggestions ADD COLUMN latitude INTEGER DEFAULT 200000000"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE suggestions ADD COLUMN longitude INTEGER DEFAULT 200000000"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_19

    :cond_2f
    const/4 v0, 0x6

    if-ne p2, v0, :cond_3f

    if-le p3, p2, :cond_3f

    const-string v0, "ALTER TABLE suggestions ADD COLUMN latitude INTEGER DEFAULT 200000000"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE suggestions ADD COLUMN longitude INTEGER DEFAULT 200000000"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_19

    :cond_3f
    if-eq p2, p3, :cond_41

    :cond_41
    const-string v0, "DROP TABLE IF EXISTS history"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS suggestions"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/googlenav/provider/g;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_19
.end method
