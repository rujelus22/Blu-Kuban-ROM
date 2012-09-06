.class public final Lcom/twitter/android/provider/ae;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field private static final a:Z

.field private static final b:[I

.field private static final c:Ljava/util/HashMap;


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Landroid/content/ContentResolver;

.field private final f:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/twitter/android/provider/ae;->a:Z

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Lcom/twitter/android/provider/ae;->b:[I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/twitter/android/provider/ae;->c:Ljava/util/HashMap;

    return-void

    nop

    :array_14
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 7

    const/4 v0, 0x0

    const/16 v1, 0xd

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p1, p0, Lcom/twitter/android/provider/ae;->d:Landroid/content/Context;

    iget-object v0, p0, Lcom/twitter/android/provider/ae;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/provider/ae;->e:Landroid/content/ContentResolver;

    iput-wide p3, p0, Lcom/twitter/android/provider/ae;->f:J

    return-void
.end method

.method private static a(JLjava/util/ArrayList;)I
    .registers 7

    if-eqz p2, :cond_1d

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/ActivityDataUser;

    iget-wide v2, v0, Lcom/twitter/android/provider/ActivityDataUser;->id:J

    cmp-long v2, v2, p0

    if-nez v2, :cond_6

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method private declared-synchronized a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[J)I
    .registers 12

    const/4 v0, 0x0

    monitor-enter p0

    const/4 v1, 0x1

    :try_start_3
    new-array v2, v1, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    array-length v3, p4

    move v1, v0

    :goto_a
    if-ge v0, v3, :cond_1d

    aget-wide v4, p4, v0

    const/4 v6, 0x0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-virtual {p1, p2, p3, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1d
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_25

    :try_start_20
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_2a

    monitor-exit p0

    return v1

    :catchall_25
    move-exception v0

    :try_start_26
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;JJLcom/twitter/android/api/TweetEntities;)J
    .registers 16

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_3
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    cmp-long v0, p2, v2

    if-lez v0, :cond_71

    const/4 v0, 0x1

    :goto_d
    cmp-long v2, p2, v2

    if-nez v2, :cond_1f

    const-wide v2, 0xb018707fL

    const-wide v4, 0xb019f71fL

    invoke-static {p1, v2, v3, v4, v5}, Lcom/twitter/android/provider/ae;->b(Landroid/database/sqlite/SQLiteDatabase;JJ)J

    move-result-wide p2

    :cond_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "content"

    invoke-virtual {v1, v4, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p9, :cond_73

    const-string v4, "entities"

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    :goto_2f
    if-eqz v0, :cond_80

    const-string v0, "statuses"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "status_id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1, v0, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    const-string v0, "updated_at"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "status_groups"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "g_status_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_67
    iget-object v0, p0, Lcom/twitter/android/provider/ae;->e:Landroid/content/ContentResolver;

    sget-object v1, Lcom/twitter/android/provider/z;->l:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_6f
    .catchall {:try_start_3 .. :try_end_6f} :catchall_7d

    monitor-exit p0

    return-wide p2

    :cond_71
    const/4 v0, 0x0

    goto :goto_d

    :cond_73
    :try_start_73
    const-string v4, "entities"

    invoke-virtual {p9}, Lcom/twitter/android/api/TweetEntities;->a()[B

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_7c
    .catchall {:try_start_73 .. :try_end_7c} :catchall_7d

    goto :goto_2f

    :catchall_7d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_80
    :try_start_80
    const-string v0, "status_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "created"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "author_id"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "in_r_status_id"

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "statuses"

    const-string v4, "status_id"

    invoke-virtual {p1, v0, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    const-string v0, "g_status_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "owner_id"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "type"

    const/16 v4, 0xb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "sender_id"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "ref_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "updated_at"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "status_groups"

    const-string v2, "g_status_id"

    invoke-virtual {p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_ed
    .catchall {:try_start_80 .. :try_end_ed} :catchall_7d

    goto/16 :goto_67
.end method

.method private declared-synchronized a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J
    .registers 12

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "search_queries"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_2f

    move-result-object v2

    if-eqz v2, :cond_27

    :try_start_13
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_2a

    move-result v0

    int-to-long v0, v0

    :try_start_1f
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_2f

    :goto_22
    monitor-exit p0

    return-wide v0

    :cond_24
    :try_start_24
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_27
    const-wide/16 v0, 0x0

    goto :goto_22

    :catchall_2a
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Collection;Ljava/util/Map;)Landroid/database/Cursor;
    .registers 21

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p6 .. p6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    invoke-interface/range {p6 .. p6}, Ljava/util/Collection;->size()I

    move-result v1

    div-int/lit8 v12, v1, 0xa

    if-lez v12, :cond_77

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v0, p3

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " IN (?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p4, :cond_2b

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v1, 0xa

    move-object/from16 v0, p5

    invoke-static {v1, v0}, Lcom/twitter/android/provider/ae;->a(I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x0

    move v9, v1

    :goto_39
    if-ge v9, v12, :cond_77

    const/4 v1, 0x0

    move v2, v1

    :goto_3d
    const/16 v1, 0xa

    if-ge v2, v1, :cond_64

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/api/g;

    invoke-interface {v1}, Lcom/twitter/android/api/g;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    if-eqz p7, :cond_60

    invoke-interface {v1}, Lcom/twitter/android/api/g;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_60
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3d

    :cond_64
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_73

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_73
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_39

    :cond_77
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v0, p3

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p4, :cond_91

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_91
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x1

    move-object/from16 v0, p5

    invoke-static {v1, v0}, Lcom/twitter/android/provider/ae;->a(I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    :cond_9c
    :goto_9c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/api/g;

    const/4 v2, 0x0

    invoke-interface {v1}, Lcom/twitter/android/api/g;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    if-eqz p7, :cond_c2

    invoke-interface {v1}, Lcom/twitter/android/api/g;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c2
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_9c

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9c

    :cond_d2
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_da

    const/4 v1, 0x0

    :goto_d9
    return-object v1

    :cond_da
    new-instance v2, Landroid/database/MergeCursor;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/database/Cursor;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/database/Cursor;

    invoke-direct {v2, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object v1, v2

    goto :goto_d9
.end method

.method public static a(Landroid/database/Cursor;)Lcom/twitter/android/api/ac;
    .registers 29

    new-instance v2, Lcom/twitter/android/api/ac;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x8

    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x9

    move-object/from16 v0, p0

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/16 v10, 0xa

    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x12

    move-object/from16 v0, p0

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v12, 0x5

    move-object/from16 v0, p0

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_bb

    const/4 v12, 0x1

    :goto_49
    const/4 v13, 0x6

    move-object/from16 v0, p0

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_bd

    const/4 v13, 0x1

    :goto_54
    const/4 v14, 0x7

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0xb

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const/16 v16, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    const/16 v18, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const/16 v19, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_bf

    const/16 v19, 0x1

    :goto_8b
    const/16 v20, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    const/16 v21, 0x13

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    const/16 v23, 0x0

    const/16 v24, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    const/16 v26, 0x11

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    const/16 v27, 0x0

    invoke-direct/range {v2 .. v27}, Lcom/twitter/android/api/ac;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZZLjava/lang/String;IJIZIJLcom/twitter/android/api/aa;JILcom/twitter/android/api/PromotedContent;)V

    return-object v2

    :cond_bb
    const/4 v12, 0x0

    goto :goto_49

    :cond_bd
    const/4 v13, 0x0

    goto :goto_54

    :cond_bf
    const/16 v19, 0x0

    goto :goto_8b
.end method

.method public static declared-synchronized a(Landroid/content/Context;J)Lcom/twitter/android/provider/ae;
    .registers 7

    const-class v1, Lcom/twitter/android/provider/ae;

    monitor-enter v1

    :try_start_3
    invoke-static {p1, p2}, Lcom/twitter/android/provider/ae;->h(J)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/twitter/android/provider/ae;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/ae;

    if-nez v0, :cond_1f

    new-instance v0, Lcom/twitter/android/provider/ae;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, v2, p1, p2}, Lcom/twitter/android/provider/ae;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    sget-object v3, Lcom/twitter/android/provider/ae;->c:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_21

    :cond_1f
    monitor-exit v1

    return-object v0

    :catchall_21
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(IIJ)Ljava/lang/String;
    .registers 13

    const/4 v2, 0x0

    const/4 v5, 0x0

    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v1, "cursors"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v2, Lcom/twitter/android/provider/ai;->a:[Ljava/lang/String;

    const-string v3, "owner_id=? AND type=? AND kind=?"

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_41

    :try_start_33
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_42

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_46

    move-result-object v5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_41
    :goto_41
    return-object v5

    :cond_42
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_41

    :catchall_46
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private declared-synchronized a(IIJLjava/lang/String;)V
    .registers 13

    monitor-enter p0

    if-nez p5, :cond_5

    :cond_3
    :goto_3
    monitor-exit p0

    return-void

    :cond_5
    :try_start_5
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "kind"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "owner_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "next"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "cursors"

    const-string v3, "owner_id=? AND type=? AND kind=?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_57

    const-string v2, "cursors"

    const-string v3, "owner_id"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_57
    sget-boolean v0, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "DatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Saved cursor for type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", kind: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", next: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catchall {:try_start_5 .. :try_end_83} :catchall_84

    goto :goto_3

    :catchall_84
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(JII)V
    .registers 11

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "cursors"

    const-string v2, "owner_id=? AND type=? AND kind=?"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    sget-boolean v1, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v1, :cond_3f

    if-lez v0, :cond_3f

    const-string v0, "DatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalidated cursor: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_41

    :cond_3f
    monitor-exit p0

    return-void

    :catchall_41
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(JIZ)V
    .registers 13

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/android/provider/ae;->i(JI)J
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_75

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_d

    :cond_b
    :goto_b
    monitor-exit p0

    return-void

    :cond_d
    :try_start_d
    sget-boolean v2, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v2, :cond_39

    const-string v2, "DatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Tagging the oldest status of type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " owner id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " row id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "is_last"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "status_groups"

    const-string v5, "is_last=1"

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v4, "is_last"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "status_groups"

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    if-eqz p4, :cond_b

    invoke-direct {p0}, Lcom/twitter/android/provider/ae;->g()V
    :try_end_74
    .catchall {:try_start_d .. :try_end_74} :catchall_75

    goto :goto_b

    :catchall_75
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static a(Landroid/content/ContentValues;ILcom/twitter/android/provider/af;Lcom/twitter/android/api/n;)V
    .registers 8

    const-string v0, "event"

    iget v1, p3, Lcom/twitter/android/api/n;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "created_at"

    iget-wide v1, p3, Lcom/twitter/android/api/n;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "max_position"

    iget-wide v1, p3, Lcom/twitter/android/api/n;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "min_position"

    iget-wide v1, p3, Lcom/twitter/android/api/n;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "source_type"

    iget v1, p3, Lcom/twitter/android/api/n;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "target_type"

    iget v1, p3, Lcom/twitter/android/api/n;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "target_object_type"

    iget v1, p3, Lcom/twitter/android/api/n;->n:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p2, :cond_52

    packed-switch p1, :pswitch_data_17c

    :cond_52
    :goto_52
    const-string v0, "sources"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_75

    const-string v0, "sources_size"

    iget v1, p3, Lcom/twitter/android/api/n;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v0, p3, Lcom/twitter/android/api/n;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_133

    const-string v0, "sources"

    iget-object v1, p3, Lcom/twitter/android/api/n;->g:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/twitter/android/provider/ActivityDataUser;->a(Ljava/util/ArrayList;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_75
    :goto_75
    const-string v0, "targets"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_92

    const-string v0, "targets_size"

    iget v1, p3, Lcom/twitter/android/api/n;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v0, p3, Lcom/twitter/android/api/n;->i:I

    packed-switch v0, :pswitch_data_188

    const-string v0, "targets"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    :cond_92
    :goto_92
    const-string v0, "target_objects"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_af

    const-string v0, "target_objects_size"

    iget v1, p3, Lcom/twitter/android/api/n;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v0, p3, Lcom/twitter/android/api/n;->n:I

    packed-switch v0, :pswitch_data_192

    const-string v0, "target_objects"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    :cond_af
    :goto_af
    return-void

    :pswitch_b0
    iget-object v0, p2, Lcom/twitter/android/provider/af;->g:Ljava/util/ArrayList;

    iget-object v1, p3, Lcom/twitter/android/api/n;->g:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/twitter/android/provider/ae;->c(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "sources_size"

    iget v2, p2, Lcom/twitter/android/provider/af;->e:I

    iget v3, p3, Lcom/twitter/android/api/n;->e:I

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "sources"

    invoke-static {v0}, Lcom/twitter/android/util/x;->a(Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_52

    :pswitch_d0
    iget-object v0, p2, Lcom/twitter/android/provider/af;->j:Ljava/util/ArrayList;

    iget-object v1, p3, Lcom/twitter/android/api/n;->j:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/twitter/android/provider/ae;->c(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "targets_size"

    iget v2, p2, Lcom/twitter/android/provider/af;->h:I

    iget v3, p3, Lcom/twitter/android/api/n;->h:I

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "targets"

    invoke-static {v0}, Lcom/twitter/android/util/x;->a(Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto/16 :goto_52

    :pswitch_f1
    iget-object v0, p2, Lcom/twitter/android/provider/af;->k:Ljava/util/ArrayList;

    iget-object v1, p3, Lcom/twitter/android/api/n;->k:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/twitter/android/provider/ae;->d(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "targets_size"

    iget v2, p2, Lcom/twitter/android/provider/af;->h:I

    iget v3, p3, Lcom/twitter/android/api/n;->h:I

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "targets"

    invoke-static {v0}, Lcom/twitter/android/util/x;->a(Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto/16 :goto_52

    :pswitch_112
    iget-object v0, p2, Lcom/twitter/android/provider/af;->o:Ljava/util/ArrayList;

    iget-object v1, p3, Lcom/twitter/android/api/n;->o:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/twitter/android/provider/ae;->d(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "target_objects_size"

    iget v2, p2, Lcom/twitter/android/provider/af;->m:I

    iget v3, p3, Lcom/twitter/android/api/n;->m:I

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "target_objects"

    invoke-static {v0}, Lcom/twitter/android/util/x;->a(Ljava/lang/Object;)[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto/16 :goto_52

    :cond_133
    const-string v0, "sources"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto/16 :goto_75

    :pswitch_13a
    const-string v0, "targets"

    iget-object v1, p3, Lcom/twitter/android/api/n;->j:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/twitter/android/provider/ActivityDataUser;->a(Ljava/util/ArrayList;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto/16 :goto_92

    :pswitch_147
    const-string v0, "targets"

    iget-object v1, p3, Lcom/twitter/android/api/n;->k:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/twitter/android/provider/ActivityDataStatus;->a(Ljava/util/ArrayList;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto/16 :goto_92

    :pswitch_154
    const-string v0, "targets"

    iget-object v1, p3, Lcom/twitter/android/api/n;->l:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/twitter/android/provider/ActivityDataList;->a(Ljava/util/ArrayList;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto/16 :goto_92

    :pswitch_161
    const-string v0, "target_objects"

    iget-object v1, p3, Lcom/twitter/android/api/n;->o:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/twitter/android/provider/ActivityDataStatus;->a(Ljava/util/ArrayList;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto/16 :goto_af

    :pswitch_16e
    const-string v0, "target_objects"

    iget-object v1, p3, Lcom/twitter/android/api/n;->p:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/twitter/android/provider/ActivityDataList;->a(Ljava/util/ArrayList;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto/16 :goto_af

    nop

    :pswitch_data_17c
    .packed-switch 0x1
        :pswitch_b0
        :pswitch_d0
        :pswitch_f1
        :pswitch_112
    .end packed-switch

    :pswitch_data_188
    .packed-switch 0x1
        :pswitch_13a
        :pswitch_147
        :pswitch_154
    .end packed-switch

    :pswitch_data_192
    .packed-switch 0x2
        :pswitch_161
        :pswitch_16e
    .end packed-switch
.end method

.method private declared-synchronized a(Landroid/database/Cursor;IZ)V
    .registers 16

    monitor-enter p0

    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_84

    :try_start_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    :cond_17
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz p3, :cond_7a

    invoke-static {v0, p2}, Lcom/twitter/android/provider/ad;->a(II)I

    move-result v0

    :goto_27
    const-string v7, "friendship"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "friendship_time"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "users"

    const-string v8, "user_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v1, v7, v2, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    sget-boolean v7, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v7, :cond_6c

    const-string v7, "DatabaseHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "updateFriendship: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " friendship now: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6c
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_75
    .catchall {:try_start_13 .. :try_end_75} :catchall_7f

    :try_start_75
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_84

    :cond_78
    monitor-exit p0

    return-void

    :cond_7a
    :try_start_7a
    invoke-static {v0, p2}, Lcom/twitter/android/provider/ad;->b(II)I
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_7f

    move-result v0

    goto :goto_27

    :catchall_7f
    move-exception v0

    :try_start_80
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_84
    .catchall {:try_start_80 .. :try_end_84} :catchall_84

    :catchall_84
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string v0, "user_groups"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "cursors"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "users"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "status_groups"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "statuses"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "lists"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "messages"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "search_queries"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "scribe"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "activities"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "stories"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "tokens"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "notifications"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5c
    .catchall {:try_start_1 .. :try_end_5c} :catchall_5e

    monitor-exit p0

    return-void

    :catchall_5e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Landroid/database/sqlite/SQLiteDatabase;JJ)V
    .registers 38

    monitor-enter p0

    :try_start_1
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v28

    sget-boolean v3, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v3, :cond_2d

    const-string v3, "DatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Removing activity user: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", owned by: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    const-string v4, "user_groups"

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "tag"

    aput-object v6, v5, v3

    const-string v6, "owner_id=? AND user_id=? AND type IN (8,13)"

    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v11, v7, v3

    const/4 v3, 0x1

    aput-object v28, v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_6b

    :goto_52
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_68

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_64
    .catchall {:try_start_1 .. :try_end_64} :catchall_65

    goto :goto_52

    :catchall_65
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_68
    :try_start_68
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_6b
    const-string v4, "status_groups"

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "tag"

    aput-object v6, v5, v3

    const-string v6, "owner_id=? AND sender_id=? AND type IN (12,14)"

    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v11, v7, v3

    const/4 v3, 0x1

    aput-object v28, v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_a1

    :goto_8b
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_9e

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_8b

    :cond_9e
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_a1
    invoke-virtual {v12}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c3

    sget-boolean v3, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v3, :cond_c1

    const-string v3, "DatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "No user or status group activity records associated with "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c1
    .catchall {:try_start_68 .. :try_end_c1} :catchall_65

    :cond_c1
    :goto_c1
    monitor-exit p0

    return-void

    :cond_c3
    :try_start_c3
    new-instance v29, Ljava/util/HashMap;

    invoke-direct/range {v29 .. v29}, Ljava/util/HashMap;-><init>()V

    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :cond_d4
    :goto_d4
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_224

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v4

    const-string v4, "activities"

    sget-object v5, Lcom/twitter/android/provider/ag;->a:[Ljava/lang/String;

    const-string v6, "created_at=?"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_d4

    :cond_f8
    :goto_f8
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_21f

    const/4 v3, 0x0

    const/4 v5, 0x4

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const/4 v5, 0x3

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const/16 v18, 0x0

    const/4 v5, 0x1

    move/from16 v0, v17

    if-ne v5, v0, :cond_137

    const/4 v5, 0x5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-static {v5}, Lcom/twitter/android/provider/ActivityDataUser;->a([B)Ljava/util/ArrayList;

    move-result-object v18

    move-wide/from16 v0, p4

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/twitter/android/provider/ae;->a(JLjava/util/ArrayList;)I

    move-result v5

    if-lez v5, :cond_171

    sub-int v16, v16, v5

    if-gtz v16, :cond_136

    const/4 v3, 0x0

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f8

    :cond_136
    const/4 v3, 0x1

    :cond_137
    :goto_137
    const/4 v5, 0x7

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    const/4 v5, 0x6

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/4 v5, 0x1

    move/from16 v0, v20

    if-ne v5, v0, :cond_175

    const/16 v5, 0x8

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-static {v5}, Lcom/twitter/android/provider/ActivityDataUser;->a([B)Ljava/util/ArrayList;

    move-result-object v21

    move-wide/from16 v0, p4

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/twitter/android/provider/ae;->a(JLjava/util/ArrayList;)I

    move-result v5

    if-lez v5, :cond_1c1

    sub-int v19, v19, v5

    if-gtz v19, :cond_174

    const/4 v3, 0x0

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f8

    :cond_171
    const/16 v18, 0x0

    goto :goto_137

    :cond_174
    const/4 v3, 0x1

    :cond_175
    :goto_175
    const/16 v5, 0xa

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    const/16 v5, 0x9

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    const/16 v26, 0x0

    const/4 v5, 0x1

    const/16 v6, 0xf

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v5, v6, :cond_1c5

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v6, v5, :cond_1ea

    const/4 v6, 0x2

    move/from16 v0, v20

    if-ne v6, v0, :cond_1ea

    const/16 v5, 0x8

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-static {v5}, Lcom/twitter/android/provider/ActivityDataStatus;->a([B)Ljava/util/ArrayList;

    move-result-object v22

    move-wide/from16 v0, p4

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/twitter/android/provider/ae;->b(JLjava/util/ArrayList;)I

    move-result v5

    if-lez v5, :cond_1e7

    sub-int v19, v19, v5

    if-gtz v19, :cond_1c4

    const/4 v3, 0x0

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f8

    :cond_1c1
    const/16 v21, 0x0

    goto :goto_175

    :cond_1c4
    const/4 v3, 0x1

    :cond_1c5
    :goto_1c5
    if-eqz v3, :cond_f8

    const/4 v3, 0x0

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v8, Lcom/twitter/android/provider/af;

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v23, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v8 .. v27}, Lcom/twitter/android/provider/af;-><init>(IJJJIILjava/util/ArrayList;IILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;IILjava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_f8

    :cond_1e7
    const/16 v22, 0x0

    goto :goto_1c5

    :cond_1ea
    const/4 v6, 0x4

    if-ne v6, v5, :cond_1c5

    const/4 v5, 0x2

    move/from16 v0, v25

    if-ne v5, v0, :cond_1c5

    const/16 v5, 0xb

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-static {v5}, Lcom/twitter/android/provider/ActivityDataStatus;->a([B)Ljava/util/ArrayList;

    move-result-object v26

    move-wide/from16 v0, p4

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/twitter/android/provider/ae;->b(JLjava/util/ArrayList;)I

    move-result v5

    if-lez v5, :cond_21c

    sub-int v24, v24, v5

    if-gtz v24, :cond_21a

    const/4 v3, 0x0

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f8

    :cond_21a
    const/4 v3, 0x1

    goto :goto_1c5

    :cond_21c
    const/16 v26, 0x0

    goto :goto_1c5

    :cond_21f
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto/16 :goto_d4

    :cond_224
    sget-boolean v3, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v3, :cond_25a

    const-string v3, "DatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Found "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " activity records associated with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25a
    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_266

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_263
    .catchall {:try_start_c3 .. :try_end_263} :catchall_65

    move-result v3

    if-nez v3, :cond_c1

    :cond_266
    :try_start_266
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_276
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_313

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/twitter/android/provider/af;

    iget-object v7, v4, Lcom/twitter/android/provider/af;->g:Ljava/util/ArrayList;

    if-eqz v7, :cond_2a2

    const-string v7, "sources_size"

    iget v8, v4, Lcom/twitter/android/provider/af;->e:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "sources"

    iget-object v8, v4, Lcom/twitter/android/provider/af;->g:Ljava/util/ArrayList;

    invoke-static {v8}, Lcom/twitter/android/util/x;->a(Ljava/lang/Object;)[B

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_2a2
    iget-object v7, v4, Lcom/twitter/android/provider/af;->j:Ljava/util/ArrayList;

    if-eqz v7, :cond_2f8

    const-string v7, "targets_size"

    iget v8, v4, Lcom/twitter/android/provider/af;->h:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "targets"

    iget-object v8, v4, Lcom/twitter/android/provider/af;->j:Ljava/util/ArrayList;

    invoke-static {v8}, Lcom/twitter/android/util/x;->a(Ljava/lang/Object;)[B

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_2bc
    :goto_2bc
    iget-object v7, v4, Lcom/twitter/android/provider/af;->o:Ljava/util/ArrayList;

    if-eqz v7, :cond_2d6

    const-string v7, "target_objects_size"

    iget v8, v4, Lcom/twitter/android/provider/af;->m:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "target_objects"

    iget-object v4, v4, Lcom/twitter/android/provider/af;->o:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/twitter/android/util/x;->a(Ljava/lang/Object;)[B

    move-result-object v4

    invoke-virtual {v5, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_2d6
    const-string v4, "activities"

    const-string v7, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V
    :try_end_2f2
    .catchall {:try_start_266 .. :try_end_2f2} :catchall_2f3

    goto :goto_276

    :catchall_2f3
    move-exception v3

    :try_start_2f4
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
    :try_end_2f8
    .catchall {:try_start_2f4 .. :try_end_2f8} :catchall_65

    :cond_2f8
    :try_start_2f8
    iget-object v7, v4, Lcom/twitter/android/provider/af;->k:Ljava/util/ArrayList;

    if-eqz v7, :cond_2bc

    const-string v7, "targets_size"

    iget v8, v4, Lcom/twitter/android/provider/af;->h:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "targets"

    iget-object v8, v4, Lcom/twitter/android/provider/af;->k:Ljava/util/ArrayList;

    invoke-static {v8}, Lcom/twitter/android/util/x;->a(Ljava/lang/Object;)[B

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_2bc

    :cond_313
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_317
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_337

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    const-string v5, "activities"

    const-string v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_317

    :cond_337
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/provider/ae;->e:Landroid/content/ContentResolver;

    sget-object v4, Lcom/twitter/android/provider/p;->a:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_344
    .catchall {:try_start_2f8 .. :try_end_344} :catchall_2f3

    :try_start_344
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_347
    .catchall {:try_start_344 .. :try_end_347} :catchall_65

    goto/16 :goto_c1
.end method

.method private static a(Lcom/twitter/android/api/ac;Landroid/content/ContentValues;IZ)V
    .registers 7

    const-string v0, "user_id"

    iget-wide v1, p0, Lcom/twitter/android/api/ac;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "username"

    iget-object v1, p0, Lcom/twitter/android/api/ac;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "name"

    iget-object v1, p0, Lcom/twitter/android/api/ac;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "location"

    iget-object v1, p0, Lcom/twitter/android/api/ac;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "verified"

    iget-boolean v1, p0, Lcom/twitter/android/api/ac;->i:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "image_url"

    iget-object v1, p0, Lcom/twitter/android/api/ac;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xf

    if-eq v0, p2, :cond_c1

    const-string v0, "description"

    iget-object v1, p0, Lcom/twitter/android/api/ac;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "web_url"

    iget-object v1, p0, Lcom/twitter/android/api/ac;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bg_color"

    iget v1, p0, Lcom/twitter/android/api/ac;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "protected"

    iget-boolean v1, p0, Lcom/twitter/android/api/ac;->h:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "profile_created"

    iget-wide v1, p0, Lcom/twitter/android/api/ac;->m:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "followers"

    iget v1, p0, Lcom/twitter/android/api/ac;->k:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "friends"

    iget v1, p0, Lcom/twitter/android/api/ac;->l:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "statuses"

    iget v1, p0, Lcom/twitter/android/api/ac;->n:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "geo_enabled"

    iget-boolean v1, p0, Lcom/twitter/android/api/ac;->p:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "hash"

    invoke-virtual {p0}, Lcom/twitter/android/api/ac;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "updated"

    iget-wide v1, p0, Lcom/twitter/android/api/ac;->u:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz p3, :cond_b6

    const-string v0, "friendship"

    iget v1, p0, Lcom/twitter/android/api/ac;->t:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_b6
    const-string v0, "favorites"

    iget v1, p0, Lcom/twitter/android/api/ac;->r:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_c1
    return-void
.end method

.method private declared-synchronized a(Lcom/twitter/android/api/q;)V
    .registers 10

    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v0, :cond_2b

    const-string v0, "DatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateList: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/twitter/android/api/q;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " follow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/twitter/android/api/q;->i()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "i_follow"

    invoke-virtual {p1}, Lcom/twitter/android/api/q;->i()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "members"

    invoke-virtual {p1}, Lcom/twitter/android/api/q;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "subscribers"

    invoke-virtual {p1}, Lcom/twitter/android/api/q;->f()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "lists"

    const-string v3, "list_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/twitter/android/api/q;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_70
    .catchall {:try_start_1 .. :try_end_70} :catchall_72

    monitor-exit p0

    return-void

    :catchall_72
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/twitter/android/api/w;J)V
    .registers 11

    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v0, :cond_25

    const-string v0, "DatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateSearchQuery: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/twitter/android/api/w;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rowId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, p1, Lcom/twitter/android/api/w;->b:Ljava/lang/String;

    if-eqz v1, :cond_7e

    iget-object v1, p1, Lcom/twitter/android/api/w;->a:Ljava/lang/String;

    if-eqz v1, :cond_7e

    const-string v1, "query"

    iget-object v2, p1, Lcom/twitter/android/api/w;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "name"

    iget-object v2, p1, Lcom/twitter/android/api/w;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "latitude"

    iget-object v2, p1, Lcom/twitter/android/api/w;->c:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v1, "longitude"

    iget-object v2, p1, Lcom/twitter/android/api/w;->d:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v1, "radius"

    iget-object v2, p1, Lcom/twitter/android/api/w;->e:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v1, "location"

    iget-object v2, p1, Lcom/twitter/android/api/w;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "search_queries"

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7e
    .catchall {:try_start_1 .. :try_end_7e} :catchall_80

    :cond_7e
    monitor-exit p0

    return-void

    :catchall_80
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static a(Lcom/twitter/android/api/aa;Landroid/content/ContentValues;J)Z
    .registers 12

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/twitter/android/api/aa;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    :goto_b
    return v2

    :cond_c
    const-string v4, "status_id"

    iget-wide v5, p0, Lcom/twitter/android/api/aa;->a:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "author_id"

    iget-object v5, p0, Lcom/twitter/android/api/aa;->m:Lcom/twitter/android/api/ac;

    iget-wide v5, v5, Lcom/twitter/android/api/ac;->a:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "content"

    invoke-virtual {p1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "source"

    iget-object v4, p0, Lcom/twitter/android/api/aa;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "source_url"

    iget-object v4, p0, Lcom/twitter/android/api/aa;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "created"

    iget-wide v4, p0, Lcom/twitter/android/api/aa;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "in_r_status_id"

    iget-wide v4, p0, Lcom/twitter/android/api/aa;->g:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "in_r_user_id"

    iget-wide v4, p0, Lcom/twitter/android/api/aa;->f:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "favorited"

    iget-boolean v4, p0, Lcom/twitter/android/api/aa;->l:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "latitude"

    iget-object v4, p0, Lcom/twitter/android/api/aa;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "longitude"

    iget-object v4, p0, Lcom/twitter/android/api/aa;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/api/aa;->p:Lcom/twitter/android/api/u;

    if-eqz v0, :cond_95

    const-string v4, "place_type"

    iget v5, v0, Lcom/twitter/android/api/u;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "place_name"

    iget-object v5, v0, Lcom/twitter/android/api/u;->b:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "place_bounding"

    iget-object v5, v0, Lcom/twitter/android/api/u;->c:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "place_id"

    iget-object v0, v0, Lcom/twitter/android/api/u;->d:Ljava/lang/String;

    invoke-virtual {p1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_95
    const-string v0, "retweet_count"

    iget v4, p0, Lcom/twitter/android/api/aa;->o:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/twitter/android/api/aa;->n:Lcom/twitter/android/api/TweetEntities;

    if-eqz v0, :cond_f6

    const-string v4, "entities"

    invoke-virtual {v0}, Lcom/twitter/android/api/TweetEntities;->a()[B

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v4, "r_content"

    invoke-virtual {p0}, Lcom/twitter/android/api/aa;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Lcom/twitter/android/api/TweetEntities;->a(J)Z

    move-result v0

    if-eqz v0, :cond_f6

    move v0, v1

    :goto_bd
    iget-object v4, p0, Lcom/twitter/android/api/aa;->s:[Lcom/twitter/android/api/TweetMedia;

    if-eqz v4, :cond_d9

    iget-object v4, p0, Lcom/twitter/android/api/aa;->s:[Lcom/twitter/android/api/TweetMedia;

    array-length v5, v4

    :goto_c4
    if-ge v2, v5, :cond_ce

    aget-object v6, v4, v2

    iget v7, v6, Lcom/twitter/android/api/TweetMedia;->type:I

    if-ne v7, v3, :cond_e5

    or-int/lit8 v0, v0, 0x1

    :cond_ce
    :goto_ce
    const-string v1, "cards"

    iget-object v2, p0, Lcom/twitter/android/api/aa;->s:[Lcom/twitter/android/api/TweetMedia;

    invoke-static {v2}, Lcom/twitter/android/util/x;->a(Ljava/lang/Object;)[B

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_d9
    const-string v1, "flags"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move v2, v3

    goto/16 :goto_b

    :cond_e5
    iget v7, v6, Lcom/twitter/android/api/TweetMedia;->type:I

    if-ne v7, v1, :cond_ec

    or-int/lit8 v0, v0, 0x4

    goto :goto_ce

    :cond_ec
    iget v6, v6, Lcom/twitter/android/api/TweetMedia;->type:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_f3

    or-int/lit8 v0, v0, 0x8

    :cond_f3
    add-int/lit8 v2, v2, 0x1

    goto :goto_c4

    :cond_f6
    move v0, v2

    goto :goto_bd
.end method

.method private static a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v0, v3, :cond_e

    move v0, v1

    :goto_d
    return v0

    :cond_e
    if-ne v0, v2, :cond_21

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/ActivityDataStatus;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/api/aa;

    invoke-virtual {v0, v1}, Lcom/twitter/android/provider/ActivityDataStatus;->a(Lcom/twitter/android/api/aa;)Z

    move-result v0

    goto :goto_d

    :cond_21
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/ActivityDataStatus;

    iget-wide v5, v0, Lcom/twitter/android/provider/ActivityDataStatus;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_40
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_44
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/aa;

    iget-wide v5, v0, Lcom/twitter/android/api/aa;->a:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    move v0, v1

    goto :goto_d

    :cond_5e
    move v0, v2

    goto :goto_d
.end method

.method private static a(I[Ljava/lang/String;)[Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    if-nez p1, :cond_15

    move v0, v1

    :goto_4
    add-int v2, p0, v0

    new-array v2, v2, [Ljava/lang/String;

    if-lez v0, :cond_17

    :goto_a
    if-ge v1, v0, :cond_17

    add-int v3, p0, v1

    aget-object v4, p1, v1

    aput-object v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_15
    array-length v0, p1

    goto :goto_4

    :cond_17
    return-object v2
.end method

.method private static b(JLjava/util/ArrayList;)I
    .registers 9

    if-eqz p2, :cond_44

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/ActivityDataStatus;

    iget-object v4, v0, Lcom/twitter/android/provider/ActivityDataStatus;->user:Lcom/twitter/android/provider/ActivityDataUser;

    if-eqz v4, :cond_f

    iget-wide v4, v4, Lcom/twitter/android/provider/ActivityDataUser;->id:J

    cmp-long v4, v4, p0

    if-nez v4, :cond_f

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_29
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/ActivityDataStatus;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_3d
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int v0, v1, v0

    :goto_43
    return v0

    :cond_44
    const/4 v0, 0x0

    goto :goto_43
.end method

.method private static b(Landroid/database/sqlite/SQLiteDatabase;JJ)J
    .registers 14

    const/4 v8, 0x0

    const/4 v4, 0x0

    const-string v1, "statuses"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "MAX(status_id)"

    aput-object v0, v2, v8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "status_id>"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND status_id<"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3f

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    :cond_3c
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3f
    const-wide/16 v0, 0x1

    add-long/2addr v0, p1

    return-wide v0
.end method

.method private declared-synchronized b(Lcom/twitter/android/api/w;I)J
    .registers 7

    monitor-enter p0

    if-eqz p1, :cond_79

    :try_start_3
    sget-boolean v0, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v0, :cond_27

    const-string v0, "DatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "findSearchQuery: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/twitter/android/api/w;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", of type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    iget-object v0, p1, Lcom/twitter/android/api/w;->c:Ljava/lang/Float;

    if-eqz v0, :cond_5f

    iget-object v0, p1, Lcom/twitter/android/api/w;->d:Ljava/lang/Float;

    if-eqz v0, :cond_5f

    const-string v0, "query=? AND name=? AND type=? AND latitude=? AND longitude=?"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/twitter/android/api/w;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/twitter/android/api/w;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p1, Lcom/twitter/android/api/w;->c:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p1, Lcom/twitter/android/api/w;->d:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    :goto_57
    sget-object v2, Lcom/twitter/android/provider/ap;->a:[Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1}, Lcom/twitter/android/provider/ae;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_76

    move-result-wide v0

    :goto_5d
    monitor-exit p0

    return-wide v0

    :cond_5f
    :try_start_5f
    const-string v0, "query=? AND name=? AND type=? AND latitude IS NULL AND longitude IS NULL"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/twitter/android/api/w;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p1, Lcom/twitter/android/api/w;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_75
    .catchall {:try_start_5f .. :try_end_75} :catchall_76

    goto :goto_57

    :catchall_76
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_79
    const-wide/16 v0, 0x0

    goto :goto_5d
.end method

.method private declared-synchronized b(JIJ)V
    .registers 16

    const/4 v9, 0x0

    monitor-enter p0

    :try_start_2
    sget-boolean v0, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v0, :cond_2e

    const-string v0, "DatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deleteOldStatuses: owner id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const-string v1, "status_groups"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "COUNT(*)"

    aput-object v5, v2, v3

    const-string v3, "owner_id=? AND type=? AND tag=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_fc

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_fe

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move v8, v1

    :goto_6b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    sget-boolean v1, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v1, :cond_86

    const-string v1, "DatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deleteOldStatuses: total count: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_86
    const/16 v1, 0x190

    if-le v8, v1, :cond_fc

    const-string v1, "status_groups LEFT JOIN statuses ON status_groups.g_status_id=statuses.status_id"

    sget-object v2, Lcom/twitter/android/provider/at;->a:[Ljava/lang/String;

    const-string v3, "owner_id=? AND type=? AND tag=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "updated_at ASC"

    add-int/lit8 v8, v8, -0x64

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_fc

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_a5
    .catchall {:try_start_2 .. :try_end_a5} :catchall_106

    move-result v1

    if-eqz v1, :cond_f9

    :try_start_a8
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    move v1, v9

    :cond_af
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "status_groups"

    const-string v4, "_id=?"

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    add-int/2addr v1, v3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_af

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_cd
    .catchall {:try_start_a8 .. :try_end_cd} :catchall_101

    :try_start_cd
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    sget-boolean v0, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v0, :cond_e8

    const-string v0, "DatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deleteOldStatuses: Deleted: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e8
    if-lez v1, :cond_f9

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/provider/ae;->e(JI)J

    move-result-wide v2

    const/4 v1, 0x3

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move v2, p3

    move-wide v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/provider/ae;->a(IIJLjava/lang/String;)V

    :cond_f9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_fc
    .catchall {:try_start_cd .. :try_end_fc} :catchall_106

    :cond_fc
    monitor-exit p0

    return-void

    :cond_fe
    move v8, v9

    goto/16 :goto_6b

    :catchall_101
    move-exception v1

    :try_start_102
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
    :try_end_106
    .catchall {:try_start_102 .. :try_end_106} :catchall_106

    :catchall_106
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Ljava/util/Collection;I)V
    .registers 13

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_2
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/ac;

    iget-wide v2, v0, Lcom/twitter/android/api/ac;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catchall {:try_start_2 .. :try_end_20} :catchall_21

    goto :goto_b

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_24
    :try_start_24
    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "tokens"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ref_id"

    aput-object v4, v2, v3

    const-string v3, "ref_id NOT NULL AND ref_id>0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_54

    :goto_3e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_51

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3e

    :cond_51
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_54
    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_57
    .catchall {:try_start_24 .. :try_end_57} :catchall_21

    move-result v1

    if-eqz v1, :cond_5c

    :goto_5a
    monitor-exit p0

    return-void

    :cond_5c
    :try_start_5c
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/api/ac;

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "@"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/twitter/android/api/ac;->g:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/twitter/android/api/ac;->g:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v2, v1, Lcom/twitter/android/api/ac;->b:Ljava/lang/String;

    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v2, v8

    :goto_a0
    if-ge v2, v7, :cond_aa

    aget-object v9, v6, v2

    invoke-virtual {v5, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_a0

    :cond_aa
    const-string v2, "type"

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "ref_id"

    iget-wide v6, v1, Lcom/twitter/android/api/ac;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v5, "text"

    invoke-virtual {v3, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "tokens"

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_da
    .catchall {:try_start_5c .. :try_end_da} :catchall_db

    goto :goto_c3

    :catchall_db
    move-exception v1

    :try_start_dc
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
    :try_end_e0
    .catchall {:try_start_dc .. :try_end_e0} :catchall_21

    :cond_e0
    :try_start_e0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_e3
    .catchall {:try_start_e0 .. :try_end_e3} :catchall_db

    :try_start_e3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_e6
    .catchall {:try_start_e3 .. :try_end_e6} :catchall_21

    goto/16 :goto_5a
.end method

.method private static b(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v0, v3, :cond_e

    move v0, v1

    :goto_d
    return v0

    :cond_e
    if-ne v0, v2, :cond_21

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/ActivityDataUser;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/api/ac;

    invoke-virtual {v0, v1}, Lcom/twitter/android/provider/ActivityDataUser;->a(Lcom/twitter/android/api/ac;)Z

    move-result v0

    goto :goto_d

    :cond_21
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/ActivityDataUser;

    iget-wide v5, v0, Lcom/twitter/android/provider/ActivityDataUser;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_40
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_44
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/ac;

    iget-wide v5, v0, Lcom/twitter/android/api/ac;->a:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    move v0, v1

    goto :goto_d

    :cond_5e
    move v0, v2

    goto :goto_d
.end method

.method private declared-synchronized c(Lcom/twitter/android/api/w;I)J
    .registers 7

    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v0, :cond_25

    const-string v0, "DatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "insertSearchQuery: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/twitter/android/api/w;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", of type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    sparse-switch p2, :sswitch_data_8e

    :goto_28
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "query"

    iget-object v2, p1, Lcom/twitter/android/api/w;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "name"

    iget-object v2, p1, Lcom/twitter/android/api/w;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "latitude"

    iget-object v2, p1, Lcom/twitter/android/api/w;->c:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v1, "longitude"

    iget-object v2, p1, Lcom/twitter/android/api/w;->d:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v1, "radius"

    iget-object v2, p1, Lcom/twitter/android/api/w;->e:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v1, "location"

    iget-object v2, p1, Lcom/twitter/android/api/w;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "query_id"

    iget-wide v2, p1, Lcom/twitter/android/api/w;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "search_queries"

    const-string v3, "query"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_83
    .catchall {:try_start_1 .. :try_end_83} :catchall_8a

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :sswitch_86
    :try_start_86
    invoke-direct {p0, p2}, Lcom/twitter/android/provider/ae;->f(I)V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_8a

    goto :goto_28

    :catchall_8a
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :sswitch_data_8e
    .sparse-switch
        0x0 -> :sswitch_86
        0x4 -> :sswitch_86
    .end sparse-switch
.end method

.method private static c(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 6

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/ac;

    new-instance v3, Lcom/twitter/android/provider/ActivityDataUser;

    invoke-direct {v3, v0}, Lcom/twitter/android/provider/ActivityDataUser;-><init>(Lcom/twitter/android/api/ac;)V

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1e
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/ActivityDataUser;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private static d(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 6

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/aa;

    new-instance v3, Lcom/twitter/android/provider/ActivityDataStatus;

    invoke-direct {v3, v0}, Lcom/twitter/android/provider/ActivityDataStatus;-><init>(Lcom/twitter/android/api/aa;)V

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1e
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/provider/ActivityDataStatus;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private declared-synchronized f(I)V
    .registers 11

    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v0, :cond_19

    const-string v0, "DatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "removeOldSearchQueries of type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "search_queries"

    sget-object v2, Lcom/twitter/android/provider/ap;->a:[Ljava/lang/String;

    const-string v3, "type=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "time ASC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_45

    move-result-object v2

    if-nez v2, :cond_39

    :goto_37
    monitor-exit p0

    return-void

    :cond_39
    :try_start_39
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    if-gtz v1, :cond_48

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_44
    .catchall {:try_start_39 .. :try_end_44} :catchall_45

    goto :goto_37

    :catchall_45
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_48
    :try_start_48
    sget-boolean v3, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v3, :cond_60

    const-string v3, "DatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Removing old search queries: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catchall {:try_start_48 .. :try_end_60} :catchall_45

    :cond_60
    :try_start_60
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :goto_63
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_85

    if-ltz v1, :cond_85

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    const-string v5, "search_queries"

    const-string v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v8

    invoke-virtual {v0, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 v1, v1, -0x1

    goto :goto_63

    :cond_85
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_88
    .catchall {:try_start_60 .. :try_end_88} :catchall_8f

    :try_start_88
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_94

    :try_start_8b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_45

    goto :goto_37

    :catchall_8f
    move-exception v1

    :try_start_90
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
    :try_end_94
    .catchall {:try_start_90 .. :try_end_94} :catchall_94

    :catchall_94
    move-exception v0

    :try_start_95
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_99
    .catchall {:try_start_95 .. :try_end_99} :catchall_45
.end method

.method private g()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/twitter/android/provider/ae;->e:Landroid/content/ContentResolver;

    sget-object v1, Lcom/twitter/android/provider/z;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    sget-object v1, Lcom/twitter/android/provider/y;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method private declared-synchronized g(I)V
    .registers 11

    const/4 v8, 0x1

    monitor-enter p0

    :try_start_2
    invoke-direct {p0, p1}, Lcom/twitter/android/provider/ae;->i(I)J
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_71

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_e

    :goto_c
    monitor-exit p0

    return-void

    :cond_e
    :try_start_e
    sget-boolean v2, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v2, :cond_30

    const-string v2, "DatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Tagging the oldest message of type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " row id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "is_last"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "messages"

    const-string v5, "is_last=1"

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v4, "is_last"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "messages"

    const-string v5, "msg_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v1, p0, Lcom/twitter/android/provider/ae;->e:Landroid/content/ContentResolver;

    if-ne p1, v8, :cond_74

    sget-object v0, Lcom/twitter/android/provider/u;->a:Landroid/net/Uri;

    :goto_6c
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_70
    .catchall {:try_start_e .. :try_end_70} :catchall_71

    goto :goto_c

    :catchall_71
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_74
    :try_start_74
    sget-object v0, Lcom/twitter/android/provider/u;->b:Landroid/net/Uri;
    :try_end_76
    .catchall {:try_start_74 .. :try_end_76} :catchall_71

    goto :goto_6c
.end method

.method private declared-synchronized g(JI)V
    .registers 12

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/android/provider/ae;->h(JI)J
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_78

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_d

    :goto_b
    monitor-exit p0

    return-void

    :cond_d
    :try_start_d
    sget-boolean v2, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v2, :cond_39

    const-string v2, "DatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Tagging the oldest user of type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " owner id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " row id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "is_last"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "user_groups"

    const-string v5, "is_last=1"

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v4, "is_last"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "user_groups"

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/twitter/android/provider/ae;->e:Landroid/content/ContentResolver;

    sget-object v1, Lcom/twitter/android/provider/ab;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_77
    .catchall {:try_start_d .. :try_end_77} :catchall_78

    goto :goto_b

    :catchall_78
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private h(JI)J
    .registers 13

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "user_groups_view"

    sget-object v2, Lcom/twitter/android/provider/ba;->a:[Ljava/lang/String;

    const-string v3, "owner_id=? AND type=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    const/4 v6, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const-string v7, "_id DESC"

    const-string v8, "1"

    move-object v6, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_39

    :try_start_27
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_3c

    move-result-wide v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :goto_35
    return-wide v0

    :cond_36
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_39
    const-wide/16 v0, 0x0

    goto :goto_35

    :catchall_3c
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static h(J)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/twitter/android/provider/ae;->e:Landroid/content/ContentResolver;

    sget-object v1, Lcom/twitter/android/provider/r;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    sget-object v1, Lcom/twitter/android/provider/u;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    sget-object v1, Lcom/twitter/android/provider/u;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    sget-object v1, Lcom/twitter/android/provider/t;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    sget-object v1, Lcom/twitter/android/provider/s;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method private declared-synchronized h(I)V
    .registers 10

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/twitter/android/provider/ae;->j(I)J
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6e

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_d

    :goto_b
    monitor-exit p0

    return-void

    :cond_d
    :try_start_d
    sget-boolean v2, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v2, :cond_2f

    const-string v2, "DatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Tagging the oldest activity of type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " activity id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "is_last"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "activities"

    const-string v5, "is_last=1"

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v4, "is_last"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "activities"

    const-string v5, "created_at=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/twitter/android/provider/ae;->e:Landroid/content/ContentResolver;

    sget-object v1, Lcom/twitter/android/provider/p;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_6d
    .catchall {:try_start_d .. :try_end_6d} :catchall_6e

    goto :goto_b

    :catchall_6e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private i(I)J
    .registers 11

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "messages"

    sget-object v2, Lcom/twitter/android/provider/ao;->a:[Ljava/lang/String;

    const-string v3, "type=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    const-string v7, "created ASC"

    const-string v8, "1"

    move-object v6, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_32

    :try_start_20
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2f

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_35

    move-result-wide v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :goto_2e
    return-wide v0

    :cond_2f
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_32
    const-wide/16 v0, 0x0

    goto :goto_2e

    :catchall_35
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private i(JI)J
    .registers 13

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "status_groups_view"

    sget-object v2, Lcom/twitter/android/provider/av;->a:[Ljava/lang/String;

    const-string v3, "owner_id=? AND type=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    const/4 v6, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    const-string v7, "updated_at ASC, _id DESC"

    const-string v8, "1"

    move-object v6, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_39

    :try_start_27
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_3c

    move-result-wide v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :goto_35
    return-wide v0

    :cond_36
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_39
    const-wide/16 v0, 0x0

    goto :goto_35

    :catchall_3c
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private declared-synchronized i(J)Lcom/twitter/android/api/ac;
    .registers 12

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "users"

    sget-object v2, Lcom/twitter/android/provider/bc;->a:[Ljava/lang/String;

    const-string v3, "user_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1c
    .catchall {:try_start_2 .. :try_end_1c} :catchall_38

    move-result-object v1

    if-eqz v1, :cond_31

    :try_start_1f
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-static {v1}, Lcom/twitter/android/provider/ae;->a(Landroid/database/Cursor;)Lcom/twitter/android/api/ac;
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_33

    move-result-object v0

    :try_start_29
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_38

    :goto_2c
    monitor-exit p0

    return-object v0

    :cond_2e
    :try_start_2e
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_31
    move-object v0, v8

    goto :goto_2c

    :catchall_33
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_38

    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized j(I)J
    .registers 11

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "activities"

    sget-object v2, Lcom/twitter/android/provider/ah;->a:[Ljava/lang/String;

    const-string v3, "type=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "max_position ASC, _id DESC"

    const-string v8, "1"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_3c

    move-result-object v2

    if-eqz v2, :cond_34

    :try_start_21
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_37

    move-result-wide v0

    :try_start_2c
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_3c

    :goto_2f
    monitor-exit p0

    return-wide v0

    :cond_31
    :try_start_31
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_34
    const-wide/16 v0, 0x0

    goto :goto_2f

    :catchall_37
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_3c
    .catchall {:try_start_31 .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized j(J)V
    .registers 11

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/provider/ae;->k(J)J
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6e

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_d

    :goto_b
    monitor-exit p0

    return-void

    :cond_d
    :try_start_d
    sget-boolean v2, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v2, :cond_2f

    const-string v2, "DatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Tagging the oldest list owned by: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " row id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "is_last"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "lists"

    const-string v5, "is_last=1"

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v4, "is_last"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "lists"

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/twitter/android/provider/ae;->e:Landroid/content/ContentResolver;

    sget-object v1, Lcom/twitter/android/provider/q;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_6d
    .catchall {:try_start_d .. :try_end_6d} :catchall_6e

    goto :goto_b

    :catchall_6e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized j(JI)V
    .registers 15

    const-wide/16 v9, 0x0

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_4
    sget-boolean v0, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v0, :cond_26

    const-string v0, "DatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deleteOldActivities: owner id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const-string v1, "activities"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "COUNT(*)"

    aput-object v5, v2, v3

    const-string v3, "type=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_58

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_76

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    :goto_54
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move v8, v1

    :cond_58
    sget-boolean v1, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v1, :cond_70

    const-string v1, "DatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deleteOldActivities: Have count: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catchall {:try_start_4 .. :try_end_70} :catchall_129

    :cond_70
    const/16 v1, 0x190

    if-gt v8, v1, :cond_78

    :cond_74
    :goto_74
    monitor-exit p0

    return-void

    :cond_76
    move v1, v8

    goto :goto_54

    :cond_78
    :try_start_78
    const-string v1, "activities"

    sget-object v2, Lcom/twitter/android/provider/ah;->a:[Ljava/lang/String;

    const-string v3, "type=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "created_at ASC "

    add-int/lit16 v8, v8, -0xc8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_8d
    .catchall {:try_start_78 .. :try_end_8d} :catchall_129

    move-result-object v3

    if-eqz v3, :cond_74

    :try_start_90
    invoke-interface {v3}, Landroid/database/Cursor;->moveToLast()Z

    move-result v1

    if-eqz v1, :cond_12c

    const/4 v1, 0x0

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    :goto_9b
    cmp-long v4, v1, v9

    if-lez v4, :cond_124

    const-string v4, "activities"

    const-string v5, "type=? AND created_at<=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    sget-boolean v5, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v5, :cond_d0

    const-string v5, "DatabaseHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "deleteOldActivities: Deleted activities "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d0
    const-string v4, "user_groups"

    const-string v5, "type IN (8,13) AND tag<=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    sget-boolean v5, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v5, :cond_fa

    const-string v5, "DatabaseHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "deleteOldActivities: Deleted users "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_fa
    const-string v4, "status_groups"

    const-string v5, "type IN (12,14) AND tag<=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-virtual {v0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    sget-boolean v1, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v1, :cond_124

    const-string v1, "DatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "deleteOldActivities: Deleted statuses "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_124
    .catchall {:try_start_90 .. :try_end_124} :catchall_12f

    :cond_124
    :try_start_124
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_127
    .catchall {:try_start_124 .. :try_end_127} :catchall_129

    goto/16 :goto_74

    :catchall_129
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_12c
    move-wide v1, v9

    goto/16 :goto_9b

    :catchall_12f
    move-exception v0

    :try_start_130
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_134
    .catchall {:try_start_130 .. :try_end_134} :catchall_129
.end method

.method private k(J)J
    .registers 12

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "lists"

    sget-object v2, Lcom/twitter/android/provider/am;->a:[Ljava/lang/String;

    const-string v3, "owner_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    const-string v7, "full_name DESC"

    const-string v8, "1"

    move-object v6, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_32

    :try_start_20
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2f

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_35

    move-result-wide v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :goto_2e
    return-wide v0

    :cond_2f
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_32
    const-wide/16 v0, 0x0

    goto :goto_2e

    :catchall_35
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private declared-synchronized l(J)V
    .registers 15

    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    monitor-enter p0

    :try_start_4
    sget-boolean v0, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v0, :cond_1c

    const-string v0, "DatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deleteOldMessages: owner id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "messages"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "COUNT(*)"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_60

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_62

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move v8, v1

    :goto_41
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    sget-boolean v1, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v1, :cond_5c

    const-string v1, "DatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deleteOldMessages: Have count: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catchall {:try_start_4 .. :try_end_5c} :catchall_f1

    :cond_5c
    const/16 v1, 0x190

    if-gt v8, v1, :cond_64

    :cond_60
    :goto_60
    monitor-exit p0

    return-void

    :cond_62
    move v8, v9

    goto :goto_41

    :cond_64
    :try_start_64
    const-string v1, "messages"

    sget-object v2, Lcom/twitter/android/provider/ao;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "created ASC"

    add-int/lit16 v8, v8, -0xc8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_60

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_7f
    .catchall {:try_start_64 .. :try_end_7f} :catchall_f1

    move-result v1

    if-eqz v1, :cond_ec

    :try_start_82
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    move v1, v9

    :cond_89
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "messages"

    const-string v4, "msg_id=?"

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    add-int/2addr v1, v3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_89

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_a7
    .catchall {:try_start_82 .. :try_end_a7} :catchall_f4

    :try_start_a7
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    sget-boolean v0, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v0, :cond_c2

    const-string v0, "DatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deleteOldMessages: Deleted: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c2
    if-lez v1, :cond_ec

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/twitter/android/provider/ae;->i(I)J

    move-result-wide v3

    cmp-long v0, v3, v10

    if-lez v0, :cond_d8

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-wide v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/provider/ae;->a(IIJLjava/lang/String;)V

    :cond_d8
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/twitter/android/provider/ae;->i(I)J

    move-result-wide v3

    cmp-long v0, v3, v10

    if-lez v0, :cond_ec

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-wide v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/provider/ae;->a(IIJLjava/lang/String;)V

    :cond_ec
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_ef
    .catchall {:try_start_a7 .. :try_end_ef} :catchall_f1

    goto/16 :goto_60

    :catchall_f1
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_f4
    move-exception v1

    :try_start_f5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
    :try_end_f9
    .catchall {:try_start_f5 .. :try_end_f9} :catchall_f1
.end method


# virtual methods
.method public final declared-synchronized a()I
    .registers 7

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "status_groups"

    const-string v2, "type=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v5, 0xd

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    sget-boolean v1, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v1, :cond_31

    const-string v1, "DatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Deleted search results: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_33

    :cond_31
    monitor-exit p0

    return v0

    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(ILjava/lang/String;)I
    .registers 7

    monitor-enter p0

    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v1, "type=? AND source_user_name=?"

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    aput-object p2, v0, v2

    :goto_17
    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "notifications"

    invoke-virtual {v2, v3, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_31

    move-result v0

    monitor-exit p0

    return v0

    :cond_23
    :try_start_23
    const-string v1, "type=?"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2
    :try_end_30
    .catchall {:try_start_23 .. :try_end_30} :catchall_31

    goto :goto_17

    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;ILjava/lang/String;Z)I
    .registers 19

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "notif_id"

    aput-object v4, v3, v2

    if-nez p4, :cond_15

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_44

    :cond_15
    const-string v4, "type=?"

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    :goto_21
    const-string v2, "notifications"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_54

    move-result-object v2

    if-eqz v2, :cond_5a

    :try_start_2d
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_57

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_57

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_3e
    .catchall {:try_start_2d .. :try_end_3e} :catchall_69

    move-result v1

    :try_start_3f
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_54

    :goto_42
    monitor-exit p0

    return v1

    :cond_44
    :try_start_44
    const-string v4, "type=? AND source_user_name=?"

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x1

    aput-object p3, v5, v2
    :try_end_53
    .catchall {:try_start_44 .. :try_end_53} :catchall_54

    goto :goto_21

    :catchall_54
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_57
    :try_start_57
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5a
    iget-object v2, p0, Lcom/twitter/android/provider/ae;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/twitter/android/provider/a;->a(Landroid/content/Context;)Lcom/twitter/android/provider/a;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/twitter/android/provider/a;->b(Ljava/lang/String;)I

    move-result v2

    const/4 v6, -0x1

    if-ne v2, v6, :cond_6e

    const/4 v1, 0x0

    goto :goto_42

    :catchall_69
    move-exception v1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_6e
    const-string v7, "notifications"

    const-string v9, "notif_id>0"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "notif_id ASC"

    move-object v6, v1

    move-object v8, v3

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    add-int/lit8 v3, v2, 0x1

    if-eqz v6, :cond_94

    :goto_81
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_91

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-gt v7, v3, :cond_91

    add-int/lit8 v3, v7, 0x1

    goto :goto_81

    :cond_91
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_94
    sub-int v6, v3, v2

    if-lez v6, :cond_d9

    const/16 v7, 0x3e7

    if-gt v6, v7, :cond_d9

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "notif_id"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "notifications"

    invoke-virtual {v1, v7, v6, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_e1

    const-string v4, "type"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "source_user_name"

    move-object/from16 v0, p3

    invoke-virtual {v6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "notifications"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_e1

    const-string v1, "DatabaseHelper"

    const-string v3, "Failed to save notification id"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d6
    move v1, v2

    goto/16 :goto_42

    :cond_d9
    const-string v1, "DatabaseHelper"

    const-string v3, "Notification id out of range"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e0
    .catchall {:try_start_57 .. :try_end_e0} :catchall_54

    goto :goto_d6

    :cond_e1
    move v1, v3

    goto/16 :goto_42
.end method

.method public final declared-synchronized a(Ljava/util/ArrayList;I)I
    .registers 15

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_2
    sget-boolean v0, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v0, :cond_28

    const-string v0, "DatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Merging search queries: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_2b
    .catchall {:try_start_2 .. :try_end_2b} :catchall_5f

    move-result v0

    if-eqz v0, :cond_31

    move v0, v8

    :goto_2f
    monitor-exit p0

    return v0

    :cond_31
    :try_start_31
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/w;

    iget-object v2, v0, Lcom/twitter/android/api/w;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/lit8 v2, v2, 0x11

    iget-object v3, v0, Lcom/twitter/android/api/w;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1f

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5e
    .catchall {:try_start_31 .. :try_end_5e} :catchall_5f

    goto :goto_3a

    :catchall_5f
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_62
    :try_start_62
    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "search_queries"

    sget-object v2, Lcom/twitter/android/provider/aq;->a:[Ljava/lang/String;

    const-string v3, "type=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_7c
    .catchall {:try_start_62 .. :try_end_7c} :catchall_5f

    move-result-object v2

    if-nez v2, :cond_81

    move v0, v8

    goto :goto_2f

    :cond_81
    :try_start_81
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :goto_84
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_13e

    const/4 v1, 0x1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x11

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1f

    add-int/2addr v1, v3

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/api/w;

    if-eqz v1, :cond_12b

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "name"

    iget-object v7, v1, Lcom/twitter/android/api/w;->a:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "query"

    iget-object v7, v1, Lcom/twitter/android/api/w;->b:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "time"

    iget-wide v10, v1, Lcom/twitter/android/api/w;->h:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "latitude"

    iget-object v7, v1, Lcom/twitter/android/api/w;->c:Ljava/lang/Float;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v6, "longitude"

    iget-object v7, v1, Lcom/twitter/android/api/w;->d:Ljava/lang/Float;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v6, "radius"

    iget-object v7, v1, Lcom/twitter/android/api/w;->e:Ljava/lang/Float;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v6, "location"

    iget-object v7, v1, Lcom/twitter/android/api/w;->f:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "query_id"

    iget-wide v10, v1, Lcom/twitter/android/api/w;->g:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v6, v1, Lcom/twitter/android/api/w;->j:Lcom/twitter/android/api/PromotedContent;

    if-eqz v6, :cond_11b

    const-string v6, "pc"

    iget-object v1, v1, Lcom/twitter/android/api/w;->j:Lcom/twitter/android/api/PromotedContent;

    invoke-static {v1}, Lcom/twitter/android/util/x;->a(Ljava/lang/Object;)[B

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :goto_106
    const-string v1, "search_queries"

    const-string v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v10

    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_84

    :cond_11b
    const-string v1, "pc"

    invoke-virtual {v5, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V
    :try_end_120
    .catchall {:try_start_81 .. :try_end_120} :catchall_121

    goto :goto_106

    :catchall_121
    move-exception v1

    :try_start_122
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
    :try_end_126
    .catchall {:try_start_122 .. :try_end_126} :catchall_126

    :catchall_126
    move-exception v0

    :try_start_127
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_12b
    .catchall {:try_start_127 .. :try_end_12b} :catchall_5f

    :cond_12b
    :try_start_12b
    const-string v1, "search_queries"

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v7

    invoke-virtual {v0, v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_84

    :cond_13e
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_141
    .catchall {:try_start_12b .. :try_end_141} :catchall_121

    :try_start_141
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_144
    .catchall {:try_start_141 .. :try_end_144} :catchall_126

    :try_start_144
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    sget-boolean v1, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v1, :cond_163

    const-string v1, "DatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Inserting new search queries: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_163
    invoke-virtual {v9}, Ljava/util/HashMap;->size()I
    :try_end_166
    .catchall {:try_start_144 .. :try_end_166} :catchall_5f

    move-result v1

    if-lez v1, :cond_1f9

    :try_start_169
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_182
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/api/w;

    const-string v4, "name"

    iget-object v5, v1, Lcom/twitter/android/api/w;->a:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "time"

    iget-wide v5, v1, Lcom/twitter/android/api/w;->h:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "query"

    iget-object v5, v1, Lcom/twitter/android/api/w;->b:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "latitude"

    iget-object v5, v1, Lcom/twitter/android/api/w;->c:Ljava/lang/Float;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v4, "longitude"

    iget-object v5, v1, Lcom/twitter/android/api/w;->d:Ljava/lang/Float;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v4, "radius"

    iget-object v5, v1, Lcom/twitter/android/api/w;->e:Ljava/lang/Float;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v4, "location"

    iget-object v5, v1, Lcom/twitter/android/api/w;->f:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "query_id"

    iget-wide v5, v1, Lcom/twitter/android/api/w;->g:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v4, v1, Lcom/twitter/android/api/w;->j:Lcom/twitter/android/api/PromotedContent;

    if-eqz v4, :cond_1ea

    const-string v4, "pc"

    iget-object v1, v1, Lcom/twitter/android/api/w;->j:Lcom/twitter/android/api/PromotedContent;

    invoke-static {v1}, Lcom/twitter/android/util/x;->a(Ljava/lang/Object;)[B

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :goto_1dd
    const-string v1, "search_queries"

    const-string v4, "name"

    invoke-virtual {v0, v1, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1e4
    .catchall {:try_start_169 .. :try_end_1e4} :catchall_1e5

    goto :goto_182

    :catchall_1e5
    move-exception v1

    :try_start_1e6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
    :try_end_1ea
    .catchall {:try_start_1e6 .. :try_end_1ea} :catchall_5f

    :cond_1ea
    :try_start_1ea
    const-string v1, "pc"

    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_1dd

    :cond_1f0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1f3
    .catchall {:try_start_1ea .. :try_end_1f3} :catchall_1e5

    :try_start_1f3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    sparse-switch p2, :sswitch_data_212

    :cond_1f9
    :goto_1f9
    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v0

    add-int/2addr v0, v8

    goto/16 :goto_2f

    :sswitch_200
    iget-object v0, p0, Lcom/twitter/android/provider/ae;->e:Landroid/content/ContentResolver;

    sget-object v1, Lcom/twitter/android/provider/w;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/twitter/android/provider/ae;->e:Landroid/content/ContentResolver;

    sget-object v1, Lcom/twitter/android/provider/x;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_210
    .catchall {:try_start_1f3 .. :try_end_210} :catchall_5f

    goto :goto_1f9

    nop

    :sswitch_data_212
    .sparse-switch
        0x1 -> :sswitch_200
        0x6 -> :sswitch_200
        0x7 -> :sswitch_200
    .end sparse-switch
.end method

.method public final declared-synchronized a(Ljava/util/ArrayList;JI)I
    .registers 15

    const/4 v9, 0x0

    const/4 v8, 0x1

    monitor-enter p0

    if-nez p4, :cond_10

    :try_start_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify a valid type!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10
    :try_start_10
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_d

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    :goto_16
    monitor-exit p0

    return v9

    :cond_18
    :try_start_18
    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_d

    move-result-object v2

    :try_start_1c
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v0, "tokens"

    const-string v1, "type=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    if-ne v8, p4, :cond_45

    const-string v0, "user_groups"

    const-string v1, "type=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const/16 v5, 0xf

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_45
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_49
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bd

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/ab;

    iget-object v1, v0, Lcom/twitter/android/api/ab;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f3

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, v0, Lcom/twitter/android/api/ab;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_68
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v6, "text"

    invoke-virtual {v4, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-ne v8, p4, :cond_a8

    const-string v1, "ref_id"

    iget-object v6, v0, Lcom/twitter/android/api/ab;->f:Lcom/twitter/android/api/ac;

    iget-wide v6, v6, Lcom/twitter/android/api/ac;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "weight"

    iget v6, v0, Lcom/twitter/android/api/ab;->d:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_9c
    const-string v1, "tokens"

    const/4 v6, 0x0

    invoke-virtual {v2, v1, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_a2
    .catchall {:try_start_1c .. :try_end_a2} :catchall_a3

    goto :goto_68

    :catchall_a3
    move-exception v0

    :try_start_a4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_a8
    .catchall {:try_start_a4 .. :try_end_a8} :catchall_d

    :cond_a8
    :try_start_a8
    const-string v1, "ref_id"

    invoke-virtual {v4, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const-string v1, "weight"

    iget v6, v0, Lcom/twitter/android/api/ab;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_9c

    :cond_b9
    add-int/lit8 v0, v9, 0x1

    :goto_bb
    move v9, v0

    goto :goto_49

    :cond_bd
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_c0
    .catchall {:try_start_a8 .. :try_end_c0} :catchall_a3

    :try_start_c0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-lez v9, :cond_16

    if-ne v8, p4, :cond_16

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d0
    :goto_d0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/ab;

    iget v3, v0, Lcom/twitter/android/api/ab;->a:I

    if-ne v8, v3, :cond_d0

    iget-object v0, v0, Lcom/twitter/android/api/ab;->f:Lcom/twitter/android/api/ac;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d0

    :cond_e6
    const/16 v4, 0xf

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-wide v2, p2

    invoke-virtual/range {v0 .. v8}, Lcom/twitter/android/provider/ae;->a(Ljava/util/Collection;JIJLjava/lang/String;Ljava/lang/String;)I
    :try_end_f1
    .catchall {:try_start_c0 .. :try_end_f1} :catchall_d

    goto/16 :goto_16

    :cond_f3
    move v0, v9

    goto :goto_bb
.end method

.method public final declared-synchronized a(Ljava/util/ArrayList;JILjava/lang/String;Ljava/lang/String;)I
    .registers 18

    monitor-enter p0

    if-eqz p1, :cond_9

    :try_start_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_27

    move-result v0

    if-eqz v0, :cond_c

    :cond_9
    const/4 v9, 0x0

    :cond_a
    :goto_a
    monitor-exit p0

    return v9

    :cond_c
    :try_start_c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/ae;

    iget-object v0, v0, Lcom/twitter/android/api/ae;->a:Lcom/twitter/android/api/ac;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_27

    goto :goto_15

    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2a
    const-wide/16 v5, -0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-wide v2, p2

    move v4, p4

    move-object/from16 v7, p5

    :try_start_32
    invoke-virtual/range {v0 .. v8}, Lcom/twitter/android/provider/ae;->a(Ljava/util/Collection;JIJLjava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/ae;

    iget-object v1, v0, Lcom/twitter/android/api/ae;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_7c

    iget-object v1, v0, Lcom/twitter/android/api/ae;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7c

    iget-object v1, v0, Lcom/twitter/android/api/ae;->b:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/twitter/android/api/ae;->a:Lcom/twitter/android/api/ac;

    iget-wide v5, v0, Lcom/twitter/android/api/ac;->a:J

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-wide v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v8}, Lcom/twitter/android/provider/ae;->a(Ljava/util/Collection;JIJLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v9

    :goto_62
    move v9, v0

    goto :goto_3a

    :cond_64
    if-lez v9, :cond_a

    packed-switch p4, :pswitch_data_7e

    goto :goto_a

    :pswitch_6a
    iget-object v0, p0, Lcom/twitter/android/provider/ae;->e:Landroid/content/ContentResolver;

    sget-object v1, Lcom/twitter/android/provider/ac;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_a

    :pswitch_73
    iget-object v0, p0, Lcom/twitter/android/provider/ae;->e:Landroid/content/ContentResolver;

    sget-object v1, Lcom/twitter/android/provider/ac;->b:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_7b
    .catchall {:try_start_32 .. :try_end_7b} :catchall_27

    goto :goto_a

    :cond_7c
    move v0, v9

    goto :goto_62

    :pswitch_data_7e
    .packed-switch 0x9
        :pswitch_6a
        :pswitch_73
    .end packed-switch
.end method

.method public final declared-synchronized a(Ljava/util/Collection;JIJLjava/lang/String;Ljava/lang/String;)I
    .registers 27

    monitor-enter p0

    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-gez v4, :cond_26

    const/4 v4, -0x1

    move/from16 v0, p4

    if-eq v0, v4, :cond_26

    :try_start_c
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "null owner id not allowed for type: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_23

    :catchall_23
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_26
    :try_start_26
    sget-boolean v4, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v4, :cond_7e

    const-string v4, "DatabaseHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Merge users: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", of type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", owned by: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", tag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", prevCursor: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p7

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", nextCursor: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7e
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    if-eqz p7, :cond_e1

    const-string v5, "-1"

    move-object/from16 v0, p7

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e1

    const-string v5, "user_groups"

    const-string v6, "owner_id=? AND type=?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    sget-boolean v6, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v6, :cond_d7

    const-string v6, "DatabaseHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Removed (due to refresh): "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", owned by: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", of type: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d7
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/twitter/android/provider/ae;->a(JII)V

    :cond_e1
    const/4 v12, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_29e

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_f1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_107

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/twitter/android/api/ac;

    iget-wide v7, v5, Lcom/twitter/android/api/ac;->a:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v13, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f1

    :cond_107
    const-string v5, "users"

    sget-object v6, Lcom/twitter/android/provider/bb;->a:[Ljava/lang/String;

    const-string v7, "user_id"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v13}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static/range {v4 .. v11}, Lcom/twitter/android/provider/ae;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Collection;Ljava/util/Map;)Landroid/database/Cursor;
    :try_end_117
    .catchall {:try_start_26 .. :try_end_117} :catchall_23

    move-result-object v6

    if-nez v6, :cond_11d

    const/4 v4, 0x0

    :goto_11b
    monitor-exit p0

    return v4

    :cond_11d
    :try_start_11d
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V
    :try_end_122
    .catchall {:try_start_11d .. :try_end_122} :catchall_23

    :cond_122
    :goto_122
    :try_start_122
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_172

    const/4 v5, 0x0

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/twitter/android/api/ac;

    if-eqz v5, :cond_122

    iget-object v7, v5, Lcom/twitter/android/api/ac;->g:Ljava/lang/String;

    if-eqz v7, :cond_122

    const/4 v7, 0x2

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    iget-wide v0, v5, Lcom/twitter/android/api/ac;->u:J

    move-wide/from16 v16, v0

    cmp-long v7, v16, v14

    if-lez v7, :cond_122

    invoke-virtual {v5}, Lcom/twitter/android/api/ac;->hashCode()I

    move-result v7

    const/4 v11, 0x1

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-eq v7, v11, :cond_122

    const/4 v7, 0x3

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v11, v5, Lcom/twitter/android/api/ac;->c:Ljava/lang/String;

    invoke-static {v7, v11}, Lcom/twitter/android/util/x;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_165

    const/4 v7, 0x1

    iput-boolean v7, v5, Lcom/twitter/android/api/ac;->v:Z

    :cond_165
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v8, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16c
    .catchall {:try_start_122 .. :try_end_16c} :catchall_16d

    goto :goto_122

    :catchall_16d
    move-exception v4

    :try_start_16e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v4

    :cond_172
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    sget-boolean v5, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v5, :cond_19f

    const-string v5, "DatabaseHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Inserting new users: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", updating users: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19f
    invoke-virtual {v13}, Ljava/util/HashMap;->size()I
    :try_end_1a2
    .catchall {:try_start_16e .. :try_end_1a2} :catchall_23

    move-result v5

    if-lez v5, :cond_1e4

    :try_start_1a5
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v13}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v6, v12

    :goto_1b6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1dd

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/twitter/android/api/ac;

    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    const/4 v10, 0x1

    move/from16 v0, p4

    invoke-static {v5, v7, v0, v10}, Lcom/twitter/android/provider/ae;->a(Lcom/twitter/android/api/ac;Landroid/content/ContentValues;IZ)V

    const-string v5, "users"

    const-string v10, "user_id"

    invoke-virtual {v4, v5, v10, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v5, v10, v12

    if-lez v5, :cond_2ba

    add-int/lit8 v5, v6, 0x1

    :goto_1db
    move v6, v5

    goto :goto_1b6

    :cond_1dd
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1e0
    .catchall {:try_start_1a5 .. :try_end_1e0} :catchall_24f

    :try_start_1e0
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v12, v6

    :cond_1e4
    invoke-virtual {v8}, Ljava/util/HashMap;->size()I
    :try_end_1e7
    .catchall {:try_start_1e0 .. :try_end_1e7} :catchall_23

    move-result v5

    if-lez v5, :cond_269

    sparse-switch p4, :sswitch_data_2be

    const/4 v5, 0x0

    move v6, v5

    :goto_1ef
    const/4 v7, 0x0

    :try_start_1f0
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_200
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_257

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/twitter/android/api/ac;

    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    move/from16 v0, p4

    invoke-static {v5, v9, v0, v6}, Lcom/twitter/android/provider/ae;->a(Lcom/twitter/android/api/ac;Landroid/content/ContentValues;IZ)V

    iget-boolean v10, v5, Lcom/twitter/android/api/ac;->v:Z

    if-eqz v10, :cond_239

    const/4 v7, 0x1

    sget-boolean v10, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v10, :cond_233

    const-string v10, "DatabaseHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "Invalidating image bytes for user id: "

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v13, v5, Lcom/twitter/android/api/ac;->a:J

    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_233
    const-string v10, "image"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_239
    const-string v10, "users"

    const-string v11, "user_id=?"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    iget-wide v15, v5, Lcom/twitter/android/api/ac;->a:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v13, v14

    invoke-virtual {v4, v10, v9, v11, v13}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_24c
    .catchall {:try_start_1f0 .. :try_end_24c} :catchall_2b5

    move-result v5

    add-int/2addr v12, v5

    goto :goto_200

    :catchall_24f
    move-exception v5

    :try_start_250
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
    :try_end_254
    .catchall {:try_start_250 .. :try_end_254} :catchall_23

    :sswitch_254
    const/4 v5, 0x1

    move v6, v5

    goto :goto_1ef

    :cond_257
    :try_start_257
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_25a
    .catchall {:try_start_257 .. :try_end_25a} :catchall_2b5

    :try_start_25a
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v7, :cond_269

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/provider/ae;->e:Landroid/content/ContentResolver;

    sget-object v5, Lcom/twitter/android/provider/ad;->b:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_269
    if-lez v12, :cond_29e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/provider/ae;->e:Landroid/content/ContentResolver;

    sget-object v5, Lcom/twitter/android/provider/ad;->a:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const/4 v4, 0x1

    if-ne v12, v4, :cond_29e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/twitter/android/provider/ae;->e:Landroid/content/ContentResolver;

    sget-object v4, Lcom/twitter/android/provider/ad;->c:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/twitter/android/api/ac;

    iget-wide v7, v4, Lcom/twitter/android/api/ac;->a:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_29e
    const/4 v4, -0x1

    move/from16 v0, p4

    if-eq v0, v4, :cond_2b2

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move/from16 v8, p4

    move-wide/from16 v9, p5

    move-object/from16 v11, p8

    invoke-virtual/range {v4 .. v11}, Lcom/twitter/android/provider/ae;->a(Ljava/util/Collection;JIJLjava/lang/String;)V

    :cond_2b2
    move v4, v12

    goto/16 :goto_11b

    :catchall_2b5
    move-exception v5

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
    :try_end_2ba
    .catchall {:try_start_25a .. :try_end_2ba} :catchall_23

    :cond_2ba
    move v5, v6

    goto/16 :goto_1db

    nop

    :sswitch_data_2be
    .sparse-switch
        0x0 -> :sswitch_254
        0x1 -> :sswitch_254
        0x2 -> :sswitch_254
        0x10 -> :sswitch_254
    .end sparse-switch
.end method

.method public final declared-synchronized a(Ljava/util/Collection;JIJZZLjava/lang/String;Z)I
    .registers 34

    monitor-enter p0

    :try_start_1
    sget-boolean v5, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v5, :cond_41

    const-string v5, "DatabaseHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Merge statuses: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", of type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", owned by: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p2

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", merging older: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p8

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    const/4 v5, -0x1

    move/from16 v0, p4

    if-eq v0, v5, :cond_66

    const-wide/16 v5, 0x0

    cmp-long v5, p2, v5

    if-gez v5, :cond_66

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "null owner id not allowed for type: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_63
    .catchall {:try_start_1 .. :try_end_63} :catchall_63

    :catchall_63
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_66
    :try_start_66
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7c

    if-eqz p8, :cond_79

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, p4

    move/from16 v4, p10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/android/provider/ae;->a(JIZ)V
    :try_end_79
    .catchall {:try_start_66 .. :try_end_79} :catchall_63

    :cond_79
    const/4 v5, 0x0

    :cond_7a
    :goto_7a
    monitor-exit p0

    return v5

    :cond_7c
    if-eqz p9, :cond_8a

    const/4 v6, 0x3

    move-object/from16 v5, p0

    move/from16 v7, p4

    move-wide/from16 v8, p2

    move-object/from16 v10, p9

    :try_start_87
    invoke-direct/range {v5 .. v10}, Lcom/twitter/android/provider/ae;->a(IIJLjava/lang/String;)V

    :cond_8a
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    const-string v6, "statuses"

    sget-object v7, Lcom/twitter/android/provider/ax;->a:[Ljava/lang/String;

    const-string v8, "status_id"

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v11, p1

    invoke-static/range {v5 .. v12}, Lcom/twitter/android/provider/ae;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Collection;Ljava/util/Map;)Landroid/database/Cursor;
    :try_end_a0
    .catchall {:try_start_87 .. :try_end_a0} :catchall_63

    move-result-object v8

    if-nez v8, :cond_a5

    const/4 v5, 0x0

    goto :goto_7a

    :cond_a5
    const/4 v7, 0x0

    const/4 v6, 0x0

    :try_start_a7
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    move/from16 v22, v6

    :cond_b1
    :goto_b1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_119

    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    const/4 v6, 0x1

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/twitter/android/api/aa;

    if-eqz v6, :cond_b1

    invoke-virtual {v6}, Lcom/twitter/android/api/aa;->b()Lcom/twitter/android/api/aa;

    move-result-object v6

    const-string v10, "favorited"

    iget-boolean v11, v6, Lcom/twitter/android/api/aa;->l:Z

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v10, "retweet_count"

    iget v6, v6, Lcom/twitter/android/api/aa;->o:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v9, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v6, 0x0

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    sget-boolean v6, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v6, :cond_102

    const-string v6, "DatabaseHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Updating status at row id: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_102
    const-string v6, "statuses"

    const-string v13, "_id=?"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v14, v15

    invoke-virtual {v5, v6, v9, v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int v6, v6, v22

    move/from16 v22, v6

    goto :goto_b1

    :cond_119
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_11c
    .catchall {:try_start_a7 .. :try_end_11c} :catchall_156

    :try_start_11c
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_12b
    :goto_12b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_168

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/twitter/android/api/aa;

    iget-object v10, v6, Lcom/twitter/android/api/aa;->m:Lcom/twitter/android/api/ac;

    if-eqz v10, :cond_15e

    iget-wide v13, v10, Lcom/twitter/android/api/ac;->a:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v6, Lcom/twitter/android/api/aa;->k:Lcom/twitter/android/api/aa;

    if-eqz v6, :cond_12b

    iget-object v6, v6, Lcom/twitter/android/api/aa;->m:Lcom/twitter/android/api/ac;

    if-eqz v6, :cond_12b

    iget-wide v10, v6, Lcom/twitter/android/api/ac;->a:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12b

    :catchall_156
    move-exception v6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v6

    :cond_15e
    iget-wide v10, v6, Lcom/twitter/android/api/aa;->a:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12b

    :cond_168
    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v14

    const-wide/16 v15, -0x1

    const/16 v17, -0x1

    const-wide/16 v18, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v13, p0

    invoke-virtual/range {v13 .. v21}, Lcom/twitter/android/provider/ae;->a(Ljava/util/Collection;JIJLjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I
    :try_end_17e
    .catchall {:try_start_11c .. :try_end_17e} :catchall_63

    move-result v6

    if-lez v6, :cond_223

    :try_start_181
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_191
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1c2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/twitter/android/api/aa;

    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    invoke-virtual {v6}, Lcom/twitter/android/api/aa;->b()Lcom/twitter/android/api/aa;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/twitter/android/provider/ae;->f:J

    invoke-static {v6, v8, v10, v11}, Lcom/twitter/android/provider/ae;->a(Lcom/twitter/android/api/aa;Landroid/content/ContentValues;J)Z

    move-result v6

    if-eqz v6, :cond_221

    const-string v6, "statuses"

    const-string v10, "status_id"

    invoke-virtual {v5, v6, v10, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v10

    const-wide/16 v13, 0x0

    cmp-long v6, v10, v13

    if-lez v6, :cond_1c0

    const/4 v6, 0x1

    :goto_1bd
    add-int/2addr v6, v7

    :goto_1be
    move v7, v6

    goto :goto_191

    :cond_1c0
    const/4 v6, 0x0

    goto :goto_1bd

    :cond_1c2
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1c5
    .catchall {:try_start_181 .. :try_end_1c5} :catchall_216

    :try_start_1c5
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move/from16 v16, v7

    :goto_1ca
    sget-boolean v5, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v5, :cond_1f0

    const-string v5, "DatabaseHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Inserted new statuses: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", of type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f0
    const/4 v5, -0x1

    move/from16 v0, p4

    if-eq v0, v5, :cond_21b

    const/4 v15, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-wide/from16 v7, p2

    move/from16 v9, p4

    move-wide/from16 v10, p5

    move/from16 v12, p7

    move/from16 v13, p8

    move-object/from16 v14, p9

    invoke-virtual/range {v5 .. v15}, Lcom/twitter/android/provider/ae;->b(Ljava/util/Collection;JIJZZLjava/lang/String;Z)I

    move-result v5

    if-eqz p10, :cond_7a

    add-int v6, v16, v22

    add-int/2addr v6, v5

    if-lez v6, :cond_7a

    invoke-direct/range {p0 .. p0}, Lcom/twitter/android/provider/ae;->g()V

    goto/16 :goto_7a

    :catchall_216
    move-exception v6

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v6

    :cond_21b
    invoke-virtual {v12}, Ljava/util/HashMap;->size()I
    :try_end_21e
    .catchall {:try_start_1c5 .. :try_end_21e} :catchall_63

    move-result v5

    goto/16 :goto_7a

    :cond_221
    move v6, v7

    goto :goto_1be

    :cond_223
    move/from16 v16, v7

    goto :goto_1ca
.end method

.method public final declared-synchronized a(Ljava/util/List;JIZZLjava/lang/String;)I
    .registers 28

    monitor-enter p0

    :try_start_1
    sget-boolean v3, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v3, :cond_4d

    const-string v3, "DatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Merging messages: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " of type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", read: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", last page: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", next: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    if-eqz p7, :cond_5b

    const/4 v4, 0x4

    move-object/from16 v3, p0

    move/from16 v5, p4

    move-wide/from16 v6, p2

    move-object/from16 v8, p7

    invoke-direct/range {v3 .. v8}, Lcom/twitter/android/provider/ae;->a(IIJLjava/lang/String;)V

    :cond_5b
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6d

    if-eqz p6, :cond_6a

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/twitter/android/provider/ae;->g(I)V
    :try_end_6a
    .catchall {:try_start_1 .. :try_end_6a} :catchall_a0

    :cond_6a
    const/4 v3, 0x0

    :goto_6b
    monitor-exit p0

    return v3

    :cond_6d
    :try_start_6d
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "messages"

    sget-object v5, Lcom/twitter/android/provider/ao;->a:[Ljava/lang/String;

    const-string v6, "msg_id"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v9, p1

    invoke-static/range {v3 .. v10}, Lcom/twitter/android/provider/ae;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Collection;Ljava/util/Map;)Landroid/database/Cursor;
    :try_end_83
    .catchall {:try_start_6d .. :try_end_83} :catchall_a0

    move-result-object v4

    if-nez v4, :cond_88

    const/4 v3, 0x0

    goto :goto_6b

    :cond_88
    :goto_88
    :try_start_88
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_a3

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9a
    .catchall {:try_start_88 .. :try_end_9a} :catchall_9b

    goto :goto_88

    :catchall_9b
    move-exception v3

    :try_start_9c
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v3
    :try_end_a0
    .catchall {:try_start_9c .. :try_end_a0} :catchall_a0

    :catchall_a0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_a3
    :try_start_a3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b7

    if-eqz p6, :cond_b5

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/twitter/android/provider/ae;->g(I)V

    :cond_b5
    const/4 v3, 0x0

    goto :goto_6b

    :cond_b7
    sget-boolean v4, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v4, :cond_d3

    const-string v4, "DatabaseHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Inserting new messages: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d3
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_e0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_107

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/twitter/android/api/p;

    iget-object v7, v4, Lcom/twitter/android/api/p;->d:Lcom/twitter/android/api/ac;

    iget-wide v7, v7, Lcom/twitter/android/api/ac;->a:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v8, v4, Lcom/twitter/android/api/p;->d:Lcom/twitter/android/api/ac;

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v4, Lcom/twitter/android/api/p;->e:Lcom/twitter/android/api/ac;

    iget-wide v7, v7, Lcom/twitter/android/api/ac;->a:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v4, v4, Lcom/twitter/android/api/p;->e:Lcom/twitter/android/api/ac;

    invoke-virtual {v5, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e0

    :cond_107
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v12

    const-wide/16 v13, -0x1

    const/4 v15, -0x1

    const-wide/16 v16, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v11, p0

    invoke-virtual/range {v11 .. v19}, Lcom/twitter/android/provider/ae;->a(Ljava/util/Collection;JIJLjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->size()I

    move-result v5

    if-lez v5, :cond_212

    if-nez p7, :cond_128

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/provider/ae;->l(J)V
    :try_end_128
    .catchall {:try_start_a3 .. :try_end_128} :catchall_a0

    :cond_128
    :try_start_128
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v4, 0x0

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "type"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "is_read"

    if-eqz p5, :cond_1f2

    const/4 v6, 0x1

    :goto_13f
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v8, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v6, v4

    :goto_154
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/twitter/android/api/p;

    add-int/lit8 v6, v6, 0x1

    iget-object v7, v4, Lcom/twitter/android/api/p;->d:Lcom/twitter/android/api/ac;

    iget-object v11, v4, Lcom/twitter/android/api/p;->e:Lcom/twitter/android/api/ac;

    iget-wide v12, v7, Lcom/twitter/android/api/ac;->a:J

    iget-wide v14, v11, Lcom/twitter/android/api/ac;->a:J

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v13, v7, Lcom/twitter/android/api/ac;->a:J

    iget-wide v15, v11, Lcom/twitter/android/api/ac;->a:J

    invoke-static/range {v13 .. v16}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, "thread"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "msg_id"

    iget-wide v13, v4, Lcom/twitter/android/api/p;->a:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v12, "content"

    iget-object v13, v4, Lcom/twitter/android/api/p;->b:Ljava/lang/String;

    invoke-virtual {v8, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "created"

    iget-wide v13, v4, Lcom/twitter/android/api/p;->c:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v12, "recipient_id"

    iget-wide v13, v11, Lcom/twitter/android/api/ac;->a:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v11, "sender_id"

    iget-wide v12, v7, Lcom/twitter/android/api/ac;->a:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v8, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v11, "is_last"

    if-eqz p6, :cond_1f5

    if-ne v6, v5, :cond_1f5

    const/4 v7, 0x1

    :goto_1c6
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v8, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v7, v4, Lcom/twitter/android/api/p;->f:Lcom/twitter/android/api/TweetEntities;

    if-eqz v7, :cond_1dc

    const-string v7, "entities"

    iget-object v4, v4, Lcom/twitter/android/api/p;->f:Lcom/twitter/android/api/TweetEntities;

    invoke-virtual {v4}, Lcom/twitter/android/api/TweetEntities;->a()[B

    move-result-object v4

    invoke-virtual {v8, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_1dc
    const-string v4, "messages"

    const-string v7, "msg_id"

    invoke-virtual {v3, v4, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const/4 v4, 0x0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v9, v4, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;
    :try_end_1eb
    .catchall {:try_start_128 .. :try_end_1eb} :catchall_1ed

    goto/16 :goto_154

    :catchall_1ed
    move-exception v4

    :try_start_1ee
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
    :try_end_1f2
    .catchall {:try_start_1ee .. :try_end_1f2} :catchall_a0

    :cond_1f2
    const/4 v6, 0x0

    goto/16 :goto_13f

    :cond_1f5
    const/4 v7, 0x0

    goto :goto_1c6

    :cond_1f7
    :try_start_1f7
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1fa
    .catchall {:try_start_1f7 .. :try_end_1fa} :catchall_1ed

    :try_start_1fa
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/twitter/android/provider/ae;->e:Landroid/content/ContentResolver;

    const/4 v4, 0x1

    move/from16 v0, p4

    if-ne v0, v4, :cond_215

    sget-object v4, Lcom/twitter/android/provider/u;->a:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :goto_20c
    sget-object v4, Lcom/twitter/android/provider/t;->a:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_212
    move v3, v5

    goto/16 :goto_6b

    :cond_215
    sget-object v4, Lcom/twitter/android/provider/u;->b:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_21b
    .catchall {:try_start_1fa .. :try_end_21b} :catchall_a0

    goto :goto_20c
.end method

.method public final declared-synchronized a([J)I
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/twitter/android/provider/ae;->b([J)I

    move-result v0

    if-lez v0, :cond_f

    iget-object v1, p0, Lcom/twitter/android/provider/ae;->e:Landroid/content/ContentResolver;

    sget-object v2, Lcom/twitter/android/provider/z;->l:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    :cond_f
    monitor-exit p0

    return v0

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(I)J
    .registers 13

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-wide/16 v9, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "messages"

    sget-object v2, Lcom/twitter/android/provider/ao;->a:[Ljava/lang/String;

    const-string v3, "type=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    const-string v7, "created DESC"

    const-string v8, "1"

    move-object v6, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_38

    :try_start_22
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_31

    move-result-wide v0

    :goto_2d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :goto_30
    return-wide v0

    :catchall_31
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_36
    move-wide v0, v9

    goto :goto_2d

    :cond_38
    move-wide v0, v9

    goto :goto_30
.end method

.method public final declared-synchronized a(JLjava/lang/String;JJLcom/twitter/android/api/TweetEntities;)J
    .registers 19

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    move-wide v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/twitter/android/provider/ae;->a(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;JJLcom/twitter/android/api/TweetEntities;)J
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_13

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/twitter/android/api/w;I)J
    .registers 8

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/provider/ae;->b(Lcom/twitter/android/api/w;I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_13

    sparse-switch p2, :sswitch_data_24

    invoke-direct {p0, p1, v0, v1}, Lcom/twitter/android/provider/ae;->a(Lcom/twitter/android/api/w;J)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_20

    :goto_11
    :sswitch_11
    monitor-exit p0

    return-wide v0

    :cond_13
    :try_start_13
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/provider/ae;->c(Lcom/twitter/android/api/w;I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/twitter/android/provider/ae;->e:Landroid/content/ContentResolver;

    sget-object v3, Lcom/twitter/android/provider/w;->a:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_20

    goto :goto_11

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :sswitch_data_24
    .sparse-switch
        0x1 -> :sswitch_11
        0x6 -> :sswitch_11
        0x7 -> :sswitch_11
    .end sparse-switch
.end method

.method public final declared-synchronized a(Lcom/twitter/android/api/w;Ljava/util/List;JZ)J
    .registers 15

    const/4 v8, 0x0

    monitor-enter p0

    const/4 v0, 0x4

    :try_start_3
    invoke-virtual {p0, p1, v0}, Lcom/twitter/android/provider/ae;->a(Lcom/twitter/android/api/w;I)J

    move-result-wide v5

    const/4 v4, 0x3

    const/4 v7, 0x0

    if-eqz p5, :cond_d

    const-string v8, "0"

    :cond_d
    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    invoke-virtual/range {v0 .. v8}, Lcom/twitter/android/provider/ae;->a(Ljava/util/Collection;JIJLjava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-wide v5

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;I)J
    .registers 8

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "query_id"

    aput-object v2, v0, v1

    const-string v1, "query=? AND type=?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/twitter/android/provider/ae;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_1c
    .catchall {:try_start_2 .. :try_end_1c} :catchall_1f

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a([B)J
    .registers 6

    monitor-enter p0

    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    const-string v1, "log"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "scribe"

    const-string v3, "log"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1a

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(J)Lcom/twitter/android/api/aa;
    .registers 31

    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/provider/ae;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "statuses"

    sget-object v4, Lcom/twitter/android/provider/ar;->a:[Ljava/lang/String;

    const-string v5, "status_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_e2

    move-result-object v27

    if-eqz v27, :cond_116

    :try_start_1e
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_113

    const/4 v2, 0x1

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/twitter/android/provider/ae;->i(J)Lcom/twitter/android/api/ac;

    move-result-object v19

    if-nez v19, :cond_58

    sget-boolean v2, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v2, :cond_52

    const-string v2, "DatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "findStatus: User not found: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catchall {:try_start_1e .. :try_end_52} :catchall_10c

    :cond_52
    :try_start_52
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_e2

    const/4 v2, 0x0

    :goto_56
    monitor-exit p0

    return-object v2

    :cond_58
    const/16 v2, 0xe

    :try_start_5a
    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_e5

    const/16 v17, 0x0

    :goto_64
    new-instance v2, Lcom/twitter/android/api/aa;

    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v5, 0x2

    move-object/from16 v0, v27

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/16 v7, 0x9

    move-object/from16 v0, v27

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xa

    move-object/from16 v0, v27

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    move-object/from16 v0, v27

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0xc

    move-object/from16 v0, v27

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/16 v12, 0xb

    move-object/from16 v0, v27

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v14, 0x4

    move-object/from16 v0, v27

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_111

    const/4 v14, 0x1

    :goto_a6
    const/4 v15, 0x7

    move-object/from16 v0, v27

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x8

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0xd

    move-object/from16 v0, v27

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    const/16 v22, 0x0

    const/16 v23, 0x2

    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-direct/range {v2 .. v26}, Lcom/twitter/android/api/aa;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLjava/lang/String;Ljava/lang/String;Lcom/twitter/android/api/u;Lcom/twitter/android/api/aa;Lcom/twitter/android/api/ac;Lcom/twitter/android/api/TweetEntities;ILjava/lang/String;JLcom/twitter/android/api/PromotedContent;[Lcom/twitter/android/api/TweetMedia;)V
    :try_end_dd
    .catchall {:try_start_5a .. :try_end_dd} :catchall_10c

    :try_start_dd
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V
    :try_end_e0
    .catchall {:try_start_dd .. :try_end_e0} :catchall_e2

    goto/16 :goto_56

    :catchall_e2
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_e5
    :try_start_e5
    new-instance v17, Lcom/twitter/android/api/u;

    const/16 v2, 0xf

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xe

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x5

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    move-object/from16 v0, v27

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/twitter/android/api/u;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_10a
    .catchall {:try_start_e5 .. :try_end_10a} :catchall_10c

    goto/16 :goto_64

    :catchall_10c
    move-exception v2

    :try_start_10d
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_111
    const/4 v14, 0x0

    goto :goto_a6

    :cond_113
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V
    :try_end_116
    .catchall {:try_start_10d .. :try_end_116} :catchall_e2

    :cond_116
    const/4 v2, 0x0

    goto/16 :goto_56
.end method

.method public final declared-synchronized a(IIJI)Ljava/lang/String;
    .registers 10

    monitor-enter p0

    packed-switch p5, :pswitch_data_88

    :try_start_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid page type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_19

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_1c
    :try_start_1c
    sget-boolean v0, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v0, :cond_48

    const-string v0, "DatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getCursor(): start cursor for type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", kind: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", owner id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    const-string v0, "-1"
    :try_end_4a
    .catchall {:try_start_1c .. :try_end_4a} :catchall_19

    :cond_4a
    :goto_4a
    monitor-exit p0

    return-object v0

    :pswitch_4c
    :try_start_4c
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/twitter/android/provider/ae;->a(IIJ)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v1, :cond_4a

    const-string v1, "DatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getCursor(): next cursor for type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", kind: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", owner id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catchall {:try_start_4c .. :try_end_86} :catchall_19

    goto :goto_4a

    nop

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_4c
    .end packed-switch
.end method

.method public final declared-synchronized a(Ljava/util/ArrayList;JIZZ)Ljava/util/ArrayList;
    .registers 40

    monitor-enter p0

    :try_start_1
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_19

    if-eqz p6, :cond_15

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/twitter/android/provider/ae;->h(I)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_54

    :cond_15
    move-object/from16 v4, v32

    :goto_17
    monitor-exit p0

    return-object v4

    :cond_19
    :try_start_19
    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "activities"

    sget-object v6, Lcom/twitter/android/provider/ah;->a:[Ljava/lang/String;

    const-string v7, "created_at"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v10, p1

    invoke-static/range {v4 .. v11}, Lcom/twitter/android/provider/ae;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Collection;Ljava/util/Map;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_5a

    :cond_32
    :goto_32
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_57

    const/4 v5, 0x0

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/twitter/android/api/n;

    const/4 v8, 0x1

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iget v5, v5, Lcom/twitter/android/api/n;->a:I

    if-ne v8, v5, :cond_32

    invoke-virtual {v11, v7}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_53
    .catchall {:try_start_19 .. :try_end_53} :catchall_54

    goto :goto_32

    :catchall_54
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_57
    :try_start_57
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5a
    invoke-virtual {v11}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6c

    if-eqz p6, :cond_69

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/twitter/android/provider/ae;->h(I)V

    :cond_69
    move-object/from16 v4, v32

    goto :goto_17

    :cond_6c
    if-nez p5, :cond_204

    const/4 v5, 0x0

    const-string v13, "activities"

    sget-object v14, Lcom/twitter/android/provider/ag;->a:[Ljava/lang/String;

    const-string v15, "type=?"

    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v6, 0x0

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v16, v6

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "max_position DESC"

    const-string v20, "1"

    move-object v12, v4

    invoke-virtual/range {v12 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_f3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_f0

    const/4 v5, 0x4

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    const/4 v5, 0x1

    move/from16 v0, v21

    if-ne v5, v0, :cond_1c4

    const/4 v5, 0x5

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-static {v5}, Lcom/twitter/android/provider/ActivityDataUser;->a([B)Ljava/util/ArrayList;

    move-result-object v22

    :goto_a9
    const/4 v5, 0x7

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    packed-switch v24, :pswitch_data_6a6

    :goto_b7
    const/16 v5, 0xa

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    const/16 v30, 0x0

    const/16 v31, 0x0

    packed-switch v29, :pswitch_data_6b0

    :goto_c4
    new-instance v12, Lcom/twitter/android/provider/af;

    const/4 v5, 0x1

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/4 v5, 0x2

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const/16 v5, 0xc

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    const/16 v5, 0xd

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    const/4 v5, 0x3

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    const/4 v5, 0x6

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    const/16 v5, 0x9

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    invoke-direct/range {v12 .. v31}, Lcom/twitter/android/provider/af;-><init>(IJJJIILjava/util/ArrayList;IILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;IILjava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object v5, v12

    :cond_f0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_f3
    move-object/from16 v20, v5

    :goto_f5
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    new-instance v22, Ljava/util/LinkedHashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V
    :try_end_109
    .catchall {:try_start_57 .. :try_end_109} :catchall_54

    const-wide/16 v17, 0x0

    :try_start_10b
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-virtual {v11}, Ljava/util/LinkedHashMap;->size()I

    move-result v25

    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v11}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v27

    move v6, v5

    :goto_121
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_617

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/twitter/android/api/n;

    move-object/from16 v16, v0

    add-int/lit8 v19, v6, 0x1

    move/from16 v0, v19

    move/from16 v1, v25

    if-ne v0, v1, :cond_209

    const/4 v5, 0x1

    :goto_139
    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/twitter/android/api/n;->b:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    invoke-virtual/range {v26 .. v26}, Landroid/content/ContentValues;->clear()V

    const-string v6, "type"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "is_last"

    if-eqz p6, :cond_20c

    if-eqz v5, :cond_20c

    const/4 v6, 0x1

    :goto_156
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    if-eqz v5, :cond_47c

    if-eqz v20, :cond_165

    if-nez v16, :cond_20f

    :cond_165
    const/4 v5, 0x0

    move v6, v5

    :goto_167
    move-object/from16 v0, v26

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    invoke-static {v0, v6, v1, v2}, Lcom/twitter/android/provider/ae;->a(Landroid/content/ContentValues;ILcom/twitter/android/provider/af;Lcom/twitter/android/api/n;)V

    if-nez v6, :cond_3b4

    const-string v5, "tag"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "activities"

    const-string v6, "created_at"

    move-object/from16 v0, v26

    invoke-virtual {v4, v5, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_3b1

    const/4 v5, 0x1

    :cond_18f
    :goto_18f
    if-eqz v5, :cond_4c7

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v16

    iget v5, v0, Lcom/twitter/android/api/n;->f:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4b9

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/twitter/android/api/n;->g:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1a7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/twitter/android/api/ac;

    iget-wide v7, v5, Lcom/twitter/android/api/ac;->a:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1be
    .catchall {:try_start_10b .. :try_end_1be} :catchall_1bf

    goto :goto_1a7

    :catchall_1bf
    move-exception v5

    :try_start_1c0
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    :cond_1c4
    const/16 v22, 0x0

    goto/16 :goto_a9

    :pswitch_1c8
    const/16 v5, 0x8

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-static {v5}, Lcom/twitter/android/provider/ActivityDataStatus;->a([B)Ljava/util/ArrayList;

    move-result-object v26

    goto/16 :goto_b7

    :pswitch_1d4
    const/16 v5, 0x8

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-static {v5}, Lcom/twitter/android/provider/ActivityDataUser;->a([B)Ljava/util/ArrayList;

    move-result-object v25

    goto/16 :goto_b7

    :pswitch_1e0
    const/16 v5, 0x8

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-static {v5}, Lcom/twitter/android/provider/ActivityDataList;->a([B)Ljava/util/ArrayList;

    move-result-object v27

    goto/16 :goto_b7

    :pswitch_1ec
    const/16 v5, 0xb

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-static {v5}, Lcom/twitter/android/provider/ActivityDataStatus;->a([B)Ljava/util/ArrayList;

    move-result-object v30

    goto/16 :goto_c4

    :pswitch_1f8
    const/16 v5, 0xb

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-static {v5}, Lcom/twitter/android/provider/ActivityDataList;->a([B)Ljava/util/ArrayList;
    :try_end_201
    .catchall {:try_start_1c0 .. :try_end_201} :catchall_54

    move-result-object v31

    goto/16 :goto_c4

    :cond_204
    const/4 v5, 0x0

    move-object/from16 v20, v5

    goto/16 :goto_f5

    :cond_209
    const/4 v5, 0x0

    goto/16 :goto_139

    :cond_20c
    const/4 v6, 0x0

    goto/16 :goto_156

    :cond_20f
    :try_start_20f
    move-object/from16 v0, v20

    iget v5, v0, Lcom/twitter/android/provider/af;->a:I

    move-object/from16 v0, v16

    iget v6, v0, Lcom/twitter/android/api/n;->a:I

    if-ne v5, v6, :cond_2d2

    if-nez p4, :cond_2cb

    move-object/from16 v0, v20

    iget v5, v0, Lcom/twitter/android/provider/af;->a:I

    packed-switch v5, :pswitch_data_6b8

    :pswitch_222
    const/4 v5, 0x0

    move v6, v5

    goto/16 :goto_167

    :pswitch_226
    move-object/from16 v0, v20

    iget v5, v0, Lcom/twitter/android/provider/af;->i:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_243

    move-object/from16 v0, v20

    iget v5, v0, Lcom/twitter/android/provider/af;->i:I

    move-object/from16 v0, v16

    iget v6, v0, Lcom/twitter/android/api/n;->i:I

    if-ne v5, v6, :cond_243

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/twitter/android/provider/af;->k:Ljava/util/ArrayList;

    if-eqz v5, :cond_243

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/twitter/android/api/n;->k:Ljava/util/ArrayList;

    if-nez v5, :cond_247

    :cond_243
    const/4 v5, 0x0

    move v6, v5

    goto/16 :goto_167

    :cond_247
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/twitter/android/provider/af;->k:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/twitter/android/api/n;->k:Ljava/util/ArrayList;

    invoke-static {v5, v6}, Lcom/twitter/android/provider/ae;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_259

    const/4 v5, 0x1

    move v6, v5

    goto/16 :goto_167

    :cond_259
    const/4 v5, 0x0

    move v6, v5

    goto/16 :goto_167

    :pswitch_25d
    move-object/from16 v0, v20

    iget v5, v0, Lcom/twitter/android/provider/af;->n:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_27a

    move-object/from16 v0, v20

    iget v5, v0, Lcom/twitter/android/provider/af;->n:I

    move-object/from16 v0, v16

    iget v6, v0, Lcom/twitter/android/api/n;->n:I

    if-ne v5, v6, :cond_27a

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/twitter/android/provider/af;->o:Ljava/util/ArrayList;

    if-eqz v5, :cond_27a

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/twitter/android/api/n;->o:Ljava/util/ArrayList;

    if-nez v5, :cond_27e

    :cond_27a
    const/4 v5, 0x0

    move v6, v5

    goto/16 :goto_167

    :cond_27e
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/twitter/android/provider/af;->o:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/twitter/android/api/n;->o:Ljava/util/ArrayList;

    invoke-static {v5, v6}, Lcom/twitter/android/provider/ae;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_290

    const/4 v5, 0x1

    move v6, v5

    goto/16 :goto_167

    :cond_290
    const/4 v5, 0x0

    move v6, v5

    goto/16 :goto_167

    :pswitch_294
    move-object/from16 v0, v20

    iget v5, v0, Lcom/twitter/android/provider/af;->i:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2b1

    move-object/from16 v0, v20

    iget v5, v0, Lcom/twitter/android/provider/af;->i:I

    move-object/from16 v0, v16

    iget v6, v0, Lcom/twitter/android/api/n;->i:I

    if-ne v5, v6, :cond_2b1

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/twitter/android/provider/af;->j:Ljava/util/ArrayList;

    if-eqz v5, :cond_2b1

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/twitter/android/api/n;->j:Ljava/util/ArrayList;

    if-nez v5, :cond_2b5

    :cond_2b1
    const/4 v5, 0x0

    move v6, v5

    goto/16 :goto_167

    :cond_2b5
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/twitter/android/provider/af;->j:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/twitter/android/api/n;->j:Ljava/util/ArrayList;

    invoke-static {v5, v6}, Lcom/twitter/android/provider/ae;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_2c7

    const/4 v5, 0x1

    move v6, v5

    goto/16 :goto_167

    :cond_2c7
    const/4 v5, 0x0

    move v6, v5

    goto/16 :goto_167

    :cond_2cb
    move-object/from16 v0, v20

    iget v5, v0, Lcom/twitter/android/provider/af;->a:I

    packed-switch v5, :pswitch_data_6c6

    :cond_2d2
    :pswitch_2d2
    const/4 v5, 0x0

    move v6, v5

    goto/16 :goto_167

    :pswitch_2d6
    move-object/from16 v0, v20

    iget v5, v0, Lcom/twitter/android/provider/af;->i:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2f3

    move-object/from16 v0, v20

    iget v5, v0, Lcom/twitter/android/provider/af;->i:I

    move-object/from16 v0, v16

    iget v6, v0, Lcom/twitter/android/api/n;->i:I

    if-ne v5, v6, :cond_2f3

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/twitter/android/provider/af;->k:Ljava/util/ArrayList;

    if-eqz v5, :cond_2f3

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/twitter/android/api/n;->k:Ljava/util/ArrayList;

    if-nez v5, :cond_2f7

    :cond_2f3
    const/4 v5, 0x0

    move v6, v5

    goto/16 :goto_167

    :cond_2f7
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/twitter/android/provider/af;->k:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/twitter/android/api/n;->k:Ljava/util/ArrayList;

    invoke-static {v5, v6}, Lcom/twitter/android/provider/ae;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_309

    const/4 v5, 0x1

    move v6, v5

    goto/16 :goto_167

    :cond_309
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/twitter/android/provider/af;->g:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/twitter/android/api/n;->g:Ljava/util/ArrayList;

    invoke-static {v5, v6}, Lcom/twitter/android/provider/ae;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_31b

    const/4 v5, 0x3

    move v6, v5

    goto/16 :goto_167

    :cond_31b
    const/4 v5, 0x0

    move v6, v5

    goto/16 :goto_167

    :pswitch_31f
    move-object/from16 v0, v20

    iget v5, v0, Lcom/twitter/android/provider/af;->n:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_33c

    move-object/from16 v0, v20

    iget v5, v0, Lcom/twitter/android/provider/af;->n:I

    move-object/from16 v0, v16

    iget v6, v0, Lcom/twitter/android/api/n;->n:I

    if-ne v5, v6, :cond_33c

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/twitter/android/provider/af;->o:Ljava/util/ArrayList;

    if-eqz v5, :cond_33c

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/twitter/android/api/n;->o:Ljava/util/ArrayList;

    if-nez v5, :cond_340

    :cond_33c
    const/4 v5, 0x0

    move v6, v5

    goto/16 :goto_167

    :cond_340
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/twitter/android/provider/af;->o:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/twitter/android/api/n;->o:Ljava/util/ArrayList;

    invoke-static {v5, v6}, Lcom/twitter/android/provider/ae;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_352

    const/4 v5, 0x1

    move v6, v5

    goto/16 :goto_167

    :cond_352
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/twitter/android/provider/af;->g:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/twitter/android/api/n;->g:Ljava/util/ArrayList;

    invoke-static {v5, v6}, Lcom/twitter/android/provider/ae;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_364

    const/4 v5, 0x4

    move v6, v5

    goto/16 :goto_167

    :cond_364
    const/4 v5, 0x0

    move v6, v5

    goto/16 :goto_167

    :pswitch_368
    move-object/from16 v0, v20

    iget v5, v0, Lcom/twitter/android/provider/af;->i:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_385

    move-object/from16 v0, v20

    iget v5, v0, Lcom/twitter/android/provider/af;->i:I

    move-object/from16 v0, v16

    iget v6, v0, Lcom/twitter/android/api/n;->i:I

    if-ne v5, v6, :cond_385

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/twitter/android/provider/af;->j:Ljava/util/ArrayList;

    if-eqz v5, :cond_385

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/twitter/android/api/n;->j:Ljava/util/ArrayList;

    if-nez v5, :cond_389

    :cond_385
    const/4 v5, 0x0

    move v6, v5

    goto/16 :goto_167

    :cond_389
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/twitter/android/provider/af;->j:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/twitter/android/api/n;->j:Ljava/util/ArrayList;

    invoke-static {v5, v6}, Lcom/twitter/android/provider/ae;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_39b

    const/4 v5, 0x1

    move v6, v5

    goto/16 :goto_167

    :cond_39b
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/twitter/android/provider/af;->g:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/twitter/android/api/n;->g:Ljava/util/ArrayList;

    invoke-static {v5, v6}, Lcom/twitter/android/provider/ae;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_3ad

    const/4 v5, 0x2

    move v6, v5

    goto/16 :goto_167

    :cond_3ad
    const/4 v5, 0x0

    move v6, v5

    goto/16 :goto_167

    :cond_3b1
    const/4 v5, 0x0

    goto/16 :goto_18f

    :cond_3b4
    const-string v5, "activities"

    const-string v7, "created_at=? AND event=? AND type=?"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, v20

    iget-wide v10, v0, Lcom/twitter/android/provider/af;->b:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    move-object/from16 v0, v20

    iget v10, v0, Lcom/twitter/android/provider/af;->a:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    move-object/from16 v0, v26

    invoke-virtual {v4, v5, v0, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_3ff

    const/4 v5, 0x1

    :goto_3e1
    if-eqz v5, :cond_18f

    packed-switch v6, :pswitch_data_6d4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_3e8
    if-eqz v6, :cond_465

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "tag"

    move-object/from16 v0, v28

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v8, "user_groups"

    const-string v9, "type=? AND tag=?"

    invoke-virtual {v4, v8, v7, v9, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_18f

    :cond_3ff
    const/4 v5, 0x0

    goto :goto_3e1

    :pswitch_401
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const/16 v8, 0x8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, v20

    iget-wide v8, v0, Lcom/twitter/android/provider/af;->b:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    goto :goto_3e8

    :pswitch_41a
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const/16 v8, 0xd

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, v20

    iget-wide v8, v0, Lcom/twitter/android/provider/af;->b:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    goto :goto_3e8

    :pswitch_433
    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const/16 v9, 0xc

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, v20

    iget-wide v9, v0, Lcom/twitter/android/provider/af;->b:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    goto :goto_3e8

    :pswitch_44c
    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const/16 v9, 0xe

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, v20

    iget-wide v9, v0, Lcom/twitter/android/provider/af;->b:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    goto :goto_3e8

    :cond_465
    if-eqz v7, :cond_18f

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "tag"

    move-object/from16 v0, v28

    invoke-virtual {v6, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v8, "status_groups"

    const-string v9, "type=? AND tag=?"

    invoke-virtual {v4, v8, v6, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_18f

    :cond_47c
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-static {v0, v5, v6, v1}, Lcom/twitter/android/provider/ae;->a(Landroid/content/ContentValues;ILcom/twitter/android/provider/af;Lcom/twitter/android/api/n;)V

    const-string v5, "tag"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "activities"

    const-string v6, "created_at"

    move-object/from16 v0, v26

    invoke-virtual {v4, v5, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_4a4

    const/4 v5, 0x1

    goto/16 :goto_18f

    :cond_4a4
    const/4 v5, 0x0

    goto/16 :goto_18f

    :cond_4a7
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/twitter/android/api/n;->g:Ljava/util/ArrayList;

    const/16 v9, 0x8

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v12, 0x0

    move-object/from16 v5, p0

    move-wide/from16 v7, p2

    invoke-virtual/range {v5 .. v12}, Lcom/twitter/android/provider/ae;->a(Ljava/util/Collection;JIJLjava/lang/String;)V

    :cond_4b9
    move-object/from16 v0, v16

    iget v5, v0, Lcom/twitter/android/api/n;->i:I

    packed-switch v5, :pswitch_data_6e0

    :cond_4c0
    :goto_4c0
    move-object/from16 v0, v16

    iget v5, v0, Lcom/twitter/android/api/n;->n:I

    packed-switch v5, :pswitch_data_6ea

    :cond_4c7
    move/from16 v6, v19

    goto/16 :goto_121

    :pswitch_4cb
    if-nez p4, :cond_4fc

    const/4 v5, 0x3

    move-object/from16 v0, v16

    iget v6, v0, Lcom/twitter/android/api/n;->a:I

    if-ne v5, v6, :cond_4fc

    const/4 v5, 0x0

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/twitter/android/api/n;->k:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4dd
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4f5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/twitter/android/api/aa;

    iget-wide v7, v5, Lcom/twitter/android/api/aa;->a:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4dd

    :cond_4f5
    if-eqz v5, :cond_6a2

    iget-wide v5, v5, Lcom/twitter/android/api/aa;->a:J

    :goto_4f9
    move-wide/from16 v17, v5

    goto :goto_4c0

    :cond_4fc
    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/twitter/android/api/n;->k:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_504
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_51c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/twitter/android/api/aa;

    iget-wide v7, v5, Lcom/twitter/android/api/aa;->a:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_504

    :cond_51c
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/twitter/android/api/n;->k:Ljava/util/ArrayList;

    const/16 v9, 0xc

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v5, p0

    move-wide/from16 v7, p2

    invoke-virtual/range {v5 .. v15}, Lcom/twitter/android/provider/ae;->b(Ljava/util/Collection;JIJZZLjava/lang/String;Z)I

    goto :goto_4c0

    :pswitch_532
    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/twitter/android/api/n;->j:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_53a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_552

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/twitter/android/api/ac;

    iget-wide v7, v5, Lcom/twitter/android/api/ac;->a:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_53a

    :cond_552
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/twitter/android/api/n;->j:Ljava/util/ArrayList;

    const/16 v9, 0xd

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v12, 0x0

    move-object/from16 v5, p0

    move-wide/from16 v7, p2

    invoke-virtual/range {v5 .. v12}, Lcom/twitter/android/provider/ae;->a(Ljava/util/Collection;JIJLjava/lang/String;)V

    goto/16 :goto_4c0

    :pswitch_566
    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/twitter/android/api/n;->l:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_56e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4c0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/twitter/android/api/q;

    invoke-virtual {v5}, Lcom/twitter/android/api/q;->a()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v24

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_56e

    :pswitch_588
    if-nez p4, :cond_5bc

    const/4 v5, 0x2

    move-object/from16 v0, v16

    iget v6, v0, Lcom/twitter/android/api/n;->a:I

    if-ne v5, v6, :cond_5bc

    const/4 v5, 0x0

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/twitter/android/api/n;->o:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_59a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5b2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/twitter/android/api/aa;

    iget-wide v7, v5, Lcom/twitter/android/api/aa;->a:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v0, v7, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_59a

    :cond_5b2
    if-eqz v5, :cond_69e

    iget-wide v5, v5, Lcom/twitter/android/api/aa;->a:J

    :goto_5b6
    move-wide/from16 v17, v5

    move/from16 v6, v19

    goto/16 :goto_121

    :cond_5bc
    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/twitter/android/api/n;->o:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5c4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5dc

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/twitter/android/api/aa;

    iget-wide v7, v5, Lcom/twitter/android/api/aa;->a:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5c4

    :cond_5dc
    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/twitter/android/api/n;->o:Ljava/util/ArrayList;

    const/16 v9, 0xe

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v5, p0

    move-wide/from16 v7, p2

    invoke-virtual/range {v5 .. v15}, Lcom/twitter/android/provider/ae;->b(Ljava/util/Collection;JIJZZLjava/lang/String;Z)I

    move/from16 v6, v19

    goto/16 :goto_121

    :pswitch_5f5
    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/twitter/android/api/n;->p:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5fd
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4c7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/twitter/android/api/q;

    invoke-virtual {v5}, Lcom/twitter/android/api/q;->a()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v24

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5fd

    :cond_617
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_62d

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    const/4 v9, -0x1

    const-wide/16 v10, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v5, p0

    move-wide/from16 v7, p2

    invoke-virtual/range {v5 .. v13}, Lcom/twitter/android/provider/ae;->a(Ljava/util/Collection;JIJLjava/lang/String;Ljava/lang/String;)I

    :cond_62d
    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_645

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    const/4 v9, -0x1

    const-wide/16 v10, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v5, p0

    move-wide/from16 v7, p2

    invoke-virtual/range {v5 .. v15}, Lcom/twitter/android/provider/ae;->a(Ljava/util/Collection;JIJZZLjava/lang/String;Z)I

    :cond_645
    invoke-virtual/range {v22 .. v22}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_664

    if-eqz p5, :cond_69c

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    :goto_651
    invoke-virtual/range {v22 .. v22}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    const/4 v9, 0x5

    const-wide/16 v10, -0x1

    const/4 v15, 0x1

    move-object/from16 v5, p0

    move-wide/from16 v7, p2

    move/from16 v12, p5

    move/from16 v13, p5

    invoke-virtual/range {v5 .. v15}, Lcom/twitter/android/provider/ae;->a(Ljava/util/Collection;JIJZZLjava/lang/String;Z)I

    :cond_664
    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_677

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    const/4 v9, 0x3

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-wide/from16 v7, p2

    invoke-virtual/range {v5 .. v10}, Lcom/twitter/android/provider/ae;->a(Ljava/util/Collection;JILjava/lang/String;)V

    :cond_677
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_67a
    .catchall {:try_start_20f .. :try_end_67a} :catchall_1bf

    :try_start_67a
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_698

    if-nez p5, :cond_68e

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/provider/ae;->j(JI)V

    :cond_68e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/twitter/android/provider/ae;->e:Landroid/content/ContentResolver;

    sget-object v5, Lcom/twitter/android/provider/p;->a:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_698
    .catchall {:try_start_67a .. :try_end_698} :catchall_54

    :cond_698
    move-object/from16 v4, v32

    goto/16 :goto_17

    :cond_69c
    const/4 v14, 0x0

    goto :goto_651

    :cond_69e
    move-wide/from16 v5, v17

    goto/16 :goto_5b6

    :cond_6a2
    move-wide/from16 v5, v17

    goto/16 :goto_4f9

    :pswitch_data_6a6
    .packed-switch 0x1
        :pswitch_1d4
        :pswitch_1c8
        :pswitch_1e0
    .end packed-switch

    :pswitch_data_6b0
    .packed-switch 0x2
        :pswitch_1ec
        :pswitch_1f8
    .end packed-switch

    :pswitch_data_6b8
    .packed-switch 0x1
        :pswitch_226
        :pswitch_222
        :pswitch_222
        :pswitch_25d
        :pswitch_294
    .end packed-switch

    :pswitch_data_6c6
    .packed-switch 0x1
        :pswitch_2d6
        :pswitch_2d2
        :pswitch_2d2
        :pswitch_31f
        :pswitch_368
    .end packed-switch

    :pswitch_data_6d4
    .packed-switch 0x1
        :pswitch_401
        :pswitch_41a
        :pswitch_433
        :pswitch_44c
    .end packed-switch

    :pswitch_data_6e0
    .packed-switch 0x1
        :pswitch_532
        :pswitch_4cb
        :pswitch_566
    .end packed-switch

    :pswitch_data_6ea
    .packed-switch 0x2
        :pswitch_588
        :pswitch_5f5
    .end packed-switch
.end method

.method public final declared-synchronized a(Ljava/util/List;J)Ljava/util/BitSet;
    .registers 23

    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "stories"

    sget-object v3, Lcom/twitter/android/provider/ay;->a:[Ljava/lang/String;

    const-string v4, "query is null"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    new-instance v14, Landroid/util/SparseIntArray;

    invoke-direct {v14}, Landroid/util/SparseIntArray;-><init>()V

    if-eqz v2, :cond_3c

    :goto_1a
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_39

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v14, v3, v4}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_36

    goto :goto_1a

    :catchall_36
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_39
    :try_start_39
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3c
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "stories"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "unread"

    aput-object v5, v3, v4

    const-string v4, "query is null AND unread=2"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_72

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_6f

    const-string v3, "unread"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "stories"

    const-string v4, "query is null AND unread!=2"

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v15, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_6f
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_72
    const-string v2, "stories"

    const-string v3, "query is null AND unread!=2"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    new-instance v16, Ljava/util/BitSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/BitSet;-><init>()V

    const/4 v3, 0x0

    if-lez v2, :cond_163

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V
    :try_end_8b
    .catchall {:try_start_39 .. :try_end_8b} :catchall_36

    :try_start_8b
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_92
    :goto_92
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13c

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/api/TwitterStory;

    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    iget-object v4, v2, Lcom/twitter/android/api/TwitterStory;->data:Lcom/twitter/android/api/TwitterStory$Data;

    invoke-static {v4}, Lcom/twitter/android/util/x;->a(Ljava/lang/Object;)[B

    move-result-object v5

    if-eqz v5, :cond_92

    const-string v4, "type"

    iget v6, v2, Lcom/twitter/android/api/TwitterStory;->type:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "score"

    iget-wide v6, v2, Lcom/twitter/android/api/TwitterStory;->score:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v15, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    iget v6, v2, Lcom/twitter/android/api/TwitterStory;->identifier:I

    invoke-virtual {v14, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_137

    iget v4, v2, Lcom/twitter/android/api/TwitterStory;->state:I

    :goto_cd
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v7, "unread"

    invoke-virtual {v15, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "identifier"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v15, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "query"

    invoke-virtual {v15, v6}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const-string v6, "data"

    invoke-virtual {v15, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object v5, v2, Lcom/twitter/android/api/TwitterStory;->socialProof:Lcom/twitter/android/api/TwitterStory$SocialProof;

    invoke-static {v5}, Lcom/twitter/android/util/x;->a(Ljava/lang/Object;)[B

    move-result-object v5

    if-eqz v5, :cond_f6

    const-string v6, "social_proof"

    invoke-virtual {v15, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_f6
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_16a

    if-nez v4, :cond_104

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    :cond_104
    add-int/lit8 v3, v3, 0x1

    move v13, v3

    :goto_107
    const-string v3, "stories"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v15}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    iget-object v3, v2, Lcom/twitter/android/api/TwitterStory;->data:Lcom/twitter/android/api/TwitterStory$Data;

    iget-object v3, v3, Lcom/twitter/android/api/TwitterStory$Data;->a:Lcom/twitter/android/api/aa;

    if-eqz v3, :cond_118

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_118
    invoke-virtual {v2}, Lcom/twitter/android/api/TwitterStory;->a()Z

    move-result v3

    if-eqz v3, :cond_134

    iget-object v3, v2, Lcom/twitter/android/api/TwitterStory;->socialProof:Lcom/twitter/android/api/TwitterStory$SocialProof;

    iget-object v3, v3, Lcom/twitter/android/api/TwitterStory$SocialProof;->a:Ljava/util/ArrayList;

    if-eqz v3, :cond_134

    const/16 v6, 0xf

    iget v2, v2, Lcom/twitter/android/api/TwitterStory;->identifier:I

    int-to-long v7, v2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v4, p2

    invoke-virtual/range {v2 .. v12}, Lcom/twitter/android/provider/ae;->a(Ljava/util/Collection;JIJZZLjava/lang/String;Z)I

    :cond_134
    move v3, v13

    goto/16 :goto_92

    :cond_137
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_cd

    :cond_13c
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_13f
    .catchall {:try_start_8b .. :try_end_13f} :catchall_165

    :try_start_13f
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_159

    const/16 v5, 0xa

    const-wide/16 v6, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-wide/from16 v3, p2

    invoke-virtual/range {v1 .. v11}, Lcom/twitter/android/provider/ae;->a(Ljava/util/Collection;JIJZZLjava/lang/String;Z)I

    :cond_159
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/twitter/android/provider/ae;->e:Landroid/content/ContentResolver;

    sget-object v2, Lcom/twitter/android/provider/aa;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_163
    .catchall {:try_start_13f .. :try_end_163} :catchall_36

    :cond_163
    monitor-exit p0

    return-object v16

    :catchall_165
    move-exception v2

    :try_start_166
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
    :try_end_16a
    .catchall {:try_start_166 .. :try_end_16a} :catchall_36

    :cond_16a
    move v13, v3

    goto :goto_107
.end method

.method public final declared-synchronized a(IJJ)V
    .registers 15

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_2
    sget-boolean v0, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v0, :cond_2e

    const-string v0, "DatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Removing user: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", owned by: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", of type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "user_groups"

    const-string v2, "owner_id=? AND type=? AND user_id=?"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_e2

    :cond_54
    :goto_54
    iget-object v0, p0, Lcom/twitter/android/provider/ae;->e:Landroid/content/ContentResolver;

    sget-object v1, Lcom/twitter/android/provider/ab;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_5c
    .catchall {:try_start_2 .. :try_end_5c} :catchall_d9

    monitor-exit p0

    return-void

    :pswitch_5e
    :try_start_5e
    const-string v1, "status_groups LEFT JOIN statuses ON status_groups.g_status_id=statuses.status_id"

    sget-object v2, Lcom/twitter/android/provider/as;->a:[Ljava/lang/String;

    const-string v3, "owner_id=? AND author_id=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_54

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_81
    .catchall {:try_start_5e .. :try_end_81} :catchall_d9

    move-result v1

    if-eqz v1, :cond_d4

    :try_start_84
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    move v1, v8

    :cond_92
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "status_groups"

    const-string v5, "g_status_id=? AND owner_id=?"

    invoke-virtual {v0, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v1, v4

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_92

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_b0
    .catchall {:try_start_84 .. :try_end_b0} :catchall_dc

    :try_start_b0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-lez v1, :cond_d4

    sget-boolean v0, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v0, :cond_cd

    const-string v0, "DatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Deleted old friend statuses: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cd
    const/4 v0, 0x3

    invoke-direct {p0, p2, p3, p1, v0}, Lcom/twitter/android/provider/ae;->a(JII)V

    invoke-direct {p0}, Lcom/twitter/android/provider/ae;->g()V

    :cond_d4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_d7
    .catchall {:try_start_b0 .. :try_end_d7} :catchall_d9

    goto/16 :goto_54

    :catchall_d9
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_dc
    move-exception v1

    :try_start_dd
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
    :try_end_e1
    .catchall {:try_start_dd .. :try_end_e1} :catchall_d9

    nop

    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_5e
    .end packed-switch
.end method

.method public final declared-synchronized a(IJJLcom/twitter/android/api/q;)V
    .registers 16

    monitor-enter p0

    :try_start_1
    invoke-virtual {p6}, Lcom/twitter/android/api/q;->a()J

    move-result-wide v0

    sget-boolean v2, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v2, :cond_31

    const-string v2, "DatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Removing list user "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", of type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", from list id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "user_groups"

    const-string v4, "owner_id=? AND type=? AND user_id=?"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v3, p0, Lcom/twitter/android/provider/ae;->e:Landroid/content/ContentResolver;

    packed-switch p1, :pswitch_data_fc

    :cond_59
    :goto_59
    const/4 v0, 0x5

    if-ne p1, v0, :cond_5f

    invoke-direct {p0, p6}, Lcom/twitter/android/provider/ae;->a(Lcom/twitter/android/api/q;)V

    :cond_5f
    sget-object v0, Lcom/twitter/android/provider/ab;->a:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_65
    .catchall {:try_start_1 .. :try_end_65} :catchall_a8

    monitor-exit p0

    return-void

    :pswitch_67
    :try_start_67
    const-string v4, "status_groups"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "owner_id=? AND type=? AND tag=? AND "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " IN (SELECT author_id FROM statuses WHERE g_status_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "status_id)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/16 v8, 0x9

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-virtual {v2, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_59

    invoke-direct {p0}, Lcom/twitter/android/provider/ae;->g()V
    :try_end_a7
    .catchall {:try_start_67 .. :try_end_a7} :catchall_a8

    goto :goto_59

    :catchall_a8
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_ab
    :try_start_ab
    sget-boolean v4, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v4, :cond_cd

    const-string v4, "DatabaseHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Removing subscriber list: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", owned by: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cd
    const-string v4, "lists"

    const-string v5, "owner_id=? AND type=? AND list_id=?"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v1, v4}, Lcom/twitter/android/provider/ae;->a(JZ)V

    if-lez v2, :cond_59

    sget-object v0, Lcom/twitter/android/provider/q;->a:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_fa
    .catchall {:try_start_ab .. :try_end_fa} :catchall_a8

    goto/16 :goto_59

    :pswitch_data_fc
    .packed-switch 0x4
        :pswitch_67
        :pswitch_ab
    .end packed-switch
.end method

.method public final declared-synchronized a(JI)V
    .registers 11

    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v0, :cond_23

    const-string v0, "DatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveFriendship: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " friendship: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "friendship"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "friendship_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "users"

    const-string v3, "user_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_53
    .catchall {:try_start_1 .. :try_end_53} :catchall_55

    monitor-exit p0

    return-void

    :catchall_55
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(JIJJ)V
    .registers 13

    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v0, :cond_2d

    const-string v0, "DatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deleteOldStatuses: owner id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", statusId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-wide/16 v3, -0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p6, p7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "status_groups"

    const-string v3, "owner_id=? AND type=? AND tag=? AND g_status_id<?"

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    sget-boolean v1, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v1, :cond_72

    const-string v1, "DatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deleteOldStatuses: Deleted: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catchall {:try_start_1 .. :try_end_72} :catchall_74

    :cond_72
    monitor-exit p0

    return-void

    :catchall_74
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(JIJ[J)V
    .registers 20

    monitor-enter p0

    :try_start_1
    sget-boolean v1, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v1, :cond_2b

    const-string v1, "DatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Marking statuses owned by: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", of type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", tag: -1 as read."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "is_read"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v2, 0x0

    if-nez p6, :cond_67

    const-string v1, "status_groups"

    const-string v2, "owner_id=? AND type=? AND tag=?"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    const/4 v6, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    const/4 v6, 0x2

    const-wide/16 v7, -0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-virtual {v4, v1, v5, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_62
    .catchall {:try_start_1 .. :try_end_62} :catchall_94

    move-result v1

    :goto_63
    if-nez v1, :cond_9c

    :goto_65
    monitor-exit p0

    return-void

    :cond_67
    :try_start_67
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    move-object/from16 v0, p6

    array-length v6, v0

    const/4 v1, 0x0

    move v12, v1

    move v1, v2

    move v2, v12

    :goto_71
    if-ge v2, v6, :cond_8d

    aget-wide v7, p6, v2

    const-string v3, "status_groups"

    const-string v9, "_id=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v10, v11

    invoke-virtual {v4, v3, v5, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_71

    :cond_8d
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_90
    .catchall {:try_start_67 .. :try_end_90} :catchall_97

    :try_start_90
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_94

    goto :goto_63

    :catchall_94
    move-exception v1

    monitor-exit p0

    throw v1

    :catchall_97
    move-exception v1

    :try_start_98
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    :cond_9c
    iget-object v1, p0, Lcom/twitter/android/provider/ae;->e:Landroid/content/ContentResolver;

    packed-switch p3, :pswitch_data_12c

    :pswitch_a1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid status type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_b8
    sget-object v2, Lcom/twitter/android/provider/z;->i:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_65

    :pswitch_c3
    sget-object v2, Lcom/twitter/android/provider/z;->k:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    sget-object v2, Lcom/twitter/android/provider/y;->b:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_65

    :pswitch_d8
    sget-object v2, Lcom/twitter/android/provider/z;->j:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_65

    :pswitch_e3
    sget-object v2, Lcom/twitter/android/provider/z;->h:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_65

    :pswitch_ef
    sget-object v2, Lcom/twitter/android/provider/z;->g:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_65

    :pswitch_fb
    sget-object v2, Lcom/twitter/android/provider/z;->f:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_65

    :pswitch_107
    sget-object v2, Lcom/twitter/android/provider/z;->e:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_65

    :pswitch_113
    sget-object v2, Lcom/twitter/android/provider/z;->d:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_65

    :pswitch_11f
    sget-object v2, Lcom/twitter/android/provider/z;->c:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_129
    .catchall {:try_start_98 .. :try_end_129} :catchall_94

    goto/16 :goto_65

    nop

    :pswitch_data_12c
    .packed-switch 0x0
        :pswitch_b8
        :pswitch_c3
        :pswitch_d8
        :pswitch_e3
        :pswitch_a1
        :pswitch_ef
        :pswitch_fb
        :pswitch_107
        :pswitch_113
        :pswitch_11f
    .end packed-switch
.end method

.method public final declared-synchronized a(JJJI)V
    .registers 14

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-wide v1, 0xb016e9deL

    const-wide v3, 0xb018707eL

    invoke-static {v0, v1, v2, v3, v4}, Lcom/twitter/android/provider/ae;->b(Landroid/database/sqlite/SQLiteDatabase;JJ)J

    move-result-wide v1

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "status_id"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "created"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "statuses"

    const-string v5, "status_id"

    invoke-virtual {v0, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    const-string v4, "owner_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "type"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "tag"

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "ref_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "is_read"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "timeline"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v4, "tweet_type"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "updated_at"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "g_status_id"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "is_last"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "status_groups"

    const-string v2, "g_status_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_9b
    .catchall {:try_start_1 .. :try_end_9b} :catchall_9d

    monitor-exit p0

    return-void

    :catchall_9d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(JJZ)V
    .registers 12

    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v0, :cond_23

    const-string v0, "DatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unfavorite status: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", owned by: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "favorited"

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v3, "statuses"

    const-string v4, "status_id=?"

    invoke-virtual {v0, v3, v2, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    if-nez p5, :cond_68

    const-string v1, "status_groups"

    const-string v2, "owner_id=? AND type=? AND g_status_id=?"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_68
    invoke-direct {p0}, Lcom/twitter/android/provider/ae;->g()V
    :try_end_6b
    .catchall {:try_start_1 .. :try_end_6b} :catchall_6d

    monitor-exit p0

    return-void

    :catchall_6d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(JLcom/twitter/android/api/aa;)V
    .registers 19

    monitor-enter p0

    :try_start_1
    sget-boolean v2, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v2, :cond_29

    const-string v2, "DatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Removing status: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    iget-wide v4, v0, Lcom/twitter/android/api/aa;->a:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", owned by: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    const/4 v3, 0x3

    new-array v12, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v11, v12, v3

    const/4 v3, 0x1

    aput-object v11, v12, v3

    const/4 v3, 0x2

    move-object/from16 v0, p3

    iget-wide v4, v0, Lcom/twitter/android/api/aa;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v3

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/twitter/android/api/aa;->k:Lcom/twitter/android/api/aa;

    const/4 v10, 0x0

    if-nez v13, :cond_5d

    const-string v3, "status_groups"

    const-string v4, "owner_id=? AND sender_id=? AND ref_id=?"

    invoke-virtual {v2, v3, v4, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    :goto_56
    if-lez v2, :cond_5b

    invoke-direct {p0}, Lcom/twitter/android/provider/ae;->g()V
    :try_end_5b
    .catchall {:try_start_1 .. :try_end_5b} :catchall_13f

    :cond_5b
    monitor-exit p0

    return-void

    :cond_5d
    :try_start_5d
    iget-wide v3, v13, Lcom/twitter/android/api/aa;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    const-string v3, "status_groups_view"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "sender_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "ref_id"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "updated_at"

    aput-object v6, v4, v5

    const-string v5, "owner_id=? AND type=? AND g_status_id=?"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v11, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x7

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object v14, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_90
    .catchall {:try_start_5d .. :try_end_90} :catchall_13f

    move-result-object v4

    if-eqz v4, :cond_142

    :try_start_93
    new-instance v3, Landroid/content/ContentValues;

    const/4 v5, 0x3

    invoke-direct {v3, v5}, Landroid/content/ContentValues;-><init>(I)V

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_10c

    const-string v5, "sender_id"

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "ref_id"

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "updated_at"

    const/4 v6, 0x2

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :goto_c9
    const-string v5, "status_groups"

    const-string v6, "owner_id=? AND sender_id=? AND ref_id=?"

    invoke-virtual {v2, v5, v3, v6, v12}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_d0
    .catchall {:try_start_93 .. :try_end_d0} :catchall_13a

    move-result v3

    add-int/lit8 v3, v3, 0x0

    :try_start_d3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :goto_d6
    const-string v4, "status_groups"

    const-string v5, "owner_id=? AND type=? AND g_status_id=?"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v11, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x6

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object v14, v6, v7

    invoke-virtual {v2, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    const-string v4, "status_groups"

    const-string v5, "owner_id=? AND type=? AND g_status_id=?"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v11, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object v14, v6, v7

    invoke-virtual {v2, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_108
    .catchall {:try_start_d3 .. :try_end_108} :catchall_13f

    move-result v2

    add-int/2addr v2, v3

    goto/16 :goto_56

    :cond_10c
    :try_start_10c
    const-string v5, "sender_id"

    iget-object v6, v13, Lcom/twitter/android/api/aa;->m:Lcom/twitter/android/api/ac;

    iget-wide v6, v6, Lcom/twitter/android/api/ac;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "ref_id"

    iget-wide v6, v13, Lcom/twitter/android/api/aa;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "updated_at"

    iget-wide v6, v13, Lcom/twitter/android/api/aa;->e:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "tweet_type"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_139
    .catchall {:try_start_10c .. :try_end_139} :catchall_13a

    goto :goto_c9

    :catchall_13a
    move-exception v2

    :try_start_13b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_13f
    .catchall {:try_start_13b .. :try_end_13f} :catchall_13f

    :catchall_13f
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_142
    move v3, v10

    goto :goto_d6
.end method

.method public final declared-synchronized a(JLcom/twitter/android/api/ac;)V
    .registers 13

    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v4, 0xe

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v8}, Lcom/twitter/android/provider/ae;->a(Ljava/util/Collection;JIJLjava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    invoke-direct {p0, v1, v0}, Lcom/twitter/android/provider/ae;->b(Ljava/util/Collection;I)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    monitor-exit p0

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(JLcom/twitter/android/api/ac;ILcom/twitter/android/api/q;)V
    .registers 15

    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p5}, Lcom/twitter/android/api/q;->h()Lcom/twitter/android/api/ac;

    move-result-object v0

    iget-wide v2, v0, Lcom/twitter/android/api/ac;->a:J

    invoke-virtual {p5}, Lcom/twitter/android/api/q;->a()J

    move-result-wide v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v4, p4

    invoke-virtual/range {v0 .. v8}, Lcom/twitter/android/provider/ae;->a(Ljava/util/Collection;JIJLjava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_23

    packed-switch p4, :pswitch_data_46

    :goto_1d
    monitor-exit p0

    return-void

    :pswitch_1f
    :try_start_1f
    invoke-direct {p0, p5}, Lcom/twitter/android/provider/ae;->a(Lcom/twitter/android/api/q;)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    goto :goto_1d

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_26
    :try_start_26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/provider/ae;->a(Ljava/util/Collection;JILjava/lang/String;)V

    invoke-virtual {p5}, Lcom/twitter/android/api/q;->a()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/twitter/android/provider/ae;->a(JZ)V

    iget-object v0, p0, Lcom/twitter/android/provider/ae;->e:Landroid/content/ContentResolver;

    sget-object v1, Lcom/twitter/android/provider/q;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_45
    .catchall {:try_start_26 .. :try_end_45} :catchall_23

    goto :goto_1d

    :pswitch_data_46
    .packed-switch 0x4
        :pswitch_1f
        :pswitch_26
    .end packed-switch
.end method

.method public final declared-synchronized a(JZ)V
    .registers 11

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_2
    sget-boolean v1, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v1, :cond_24

    const-string v1, "DatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateFollowList: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " follow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "i_follow"

    if-eqz p3, :cond_4b

    :goto_31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "lists"

    const-string v3, "list_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_2 .. :try_end_49} :catchall_4d

    monitor-exit p0

    return-void

    :cond_4b
    const/4 v0, 0x2

    goto :goto_31

    :catchall_4d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(J[J)V
    .registers 12

    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    array-length v2, p3

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_18

    aget-wide v3, p3, v0

    invoke-direct {p0, v3, v4}, Lcom/twitter/android/provider/ae;->i(J)Lcom/twitter/android/api/ac;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_18
    const/16 v4, 0xe

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/twitter/android/provider/ae;->a(Ljava/util/Collection;JIJLjava/lang/String;)V

    const/4 v0, 0x4

    invoke-direct {p0, v1, v0}, Lcom/twitter/android/provider/ae;->b(Ljava/util/Collection;I)V
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_28

    monitor-exit p0

    return-void

    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/twitter/android/api/aa;J)V
    .registers 20

    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/twitter/android/api/aa;->k:Lcom/twitter/android/api/aa;

    invoke-virtual/range {p1 .. p1}, Lcom/twitter/android/api/aa;->b()Lcom/twitter/android/api/aa;

    move-result-object v12

    iget-wide v6, v12, Lcom/twitter/android/api/aa;->a:J

    sget-boolean v1, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v1, :cond_23

    const-string v1, "DatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "insertStatus: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "statuses"

    sget-object v3, Lcom/twitter/android/provider/ax;->a:[Ljava/lang/String;

    const-string v4, "status_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_186

    move-result-object v15

    if-eqz v15, :cond_17c

    const/4 v11, 0x0

    :try_start_41
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_192

    new-instance v3, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, v12, Lcom/twitter/android/api/aa;->m:Lcom/twitter/android/api/ac;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v14, :cond_5b

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/twitter/android/api/aa;->m:Lcom/twitter/android/api/ac;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5b
    const-wide/16 v4, -0x1

    const/4 v6, -0x1

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/twitter/android/provider/ae;->a(Ljava/util/Collection;JIJLjava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/twitter/android/provider/ae;->f:J

    invoke-static {v12, v2, v3, v4}, Lcom/twitter/android/provider/ae;->a(Lcom/twitter/android/api/aa;Landroid/content/ContentValues;J)Z

    move-result v3

    if-eqz v3, :cond_192

    const-string v3, "statuses"

    const-string v4, "status_id"

    invoke-virtual {v1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_7d
    .catchall {:try_start_41 .. :try_end_7d} :catchall_181

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_17e

    const/4 v2, 0x1

    :goto_85
    add-int/lit8 v2, v2, 0x0

    move v13, v2

    :goto_88
    :try_start_88
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    const-wide/16 v7, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v4, p2

    invoke-virtual/range {v2 .. v12}, Lcom/twitter/android/provider/ae;->b(Ljava/util/Collection;JIJZZLjava/lang/String;Z)I

    move-result v2

    add-int/2addr v13, v2

    if-eqz v14, :cond_190

    const/4 v6, 0x6

    const-wide/16 v7, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v4, p2

    invoke-virtual/range {v2 .. v12}, Lcom/twitter/android/provider/ae;->b(Ljava/util/Collection;JIJZZLjava/lang/String;Z)I

    move-result v2

    add-int/2addr v2, v13

    new-instance v12, Landroid/content/ContentValues;

    const/4 v4, 0x3

    invoke-direct {v12, v4}, Landroid/content/ContentValues;-><init>(I)V

    const-string v4, "tweet_type"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "ref_id"

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/twitter/android/api/aa;->a:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "sender_id"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/twitter/android/api/aa;->m:Lcom/twitter/android/api/ac;

    iget-wide v5, v5, Lcom/twitter/android/api/ac;->a:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "status_groups"

    const-string v5, "owner_id=? AND g_status_id=? AND type NOT IN (7,0,1)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-wide v8, v14, Lcom/twitter/android/api/aa;->a:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v1, v4, v12, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    const-string v4, "type"

    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "owner_id=? AND type=? AND g_status_id=? AND tweet_type=1"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x3

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    const/4 v4, 0x2

    iget-wide v5, v14, Lcom/twitter/android/api/aa;->a:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    const-string v5, "status_groups"

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v9, "updated_at"

    aput-object v9, v6, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, v1

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_143
    .catchall {:try_start_88 .. :try_end_143} :catchall_186

    move-result-object v6

    if-eqz v6, :cond_18e

    const-wide/16 v4, 0x0

    :try_start_148
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_153

    const/4 v4, 0x0

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_152
    .catchall {:try_start_148 .. :try_end_152} :catchall_189

    move-result-wide v4

    :cond_153
    :try_start_153
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const-wide/16 v9, 0x0

    cmp-long v6, v4, v9

    if-lez v6, :cond_18e

    const-string v6, "status_groups"

    invoke-virtual {v1, v6, v12, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v2

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/twitter/android/api/aa;->d:J

    :goto_167
    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v4, p2

    invoke-virtual/range {v2 .. v12}, Lcom/twitter/android/provider/ae;->b(Ljava/util/Collection;JIJZZLjava/lang/String;Z)I

    move-result v2

    add-int/2addr v1, v2

    if-lez v1, :cond_17c

    invoke-direct/range {p0 .. p0}, Lcom/twitter/android/provider/ae;->g()V
    :try_end_17c
    .catchall {:try_start_153 .. :try_end_17c} :catchall_186

    :cond_17c
    monitor-exit p0

    return-void

    :cond_17e
    const/4 v2, 0x0

    goto/16 :goto_85

    :catchall_181
    move-exception v1

    :try_start_182
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_186
    .catchall {:try_start_182 .. :try_end_186} :catchall_186

    :catchall_186
    move-exception v1

    monitor-exit p0

    throw v1

    :catchall_189
    move-exception v1

    :try_start_18a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_18e
    .catchall {:try_start_18a .. :try_end_18e} :catchall_186

    :cond_18e
    move v1, v2

    goto :goto_167

    :cond_190
    move v1, v13

    goto :goto_167

    :cond_192
    move v13, v11

    goto/16 :goto_88
.end method

.method public final a(Ljava/util/Collection;I)V
    .registers 15

    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    div-int/lit8 v11, v1, 0xa

    if-lez v11, :cond_4c

    const-string v3, "user_id IN (?,?,?,?,?,?,?,?,?,?)"

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/twitter/android/provider/ae;->a(I[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    move v8, v1

    :goto_20
    if-ge v8, v11, :cond_4c

    const/4 v1, 0x0

    move v2, v1

    :goto_24
    const/16 v1, 0xa

    if-ge v2, v1, :cond_38

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_24

    :cond_38
    const-string v1, "users"

    sget-object v2, Lcom/twitter/android/provider/ak;->a:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_48

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_48
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_20

    :cond_4c
    const-string v3, "user_id=?"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    :cond_51
    :goto_51
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_75

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    const-string v1, "users"

    sget-object v2, Lcom/twitter/android/provider/ak;->a:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_51

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_51

    :cond_75
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_94

    new-instance v1, Landroid/database/MergeCursor;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/database/Cursor;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/database/Cursor;

    invoke-direct {v1, v0}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    const/4 v0, 0x1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/twitter/android/provider/ae;->a(Landroid/database/Cursor;IZ)V

    invoke-virtual {v1}, Landroid/database/MergeCursor;->close()V

    :cond_94
    return-void
.end method

.method public final declared-synchronized a(Ljava/util/Collection;JIJLjava/lang/String;)V
    .registers 18

    monitor-enter p0

    :try_start_1
    sget-boolean v1, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v1, :cond_3d

    const-string v1, "DatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mergeUserGroups: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", owned by: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", of type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", next: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_67

    :cond_3d
    const/4 v1, -0x1

    if-eq p4, v1, :cond_46

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gez v1, :cond_48

    :cond_46
    :goto_46
    monitor-exit p0

    return-void

    :cond_48
    if-eqz p7, :cond_53

    const/4 v2, 0x1

    move-object v1, p0

    move v3, p4

    move-wide v4, p2

    move-object/from16 v6, p7

    :try_start_50
    invoke-direct/range {v1 .. v6}, Lcom/twitter/android/provider/ae;->a(IIJLjava/lang/String;)V

    :cond_53
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6a

    const-string v1, "0"

    move-object/from16 v0, p7

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-direct {p0, p2, p3, p4}, Lcom/twitter/android/provider/ae;->g(JI)V
    :try_end_66
    .catchall {:try_start_50 .. :try_end_66} :catchall_67

    goto :goto_46

    :catchall_67
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_6a
    :try_start_6a
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_73
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_89

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twitter/android/api/ac;

    iget-wide v3, v1, Lcom/twitter/android/api/ac;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v9, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_73

    :cond_89
    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "user_groups"

    sget-object v3, Lcom/twitter/android/provider/az;->a:[Ljava/lang/String;

    const-string v4, "owner_id=? AND type=? AND tag=?"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static/range {p5 .. p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_b1
    .catchall {:try_start_6a .. :try_end_b1} :catchall_67

    move-result-object v2

    if-eqz v2, :cond_46

    :goto_b4
    :try_start_b4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_cc

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c6
    .catchall {:try_start_b4 .. :try_end_c6} :catchall_c7

    goto :goto_b4

    :catchall_c7
    move-exception v1

    :try_start_c8
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_cc
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    sget-boolean v2, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v2, :cond_eb

    const-string v2, "DatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Inserting new user groups: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_eb
    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->size()I
    :try_end_ee
    .catchall {:try_start_c8 .. :try_end_ee} :catchall_67

    move-result v5

    if-lez v5, :cond_46

    :try_start_f1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v2, 0x0

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "owner_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "type"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "tag"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v3, v2

    :goto_11e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_189

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/api/ac;

    add-int/lit8 v3, v3, 0x1

    const-string v4, "user_id"

    iget-wide v8, v2, Lcom/twitter/android/api/ac;->a:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v8, "is_last"

    if-ne v3, v5, :cond_17c

    const-string v4, "0"

    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17c

    const/4 v4, 0x1

    :goto_146
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v6, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v4, v2, Lcom/twitter/android/api/ac;->s:Lcom/twitter/android/api/PromotedContent;

    if-eqz v4, :cond_17e

    const-string v4, "pc"

    iget-object v8, v2, Lcom/twitter/android/api/ac;->s:Lcom/twitter/android/api/PromotedContent;

    invoke-static {v8}, Lcom/twitter/android/util/x;->a(Ljava/lang/Object;)[B

    move-result-object v8

    invoke-virtual {v6, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const/4 v4, 0x1

    iget-object v2, v2, Lcom/twitter/android/api/ac;->s:Lcom/twitter/android/api/PromotedContent;

    invoke-virtual {v2}, Lcom/twitter/android/api/PromotedContent;->a()Z

    move-result v2

    if-eqz v2, :cond_199

    const/4 v2, 0x3

    :goto_166
    const-string v4, "g_flags"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_16f
    const-string v2, "user_groups"

    const-string v4, "user_id"

    invoke-virtual {v1, v2, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_176
    .catchall {:try_start_f1 .. :try_end_176} :catchall_177

    goto :goto_11e

    :catchall_177
    move-exception v2

    :try_start_178
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
    :try_end_17c
    .catchall {:try_start_178 .. :try_end_17c} :catchall_67

    :cond_17c
    const/4 v4, 0x0

    goto :goto_146

    :cond_17e
    :try_start_17e
    const-string v2, "pc"

    invoke-virtual {v6, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const-string v2, "g_flags"

    invoke-virtual {v6, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_16f

    :cond_189
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_18c
    .catchall {:try_start_17e .. :try_end_18c} :catchall_177

    :try_start_18c
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    iget-object v1, p0, Lcom/twitter/android/provider/ae;->e:Landroid/content/ContentResolver;

    sget-object v2, Lcom/twitter/android/provider/ab;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_197
    .catchall {:try_start_18c .. :try_end_197} :catchall_67

    goto/16 :goto_46

    :cond_199
    move v2, v4

    goto :goto_166
.end method

.method public final declared-synchronized a(Ljava/util/Collection;JILjava/lang/String;)V
    .registers 20

    monitor-enter p0

    :try_start_1
    sget-boolean v2, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v2, :cond_41

    const-string v2, "DatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Merging lists: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", owned by: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", next: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gez v2, :cond_52

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "null owner id not allowed for lists"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4f
    .catchall {:try_start_1 .. :try_end_4f} :catchall_4f

    :catchall_4f
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_52
    if-eqz p5, :cond_5f

    const/4 v3, 0x2

    move-object v2, p0

    move/from16 v4, p4

    move-wide/from16 v5, p2

    move-object/from16 v7, p5

    :try_start_5c
    invoke-direct/range {v2 .. v7}, Lcom/twitter/android/provider/ae;->a(IIJLjava/lang/String;)V

    :cond_5f
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_76

    const-string v2, "0"

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    move-wide/from16 v0, p2

    invoke-direct {p0, v0, v1}, Lcom/twitter/android/provider/ae;->j(J)V
    :try_end_74
    .catchall {:try_start_5c .. :try_end_74} :catchall_4f

    :cond_74
    :goto_74
    monitor-exit p0

    return-void

    :cond_76
    :try_start_76
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_97

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twitter/android/api/q;

    invoke-virtual {v2}, Lcom/twitter/android/api/q;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v12, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7f

    :cond_97
    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "lists"

    sget-object v4, Lcom/twitter/android/provider/an;->a:[Ljava/lang/String;

    const-string v5, "list_id"

    const-string v6, "owner_id=? AND type=?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/twitter/android/provider/ae;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Collection;Ljava/util/Map;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_74

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V
    :try_end_c4
    .catchall {:try_start_76 .. :try_end_c4} :catchall_4f

    :cond_c4
    :goto_c4
    :try_start_c4
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_f1

    const/4 v3, 0x0

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/android/api/q;

    invoke-virtual {v3}, Lcom/twitter/android/api/q;->hashCode()I

    move-result v7

    const/4 v8, 0x1

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eq v7, v8, :cond_c4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v13, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_eb
    .catchall {:try_start_c4 .. :try_end_eb} :catchall_ec

    goto :goto_c4

    :catchall_ec
    move-exception v2

    :try_start_ed
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_f1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    sget-boolean v3, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v3, :cond_11e

    const-string v3, "DatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Inserting new lists: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", updating lists: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11e
    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_238

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_131
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/android/api/q;

    invoke-virtual {v3}, Lcom/twitter/android/api/q;->h()Lcom/twitter/android/api/ac;

    move-result-object v6

    iget-wide v6, v6, Lcom/twitter/android/api/ac;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3}, Lcom/twitter/android/api/q;->h()Lcom/twitter/android/api/ac;

    move-result-object v3

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_131

    :cond_14f
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    const-wide/16 v5, -0x1

    const/4 v7, -0x1

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v11}, Lcom/twitter/android/provider/ae;->a(Ljava/util/Collection;JIJLjava/lang/String;Ljava/lang/String;)I
    :try_end_15e
    .catchall {:try_start_ed .. :try_end_15e} :catchall_4f

    :try_start_15e
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v5

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "owner_id"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "type"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v3, 0x0

    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v4, v3

    :goto_186
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_232

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/android/api/q;

    add-int/lit8 v4, v4, 0x1

    const-string v8, "list_id"

    invoke-virtual {v3}, Lcom/twitter/android/api/q;->a()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v8, "list_name"

    invoke-virtual {v3}, Lcom/twitter/android/api/q;->b()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "full_name"

    invoke-virtual {v3}, Lcom/twitter/android/api/q;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "description"

    invoke-virtual {v3}, Lcom/twitter/android/api/q;->d()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "members"

    invoke-virtual {v3}, Lcom/twitter/android/api/q;->e()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "subscribers"

    invoke-virtual {v3}, Lcom/twitter/android/api/q;->f()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "mode"

    invoke-virtual {v3}, Lcom/twitter/android/api/q;->g()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "creator_id"

    invoke-virtual {v3}, Lcom/twitter/android/api/q;->h()Lcom/twitter/android/api/ac;

    move-result-object v9

    iget-wide v9, v9, Lcom/twitter/android/api/ac;->a:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v8, "i_follow"

    invoke-virtual {v3}, Lcom/twitter/android/api/q;->i()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "hash"

    invoke-virtual {v3}, Lcom/twitter/android/api/q;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "is_last"

    if-ne v5, v4, :cond_230

    const-string v3, "0"

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_230

    const/4 v3, 0x1

    :goto_21b
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v6, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v3, "lists"

    const-string v8, "list_id"

    invoke-virtual {v2, v3, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_229
    .catchall {:try_start_15e .. :try_end_229} :catchall_22b

    goto/16 :goto_186

    :catchall_22b
    move-exception v3

    :try_start_22c
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
    :try_end_230
    .catchall {:try_start_22c .. :try_end_230} :catchall_4f

    :cond_230
    const/4 v3, 0x0

    goto :goto_21b

    :cond_232
    :try_start_232
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_235
    .catchall {:try_start_232 .. :try_end_235} :catchall_22b

    :try_start_235
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_238
    invoke-virtual {v13}, Ljava/util/HashMap;->size()I
    :try_end_23b
    .catchall {:try_start_235 .. :try_end_23b} :catchall_4f

    move-result v3

    if-lez v3, :cond_2f0

    :try_start_23e
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v13}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_24e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2ea

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/android/api/q;

    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    const-string v6, "list_name"

    invoke-virtual {v3}, Lcom/twitter/android/api/q;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "full_name"

    invoke-virtual {v3}, Lcom/twitter/android/api/q;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "description"

    invoke-virtual {v3}, Lcom/twitter/android/api/q;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "members"

    invoke-virtual {v3}, Lcom/twitter/android/api/q;->e()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "subscribers"

    invoke-virtual {v3}, Lcom/twitter/android/api/q;->f()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "mode"

    invoke-virtual {v3}, Lcom/twitter/android/api/q;->g()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "creator_id"

    invoke-virtual {v3}, Lcom/twitter/android/api/q;->h()Lcom/twitter/android/api/ac;

    move-result-object v7

    iget-wide v7, v7, Lcom/twitter/android/api/ac;->a:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v3}, Lcom/twitter/android/api/q;->i()I

    move-result v6

    if-eqz v6, :cond_2c1

    const-string v6, "i_follow"

    invoke-virtual {v3}, Lcom/twitter/android/api/q;->i()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2c1
    const-string v6, "hash"

    invoke-virtual {v3}, Lcom/twitter/android/api/q;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "lists"

    const-string v7, "list_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v3}, Lcom/twitter/android/api/q;->a()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v9

    invoke-virtual {v2, v6, v4, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2e3
    .catchall {:try_start_23e .. :try_end_2e3} :catchall_2e5

    goto/16 :goto_24e

    :catchall_2e5
    move-exception v3

    :try_start_2e6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
    :try_end_2ea
    .catchall {:try_start_2e6 .. :try_end_2ea} :catchall_4f

    :cond_2ea
    :try_start_2ea
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2ed
    .catchall {:try_start_2ea .. :try_end_2ed} :catchall_2e5

    :try_start_2ed
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_2f0
    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v13}, Ljava/util/HashMap;->size()I

    move-result v3

    add-int/2addr v2, v3

    if-lez v2, :cond_74

    iget-object v2, p0, Lcom/twitter/android/provider/ae;->e:Landroid/content/ContentResolver;

    sget-object v3, Lcom/twitter/android/provider/q;->a:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_303
    .catchall {:try_start_2ed .. :try_end_303} :catchall_4f

    goto/16 :goto_74
.end method

.method public final declared-synchronized a(JIJ)Z
    .registers 15

    const/4 v8, 0x0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "status_groups"

    sget-object v2, Lcom/twitter/android/provider/as;->a:[Ljava/lang/String;

    const-string v3, "owner_id=? AND type=? AND g_status_id=?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2b
    .catchall {:try_start_2 .. :try_end_2b} :catchall_3c

    move-result-object v1

    if-eqz v1, :cond_3f

    :try_start_2e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_37

    move-result v0

    :try_start_32
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3c

    :goto_35
    monitor-exit p0

    return v0

    :catchall_37
    move-exception v0

    :try_start_38
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3f
    move v0, v8

    goto :goto_35
.end method

.method public final declared-synchronized a(JJ)Z
    .registers 13

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "status_groups"

    const-string v4, "owner_id=? AND sender_id=? AND ref_id=?"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_2d

    move-result v2

    if-lez v2, :cond_2b

    :goto_29
    monitor-exit p0

    return v0

    :cond_2b
    move v0, v1

    goto :goto_29

    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(JLjava/lang/String;[BI)[B
    .registers 15

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    invoke-static {p4, p5}, Lcom/twitter/android/util/f;->a([BI)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_2c

    sget-boolean v1, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v1, :cond_2a

    const-string v1, "DatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to round bitmap corners for: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_2 .. :try_end_2a} :catchall_95

    :cond_2a
    :goto_2a
    monitor-exit p0

    return-object v0

    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x4

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "image"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "users"

    const-string v5, "user_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6f
    .catchall {:try_start_2c .. :try_end_6f} :catchall_95
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_6f} :catch_71

    move-object v0, v1

    goto :goto_2a

    :catch_71
    move-exception v1

    :try_start_72
    sget-boolean v1, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v1, :cond_2a

    const-string v1, "DatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not write user image: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catchall {:try_start_72 .. :try_end_94} :catchall_95

    goto :goto_2a

    :catchall_95
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()I
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_35

    move-result-object v1

    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v0, "stories"

    const-string v2, "query is null AND unread=2"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "unread"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "stories"

    const-string v3, "query is null"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_30

    :try_start_2b
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_35

    monitor-exit p0

    return v0

    :catchall_30
    move-exception v0

    :try_start_31
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_35
    .catchall {:try_start_31 .. :try_end_35} :catchall_35

    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(J)I
    .registers 9

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "search_queries"

    const-string v2, "query_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_21

    iget-object v1, p0, Lcom/twitter/android/provider/ae;->e:Landroid/content/ContentResolver;

    sget-object v2, Lcom/twitter/android/provider/w;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    :cond_21
    monitor-exit p0

    return v0

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Ljava/util/Collection;JIJZZLjava/lang/String;Z)I
    .registers 26

    monitor-enter p0

    :try_start_1
    sget-boolean v3, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v3, :cond_65

    const-string v3, "DatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mergeStatusGroups: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", owned by: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", of type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", read: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", merging older: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", timeline: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p10

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", next: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p9

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catchall {:try_start_1 .. :try_end_65} :catchall_ab

    :cond_65
    const/4 v3, -0x1

    move/from16 v0, p4

    if-eq v0, v3, :cond_70

    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-gez v3, :cond_73

    :cond_70
    const/4 v3, 0x0

    :goto_71
    monitor-exit p0

    return v3

    :cond_73
    :try_start_73
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_85

    if-eqz p8, :cond_83

    const/4 v3, 0x0

    move-wide/from16 v0, p2

    move/from16 v2, p4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/twitter/android/provider/ae;->a(JIZ)V

    :cond_83
    const/4 v3, 0x0

    goto :goto_71

    :cond_85
    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ae

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/android/api/aa;

    invoke-virtual {v3}, Lcom/twitter/android/api/aa;->b()Lcom/twitter/android/api/aa;

    move-result-object v5

    new-instance v6, Lcom/twitter/android/provider/aw;

    iget-wide v7, v5, Lcom/twitter/android/api/aa;->a:J

    iget-object v5, v5, Lcom/twitter/android/api/aa;->r:Lcom/twitter/android/api/PromotedContent;

    invoke-direct {v6, v7, v8, v5}, Lcom/twitter/android/provider/aw;-><init>(JLcom/twitter/android/api/PromotedContent;)V

    invoke-virtual {v11, v6, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_aa
    .catchall {:try_start_73 .. :try_end_aa} :catchall_ab

    goto :goto_8e

    :catchall_ab
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_ae
    :try_start_ae
    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "status_groups"

    sget-object v5, Lcom/twitter/android/provider/aj;->a:[Ljava/lang/String;

    const-string v6, "g_status_id"

    const-string v7, "owner_id=? AND type=? AND tag=?"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static/range {p5 .. p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v10, 0x0

    move-object/from16 v9, p1

    invoke-static/range {v3 .. v10}, Lcom/twitter/android/provider/ae;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/Collection;Ljava/util/Map;)Landroid/database/Cursor;
    :try_end_d8
    .catchall {:try_start_ae .. :try_end_d8} :catchall_ab

    move-result-object v7

    if-nez v7, :cond_dd

    const/4 v3, 0x0

    goto :goto_71

    :cond_dd
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_df
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :goto_e7
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_185

    const/4 v4, 0x0

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const/4 v4, 0x2

    invoke-interface {v7, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_15f

    const/4 v4, 0x2

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-static {v4}, Lcom/twitter/android/util/x;->a([B)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/twitter/android/api/PromotedContent;

    :goto_104
    new-instance v12, Lcom/twitter/android/provider/aw;

    invoke-direct {v12, v9, v10, v4}, Lcom/twitter/android/provider/aw;-><init>(JLcom/twitter/android/api/PromotedContent;)V

    invoke-virtual {v11, v12}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/twitter/android/api/aa;

    if-eqz v4, :cond_2f0

    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    if-eqz p10, :cond_11f

    const-string v9, "timeline"

    invoke-static/range {p10 .. p10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_11f
    iget-object v9, v4, Lcom/twitter/android/api/aa;->k:Lcom/twitter/android/api/aa;

    if-eqz v9, :cond_161

    const-string v9, "tweet_type"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_12d
    const-string v9, "ref_id"

    iget-wide v12, v4, Lcom/twitter/android/api/aa;->a:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v9, "sender_id"

    iget-object v4, v4, Lcom/twitter/android/api/aa;->m:Lcom/twitter/android/api/ac;

    iget-wide v12, v4, Lcom/twitter/android/api/ac;->a:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v8, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v4, 0x1

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const-string v4, "status_groups"

    const-string v12, "_id=?"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v13, v14

    invoke-virtual {v3, v4, v8, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v5

    :goto_15d
    move v5, v4

    goto :goto_e7

    :cond_15f
    const/4 v4, 0x0

    goto :goto_104

    :cond_161
    invoke-virtual {v4}, Lcom/twitter/android/api/aa;->c()Z

    move-result v9

    if-eqz v9, :cond_17a

    const-string v9, "tweet_type"

    const/4 v10, 0x4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_171
    .catchall {:try_start_df .. :try_end_171} :catchall_172

    goto :goto_12d

    :catchall_172
    move-exception v4

    :try_start_173
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v4
    :try_end_17a
    .catchall {:try_start_173 .. :try_end_17a} :catchall_ab

    :cond_17a
    :try_start_17a
    const-string v9, "tweet_type"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_12d

    :cond_185
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_188
    .catchall {:try_start_17a .. :try_end_188} :catchall_172

    :try_start_188
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    sget-boolean v4, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v4, :cond_1ac

    const-string v4, "DatabaseHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Updated "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " status groups."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1ac
    invoke-virtual {v11}, Ljava/util/LinkedHashMap;->size()I
    :try_end_1af
    .catchall {:try_start_188 .. :try_end_1af} :catchall_ab

    move-result v9

    if-lez v9, :cond_2e2

    :try_start_1b2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v11}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v7, v6

    :goto_1c3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/twitter/android/api/aa;

    const/4 v5, 0x0

    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    const-string v6, "owner_id"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v6, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "type"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v6, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "tag"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v6, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v11, "is_read"

    if-eqz p7, :cond_278

    const/4 v6, 0x1

    :goto_1f3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v8, v11, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "timeline"

    invoke-static/range {p10 .. p10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v8, v6, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v6, v4, Lcom/twitter/android/api/aa;->k:Lcom/twitter/android/api/aa;

    if-eqz v6, :cond_27b

    const-string v6, "tweet_type"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v6, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "g_status_id"

    iget-object v11, v4, Lcom/twitter/android/api/aa;->k:Lcom/twitter/android/api/aa;

    iget-wide v11, v11, Lcom/twitter/android/api/aa;->a:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v6, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :goto_21e
    const-string v6, "updated_at"

    iget-wide v11, v4, Lcom/twitter/android/api/aa;->e:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v6, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "ref_id"

    iget-wide v11, v4, Lcom/twitter/android/api/aa;->a:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v6, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "sender_id"

    iget-object v11, v4, Lcom/twitter/android/api/aa;->m:Lcom/twitter/android/api/ac;

    iget-wide v11, v11, Lcom/twitter/android/api/ac;->a:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v6, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v6, v4, Lcom/twitter/android/api/aa;->r:Lcom/twitter/android/api/PromotedContent;

    if-eqz v6, :cond_2ed

    const-string v5, "pc"

    iget-object v6, v4, Lcom/twitter/android/api/aa;->r:Lcom/twitter/android/api/PromotedContent;

    invoke-static {v6}, Lcom/twitter/android/util/x;->a(Ljava/lang/Object;)[B

    move-result-object v6

    invoke-virtual {v8, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const/4 v5, 0x1

    iget-object v4, v4, Lcom/twitter/android/api/aa;->r:Lcom/twitter/android/api/PromotedContent;

    invoke-virtual {v4}, Lcom/twitter/android/api/PromotedContent;->a()Z

    move-result v4

    if-eqz v4, :cond_2ed

    const/4 v4, 0x3

    :goto_25a
    if-eqz v4, :cond_265

    const-string v5, "g_flags"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_265
    const-string v4, "status_groups"

    const-string v5, "g_status_id"

    invoke-virtual {v3, v4, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v11, 0x0

    cmp-long v4, v4, v11

    if-lez v4, :cond_2b3

    const/4 v4, 0x1

    :goto_274
    add-int/2addr v4, v7

    move v7, v4

    goto/16 :goto_1c3

    :cond_278
    const/4 v6, 0x0

    goto/16 :goto_1f3

    :cond_27b
    invoke-virtual {v4}, Lcom/twitter/android/api/aa;->c()Z

    move-result v6

    if-eqz v6, :cond_29c

    const-string v6, "tweet_type"

    const/4 v11, 0x4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v6, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "g_status_id"

    iget-wide v11, v4, Lcom/twitter/android/api/aa;->a:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v6, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_296
    .catchall {:try_start_1b2 .. :try_end_296} :catchall_297

    goto :goto_21e

    :catchall_297
    move-exception v4

    :try_start_298
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
    :try_end_29c
    .catchall {:try_start_298 .. :try_end_29c} :catchall_ab

    :cond_29c
    :try_start_29c
    const-string v6, "tweet_type"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v6, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "g_status_id"

    iget-wide v11, v4, Lcom/twitter/android/api/aa;->a:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v6, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_21e

    :cond_2b3
    const/4 v4, 0x0

    goto :goto_274

    :cond_2b5
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2b8
    .catchall {:try_start_29c .. :try_end_2b8} :catchall_297

    :try_start_2b8
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    sget-boolean v3, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v3, :cond_2d3

    const-string v3, "DatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Inserted new status groups: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d3
    if-nez p9, :cond_2df

    move-object v3, p0

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move-wide/from16 v7, p5

    invoke-direct/range {v3 .. v8}, Lcom/twitter/android/provider/ae;->b(JIJ)V

    :cond_2df
    :goto_2df
    move v3, v9

    goto/16 :goto_71

    :cond_2e2
    if-eqz p8, :cond_2df

    const/4 v3, 0x0

    move-wide/from16 v0, p2

    move/from16 v2, p4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/twitter/android/provider/ae;->a(JIZ)V
    :try_end_2ec
    .catchall {:try_start_2b8 .. :try_end_2ec} :catchall_ab

    goto :goto_2df

    :cond_2ed
    move v4, v5

    goto/16 :goto_25a

    :cond_2f0
    move v4, v5

    goto/16 :goto_15d
.end method

.method public final declared-synchronized b([J)I
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "status_groups"

    const-string v2, "g_status_id=?"

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/twitter/android/provider/ae;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[J)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_f

    move-result v0

    monitor-exit p0

    return v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(I)J
    .registers 11

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "activities"

    sget-object v2, Lcom/twitter/android/provider/ah;->a:[Ljava/lang/String;

    const-string v3, "type=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "max_position DESC"

    const-string v8, "1"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_3c

    move-result-object v2

    if-eqz v2, :cond_34

    :try_start_21
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, 0x2

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_37

    move-result-wide v0

    :try_start_2c
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_3c

    :goto_2f
    monitor-exit p0

    return-wide v0

    :cond_31
    :try_start_31
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_34
    const-wide/16 v0, 0x0

    goto :goto_2f

    :catchall_37
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_3c
    .catchall {:try_start_31 .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(JI)V
    .registers 13

    const/4 v8, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "users"

    sget-object v2, Lcom/twitter/android/provider/ak;->a:[Ljava/lang/String;

    const-string v3, "user_id=?"

    new-array v4, v8, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-direct {p0, v0, p3, v8}, Lcom/twitter/android/provider/ae;->a(Landroid/database/Cursor;IZ)V

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_23
    return-void
.end method

.method public final declared-synchronized b(JJ)V
    .registers 14

    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v0, :cond_23

    const-string v0, "DatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Removing user: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", owned by: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v6, p0, Lcom/twitter/android/provider/ae;->e:Landroid/content/ContentResolver;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/provider/ae;->a(Landroid/database/sqlite/SQLiteDatabase;JJ)V

    const-string v0, "status_groups"

    const-string v2, "owner_id=? AND sender_id=? AND type IN (0,12,14,5,2)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v7, v3, v4

    const/4 v4, 0x1

    aput-object v8, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5c

    sget-object v0, Lcom/twitter/android/provider/z;->i:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v6, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    sget-object v0, Lcom/twitter/android/provider/z;->g:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v6, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    sget-object v0, Lcom/twitter/android/provider/z;->j:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v6, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_5c
    const-string v0, "messages"

    const-string v2, "sender_id=? OR recipient_id=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v8, v3, v4

    const/4 v4, 0x1

    aput-object v8, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_72

    invoke-direct {p0}, Lcom/twitter/android/provider/ae;->h()V

    :cond_72
    const-string v0, "user_groups"

    const-string v2, "owner_id=? AND user_id=? AND type IN (8,13,11,12,1,0,9)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v7, v3, v4

    const/4 v4, 0x1

    aput-object v8, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_af

    sget-object v0, Lcom/twitter/android/provider/ab;->m:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    sget-object v0, Lcom/twitter/android/provider/ab;->n:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    sget-object v0, Lcom/twitter/android/provider/ab;->o:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    sget-object v0, Lcom/twitter/android/provider/ab;->p:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    sget-object v0, Lcom/twitter/android/provider/ab;->g:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    sget-object v0, Lcom/twitter/android/provider/ab;->f:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    sget-object v0, Lcom/twitter/android/provider/ac;->a:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_af
    .catchall {:try_start_1 .. :try_end_af} :catchall_b1

    :cond_af
    monitor-exit p0

    return-void

    :catchall_b1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(I)I
    .registers 8

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "status_groups"

    const-string v2, "type=? AND is_read=? AND pc NOT NULL"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_22

    move-result v0

    monitor-exit p0

    return v0

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c([J)I
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "messages"

    const-string v2, "msg_id=?"

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/twitter/android/provider/ae;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[J)I

    move-result v0

    if-lez v0, :cond_12

    invoke-direct {p0}, Lcom/twitter/android/provider/ae;->h()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    :cond_12
    monitor-exit p0

    return v0

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/twitter/android/provider/ae;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(J)V
    .registers 9

    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v0, :cond_19

    const-string v0, "DatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Removing direct message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "messages"

    const-string v2, "msg_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_34

    invoke-direct {p0}, Lcom/twitter/android/provider/ae;->h()V
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_36

    :cond_34
    monitor-exit p0

    return-void

    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c(JI)V
    .registers 13

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "users"

    sget-object v2, Lcom/twitter/android/provider/ak;->a:[Ljava/lang/String;

    const-string v3, "user_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-direct {p0, v0, p3, v8}, Lcom/twitter/android/provider/ae;->a(Landroid/database/Cursor;IZ)V

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_23
    return-void
.end method

.method public final declared-synchronized c(JJ)V
    .registers 14

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lists"

    const-string v3, "list_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v2, "user_groups"

    const-string v3, "type=? AND tag=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_33

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-direct {p0, p1, p2, v3, v4}, Lcom/twitter/android/provider/ae;->a(JII)V

    :cond_33
    const-string v3, "user_groups"

    const-string v4, "type=? AND tag=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_50

    const/4 v4, 0x5

    const/4 v5, 0x1

    invoke-direct {p0, p1, p2, v4, v5}, Lcom/twitter/android/provider/ae;->a(JII)V

    :cond_50
    const-string v4, "status_groups"

    const-string v5, "type=? AND tag=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const/16 v8, 0x9

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-virtual {v0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_6f

    const/16 v1, 0x9

    const/4 v4, 0x3

    invoke-direct {p0, p1, p2, v1, v4}, Lcom/twitter/android/provider/ae;->a(JII)V

    :cond_6f
    iget-object v1, p0, Lcom/twitter/android/provider/ae;->e:Landroid/content/ContentResolver;

    if-lez v0, :cond_76

    invoke-direct {p0}, Lcom/twitter/android/provider/ae;->g()V

    :cond_76
    add-int v0, v2, v3

    if-lez v0, :cond_80

    sget-object v0, Lcom/twitter/android/provider/ab;->b:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_80
    sget-object v0, Lcom/twitter/android/provider/q;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_86
    .catchall {:try_start_1 .. :try_end_86} :catchall_88

    monitor-exit p0

    return-void

    :catchall_88
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d(J)I
    .registers 12

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "users"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "friendship"

    aput-object v3, v2, v8

    const-string v3, "user_id=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_31

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :goto_2b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_2e
    return v0

    :cond_2f
    move v0, v8

    goto :goto_2b

    :cond_31
    move v0, v8

    goto :goto_2e
.end method

.method public final declared-synchronized d(JJ)I
    .registers 11

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "status_groups"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tweet_type=2 AND ref_id=? AND owner_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_26

    move-result v0

    monitor-exit p0

    return v0

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d([J)I
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "status_groups"

    const-string v2, "_id=?"

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/twitter/android/provider/ae;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[J)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_f

    move-result v0

    monitor-exit p0

    return v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d(JI)J
    .registers 13

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "status_groups_view"

    sget-object v2, Lcom/twitter/android/provider/au;->a:[Ljava/lang/String;

    const-string v3, "owner_id=? AND type=? AND timeline=1 AND pc IS NULL"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "updated_at DESC, _id ASC"

    const-string v8, "1"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_44

    move-result-object v2

    if-eqz v2, :cond_3c

    :try_start_29
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_39

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_3f

    move-result-wide v0

    :try_start_34
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_44

    :goto_37
    monitor-exit p0

    return-wide v0

    :cond_39
    :try_start_39
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3c
    const-wide/16 v0, 0x0

    goto :goto_37

    :catchall_3f
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_44
    .catchall {:try_start_39 .. :try_end_44} :catchall_44

    :catchall_44
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .registers 8

    monitor-enter p0

    :try_start_1
    sget-boolean v0, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v0, :cond_c

    const-string v0, "DatabaseHelper"

    const-string v1, "Marking Inbox messages as read."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "is_read"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "messages"

    const-string v3, "type=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3c

    iget-object v0, p0, Lcom/twitter/android/provider/ae;->e:Landroid/content/ContentResolver;

    sget-object v1, Lcom/twitter/android/provider/u;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_3e

    :cond_3c
    monitor-exit p0

    return-void

    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d(I)V
    .registers 9

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    const-string v2, "tag"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "activities"

    const-string v3, "type=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_29

    monitor-exit p0

    return-void

    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()I
    .registers 11

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "messages"

    sget-object v2, Lcom/twitter/android/provider/ao;->a:[Ljava/lang/String;

    const-string v3, "type=? AND is_read=0"

    new-array v4, v6, [Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v9

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_20

    move v0, v9

    :goto_1f
    return v0

    :cond_20
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sget-boolean v2, Lcom/twitter/android/provider/ae;->a:Z

    if-eqz v2, :cond_3c

    const-string v2, "DatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getUnreadMessages: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1f
.end method

.method public final e(I)I
    .registers 11

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "activities"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v8

    const-string v3, "type=? AND tag=1"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2e

    :try_start_21
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_29

    move-result v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_28
    return v0

    :catchall_29
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2e
    move v0, v8

    goto :goto_28
.end method

.method public final declared-synchronized e(JI)J
    .registers 13

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "status_groups_view"

    sget-object v2, Lcom/twitter/android/provider/au;->a:[Ljava/lang/String;

    const-string v3, "owner_id=? AND type=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "updated_at ASC, _id DESC"

    const-string v8, "1"

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_43

    move-result-object v2

    if-eqz v2, :cond_3b

    :try_start_28
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_38

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_3e

    move-result-wide v0

    :try_start_33
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_43

    :goto_36
    monitor-exit p0

    return-wide v0

    :cond_38
    :try_start_38
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3b
    const-wide/16 v0, 0x0

    goto :goto_36

    :catchall_3e
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_43
    .catchall {:try_start_38 .. :try_end_43} :catchall_43

    :catchall_43
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e(J)[B
    .registers 11

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "users"

    sget-object v2, Lcom/twitter/android/provider/al;->a:[Ljava/lang/String;

    const-string v3, "user_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_1e

    :goto_1d
    return-object v5

    :cond_1e
    :try_start_1e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_31

    move-result-object v5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1d

    :cond_2d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1d

    :catchall_31
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public final f(JI)I
    .registers 14

    const/4 v9, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "status_groups_view"

    sget-object v2, Lcom/twitter/android/provider/av;->a:[Ljava/lang/String;

    const-string v3, "owner_id=? AND type=? AND is_read=0"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v9

    const/4 v6, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2d

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_2c
    return v0

    :cond_2d
    move v0, v9

    goto :goto_2c
.end method

.method public final declared-synchronized f()V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "scribe"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f(J)V
    .registers 14

    const/4 v0, 0x0

    monitor-enter p0

    const/4 v1, 0x1

    :try_start_3
    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v1, "DatabaseHelper"

    const-string v4, "Begin cleanup."

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_ae

    :try_start_17
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v1, "status_groups"

    const-string v4, "type IN (9,2,13,10,6,7) AND owner_id=?"

    invoke-virtual {v3, v1, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    const-string v4, "status_groups"

    const-string v5, "owner_id!=?"

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v1, v4

    const-string v4, "user_groups"

    const-string v5, "owner_id!=?"

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v1, v4

    sget-object v4, Lcom/twitter/android/provider/ae;->b:[I

    array-length v5, v4

    :goto_39
    if-ge v0, v5, :cond_53

    aget v6, v4, v0

    const-string v7, "user_groups"

    const-string v8, "type=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v10

    invoke-virtual {v3, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v1, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    :cond_53
    const-string v0, "search_queries"

    const-string v4, "type=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    const-string v1, "cursors"

    const-string v4, "owner_id!=?"

    invoke-virtual {v3, v1, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "lists"

    const-string v4, "owner_id!=?"

    invoke-virtual {v3, v1, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "statuses"

    const-string v2, "status_id NOT IN (SELECT DISTINCT g_status_id FROM status_groups)"

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "users"

    const-string v2, "user_id NOT IN (SELECT DISTINCT author_id FROM statuses) AND user_id NOT IN (SELECT DISTINCT sender_id FROM status_groups) AND user_id NOT IN (SELECT DISTINCT user_id FROM user_groups) AND user_id NOT IN (SELECT DISTINCT sender_id FROM messages) AND user_id NOT IN (SELECT DISTINCT recipient_id FROM messages) AND user_id NOT IN (SELECT DISTINCT creator_id FROM lists)"

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_90
    .catchall {:try_start_17 .. :try_end_90} :catchall_a9

    :try_start_90
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string v1, "DatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cleaned up: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a7
    .catchall {:try_start_90 .. :try_end_a7} :catchall_ae

    monitor-exit p0

    return-void

    :catchall_a9
    move-exception v0

    :try_start_aa
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_ae
    .catchall {:try_start_aa .. :try_end_ae} :catchall_ae

    :catchall_ae
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g(J)V
    .registers 10

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/twitter/android/provider/ae;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6d

    move-result-object v1

    :try_start_6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "user_groups"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "cursors"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "users"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "lists"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "messages"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "search_queries"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "scribe"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "activities"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "stories"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "tokens"

    aput-object v4, v2, v3

    array-length v3, v2

    :goto_42
    if-ge v0, v3, :cond_4e

    aget-object v4, v2, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    :cond_4e
    const-string v0, "DELETE FROM statuses WHERE status_id IN ( SELECT g_status_id FROM status_groups WHERE type != 11)"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DELETE FROM status_groups WHERE type != 11"

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5b
    .catchall {:try_start_6 .. :try_end_5b} :catchall_68

    :try_start_5b
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    iget-object v0, p0, Lcom/twitter/android/provider/ae;->e:Landroid/content/ContentResolver;

    sget-object v1, Lcom/twitter/android/provider/o;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_66
    .catchall {:try_start_5b .. :try_end_66} :catchall_6d

    monitor-exit p0

    return-void

    :catchall_68
    move-exception v0

    :try_start_69
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_6d
    .catchall {:try_start_69 .. :try_end_6d} :catchall_6d

    :catchall_6d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 16

    const/16 v0, 0xd

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "CREATE TABLE users (_id INTEGER PRIMARY KEY,user_id INT UNIQUE NOT NULL,username TEXT,name TEXT,description TEXT,web_url TEXT,bg_color INT,location TEXT,protected INT,verified INT,followers INT,friends INT,statuses INT,geo_enabled INT,profile_created INT,image_url TEXT,hash INT,updated INT,friendship INT,friendship_time INT,favorites INT DEFAULT 0,image BLOB);"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string v2, "CREATE TABLE user_groups (_id INTEGER PRIMARY KEY,type INT,tag INT,owner_id INT,user_id INT,is_last INT,pc BLOB,g_flags INT);"

    aput-object v2, v1, v0

    const/4 v0, 0x2

    const-string v2, "CREATE TABLE cursors (_id INTEGER PRIMARY KEY,kind INT,type INT,owner_id INT,next TEXT);"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-string v2, "CREATE TABLE statuses (_id INTEGER PRIMARY KEY,status_id INT UNIQUE NOT NULL,author_id INT,content TEXT,source TEXT,source_url TEXT,created INT,in_r_user_id INT,in_r_status_id INT,favorited INT,latitude TEXT,longitude TEXT,place_type INT,place_name TEXT,place_bounding TEXT,place_id TEXT,entities TEXT,retweet_count INT,r_content TEXT,cards BLOB,flags INT);"

    aput-object v2, v1, v0

    const/4 v0, 0x4

    const-string v2, "CREATE TABLE status_groups (_id INTEGER PRIMARY KEY,tweet_type INT DEFAULT 0,type INT,sender_id INT,owner_id INT,ref_id INT,tag INT,g_status_id INT,is_read INT,is_last INT,updated_at INT,timeline INT,pc BLOB,g_flags INT);"

    aput-object v2, v1, v0

    const/4 v0, 0x5

    const-string v2, "CREATE TABLE messages (_id INTEGER PRIMARY KEY,type INT,msg_id INT UNIQUE NOT NULL,content TEXT,created INT,sender_id INT,recipient_id INT,thread TEXT,is_read INT,entities BLOB,is_last INT);"

    aput-object v2, v1, v0

    const/4 v0, 0x6

    const-string v2, "CREATE TABLE search_queries (_id INTEGER PRIMARY KEY,type INT,name TEXT NOT NULL,query TEXT NOT NULL,query_id INT,time INT,latitude REAL,longitude REAL,radius REAL,location TEXT,pc BLOB);"

    aput-object v2, v1, v0

    const/4 v0, 0x7

    const-string v2, "CREATE TABLE lists (_id INTEGER PRIMARY KEY,owner_id INT,type INT,list_id INT,list_name TEXT,full_name TEXT,description TEXT,subscribers INT,members INT,mode INT,creator_id INT,i_follow INT,is_last INT,hash INT)"

    aput-object v2, v1, v0

    const/16 v0, 0x8

    const-string v2, "CREATE TABLE scribe (_id INTEGER PRIMARY KEY,log BLOB);"

    aput-object v2, v1, v0

    const/16 v0, 0x9

    const-string v2, "CREATE TABLE activities (_id INTEGER PRIMARY KEY,type INT,event INT,created_at INT,max_position INT,min_position INT,sources_size INT,source_type INT,sources BLOB,targets_size INT,target_type INT,targets BLOB,target_objects_size INT,target_object_type INT,target_objects BLOB,is_last INT,tag INT);"

    aput-object v2, v1, v0

    const/16 v0, 0xa

    const-string v2, "CREATE TABLE stories (_id INTEGER PRIMARY KEY,type INT,score FLOAT,query TEXT,identifier INT,unread INT DEFAULT 0,data BLOB,social_proof BLOB);"

    aput-object v2, v1, v0

    const/16 v0, 0xb

    const-string v2, "CREATE TABLE tokens (_id INTEGER PRIMARY KEY,text TEXT,weight INT,type INT,ref_id INT);"

    aput-object v2, v1, v0

    const/16 v0, 0xc

    const-string v2, "CREATE TABLE notifications (_id INTEGER PRIMARY KEY,type INT,notif_id INT,source_user_name TEXT);"

    aput-object v2, v1, v0

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4c
    if-ge v0, v2, :cond_56

    aget-object v3, v1, v0

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    :cond_56
    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "CREATE INDEX user_groups_idx ON user_groups (type,owner_id,user_id);"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string v2, "CREATE INDEX status_groups_idx ON status_groups (type,owner_id,tag,g_status_id);"

    aput-object v2, v1, v0

    const/4 v0, 0x2

    const-string v2, "CREATE INDEX user_cursors_index ON cursors (kind,type,owner_id);"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-string v2, "CREATE INDEX search_queries_index ON search_queries (type,name,query);"

    aput-object v2, v1, v0

    const/4 v0, 0x4

    const-string v2, "CREATE INDEX messages_index ON messages (thread);"

    aput-object v2, v1, v0

    array-length v2, v1

    const/4 v0, 0x0

    :goto_74
    if-ge v0, v2, :cond_7e

    aget-object v3, v1, v0

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_74

    :cond_7e
    const/16 v0, 0xb

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "CREATE VIEW status_groups_view AS SELECT status_groups._id AS _id,status_groups.owner_id AS owner_id,status_groups.type AS type,status_groups.tag AS tag,status_groups.g_status_id AS g_status_id,status_groups.is_read AS is_read,status_groups.is_last AS is_last,status_groups.timeline AS timeline,status_groups.sender_id AS sender_id,status_groups.tweet_type AS tweet_type,status_groups.ref_id AS ref_id,status_groups.updated_at AS updated_at,status_groups.pc AS pc,status_groups.g_flags AS g_flags,statuses.author_id AS author_id,statuses.content AS content,statuses.source AS source,statuses.source_url AS source_url,statuses.created AS created,statuses.in_r_user_id AS in_r_user_id,statuses.in_r_status_id AS in_r_status_id,statuses.favorited AS favorited,statuses.latitude AS latitude,statuses.longitude AS longitude,statuses.place_type AS place_type,statuses.place_name AS place_name,statuses.place_bounding AS place_bounding,statuses.place_id AS place_id,statuses.entities AS entities,statuses.retweet_count AS retweet_count,statuses.r_content AS r_content,statuses.flags AS flags,statuses.cards AS cards,user.username AS username,user.name AS name,user.image_url AS image_url,user.image AS image,user.protected AS protected,user.verified AS verified,sender.username AS s_username,sender.name AS s_name,sender.image_url AS s_profile_image_url,sender.protected AS s_protected,sender.image AS s_image FROM status_groups LEFT JOIN statuses ON status_groups.g_status_id=statuses.status_id LEFT JOIN users AS user ON statuses.author_id=user.user_id LEFT JOIN users AS sender ON status_groups.sender_id=sender.user_id;"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string v2, "CREATE VIEW user_groups_view AS SELECT user_groups._id AS _id,user_groups.type AS type,user_groups.tag AS tag,user_groups.owner_id AS owner_id,user_groups.user_id AS user_id,user_groups.is_last AS is_last,user_groups.pc AS pc,user_groups.g_flags AS g_flags,user.username AS username,user.name AS name,user.description AS description,user.web_url AS web_url,user.bg_color AS bg_color,user.location AS location,user.protected AS protected,user.verified AS verified,user.profile_created AS profile_created,user.image_url AS image_url,user.followers AS followers,user.friends AS friends,user.statuses AS statuses,user.geo_enabled AS geo_enabled,user.image AS image,user.friendship AS friendship,user.friendship_time AS friendship_time FROM user_groups LEFT JOIN users AS user ON user_groups.user_id=user.user_id;"

    aput-object v2, v1, v0

    const/4 v0, 0x2

    const-string v2, "CREATE VIEW messages_received_view AS SELECT messages._id AS _id,messages.type AS type,messages.msg_id AS msg_id,messages.content AS content,messages.created AS created,messages.sender_id AS sender_id,messages.recipient_id AS recipient_id,messages.is_read AS is_read,messages.is_last AS is_last,users.username AS username,users.name AS name,users.image_url AS image_url,users.image AS image FROM messages,users WHERE messages.sender_id=users.user_id;"

    aput-object v2, v1, v0

    const/4 v0, 0x3

    const-string v2, "CREATE VIEW messages_sent_view AS SELECT messages._id AS _id,messages.type AS type,messages.msg_id AS msg_id,messages.content AS content,messages.created AS created,messages.sender_id AS sender_id,messages.recipient_id AS recipient_id,messages.is_read AS is_read,messages.is_last AS is_last,users.username AS username,users.name AS name,users.image_url AS image_url,users.image AS image FROM messages,users WHERE messages.recipient_id=users.user_id;"

    aput-object v2, v1, v0

    const/4 v0, 0x4

    const-string v2, "CREATE VIEW messages_threaded AS SELECT * FROM (SELECT messages.*,r.username r_username,r.name r_name,r.image_url r_profile_image_url,s.username s_username,s.name s_name,s.image_url s_profile_image_url FROM messages LEFT JOIN users r ON recipient_id=r.user_id LEFT JOIN users s ON sender_id=s.user_id ORDER BY created ASC) GROUP BY thread;"

    aput-object v2, v1, v0

    const/4 v0, 0x5

    const-string v2, "CREATE VIEW messages_conversation AS SELECT messages.*,s.username s_username,s.name s_name,s.image_url s_profile_image_url FROM messages LEFT JOIN users s ON sender_id=s.user_id;"

    aput-object v2, v1, v0

    const/4 v0, 0x6

    const-string v2, "CREATE VIEW lists_view AS SELECT lists._id AS _id,lists.owner_id AS owner_id,lists.type AS type,lists.list_id AS list_id,lists.list_name AS list_name,lists.full_name AS full_name,lists.description AS description,lists.subscribers AS subscribers,lists.members AS members,lists.mode AS mode,lists.creator_id AS creator_id,lists.i_follow AS i_follow,lists.is_last AS is_last,users.username AS username,users.name AS name,users.image_url AS image_url,users.image AS image FROM lists,users WHERE lists.creator_id=users.user_id;"

    aput-object v2, v1, v0

    const/4 v0, 0x7

    const-string v2, "CREATE VIEW status_groups_retweets_view AS SELECT status_groups_view.*, retweets.* FROM status_groups_view LEFT JOIN ( SELECT g_status_id AS rt_orig_status_id,ref_id AS rt_orig_ref_id FROM status_groups_view WHERE type=0 AND tweet_type=1 AND sender_id=owner_id GROUP BY rt_orig_status_id) AS retweets ON (retweets.rt_orig_status_id=status_groups_view.g_status_id);"

    aput-object v2, v1, v0

    const/16 v0, 0x8

    const-string v2, "CREATE VIEW slug_users_view AS SELECT search_queries._id AS _id,search_queries.name AS name,search_queries.query AS query,search_queries.query_id AS query_id,user_groups_view.username AS username,user_groups_view.user_id AS user_id,user_groups_view.image_url AS image_url,user_groups_view.image AS image FROM search_queries LEFT JOIN user_groups_view ON search_queries.query_id=user_groups_view.tag WHERE user_groups_view.type=6;"

    aput-object v2, v1, v0

    const/16 v0, 0x9

    const-string v2, "CREATE VIEW user_recommendations_view AS SELECT u.*,c.user_id AS conn_user_id,c.username AS conn_username,c.name AS conn_name FROM user_groups_view AS u LEFT OUTER JOIN user_groups_view AS c ON u.user_id=c.tag WHERE (u.type=9 OR u.type=10) AND u.tag=-1 ORDER BY u._id"

    aput-object v2, v1, v0

    const/16 v0, 0xa

    const-string v2, "CREATE VIEW tokens_user_view AS SELECT tokens.text AS text,tokens.weight AS graph_weight,tokens.type AS type,tokens.ref_id AS user_id,users.username AS username,users.name AS name,users.location AS location,users.verified AS verified,users.profile_created AS profile_created,users.image_url AS image_url FROM tokens AS tokens LEFT JOIN users AS users ON tokens.ref_id=users.user_id;"

    aput-object v2, v1, v0

    array-length v2, v1

    const/4 v0, 0x0

    :goto_be
    if-ge v0, v2, :cond_c8

    aget-object v3, v1, v0

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_be

    :cond_c8
    const-string v0, "CREATE TRIGGER user_tokens_delete_trigger AFTER DELETE ON users FOR EACH ROW BEGIN DELETE FROM tokens WHERE tokens.type=4 AND tokens.ref_id=OLD.user_id;END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/provider/ae;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->databaseList()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1ec

    const-string v1, "twitter.db"

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ec

    :try_start_e2
    new-instance v0, Lcom/twitter/android/provider/ae;

    iget-object v1, p0, Lcom/twitter/android/provider/ae;->d:Landroid/content/Context;

    const-string v2, "twitter.db"

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/android/provider/ae;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-virtual {v0}, Lcom/twitter/android/provider/ae;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "status_groups_view"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "content"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "author_id"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "in_r_status_id"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "entities"

    aput-object v4, v2, v3

    const-string v3, "type=11"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_113
    .catchall {:try_start_e2 .. :try_end_113} :catchall_17a

    move-result-object v4

    const/4 v1, 0x0

    if-eqz v4, :cond_1ed

    :try_start_117
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v1, v1, [Lcom/twitter/android/provider/m;

    const/4 v2, 0x0

    :goto_11e
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_14b

    new-instance v5, Lcom/twitter/android/provider/m;

    invoke-direct {v5}, Lcom/twitter/android/provider/m;-><init>()V

    const/4 v3, 0x0

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/twitter/android/provider/m;->d:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/twitter/android/provider/m;->q:J

    const/4 v3, 0x2

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/twitter/android/provider/m;->j:J

    const/4 v3, 0x3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    iput-object v3, v5, Lcom/twitter/android/provider/m;->y:[B

    add-int/lit8 v3, v2, 0x1

    aput-object v5, v1, v2
    :try_end_149
    .catchall {:try_start_117 .. :try_end_149} :catchall_175

    move v2, v3

    goto :goto_11e

    :cond_14b
    :try_start_14b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    move-object v12, v1

    :goto_14f
    if-eqz v12, :cond_185

    array-length v13, v12

    const/4 v1, 0x0

    move v11, v1

    :goto_154
    if-ge v11, v13, :cond_185

    aget-object v1, v12, v11

    if-eqz v1, :cond_171

    iget-object v2, v1, Lcom/twitter/android/provider/m;->y:[B

    if-nez v2, :cond_183

    iget-object v2, v1, Lcom/twitter/android/provider/m;->y:[B

    invoke-static {v2}, Lcom/twitter/android/api/TweetEntities;->a([B)Lcom/twitter/android/api/TweetEntities;

    move-result-object v10

    :goto_164
    const-wide/16 v3, 0x0

    iget-object v5, v1, Lcom/twitter/android/provider/m;->d:Ljava/lang/String;

    iget-wide v6, v1, Lcom/twitter/android/provider/m;->q:J

    iget-wide v8, v1, Lcom/twitter/android/provider/m;->j:J

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v10}, Lcom/twitter/android/provider/ae;->a(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;JJLcom/twitter/android/api/TweetEntities;)J

    :cond_171
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto :goto_154

    :catchall_175
    move-exception v0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_17a
    .catchall {:try_start_14b .. :try_end_17a} :catchall_17a

    :catchall_17a
    move-exception v0

    iget-object v1, p0, Lcom/twitter/android/provider/ae;->d:Landroid/content/Context;

    const-string v2, "twitter.db"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    throw v0

    :cond_183
    const/4 v10, 0x0

    goto :goto_164

    :cond_185
    :try_start_185
    iget-object v1, p0, Lcom/twitter/android/provider/ae;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/twitter/android/provider/a;->a(Landroid/content/Context;)Lcom/twitter/android/provider/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/android/provider/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "name"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "value"

    aput-object v3, v2, v1

    const-string v1, "user_values"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1e5

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1ac
    .catchall {:try_start_185 .. :try_end_1ac} :catchall_17a

    :goto_1ac
    :try_start_1ac
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1dc

    new-instance v0, Landroid/content/ContentValues;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    const-string v2, "name"

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "value"

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "user_values"

    const-string v3, "name"

    invoke-virtual {v8, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1d3
    .catchall {:try_start_1ac .. :try_end_1d3} :catchall_1d4

    goto :goto_1ac

    :catchall_1d4
    move-exception v0

    :try_start_1d5
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_1dc
    .catchall {:try_start_1d5 .. :try_end_1dc} :catchall_17a

    :cond_1dc
    :try_start_1dc
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1df
    .catchall {:try_start_1dc .. :try_end_1df} :catchall_1d4

    :try_start_1df
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1e5
    .catchall {:try_start_1df .. :try_end_1e5} :catchall_17a

    :cond_1e5
    iget-object v0, p0, Lcom/twitter/android/provider/ae;->d:Landroid/content/Context;

    const-string v1, "twitter.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    :cond_1ec
    return-void

    :cond_1ed
    move-object v12, v1

    goto/16 :goto_14f
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 10

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v0, 0x1

    if-ne p2, v0, :cond_fb

    const-string v0, "CREATE TABLE scribe (_id INTEGER PRIMARY KEY,log BLOB);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move v0, v5

    :goto_e
    if-ne v0, v5, :cond_16

    const-string v0, "CREATE VIEW status_groups_retweets_view AS SELECT status_groups_view.*, retweets.* FROM status_groups_view LEFT JOIN ( SELECT g_status_id AS rt_orig_status_id,ref_id AS rt_orig_ref_id FROM status_groups_view WHERE type=0 AND tweet_type=1 AND sender_id=owner_id GROUP BY rt_orig_status_id) AS retweets ON (retweets.rt_orig_status_id=status_groups_view.g_status_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move v0, v4

    :cond_16
    if-ne v0, v4, :cond_3c

    const-string v0, "CREATE TABLE activities (_id INTEGER PRIMARY KEY,type INT,event INT,created_at INT,max_position INT,min_position INT,sources_size INT,source_type INT,sources BLOB,targets_size INT,target_type INT,targets BLOB,target_objects_size INT,target_object_type INT,target_objects BLOB,is_last INT,tag INT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE stories (_id INTEGER PRIMARY KEY,type INT,score FLOAT,query TEXT,identifier INT,unread INT DEFAULT 0,data BLOB,social_proof BLOB);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE VIEW slug_users_view AS SELECT search_queries._id AS _id,search_queries.name AS name,search_queries.query AS query,search_queries.query_id AS query_id,user_groups_view.username AS username,user_groups_view.user_id AS user_id,user_groups_view.image_url AS image_url,user_groups_view.image AS image FROM search_queries LEFT JOIN user_groups_view ON search_queries.query_id=user_groups_view.tag WHERE user_groups_view.type=6;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE users ADD COLUMN bg_color INT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS photos;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS search_results;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP VIEW IF EXISTS search_results_view;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move v0, v3

    :cond_3c
    if-ne v0, v3, :cond_3f

    move v0, v2

    :cond_3f
    if-ne v0, v2, :cond_53

    const-string v0, "ALTER TABLE users ADD COLUMN friendship_time INT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    if-ne p2, v2, :cond_52

    const-string v0, "ALTER TABLE stories  ADD COLUMN identifier INT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE stories  ADD COLUMN unread INT DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_52
    move v0, v1

    :cond_53
    if-ne v0, v1, :cond_5d

    if-ne p2, v1, :cond_5c

    const-string v0, "ALTER TABLE activities ADD COLUMN is_last INT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_5c
    const/4 v0, 0x7

    :cond_5d
    const/4 v1, 0x7

    if-ne v0, v1, :cond_62

    const/16 v0, 0x8

    :cond_62
    const/16 v1, 0x8

    if-ne v0, v1, :cond_ab

    const-string v0, "DELETE FROM stories"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE statuses ADD COLUMN flags INT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE statuses ADD COLUMN r_content TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE status_groups ADD COLUMN pc BLOB;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE status_groups ADD COLUMN g_flags INT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    if-lt p2, v3, :cond_86

    const-string v0, "ALTER TABLE activities ADD COLUMN tag INT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_86
    const-string v0, "DROP VIEW IF EXISTS user_groups_view;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP VIEW IF EXISTS user_recommendations_view;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE user_groups ADD COLUMN pc BLOB;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE user_groups ADD COLUMN g_flags INT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE VIEW user_groups_view AS SELECT user_groups._id AS _id,user_groups.type AS type,user_groups.tag AS tag,user_groups.owner_id AS owner_id,user_groups.user_id AS user_id,user_groups.is_last AS is_last,user_groups.pc AS pc,user_groups.g_flags AS g_flags,user.username AS username,user.name AS name,user.description AS description,user.web_url AS web_url,user.bg_color AS bg_color,user.location AS location,user.protected AS protected,user.verified AS verified,user.profile_created AS profile_created,user.image_url AS image_url,user.followers AS followers,user.friends AS friends,user.statuses AS statuses,user.geo_enabled AS geo_enabled,user.image AS image,user.friendship AS friendship,user.friendship_time AS friendship_time FROM user_groups LEFT JOIN users AS user ON user_groups.user_id=user.user_id;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE VIEW user_recommendations_view AS SELECT u.*,c.user_id AS conn_user_id,c.username AS conn_username,c.name AS conn_name FROM user_groups_view AS u LEFT OUTER JOIN user_groups_view AS c ON u.user_id=c.tag WHERE (u.type=9 OR u.type=10) AND u.tag=-1 ORDER BY u._id"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE search_queries ADD COLUMN pc BLOB;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/16 v0, 0x9

    :cond_ab
    const/16 v1, 0x9

    if-ne v0, v1, :cond_b1

    const/16 v0, 0xa

    :cond_b1
    const/16 v1, 0xa

    if-ne v0, v1, :cond_cd

    const-string v0, "DELETE FROM activities"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DELETE FROM user_groups WHERE type=8"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DELETE FROM status_groups WHERE type=12"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    if-lt p2, v3, :cond_cb

    const-string v0, "ALTER TABLE stories ADD COLUMN social_proof BLOB;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_cb
    const/16 v0, 0xb

    :cond_cd
    const/16 v1, 0xb

    if-ne v0, v1, :cond_f1

    const-string v0, "CREATE TABLE tokens (_id INTEGER PRIMARY KEY,text TEXT,weight INT,type INT,ref_id INT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE VIEW tokens_user_view AS SELECT tokens.text AS text,tokens.weight AS graph_weight,tokens.type AS type,tokens.ref_id AS user_id,users.username AS username,users.name AS name,users.location AS location,users.verified AS verified,users.profile_created AS profile_created,users.image_url AS image_url FROM tokens AS tokens LEFT JOIN users AS users ON tokens.ref_id=users.user_id;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TRIGGER user_tokens_delete_trigger AFTER DELETE ON users FOR EACH ROW BEGIN DELETE FROM tokens WHERE tokens.type=4 AND tokens.ref_id=OLD.user_id;END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE statuses ADD COLUMN cards BLOB;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP VIEW IF EXISTS status_groups_view"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE VIEW status_groups_view AS SELECT status_groups._id AS _id,status_groups.owner_id AS owner_id,status_groups.type AS type,status_groups.tag AS tag,status_groups.g_status_id AS g_status_id,status_groups.is_read AS is_read,status_groups.is_last AS is_last,status_groups.timeline AS timeline,status_groups.sender_id AS sender_id,status_groups.tweet_type AS tweet_type,status_groups.ref_id AS ref_id,status_groups.updated_at AS updated_at,status_groups.pc AS pc,status_groups.g_flags AS g_flags,statuses.author_id AS author_id,statuses.content AS content,statuses.source AS source,statuses.source_url AS source_url,statuses.created AS created,statuses.in_r_user_id AS in_r_user_id,statuses.in_r_status_id AS in_r_status_id,statuses.favorited AS favorited,statuses.latitude AS latitude,statuses.longitude AS longitude,statuses.place_type AS place_type,statuses.place_name AS place_name,statuses.place_bounding AS place_bounding,statuses.place_id AS place_id,statuses.entities AS entities,statuses.retweet_count AS retweet_count,statuses.r_content AS r_content,statuses.flags AS flags,statuses.cards AS cards,user.username AS username,user.name AS name,user.image_url AS image_url,user.image AS image,user.protected AS protected,user.verified AS verified,sender.username AS s_username,sender.name AS s_name,sender.image_url AS s_profile_image_url,sender.protected AS s_protected,sender.image AS s_image FROM status_groups LEFT JOIN statuses ON status_groups.g_status_id=statuses.status_id LEFT JOIN users AS user ON statuses.author_id=user.user_id LEFT JOIN users AS sender ON status_groups.sender_id=sender.user_id;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/16 v0, 0xc

    :cond_f1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_fa

    const-string v0, "CREATE TABLE notifications (_id INTEGER PRIMARY KEY,type INT,notif_id INT,source_user_name TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_fa
    return-void

    :cond_fb
    move v0, p2

    goto/16 :goto_e
.end method
