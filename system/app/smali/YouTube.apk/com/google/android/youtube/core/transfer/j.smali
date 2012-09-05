.class final Lcom/google/android/youtube/core/transfer/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private c:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/j;->a:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/google/android/youtube/core/transfer/j;->b:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private static d(Lcom/google/android/youtube/core/transfer/p;)Landroid/content/ContentValues;
    .registers 5
    .parameter

    .prologue
    .line 310
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 311
    const-string v1, "file_path"

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/p;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v1, "network_uri"

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/p;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v1, "status"

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/p;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/transfer/Transfer$Status;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 314
    const-string v1, "status_reason"

    iget v2, p0, Lcom/google/android/youtube/core/transfer/p;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 315
    const-string v1, "bytes_transferred"

    iget-wide v2, p0, Lcom/google/android/youtube/core/transfer/p;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 316
    const-string v1, "bytes_total"

    iget-wide v2, p0, Lcom/google/android/youtube/core/transfer/p;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 317
    const-string v1, "extras"

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/p;->g:Lcom/google/android/youtube/core/transfer/b;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/transfer/b;->a()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 318
    const-string v1, "output_extras"

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/p;->h:Lcom/google/android/youtube/core/transfer/b;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/transfer/b;->a()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 319
    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 4

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/j;->c:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/j;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 60
    :cond_c
    new-instance v0, Lcom/google/android/youtube/core/transfer/k;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/j;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/j;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/transfer/k;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/k;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/j;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 62
    :cond_1b
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/transfer/p;)V
    .registers 6
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/j;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "transfers"

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/google/android/youtube/core/transfer/j;->d(Lcom/google/android/youtube/core/transfer/p;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 107
    return-void
.end method

.method public final b()Ljava/util/List;
    .registers 25

    .prologue
    .line 65
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 66
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/youtube/core/transfer/j;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "transfers"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 68
    :try_start_15
    const-string v3, "file_path"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 69
    const-string v5, "network_uri"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 70
    const-string v6, "status"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 71
    const-string v7, "status_reason"

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 72
    const-string v8, "bytes_transferred"

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 73
    const-string v9, "bytes_total"

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 74
    const-string v10, "extras"

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 75
    const-string v12, "output_extras"

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 77
    :goto_45
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_ab

    .line 78
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 79
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 80
    invoke-static {}, Lcom/google/android/youtube/core/transfer/Transfer$Status;->values()[Lcom/google/android/youtube/core/transfer/Transfer$Status;

    move-result-object v15

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    aget-object v15, v15, v16

    .line 81
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 82
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 83
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 84
    new-instance v21, Lcom/google/android/youtube/core/transfer/b;

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/google/android/youtube/core/transfer/b;-><init>([B)V

    .line 85
    new-instance v22, Lcom/google/android/youtube/core/transfer/b;

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lcom/google/android/youtube/core/transfer/b;-><init>([B)V

    .line 87
    new-instance v23, Lcom/google/android/youtube/core/transfer/p;

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-direct {v0, v13, v14, v1}, Lcom/google/android/youtube/core/transfer/p;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/transfer/b;)V

    .line 91
    move-object/from16 v0, v23

    iput-object v15, v0, Lcom/google/android/youtube/core/transfer/p;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    .line 92
    move/from16 v0, v16

    move-object/from16 v1, v23

    iput v0, v1, Lcom/google/android/youtube/core/transfer/p;->d:I

    .line 93
    move-wide/from16 v0, v19

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/google/android/youtube/core/transfer/p;->f:J

    .line 94
    move-wide/from16 v0, v17

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/google/android/youtube/core/transfer/p;->e:J

    .line 95
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/google/android/youtube/core/transfer/p;->h:Lcom/google/android/youtube/core/transfer/b;

    .line 97
    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a5
    .catchall {:try_start_15 .. :try_end_a5} :catchall_a6

    goto :goto_45

    .line 100
    :catchall_a6
    move-exception v3

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_ab
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 102
    return-object v11
.end method

.method public final b(Lcom/google/android/youtube/core/transfer/p;)V
    .registers 9
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/j;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "transfers"

    invoke-static {p1}, Lcom/google/android/youtube/core/transfer/j;->d(Lcom/google/android/youtube/core/transfer/p;)Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "file_path = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/google/android/youtube/core/transfer/p;->a:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 112
    return-void
.end method

.method public final c()V
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/j;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/j;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 122
    return-void
.end method

.method public final c(Lcom/google/android/youtube/core/transfer/p;)V
    .registers 8
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/j;->c:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "transfers"

    const-string v2, "file_path = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/google/android/youtube/core/transfer/p;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 117
    return-void
.end method
