.class public Lcom/sprint/dsa/diagnostics/DbDiagnostics;
.super Ljava/lang/Object;
.source "DbDiagnostics.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SprintZone_Diagnostics"


# instance fields
.field protected mDB:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sprint/dsa/diagnostics/DbDiagnostics;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 25
    new-instance v0, Lcom/sprint/dsa/data/DbOpenHelper;

    const-string v1, "zone.db"

    invoke-direct {v0, p1, v1}, Lcom/sprint/dsa/data/DbOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    .local v0, dbOpenHelper:Lcom/sprint/dsa/data/DbOpenHelper;
    invoke-virtual {v0}, Lcom/sprint/dsa/data/DbOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/dsa/diagnostics/DbDiagnostics;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/dsa/diagnostics/DbDiagnostics;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 30
    iput-object p1, p0, Lcom/sprint/dsa/diagnostics/DbDiagnostics;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 31
    return-void
.end method

.method public static delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 6
    .parameter "db"
    .parameter "key"

    .prologue
    .line 284
    const-string v0, "key = ?"

    .line 285
    .local v0, SQL_WHERE:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 287
    .local v1, whereValues:[Ljava/lang/String;
    const-string v2, "diagnostics_tbl"

    const-string v3, "key = ?"

    invoke-virtual {p0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 289
    invoke-static {p0, p1}, Lcom/sprint/dsa/diagnostics/DbDiagnostics;->deleteInfo(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 290
    invoke-static {p0, p1}, Lcom/sprint/dsa/diagnostics/DbDiagnostics;->deleteStrings(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method protected static deleteInfo(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 7
    .parameter "db"
    .parameter "key"

    .prologue
    .line 294
    const-string v0, "id = ?"

    .line 295
    .local v0, SQL_WHERE:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 297
    .local v2, whereValues:[Ljava/lang/String;
    const-string v3, "info_tbl"

    const-string v4, "id = ?"

    invoke-virtual {p0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 300
    .local v1, count:I
    return-void
.end method

.method protected static deleteStrings(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 7
    .parameter "db"
    .parameter "key"

    .prologue
    .line 303
    const-string v0, "id = ?"

    .line 304
    .local v0, SQL_WHERE:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 305
    .local v2, whereValues:[Ljava/lang/String;
    const-string v3, "strings_tbl"

    const-string v4, "id = ?"

    invoke-virtual {p0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 308
    .local v1, count:I
    return-void
.end method

.method public static getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 4
    .parameter "context"

    .prologue
    .line 38
    new-instance v1, Lcom/sprint/dsa/data/DbOpenHelper;

    const-string v2, "zone.db"

    invoke-direct {v1, p0, v2}, Lcom/sprint/dsa/data/DbOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    .local v1, dbOpenHelper:Lcom/sprint/dsa/data/DbOpenHelper;
    invoke-virtual {v1}, Lcom/sprint/dsa/data/DbOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 40
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    return-object v0
.end method

.method public static getGroups(Landroid/content/Context;)Ljava/util/List;
    .registers 5
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sprint/dsa/diagnostics/DiagnosticGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 354
    new-instance v1, Lcom/sprint/dsa/data/DbOpenHelper;

    const-string v3, "zone.db"

    invoke-direct {v1, p0, v3}, Lcom/sprint/dsa/data/DbOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 355
    .local v1, dbOpenHelper:Lcom/sprint/dsa/data/DbOpenHelper;
    invoke-virtual {v1}, Lcom/sprint/dsa/data/DbOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 357
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/sprint/dsa/diagnostics/DbDiagnostics;->getGroups(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v2

    .line 358
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/dsa/diagnostics/DiagnosticGroup;>;"
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 360
    return-object v2
.end method

.method public static getGroups(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .registers 13
    .parameter "db"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sprint/dsa/diagnostics/DiagnosticGroup;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 366
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "key"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "title"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "sub_keys"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    .line 367
    const-string v1, "rank"

    aput-object v1, v2, v0

    .line 368
    .local v2, columns:[Ljava/lang/String;
    const-string v7, "rank"

    .line 370
    .local v7, orderBy:Ljava/lang/String;
    const-string v1, "diagnostic_groups_tbl"

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 373
    .local v8, c:Landroid/database/Cursor;
    :try_start_24
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 375
    .local v10, groups:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/dsa/diagnostics/DiagnosticGroup;>;"
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 379
    const/4 v11, 0x1

    .line 380
    .local v11, hasMore:Z
    :goto_34
    if-nez v11, :cond_3d

    .line 388
    invoke-static {v8}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V
    :try_end_39
    .catchall {:try_start_24 .. :try_end_39} :catchall_4d

    .line 397
    .end local v11           #hasMore:Z
    :cond_39
    invoke-static {v8}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    .line 394
    return-object v10

    .line 381
    .restart local v11       #hasMore:Z
    :cond_3d
    :try_start_3d
    new-instance v9, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;

    invoke-direct {v9}, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;-><init>()V

    .line 382
    .local v9, group:Lcom/sprint/dsa/diagnostics/DiagnosticGroup;
    invoke-static {v8, v9}, Lcom/sprint/dsa/diagnostics/DbDiagnostics;->readCursor(Landroid/database/Cursor;Lcom/sprint/dsa/diagnostics/DiagnosticGroup;)V

    .line 384
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4b
    .catchall {:try_start_3d .. :try_end_4b} :catchall_4d

    move-result v11

    goto :goto_34

    .line 396
    .end local v9           #group:Lcom/sprint/dsa/diagnostics/DiagnosticGroup;
    .end local v10           #groups:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/dsa/diagnostics/DiagnosticGroup;>;"
    .end local v11           #hasMore:Z
    :catchall_4d
    move-exception v0

    .line 397
    invoke-static {v8}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    .line 398
    throw v0
.end method

.method public static getStub(Landroid/content/Context;Ljava/lang/String;)Lcom/sprint/dsa/diagnostics/DiagnosticStub;
    .registers 6
    .parameter "context"
    .parameter "key"

    .prologue
    .line 167
    new-instance v1, Lcom/sprint/dsa/data/DbOpenHelper;

    const-string v3, "zone.db"

    invoke-direct {v1, p0, v3}, Lcom/sprint/dsa/data/DbOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 168
    .local v1, dbOpenHelper:Lcom/sprint/dsa/data/DbOpenHelper;
    invoke-virtual {v1}, Lcom/sprint/dsa/data/DbOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 170
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0, p1}, Lcom/sprint/dsa/diagnostics/DbDiagnostics;->readStub(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    move-result-object v2

    .line 171
    .local v2, stub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 173
    return-object v2
.end method

.method public static getStubs(Landroid/content/Context;)Ljava/util/List;
    .registers 5
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sprint/dsa/diagnostics/DiagnosticStub;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    new-instance v1, Lcom/sprint/dsa/data/DbOpenHelper;

    const-string v3, "zone.db"

    invoke-direct {v1, p0, v3}, Lcom/sprint/dsa/data/DbOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 120
    .local v1, dbOpenHelper:Lcom/sprint/dsa/data/DbOpenHelper;
    invoke-virtual {v1}, Lcom/sprint/dsa/data/DbOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 122
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/sprint/dsa/diagnostics/DbDiagnostics;->getStubs(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v2

    .line 123
    .local v2, stubs:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/dsa/diagnostics/DiagnosticStub;>;"
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 125
    return-object v2
.end method

.method public static getStubs(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .registers 13
    .parameter "db"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sprint/dsa/diagnostics/DiagnosticStub;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 130
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "key"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "title"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "description"

    aput-object v1, v2, v0

    .line 131
    .local v2, columns:[Ljava/lang/String;
    const-string v7, "rank"

    .line 133
    .local v7, orderBy:Ljava/lang/String;
    const-string v1, "diagnostics_tbl"

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 135
    .local v8, c:Landroid/database/Cursor;
    :try_start_1f
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 138
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 140
    .local v11, stubs:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/dsa/diagnostics/DiagnosticStub;>;"
    const/4 v9, 0x1

    .line 141
    .local v9, hasMore:Z
    :goto_2f
    if-nez v9, :cond_38

    .line 152
    invoke-static {v8}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V
    :try_end_34
    .catchall {:try_start_1f .. :try_end_34} :catchall_53

    .line 162
    invoke-static {v8}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    .line 158
    .end local v9           #hasMore:Z
    .end local v11           #stubs:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/dsa/diagnostics/DiagnosticStub;>;"
    :goto_37
    return-object v11

    .line 142
    .restart local v9       #hasMore:Z
    .restart local v11       #stubs:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/dsa/diagnostics/DiagnosticStub;>;"
    :cond_38
    :try_start_38
    new-instance v10, Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    invoke-direct {v10}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;-><init>()V

    .line 143
    .local v10, stub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;
    invoke-static {v8, v10}, Lcom/sprint/dsa/diagnostics/DbDiagnostics;->readCursor(Landroid/database/Cursor;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V

    .line 145
    invoke-static {p0, v10}, Lcom/sprint/dsa/diagnostics/DbDiagnostics;->readInfo(Landroid/database/sqlite/SQLiteDatabase;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V

    .line 146
    invoke-static {p0, v10}, Lcom/sprint/dsa/diagnostics/DbDiagnostics;->readStrings(Landroid/database/sqlite/SQLiteDatabase;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V

    .line 148
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4c
    .catchall {:try_start_38 .. :try_end_4c} :catchall_53

    move-result v9

    goto :goto_2f

    .line 162
    .end local v9           #hasMore:Z
    .end local v10           #stub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;
    .end local v11           #stubs:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/dsa/diagnostics/DiagnosticStub;>;"
    :cond_4e
    invoke-static {v8}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    move-object v11, v3

    .line 158
    goto :goto_37

    .line 161
    :catchall_53
    move-exception v0

    .line 162
    invoke-static {v8}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    .line 163
    throw v0
.end method

.method protected static readCursor(Landroid/database/Cursor;Lcom/sprint/dsa/diagnostics/DiagnosticGroup;)V
    .registers 4
    .parameter "c"
    .parameter "group"

    .prologue
    .line 402
    const-string v1, "key"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;->key:Ljava/lang/String;

    .line 403
    const-string v1, "title"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;->title:Ljava/lang/String;

    .line 404
    const-string v1, "sub_keys"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, subKeys:Ljava/lang/String;
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;->subKeys:[Ljava/lang/String;

    .line 406
    const-string v1, "rank"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;->rank:I

    .line 409
    return-void
.end method

.method protected static readCursor(Landroid/database/Cursor;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V
    .registers 3
    .parameter "c"
    .parameter "stub"

    .prologue
    .line 274
    const-string v0, "key"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->setKey(Ljava/lang/String;)V

    .line 275
    const-string v0, "title"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->setTitle(Ljava/lang/String;)V

    .line 276
    const-string v0, "description"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->setDescription(Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method protected static readInfo(Landroid/database/sqlite/SQLiteDatabase;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V
    .registers 19
    .parameter "db"
    .parameter "stub"

    .prologue
    .line 211
    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/String;

    .line 212
    .local v3, columns:[Ljava/lang/String;
    const-string v4, "id = ?"

    .line 213
    .local v4, selection:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getKey()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 214
    .local v5, selectionArgs:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 216
    .local v8, orderBy:Ljava/lang/String;
    const-string v2, "info_tbl"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 219
    .local v9, c:Landroid/database/Cursor;
    :try_start_1a
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v16

    .line 220
    .local v16, numRows:I
    if-lez v16, :cond_40

    .line 221
    const-string v1, "title"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 222
    .local v12, colTitle:I
    const-string v1, "description"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 223
    .local v11, colDesc:I
    const-string v1, "action"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 224
    .local v10, colAction:I
    const-string v1, "uri"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 226
    .local v13, colUri:I
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_3b
    .catchall {:try_start_1a .. :try_end_3b} :catchall_70

    .line 227
    const/4 v14, 0x0

    .local v14, i:I
    :goto_3c
    move/from16 v0, v16

    if-lt v14, v0, :cond_44

    .line 241
    .end local v10           #colAction:I
    .end local v11           #colDesc:I
    .end local v12           #colTitle:I
    .end local v13           #colUri:I
    .end local v14           #i:I
    :cond_40
    invoke-static {v9}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    .line 243
    return-void

    .line 228
    .restart local v10       #colAction:I
    .restart local v11       #colDesc:I
    .restart local v12       #colTitle:I
    .restart local v13       #colUri:I
    .restart local v14       #i:I
    :cond_44
    :try_start_44
    new-instance v15, Lcom/sprint/dsa/data/InfoItem;

    invoke-direct {v15}, Lcom/sprint/dsa/data/InfoItem;-><init>()V

    .line 229
    .local v15, infoItem:Lcom/sprint/dsa/data/InfoItem;
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/sprint/dsa/data/InfoItem;->setTitle(Ljava/lang/String;)V

    .line 230
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/sprint/dsa/data/InfoItem;->setDesc(Ljava/lang/String;)V

    .line 231
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/sprint/dsa/data/InfoItem;->setAction(Ljava/lang/String;)V

    .line 232
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/sprint/dsa/data/InfoItem;->setUri(Ljava/lang/String;)V

    .line 234
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->addInfoItem(Lcom/sprint/dsa/data/InfoItem;)V

    .line 236
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6d
    .catchall {:try_start_44 .. :try_end_6d} :catchall_70

    .line 227
    add-int/lit8 v14, v14, 0x1

    goto :goto_3c

    .line 240
    .end local v10           #colAction:I
    .end local v11           #colDesc:I
    .end local v12           #colTitle:I
    .end local v13           #colUri:I
    .end local v14           #i:I
    .end local v15           #infoItem:Lcom/sprint/dsa/data/InfoItem;
    .end local v16           #numRows:I
    :catchall_70
    move-exception v1

    .line 241
    invoke-static {v9}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    .line 242
    throw v1
.end method

.method protected static readStrings(Landroid/database/sqlite/SQLiteDatabase;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V
    .registers 18
    .parameter "db"
    .parameter "stub"

    .prologue
    .line 246
    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/String;

    .line 247
    .local v3, columns:[Ljava/lang/String;
    const-string v4, "id = ?"

    .line 248
    .local v4, selection:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getKey()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 249
    .local v5, selectionArgs:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 251
    .local v8, orderBy:Ljava/lang/String;
    const-string v2, "strings_tbl"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 254
    .local v9, c:Landroid/database/Cursor;
    :try_start_1a
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v14

    .line 255
    .local v14, numRows:I
    const-string v1, "name"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 256
    .local v10, colName:I
    const-string v1, "value"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 259
    .local v11, colValue:I
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_2d
    .catchall {:try_start_1a .. :try_end_2d} :catchall_47

    .line 260
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2e
    if-lt v12, v14, :cond_34

    .line 269
    invoke-static {v9}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    .line 271
    return-void

    .line 261
    :cond_34
    :try_start_34
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 262
    .local v13, name:Ljava/lang/String;
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 263
    .local v15, value:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v15}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->addString(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_44
    .catchall {:try_start_34 .. :try_end_44} :catchall_47

    .line 260
    add-int/lit8 v12, v12, 0x1

    goto :goto_2e

    .line 268
    .end local v10           #colName:I
    .end local v11           #colValue:I
    .end local v12           #i:I
    .end local v13           #name:Ljava/lang/String;
    .end local v14           #numRows:I
    .end local v15           #value:Ljava/lang/String;
    :catchall_47
    move-exception v1

    .line 269
    invoke-static {v9}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    .line 270
    throw v1
.end method

.method public static readStub(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/sprint/dsa/diagnostics/DiagnosticStub;
    .registers 12
    .parameter "db"
    .parameter "key"

    .prologue
    const/4 v5, 0x0

    .line 181
    const-string v3, "key = ?"

    .line 182
    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .local v4, selectionArgs:[Ljava/lang/String;
    move-object v2, v5

    .line 183
    check-cast v2, [Ljava/lang/String;

    .line 185
    .local v2, columns:[Ljava/lang/String;
    const-string v1, "diagnostics_tbl"

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 187
    .local v8, c:Landroid/database/Cursor;
    :try_start_15
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 190
    new-instance v9, Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    invoke-direct {v9}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;-><init>()V

    .line 191
    .local v9, stub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;
    invoke-static {v8, v9}, Lcom/sprint/dsa/diagnostics/DbDiagnostics;->readCursor(Landroid/database/Cursor;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V

    .line 192
    invoke-static {v8}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    .line 194
    invoke-static {p0, v9}, Lcom/sprint/dsa/diagnostics/DbDiagnostics;->readInfo(Landroid/database/sqlite/SQLiteDatabase;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V

    .line 195
    invoke-static {p0, v9}, Lcom/sprint/dsa/diagnostics/DbDiagnostics;->readStrings(Landroid/database/sqlite/SQLiteDatabase;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V
    :try_end_2c
    .catchall {:try_start_15 .. :try_end_2c} :catchall_35

    .line 206
    invoke-static {v8}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    .line 202
    .end local v9           #stub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;
    :goto_2f
    return-object v9

    .line 206
    :cond_30
    invoke-static {v8}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    move-object v9, v5

    .line 202
    goto :goto_2f

    .line 205
    :catchall_35
    move-exception v0

    .line 206
    invoke-static {v8}, Lcom/sprint/dsa/data/DbAdapter;->safeClose(Landroid/database/Cursor;)V

    .line 207
    throw v0
.end method

.method public static save(Landroid/database/sqlite/SQLiteDatabase;Lcom/sprint/dsa/diagnostics/DiagnosticGroup;)V
    .registers 10
    .parameter "db"
    .parameter "group"

    .prologue
    .line 103
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 104
    .local v2, values:Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, key:Ljava/lang/String;
    const-string v5, "key"

    invoke-virtual {p1}, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v5, "title"

    invoke-virtual {p1}, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v5, "rank"

    iget v6, p1, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;->rank:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    const-string v5, "sub_keys"

    const-string v6, ","

    iget-object v7, p1, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;->subKeys:[Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/sprint/dsa/Util;->join(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v4, "key = ?"

    .line 111
    .local v4, whereClause:Ljava/lang/String;
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v3, v5

    .line 112
    .local v3, whereArgs:[Ljava/lang/String;
    const-string v5, "diagnostic_groups_tbl"

    invoke-virtual {p0, v5, v2, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 113
    .local v1, updated:I
    if-nez v1, :cond_49

    .line 114
    const-string v5, "diagnostic_groups_tbl"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 116
    :cond_49
    return-void
.end method

.method public static save(Landroid/database/sqlite/SQLiteDatabase;Lcom/sprint/dsa/diagnostics/DiagnosticGroups;Z)V
    .registers 6
    .parameter "db"
    .parameter "groups"
    .parameter "deleteFirst"

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-virtual {p1}, Lcom/sprint/dsa/diagnostics/DiagnosticGroups;->getCount()I

    move-result v1

    if-nez v1, :cond_8

    .line 98
    :cond_7
    return-void

    .line 90
    :cond_8
    if-eqz p2, :cond_f

    .line 91
    const-string v1, "diagnostic_groups_tbl"

    invoke-virtual {p0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 95
    :cond_f
    invoke-virtual {p1}, Lcom/sprint/dsa/diagnostics/DiagnosticGroups;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/diagnostics/DiagnosticGroup;

    .line 96
    .local v0, group:Lcom/sprint/dsa/diagnostics/DiagnosticGroup;
    invoke-static {p0, v0}, Lcom/sprint/dsa/diagnostics/DbDiagnostics;->save(Landroid/database/sqlite/SQLiteDatabase;Lcom/sprint/dsa/diagnostics/DiagnosticGroup;)V

    goto :goto_13
.end method

.method public static save(Landroid/database/sqlite/SQLiteDatabase;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V
    .registers 9
    .parameter "db"
    .parameter "stub"

    .prologue
    .line 65
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 66
    .local v2, values:Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, key:Ljava/lang/String;
    const-string v5, "key"

    invoke-virtual {p1}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v5, "title"

    invoke-virtual {p1}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v5, "description"

    invoke-virtual {p1}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v5, "group_key"

    iget-object v6, p1, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->mGroupKey:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v5, "rank"

    iget v6, p1, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->mRank:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 73
    const-string v4, "key = ?"

    .line 74
    .local v4, whereClause:Ljava/lang/String;
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v3, v5

    .line 75
    .local v3, whereArgs:[Ljava/lang/String;
    const-string v5, "diagnostics_tbl"

    invoke-virtual {p0, v5, v2, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 76
    .local v1, updated:I
    if-nez v1, :cond_4c

    .line 77
    const-string v5, "diagnostics_tbl"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 80
    :cond_4c
    invoke-static {p0, p1}, Lcom/sprint/dsa/diagnostics/DbDiagnostics;->saveInfo(Landroid/database/sqlite/SQLiteDatabase;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V

    .line 81
    invoke-static {p0, p1}, Lcom/sprint/dsa/diagnostics/DbDiagnostics;->saveStrings(Landroid/database/sqlite/SQLiteDatabase;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V

    .line 82
    return-void
.end method

.method public static save(Landroid/database/sqlite/SQLiteDatabase;Lcom/sprint/dsa/diagnostics/DiagnosticStubs;Z)V
    .registers 7
    .parameter "db"
    .parameter "stubs"
    .parameter "deleteFirst"

    .prologue
    const/4 v3, 0x0

    .line 44
    invoke-virtual {p1}, Lcom/sprint/dsa/diagnostics/DiagnosticStubs;->getCount()I

    move-result v2

    if-nez v2, :cond_8

    .line 61
    :cond_7
    return-void

    .line 49
    :cond_8
    if-eqz p2, :cond_1b

    .line 50
    const-string v2, "diagnostics_tbl"

    invoke-virtual {p0, v2, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 52
    .local v0, count:I
    const-string v2, "strings_tbl"

    invoke-virtual {p0, v2, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 54
    const-string v2, "info_tbl"

    invoke-virtual {p0, v2, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 58
    .end local v0           #count:I
    :cond_1b
    invoke-virtual {p1}, Lcom/sprint/dsa/diagnostics/DiagnosticStubs;->list()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sprint/dsa/diagnostics/DiagnosticStub;

    .line 59
    .local v1, stub:Lcom/sprint/dsa/diagnostics/DiagnosticStub;
    invoke-static {p0, v1}, Lcom/sprint/dsa/diagnostics/DbDiagnostics;->save(Landroid/database/sqlite/SQLiteDatabase;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V

    goto :goto_23
.end method

.method protected static saveInfo(Landroid/database/sqlite/SQLiteDatabase;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V
    .registers 8
    .parameter "db"
    .parameter "stub"

    .prologue
    .line 332
    invoke-virtual {p1}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/sprint/dsa/diagnostics/DbDiagnostics;->deleteInfo(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 334
    invoke-virtual {p1}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getInfoItems()Ljava/util/List;

    move-result-object v1

    .line 335
    .local v1, infoItems:Ljava/util/List;,"Ljava/util/List<Lcom/sprint/dsa/data/InfoItem;>;"
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 337
    .local v2, values:Landroid/content/ContentValues;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1b

    .line 351
    return-void

    .line 337
    :cond_1b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/dsa/data/InfoItem;

    .line 338
    .local v0, infoItem:Lcom/sprint/dsa/data/InfoItem;
    const-string v4, "id"

    invoke-virtual {p1}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v4, "title"

    invoke-virtual {v0}, Lcom/sprint/dsa/data/InfoItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string v4, "description"

    invoke-virtual {v0}, Lcom/sprint/dsa/data/InfoItem;->getDesc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v4, "action"

    invoke-virtual {v0}, Lcom/sprint/dsa/data/InfoItem;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v4, "uri"

    invoke-virtual {v0}, Lcom/sprint/dsa/data/InfoItem;->getUri()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v4, "info_tbl"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 346
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Insert database: info_tbl : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_14
.end method

.method protected static saveStrings(Landroid/database/sqlite/SQLiteDatabase;Lcom/sprint/dsa/diagnostics/DiagnosticStub;)V
    .registers 8
    .parameter "db"
    .parameter "stub"

    .prologue
    .line 312
    invoke-virtual {p1}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/sprint/dsa/diagnostics/DbDiagnostics;->deleteStrings(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 315
    invoke-virtual {p1}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getStrings()Ljava/util/Map;

    move-result-object v1

    .line 316
    .local v1, strings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 318
    .local v2, values:Landroid/content/ContentValues;
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 328
    return-void

    .line 318
    :cond_1f
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 319
    .local v0, name:Ljava/lang/String;
    const-string v3, "id"

    invoke-virtual {p1}, Lcom/sprint/dsa/diagnostics/DiagnosticStub;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v3, "name"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v5, "value"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v3, "strings_tbl"

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 325
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Insert database: strings_tbl : "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_18
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DbDiagnostics;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 35
    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .registers 3
    .parameter "key"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/sprint/dsa/diagnostics/DbDiagnostics;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p1}, Lcom/sprint/dsa/diagnostics/DbDiagnostics;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 281
    return-void
.end method
