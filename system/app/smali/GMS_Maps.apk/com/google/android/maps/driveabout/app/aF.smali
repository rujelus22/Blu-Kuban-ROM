.class Lcom/google/android/maps/driveabout/app/af;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 619
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 620
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter

    .prologue
    .line 624
    const-string v0, "CREATE TABLE destination_history (time INTEGER PRIMARY KEY, dest_lat INTEGER NOT NULL, dest_lng INTEGER NOT NULL, dest_title STRING, dest_address STRING, dest_token STRING, source_lat INTEGER NOT NULL, source_lng INTEGER NOT NULL, day_of_week INTEGER NOT NULL, hour_of_day INTEGER NOT NULL );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 636
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 641
    const-string v0, "DROP TABLE IF EXISTS destination_history;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 642
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/app/af;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 643
    return-void
.end method
