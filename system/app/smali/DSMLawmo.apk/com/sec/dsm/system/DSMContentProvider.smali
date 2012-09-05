.class public Lcom/sec/dsm/system/DSMContentProvider;
.super Landroid/content/ContentProvider;
.source "DSMContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/dsm/system/DSMContentProvider$DatabaseHelper;
    }
.end annotation


# instance fields
.field private DSMProvider:Lcom/sec/dsm/system/DSMProvider;

.field private openHelper:Lcom/sec/dsm/system/DSMContentProvider$DatabaseHelper;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 24
    new-instance v0, Lcom/sec/dsm/system/DSMProvider;

    invoke-direct {v0}, Lcom/sec/dsm/system/DSMProvider;-><init>()V

    iput-object v0, p0, Lcom/sec/dsm/system/DSMContentProvider;->DSMProvider:Lcom/sec/dsm/system/DSMProvider;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/sec/dsm/system/DSMContentProvider;)Lcom/sec/dsm/system/DSMProvider;
    .registers 2
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/sec/dsm/system/DSMContentProvider;->DSMProvider:Lcom/sec/dsm/system/DSMProvider;

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 11
    .parameter "uri"
    .parameter "where"
    .parameter "whereArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v6, p0, Lcom/sec/dsm/system/DSMContentProvider;->openHelper:Lcom/sec/dsm/system/DSMContentProvider$DatabaseHelper;

    monitor-enter v6

    .line 166
    :try_start_3
    iget-object v0, p0, Lcom/sec/dsm/system/DSMContentProvider;->openHelper:Lcom/sec/dsm/system/DSMContentProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/sec/dsm/system/DSMContentProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 167
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v0, p0, Lcom/sec/dsm/system/DSMContentProvider;->DSMProvider:Lcom/sec/dsm/system/DSMProvider;

    invoke-virtual {p0}, Lcom/sec/dsm/system/DSMContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/dsm/system/DSMProvider;->delete(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    monitor-exit v6

    return v0

    .line 168
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_18
    move-exception v0

    monitor-exit v6
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter "uri"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/dsm/system/DSMContentProvider;->DSMProvider:Lcom/sec/dsm/system/DSMProvider;

    invoke-virtual {v0, p1}, Lcom/sec/dsm/system/DSMProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 7
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 117
    iget-object v2, p0, Lcom/sec/dsm/system/DSMContentProvider;->openHelper:Lcom/sec/dsm/system/DSMContentProvider$DatabaseHelper;

    monitor-enter v2

    .line 118
    :try_start_3
    iget-object v1, p0, Lcom/sec/dsm/system/DSMContentProvider;->openHelper:Lcom/sec/dsm/system/DSMContentProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/sec/dsm/system/DSMContentProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 119
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v1, p0, Lcom/sec/dsm/system/DSMContentProvider;->DSMProvider:Lcom/sec/dsm/system/DSMProvider;

    invoke-virtual {p0}, Lcom/sec/dsm/system/DSMContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3, v0, p1, p2}, Lcom/sec/dsm/system/DSMProvider;->insert(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 120
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_15
    move-exception v1

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public onCreate()Z
    .registers 3

    .prologue
    .line 56
    new-instance v0, Lcom/sec/dsm/system/DSMContentProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/sec/dsm/system/DSMContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/dsm/system/DSMContentProvider$DatabaseHelper;-><init>(Lcom/sec/dsm/system/DSMContentProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/dsm/system/DSMContentProvider;->openHelper:Lcom/sec/dsm/system/DSMContentProvider$DatabaseHelper;

    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 15
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 84
    iget-object v8, p0, Lcom/sec/dsm/system/DSMContentProvider;->openHelper:Lcom/sec/dsm/system/DSMContentProvider$DatabaseHelper;

    monitor-enter v8

    .line 85
    :try_start_3
    iget-object v0, p0, Lcom/sec/dsm/system/DSMContentProvider;->openHelper:Lcom/sec/dsm/system/DSMContentProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/sec/dsm/system/DSMContentProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 86
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v0, p0, Lcom/sec/dsm/system/DSMContentProvider;->DSMProvider:Lcom/sec/dsm/system/DSMProvider;

    invoke-virtual {p0}, Lcom/sec/dsm/system/DSMContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/sec/dsm/system/DSMProvider;->query(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    monitor-exit v8

    return-object v0

    .line 88
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1a
    move-exception v0

    monitor-exit v8
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 13
    .parameter "uri"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 140
    iget-object v7, p0, Lcom/sec/dsm/system/DSMContentProvider;->openHelper:Lcom/sec/dsm/system/DSMContentProvider$DatabaseHelper;

    monitor-enter v7

    .line 141
    :try_start_3
    iget-object v0, p0, Lcom/sec/dsm/system/DSMContentProvider;->openHelper:Lcom/sec/dsm/system/DSMContentProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/sec/dsm/system/DSMContentProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 142
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v0, p0, Lcom/sec/dsm/system/DSMContentProvider;->DSMProvider:Lcom/sec/dsm/system/DSMProvider;

    invoke-virtual {p0}, Lcom/sec/dsm/system/DSMContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sec/dsm/system/DSMProvider;->update(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    monitor-exit v7

    return v0

    .line 143
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_19
    move-exception v0

    monitor-exit v7
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0
.end method
