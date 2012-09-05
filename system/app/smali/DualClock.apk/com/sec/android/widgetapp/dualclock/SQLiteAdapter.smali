.class public Lcom/sec/android/widgetapp/dualclock/SQLiteAdapter;
.super Ljava/lang/Object;
.source "SQLiteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/dualclock/SQLiteAdapter$DbHelper;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private dbHelper:Lcom/sec/android/widgetapp/dualclock/SQLiteAdapter$DbHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 10
    .parameter "_context"
    .parameter "databaseName"
    .parameter "database_version"

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/sec/android/widgetapp/dualclock/SQLiteAdapter;->context:Landroid/content/Context;

    .line 57
    new-instance v0, Lcom/sec/android/widgetapp/dualclock/SQLiteAdapter$DbHelper;

    iget-object v2, p0, Lcom/sec/android/widgetapp/dualclock/SQLiteAdapter;->context:Landroid/content/Context;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/widgetapp/dualclock/SQLiteAdapter$DbHelper;-><init>(Lcom/sec/android/widgetapp/dualclock/SQLiteAdapter;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/SQLiteAdapter;->dbHelper:Lcom/sec/android/widgetapp/dualclock/SQLiteAdapter$DbHelper;

    .line 59
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .parameter "tableName"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/SQLiteAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    .registers 5
    .parameter "tableName"
    .parameter "values"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/SQLiteAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public open()Lcom/sec/android/widgetapp/dualclock/SQLiteAdapter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/widgetapp/dualclock/SQLiteAdapter;->dbHelper:Lcom/sec/android/widgetapp/dualclock/SQLiteAdapter$DbHelper;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/dualclock/SQLiteAdapter$DbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/dualclock/SQLiteAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_8} :catch_9

    .line 73
    :goto_8
    return-object p0

    .line 67
    :catch_9
    move-exception v0

    .line 69
    .local v0, ex:Landroid/database/sqlite/SQLiteException;
    iget-object v1, p0, Lcom/sec/android/widgetapp/dualclock/SQLiteAdapter;->dbHelper:Lcom/sec/android/widgetapp/dualclock/SQLiteAdapter$DbHelper;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/dualclock/SQLiteAdapter$DbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/widgetapp/dualclock/SQLiteAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_8
.end method

.method public selectAll(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16
    .parameter "tableName"
    .parameter "columns"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/SQLiteAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public updateByWhere(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)I
    .registers 6
    .parameter "tableName"
    .parameter "values"
    .parameter "whereClause"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/SQLiteAdapter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
