.class Lcom/google/googlenav/layer/n;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    .line 104
    const-string v0, "LayerInfo"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 105
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter

    .prologue
    .line 109
    const-string v0, "create table LayerInfo (_id integer primary key autoincrement, layerId string, layerDisplayName string not null, isActive boolean, isSearch boolean);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    const-string v0, "DROP TABLE IF EXISTS LayerInfo"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0, p1}, Lcom/google/googlenav/layer/n;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 124
    return-void
.end method
