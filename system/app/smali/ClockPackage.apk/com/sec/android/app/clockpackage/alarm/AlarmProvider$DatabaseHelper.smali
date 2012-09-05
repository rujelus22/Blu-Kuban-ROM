.class Lcom/sec/android/app/clockpackage/alarm/AlarmProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AlarmProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 340
    const-string v0, "alarm.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 342
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .parameter "db"

    .prologue
    .line 347
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->access$000()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 349
    const-string v0, "AlarmProvider"

    const-string v1, "creating new alarm database"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_d
    const-string v0, "CREATE TABLE IF NOT EXISTS alarm (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,active INTEGER NOT NULL,createtime LONG NOT NULL,alerttime LONG NOT NULL,alarmtime INTEGER NOT NULL,repeattype INTEGER NOT NULL,notitype INTEGER NOT NULL,snzactive INTEGER NOT NULL,snzduration INTEGER NOT NULL,snzrepeat INTEGER NOT NULL,snzcount INTEGER NOT NULL,dailybrief INTEGER NOT NULL,sbdactive INTEGER NOT NULL,sbdduration INTEGER NOT NULL,sbdtone INTEGER NOT NULL,alarmsound INTEGER NOT NULL,alarmtone INTEGER NOT NULL,volume INTEGER NOT NULL,sbduri INTEGER NOT NULL,alarmuri TEXT,name TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 399
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 8
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/4 v3, 0x1

    .line 404
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider;->access$000()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 406
    const-string v1, "AlarmProvider"

    const-string v2, "onUpgrade triggered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_e
    move v0, p2

    .line 410
    .local v0, version:I
    if-ge v0, v3, :cond_12

    .line 414
    move v0, p3

    .line 418
    :cond_12
    if-eq v0, v3, :cond_23

    .line 420
    const-string v1, "AlarmProvider"

    const-string v2, "Destroying all old data."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const-string v1, "DROP TABLE IF EXISTS alarm"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 428
    :cond_23
    return-void
.end method
