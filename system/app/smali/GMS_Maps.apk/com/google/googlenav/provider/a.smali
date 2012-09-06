.class Lcom/google/googlenav/provider/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    .line 120
    const-string v0, "local_active_places.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 121
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter

    .prologue
    .line 125
    const-string v0, "CREATE TABLE places (_id INTEGER PRIMARY KEY AUTOINCREMENT, type INTEGER, name TEXT, address TEXT, lastUpdated INTEGER, latitude INTEGER DEFAULT 200000000, longitude INTEGER DEFAULT 200000000);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    const/4 v0, 0x1

    if-ne p2, v0, :cond_10

    if-le p3, p2, :cond_10

    .line 142
    const-string v0, "ALTER TABLE places ADD COLUMN latitude INTEGER DEFAULT 200000000"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 144
    const-string v0, "ALTER TABLE places ADD COLUMN longitude INTEGER DEFAULT 200000000"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 157
    :goto_f
    return-void

    .line 147
    :cond_10
    if-eq p2, p3, :cond_12

    .line 154
    :cond_12
    const-string v0, "DROP TABLE IF EXISTS places"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0, p1}, Lcom/google/googlenav/provider/a;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_f
.end method
