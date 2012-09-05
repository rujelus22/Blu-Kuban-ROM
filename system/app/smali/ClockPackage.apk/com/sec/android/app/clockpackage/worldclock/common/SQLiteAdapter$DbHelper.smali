.class Lcom/sec/android/app/clockpackage/worldclock/common/SQLiteAdapter$DbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SQLiteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/worldclock/common/SQLiteAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DbHelper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .registers 5
    .parameter "context"
    .parameter "name"
    .parameter "factory"
    .parameter "version"

    .prologue
    .line 177
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 179
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 185
    const-string v0, "CREATE TABLE IF NOT EXISTS worldclock (_id INTEGER PRIMARY KEY  AUTOINCREMENT  NOT NULL, city TEXT NOT NULL, gmt INTEGER NOT NULL, dst INTEGER DEFAULT 0, homezone INTEGER NOT NULL DEFAULT 0, pointX INTEGER NOT NULL DEFAULT 0, pointY INTEGER NOT NULL DEFAULT 0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 191
    const-string v0, "DROP TABLE IF EXISTS worldclock"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0, p1}, Lcom/sec/android/app/clockpackage/worldclock/common/SQLiteAdapter$DbHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 195
    return-void
.end method
