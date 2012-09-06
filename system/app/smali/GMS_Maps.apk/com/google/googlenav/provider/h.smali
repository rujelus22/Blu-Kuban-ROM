.class Lcom/google/googlenav/provider/h;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    .line 114
    const-string v0, "search_history.db"

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 115
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter

    .prologue
    .line 119
    const-string v0, "CREATE TABLE suggestions (_id INTEGER PRIMARY KEY AUTOINCREMENT, data1 TEXT, singleResult INTEGER, displayQuery TEXT, latitude INTEGER DEFAULT 200000000, longitude INTEGER DEFAULT 200000000);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 133
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1a

    if-le p3, p2, :cond_1a

    .line 136
    const-string v0, "ALTER TABLE suggestions ADD COLUMN displayQuery TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 138
    const-string v0, "DROP TABLE IF EXISTS history"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 139
    const-string v0, "ALTER TABLE suggestions ADD COLUMN latitude INTEGER DEFAULT 200000000"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 141
    const-string v0, "ALTER TABLE suggestions ADD COLUMN longitude INTEGER DEFAULT 200000000"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 171
    :goto_19
    return-void

    .line 143
    :cond_1a
    const/4 v0, 0x5

    if-ne p2, v0, :cond_2f

    if-le p3, p2, :cond_2f

    .line 147
    const-string v0, "DROP TABLE IF EXISTS history"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 148
    const-string v0, "ALTER TABLE suggestions ADD COLUMN latitude INTEGER DEFAULT 200000000"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 150
    const-string v0, "ALTER TABLE suggestions ADD COLUMN longitude INTEGER DEFAULT 200000000"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_19

    .line 152
    :cond_2f
    const/4 v0, 0x6

    if-ne p2, v0, :cond_3f

    if-le p3, p2, :cond_3f

    .line 157
    const-string v0, "ALTER TABLE suggestions ADD COLUMN latitude INTEGER DEFAULT 200000000"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 159
    const-string v0, "ALTER TABLE suggestions ADD COLUMN longitude INTEGER DEFAULT 200000000"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_19

    .line 162
    :cond_3f
    if-eq p2, p3, :cond_41

    .line 167
    :cond_41
    const-string v0, "DROP TABLE IF EXISTS history"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 168
    const-string v0, "DROP TABLE IF EXISTS suggestions"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0, p1}, Lcom/google/googlenav/provider/h;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_19
.end method
