.class Lcom/google/googlenav/provider/f;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    .line 161
    const-string v0, "offline_feature_index.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 162
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter

    .prologue
    .line 166
    const-string v0, "CREATE VIRTUAL TABLE features_indexed USING fts3(label TEXT, details TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 169
    const-string v0, "CREATE TABLE features_nonindexed (tile_type INTEGER, shard_id INTEGER, tile_key INT8, feature_id TEXT, latitude INTEGER, longitude INTEGER, rank INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 177
    const-string v0, "CREATE TRIGGER features_cascade_delete BEFORE DELETE ON features_nonindexed BEGIN DELETE FROM features_indexed WHERE docid=old.rowid; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 185
    if-eq p2, p3, :cond_2

    .line 192
    :cond_2
    const-string v0, "DROP TABLE IF EXISTS features_indexed;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 193
    const-string v0, "DROP TABLE IF EXISTS features_nonindexed;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 194
    const-string v0, "DROP TRIGGER IF EXISTS features_cascade_delete;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0, p1}, Lcom/google/googlenav/provider/f;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 196
    return-void
.end method
