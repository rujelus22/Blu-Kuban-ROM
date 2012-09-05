.class public Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;
.super Ljava/lang/Object;
.source "ShortCutAdpater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater$DatabaseHelper;
    }
.end annotation


# instance fields
.field private final mCtx:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDbHelper:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater$DatabaseHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "ctx"

    .prologue
    .line 166
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;->mCtx:Landroid/content/Context;

    .line 168
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;->mDbHelper:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater$DatabaseHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater$DatabaseHelper;->close()V

    .line 188
    return-void
.end method

.method public createShortCut(Ljava/lang/String;Ljava/lang/String;)J
    .registers 8
    .parameter "packageName"
    .parameter "ClassName"

    .prologue
    .line 203
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 204
    .local v0, initialValues:Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 206
    .local v1, now:Ljava/lang/Long;
    const-string v2, "packagename"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v2, "shortcut_created_date"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 208
    const-string v2, "shortcut_afford"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SHORTCUTTABLE"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method public deleteAll()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "SHORTCUTTABLE"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public deleteShortCut(J)Z
    .registers 7
    .parameter "rowId"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "SHORTCUTTABLE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_20

    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public fetchAllShortCut()Landroid/database/Cursor;
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "SHORTCUTTABLE"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "packagename"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "shortcut_created_date"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "shortcut_afford"

    aput-object v5, v2, v4

    const-string v7, "_id ASC"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public fetchRowId(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 254
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SHORTCUTTABLE"

    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "shortcut_afford=\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 259
    .local v10, mCursor:Landroid/database/Cursor;
    if-eqz v10, :cond_33

    .line 260
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 262
    :cond_33
    return-object v10
.end method

.method public fetchText(J)Landroid/database/Cursor;
    .registers 14
    .parameter "rowId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 240
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SHORTCUTTABLE"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v4

    const-string v4, "packagename"

    aput-object v4, v3, v1

    const/4 v4, 0x2

    const-string v6, "shortcut_created_date"

    aput-object v6, v3, v4

    const/4 v4, 0x3

    const-string v6, "shortcut_afford"

    aput-object v6, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 245
    .local v10, mCursor:Landroid/database/Cursor;
    if-eqz v10, :cond_3c

    .line 246
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 248
    :cond_3c
    return-object v10
.end method

.method public open()Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 181
    new-instance v0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater$DatabaseHelper;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;->mCtx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;->mDbHelper:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater$DatabaseHelper;

    .line 182
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;->mDbHelper:Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater$DatabaseHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/clockpackage/deskclock/shortcut/ShortCutAdpater;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 183
    return-object p0
.end method
