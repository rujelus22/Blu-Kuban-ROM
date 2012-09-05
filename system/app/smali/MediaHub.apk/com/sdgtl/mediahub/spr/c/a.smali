.class public Lcom/sdgtl/mediahub/spr/c/a;
.super Landroid/content/ContextWrapper;


# static fields
.field private static a:Lcom/sdgtl/mediahub/spr/c/a;

.field private static b:Landroid/database/sqlite/SQLiteDatabase;

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sdgtl/mediahub/spr/c/a;->c:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private static a(Ljava/lang/String;I)I
    .registers 12

    const/4 v8, 0x0

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_f

    :cond_d
    move v0, v8

    :goto_e
    return v0

    :cond_f
    const-class v9, Lcom/sdgtl/mediahub/spr/c/a;

    monitor-enter v9

    :try_start_12
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v1, "tb_mediahub_mymedia_list"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parent_product_id=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "product_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "file_status"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "product_title"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4c
    .catchall {:try_start_12 .. :try_end_4c} :catchall_97
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_4c} :catch_90
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_4c} :catch_9a

    move-result-object v2

    if-nez v2, :cond_52

    :try_start_4f
    monitor-exit v9
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_97

    move v0, v8

    goto :goto_e

    :cond_52
    :try_start_52
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7f

    move v1, v8

    :goto_59
    const-string v0, "product_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v3, "file_status"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eq v1, v0, :cond_a5

    if-eqz p0, :cond_85

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_79

    add-int/lit8 v8, v8, 0x1

    :cond_79
    :goto_79
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_7c
    .catchall {:try_start_52 .. :try_end_7c} :catchall_97
    .catch Ljava/lang/IllegalStateException; {:try_start_52 .. :try_end_7c} :catch_90
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_52 .. :try_end_7c} :catch_9a

    move-result v1

    if-nez v1, :cond_a3

    :cond_7f
    move v0, v8

    :try_start_80
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_97
    .catch Ljava/lang/IllegalStateException; {:try_start_80 .. :try_end_83} :catch_a1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_80 .. :try_end_83} :catch_9f

    :goto_83
    monitor-exit v9

    goto :goto_e

    :cond_85
    :try_start_85
    const-string v1, "Archive"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_8a
    .catchall {:try_start_85 .. :try_end_8a} :catchall_97
    .catch Ljava/lang/IllegalStateException; {:try_start_85 .. :try_end_8a} :catch_90
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_85 .. :try_end_8a} :catch_9a

    move-result v1

    if-nez v1, :cond_79

    add-int/lit8 v8, v8, 0x1

    goto :goto_79

    :catch_90
    move-exception v0

    move-object v1, v0

    move v0, v8

    :goto_93
    :try_start_93
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_96
    .catchall {:try_start_93 .. :try_end_96} :catchall_97

    goto :goto_83

    :catchall_97
    move-exception v0

    monitor-exit v9

    throw v0

    :catch_9a
    move-exception v0

    move v0, v8

    :goto_9c
    :try_start_9c
    monitor-exit v9
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_97

    goto/16 :goto_e

    :catch_9f
    move-exception v1

    goto :goto_9c

    :catch_a1
    move-exception v1

    goto :goto_93

    :cond_a3
    move v1, v0

    goto :goto_59

    :cond_a5
    move v0, v1

    goto :goto_79
.end method

.method public static a(I)J
    .registers 10

    const-wide/16 v2, -0x1

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_e
    move-wide v0, v2

    :goto_f
    return-wide v0

    :cond_10
    const-class v4, Lcom/sdgtl/mediahub/spr/c/a;

    monitor-enter v4

    :try_start_13
    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "currency_position"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "tb_mediahub_info"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_13 .. :try_end_2f} :catchall_45
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_2f} :catch_3d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_2f} :catch_48

    move-result v0

    int-to-long v0, v0

    :try_start_31
    sget-object v5, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    sget-object v5, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3b
    .catchall {:try_start_31 .. :try_end_3b} :catchall_45
    .catch Ljava/lang/IllegalStateException; {:try_start_31 .. :try_end_3b} :catch_4c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_31 .. :try_end_3b} :catch_48

    :goto_3b
    monitor-exit v4

    goto :goto_f

    :catch_3d
    move-exception v0

    move-object v8, v0

    move-wide v0, v2

    move-object v2, v8

    :goto_41
    :try_start_41
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_45

    goto :goto_3b

    :catchall_45
    move-exception v0

    monitor-exit v4

    throw v0

    :catch_48
    move-exception v0

    :try_start_49
    monitor-exit v4
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_45

    move-wide v0, v2

    goto :goto_f

    :catch_4c
    move-exception v2

    goto :goto_41
.end method

.method public static a(ILjava/lang/String;I)J
    .registers 12

    const-wide/16 v2, -0x1

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_e
    move-wide v0, v2

    :goto_f
    return-wide v0

    :cond_10
    const-class v4, Lcom/sdgtl/mediahub/spr/c/a;

    monitor-enter v4

    :try_start_13
    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "drm_license_status"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "tb_mediahub_mymedia_list"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "product_id=\'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' AND video_attr_type_code=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_13 .. :try_end_4d} :catchall_63
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_4d} :catch_5b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_4d} :catch_66

    move-result v0

    int-to-long v0, v0

    :try_start_4f
    sget-object v5, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    sget-object v5, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_59
    .catchall {:try_start_4f .. :try_end_59} :catchall_63
    .catch Ljava/lang/IllegalStateException; {:try_start_4f .. :try_end_59} :catch_6a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4f .. :try_end_59} :catch_66

    :goto_59
    monitor-exit v4

    goto :goto_f

    :catch_5b
    move-exception v0

    move-object v8, v0

    move-wide v0, v2

    move-object v2, v8

    :goto_5f
    :try_start_5f
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_63

    goto :goto_59

    :catchall_63
    move-exception v0

    monitor-exit v4

    throw v0

    :catch_66
    move-exception v0

    :try_start_67
    monitor-exit v4
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_63

    move-wide v0, v2

    goto :goto_f

    :catch_6a
    move-exception v2

    goto :goto_5f
.end method

.method public static a(ILjava/lang/String;J)J
    .registers 13

    const-wide/16 v2, -0x1

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_e
    move-wide v0, v2

    :goto_f
    return-wide v0

    :cond_10
    const-class v4, Lcom/sdgtl/mediahub/spr/c/a;

    monitor-enter v4

    :try_start_13
    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "paused_position"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "tb_mediahub_mymedia_list"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "product_id=\'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' AND video_attr_type_code=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4d
    .catchall {:try_start_13 .. :try_end_4d} :catchall_63
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_4d} :catch_5b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_4d} :catch_66

    move-result v0

    int-to-long v0, v0

    :try_start_4f
    sget-object v5, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    sget-object v5, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_59
    .catchall {:try_start_4f .. :try_end_59} :catchall_63
    .catch Ljava/lang/IllegalStateException; {:try_start_4f .. :try_end_59} :catch_6a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4f .. :try_end_59} :catch_66

    :goto_59
    monitor-exit v4

    goto :goto_f

    :catch_5b
    move-exception v0

    move-object v8, v0

    move-wide v0, v2

    move-object v2, v8

    :goto_5f
    :try_start_5f
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_63

    goto :goto_59

    :catchall_63
    move-exception v0

    monitor-exit v4

    throw v0

    :catch_66
    move-exception v0

    :try_start_67
    monitor-exit v4
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_63

    move-wide v0, v2

    goto :goto_f

    :catch_6a
    move-exception v2

    goto :goto_5f
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)J
    .registers 12

    const-wide/16 v2, -0x1

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_e
    move-wide v0, v2

    :goto_f
    return-wide v0

    :cond_10
    const-class v4, Lcom/sdgtl/mediahub/spr/c/a;

    monitor-enter v4

    :try_start_13
    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "file_status"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "tb_mediahub_mymedia_list"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "product_id=\'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' AND video_attr_type_code=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_13 .. :try_end_49} :catchall_5f
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_49} :catch_57
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_49} :catch_62

    move-result v0

    int-to-long v0, v0

    :try_start_4b
    sget-object v5, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    sget-object v5, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_55
    .catchall {:try_start_4b .. :try_end_55} :catchall_5f
    .catch Ljava/lang/IllegalStateException; {:try_start_4b .. :try_end_55} :catch_66
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4b .. :try_end_55} :catch_62

    :goto_55
    monitor-exit v4

    goto :goto_f

    :catch_57
    move-exception v0

    move-object v8, v0

    move-wide v0, v2

    move-object v2, v8

    :goto_5b
    :try_start_5b
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_5f

    goto :goto_55

    :catchall_5f
    move-exception v0

    monitor-exit v4

    throw v0

    :catch_62
    move-exception v0

    :try_start_63
    monitor-exit v4
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_5f

    move-wide v0, v2

    goto :goto_f

    :catch_66
    move-exception v2

    goto :goto_5b
.end method

.method private static a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/common/di;)J
    .registers 16

    const-wide/16 v1, -0x1

    const/4 v13, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_10

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    move-wide v0, v1

    :goto_11
    return-wide v0

    :cond_12
    const-class v5, Lcom/sdgtl/mediahub/spr/c/a;

    monitor-enter v5

    :try_start_15
    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/util/ArrayList;Ljava/lang/String;)J

    move-result-wide v6

    iget v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->i:I

    iget v4, p1, Lcom/sdgtl/mediahub/spr/common/di;->h:I

    invoke-static {p0, v0, v4, v6, v7}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;IIJ)Z

    move-result v0

    if-eqz v0, :cond_3ac

    iget v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->i:I

    iget v4, p1, Lcom/sdgtl/mediahub/spr/common/di;->h:I

    invoke-static {p0, v0, v4}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;II)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_3c
    iget v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    iget-object v8, p1, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    invoke-static {v4, v0, v8}, Lcom/sdgtl/mediahub/spr/d/b;->c(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->S:I

    iget v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    iget-object v8, p1, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    iget-object v8, p1, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    invoke-static {p0, v0, v8}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;ILjava/lang/String;)I

    move-result v8

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->I:Ljava/lang/String;

    const-string v9, "Y"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b9

    const-string v0, "Archive"

    :cond_5c
    :goto_5c
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "order_id"

    iget-wide v9, p1, Lcom/sdgtl/mediahub/spr/common/di;->a:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "order_item_id"

    iget-wide v9, p1, Lcom/sdgtl/mediahub/spr/common/di;->b:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "license"

    iget v9, p1, Lcom/sdgtl/mediahub/spr/common/di;->e:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "pricing_type_code"

    iget-object v9, p1, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "episode_title"

    iget-object v9, p1, Lcom/sdgtl/mediahub/spr/common/di;->l:Ljava/lang/String;

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "product_id"

    iget v9, p1, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "saffron_item_id"

    iget v9, p1, Lcom/sdgtl/mediahub/spr/common/di;->h:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "saffron_user_license_id"

    iget v9, p1, Lcom/sdgtl/mediahub/spr/common/di;->i:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "product_title"

    iget-object v9, p1, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "parent_product_id"

    iget v9, p1, Lcom/sdgtl/mediahub/spr/common/di;->m:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "parent_product_title"

    iget-object v9, p1, Lcom/sdgtl/mediahub/spr/common/di;->n:Ljava/lang/String;

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "release_date"

    iget-object v9, p1, Lcom/sdgtl/mediahub/spr/common/di;->r:Ljava/lang/String;

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "thumbnail_url"

    iget-object v9, p1, Lcom/sdgtl/mediahub/spr/common/di;->s:Ljava/lang/String;

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "large_poster_url"

    iget-object v9, p1, Lcom/sdgtl/mediahub/spr/common/di;->u:Ljava/lang/String;

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "parent_thumbnail_url"

    iget-object v9, p1, Lcom/sdgtl/mediahub/spr/common/di;->o:Ljava/lang/String;

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "running_time"

    iget-object v9, p1, Lcom/sdgtl/mediahub/spr/common/di;->x:Ljava/lang/String;

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "actor"

    iget-object v9, p1, Lcom/sdgtl/mediahub/spr/common/di;->y:Ljava/lang/String;

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "DIRECTOR"

    iget-object v9, p1, Lcom/sdgtl/mediahub/spr/common/di;->z:Ljava/lang/String;

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "genre"

    iget-object v9, p1, Lcom/sdgtl/mediahub/spr/common/di;->A:Ljava/lang/String;

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "purchase_date"

    iget-object v9, p1, Lcom/sdgtl/mediahub/spr/common/di;->d:Ljava/lang/String;

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p1, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v9, "02"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11d

    iget-object v7, p1, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v9, "04"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3e3

    :cond_11d
    iget v7, p1, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    iget-object v7, p1, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/d/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3da

    iget-object v7, p1, Lcom/sdgtl/mediahub/spr/common/di;->C:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3da

    const-string v7, "due_date"

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "-"

    const-string v9, ""

    invoke-virtual {v4, v7, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "\\p{space}"

    const-string v9, ""

    invoke-virtual {v4, v7, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Lcom/sdgtl/mediahub/spr/common/CommonStructure$RegisterFirstPlayExpirationInfo;

    invoke-direct {v7}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$RegisterFirstPlayExpirationInfo;-><init>()V

    const-string v9, ":"

    const-string v10, ""

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v7, Lcom/sdgtl/mediahub/spr/common/CommonStructure$RegisterFirstPlayExpirationInfo;->e:Ljava/lang/String;

    iget-wide v9, p1, Lcom/sdgtl/mediahub/spr/common/di;->a:J

    iput-wide v9, v7, Lcom/sdgtl/mediahub/spr/common/CommonStructure$RegisterFirstPlayExpirationInfo;->a:J

    iget-wide v9, p1, Lcom/sdgtl/mediahub/spr/common/di;->b:J

    iput-wide v9, v7, Lcom/sdgtl/mediahub/spr/common/CommonStructure$RegisterFirstPlayExpirationInfo;->b:J

    iget v4, p1, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    iput v4, v7, Lcom/sdgtl/mediahub/spr/common/CommonStructure$RegisterFirstPlayExpirationInfo;->c:I

    iget-object v4, p1, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    iput-object v4, v7, Lcom/sdgtl/mediahub/spr/common/CommonStructure$RegisterFirstPlayExpirationInfo;->d:Ljava/lang/String;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v9, "register_first_play_expiration_info"

    invoke-virtual {v4, v9, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/16 v7, 0x25

    invoke-static {v7, v4}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    :goto_172
    const-string v4, "rent_days"

    iget v7, p1, Lcom/sdgtl/mediahub/spr/common/di;->D:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "file_status"

    invoke-virtual {v6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "availability"

    iget-object v4, p1, Lcom/sdgtl/mediahub/spr/common/di;->F:Ljava/lang/String;

    invoke-virtual {v6, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hdmi_yn"

    iget-object v4, p1, Lcom/sdgtl/mediahub/spr/common/di;->G:Ljava/lang/String;

    invoke-virtual {v6, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "archive_yn"

    iget-object v4, p1, Lcom/sdgtl/mediahub/spr/common/di;->I:Ljava/lang/String;

    invoke-virtual {v6, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "nesting_status"

    const-string v4, "false"

    invoke-virtual {v6, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "paused_position"

    iget-wide v9, p1, Lcom/sdgtl/mediahub/spr/common/di;->P:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "video_attr_type_code"

    iget-object v4, p1, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    invoke-virtual {v6, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "synopsis"

    iget-object v4, p1, Lcom/sdgtl/mediahub/spr/common/di;->B:Ljava/lang/String;

    invoke-virtual {v6, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "download_storage"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "drm_license_status"

    iget v4, p1, Lcom/sdgtl/mediahub/spr/common/di;->S:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "product_type_code"

    iget-object v4, p1, Lcom/sdgtl/mediahub/spr/common/di;->k:Ljava/lang/String;

    invoke-virtual {v6, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mpaa_rating"

    iget-object v4, p1, Lcom/sdgtl/mediahub/spr/common/di;->v:Ljava/lang/String;

    invoke-virtual {v6, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "wfd_yn"

    iget-object v4, p1, Lcom/sdgtl/mediahub/spr/common/di;->H:Ljava/lang/String;

    invoke-virtual {v6, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->J:Ljava/lang/String;

    if-eqz v0, :cond_1f2

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->J:Ljava/lang/String;

    if-eqz v0, :cond_3ec

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->J:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3ec

    :cond_1f2
    const-string v0, "licensed_date"

    iget-object v4, p1, Lcom/sdgtl/mediahub/spr/common/di;->c:Ljava/lang/String;

    invoke-virtual {v6, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1f9
    move v4, v3

    :goto_1fa
    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v4, v0, :cond_3f5

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v4, v3

    :goto_212
    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v4, v0, :cond_445

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v13, :cond_630

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v13, :cond_29b

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    move v4, v3

    :goto_22f
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v4, v0, :cond_612

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_630

    const-string v4, "pricing_type_hd_rent_type_code"

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    invoke-virtual {v6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "pricing_type_hd_rent_re_rental_yn"

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    invoke-virtual {v6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "pricing_type_hd_rent_promotion_id"

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "pricing_type_hd_rent_price"

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-wide v11, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v4, "pricing_type_hd_rent_rent_days"

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "pricing_type_hd_rent_display_promotion"

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->e:Ljava/lang/String;

    invoke-virtual {v6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29b
    :goto_29b
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v13, :cond_6b0

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v13, :cond_317

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    move v4, v3

    :goto_2ab
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v4, v0, :cond_692

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6b0

    const-string v4, "pricing_type_sd_rent_type_code"

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    invoke-virtual {v6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "pricing_type_sd_rent_re_rental_yn"

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    invoke-virtual {v6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "pricing_type_sd_rent_promotion_id"

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "pricing_type_sd_rent_price"

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-wide v11, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v4, "pricing_type_sd_rent_rent_days"

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "pricing_type_sd_rent_display_promotion"

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->e:Ljava/lang/String;

    invoke-virtual {v6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_317
    :goto_317
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v13, :cond_730

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v13, :cond_392

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    :goto_326
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v3, v0, :cond_712

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_730

    const-string v3, "pricing_type_3d_rent_type_code"

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    invoke-virtual {v6, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "pricing_type_3d_rent_re_rental_yn"

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    invoke-virtual {v6, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "pricing_type_3d_rent_promotion_id"

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "pricing_type_3d_rent_price"

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-wide v7, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v6, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v3, "pricing_type_3d_rent_rent_days"

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "pricing_type_3d_rent_display_promotion"

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->e:Ljava/lang/String;

    invoke-virtual {v6, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_392
    :goto_392
    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "tb_mediahub_mymedia_list"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3a5
    .catchall {:try_start_15 .. :try_end_3a5} :catchall_3a9
    .catch Ljava/lang/IllegalStateException; {:try_start_15 .. :try_end_3a5} :catch_3d4

    move-wide v0, v1

    :goto_3a6
    :try_start_3a6
    monitor-exit v5
    :try_end_3a7
    .catchall {:try_start_3a6 .. :try_end_3a7} :catchall_3a9

    goto/16 :goto_11

    :catchall_3a9
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_3ac
    :try_start_3ac
    iget v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    iget-object v4, p1, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    iget-object v8, p1, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    invoke-static {p0, v0, v4, v8}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto/16 :goto_3c

    :cond_3b9
    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/download/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {p0, p1, v6, v7}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/common/di;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5c

    const-string v6, "Expired"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5c

    const-string v6, ""

    iput-object v6, p1, Lcom/sdgtl/mediahub/spr/common/di;->C:Ljava/lang/String;
    :try_end_3d2
    .catchall {:try_start_3ac .. :try_end_3d2} :catchall_3a9
    .catch Ljava/lang/IllegalStateException; {:try_start_3ac .. :try_end_3d2} :catch_3d4

    goto/16 :goto_5c

    :catch_3d4
    move-exception v0

    :try_start_3d5
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_3d8
    .catchall {:try_start_3d5 .. :try_end_3d8} :catchall_3a9

    move-wide v0, v1

    goto :goto_3a6

    :cond_3da
    :try_start_3da
    const-string v4, "due_date"

    iget-object v7, p1, Lcom/sdgtl/mediahub/spr/common/di;->C:Ljava/lang/String;

    invoke-virtual {v6, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_172

    :cond_3e3
    const-string v4, "due_date"

    iget-object v7, p1, Lcom/sdgtl/mediahub/spr/common/di;->C:Ljava/lang/String;

    invoke-virtual {v6, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_172

    :cond_3ec
    const-string v0, "licensed_date"

    iget-object v4, p1, Lcom/sdgtl/mediahub/spr/common/di;->J:Ljava/lang/String;

    invoke-virtual {v6, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1f9

    :cond_3f5
    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->b:Ljava/lang/String;

    const-string v7, "01"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41f

    const-string v7, "hd_file_size"

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;

    iget-wide v8, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->c:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_41a
    :goto_41a
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_1fa

    :cond_41f
    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->b:Ljava/lang/String;

    const-string v7, "02"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41a

    const-string v7, "sd_file_size"

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;

    iget-wide v8, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->c:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_41a

    :cond_445
    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v10, "01"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c2

    const-string v10, "pricing_type_hd_buy_type_code"

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    invoke-virtual {v6, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "pricing_type_hd_buy_re_rental_yn"

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    invoke-virtual {v6, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "pricing_type_hd_buy_promotion_id"

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v10, "pricing_type_hd_buy_price"

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-wide v11, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v6, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v10, "pricing_type_hd_buy_rent_days"

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v10, "pricing_type_hd_buy_display_promotion"

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->e:Ljava/lang/String;

    invoke-virtual {v6, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4bd
    :goto_4bd
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_212

    :cond_4c2
    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v10, "02"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e0

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4bd

    :cond_4e0
    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v10, "03"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55a

    const-string v10, "pricing_type_sd_buy_type_code"

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    invoke-virtual {v6, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "pricing_type_sd_buy_re_rental_yn"

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    invoke-virtual {v6, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "pricing_type_sd_buy_promotion_id"

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v10, "pricing_type_sd_buy_price"

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-wide v11, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v6, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v10, "pricing_type_sd_buy_rent_days"

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v10, "pricing_type_sd_buy_display_promotion"

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->e:Ljava/lang/String;

    invoke-virtual {v6, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4bd

    :cond_55a
    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v10, "04"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_579

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4bd

    :cond_579
    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v10, "05"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f3

    const-string v10, "pricing_type_3d_buy_type_code"

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    invoke-virtual {v6, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "pricing_type_3d_buy_re_rental_yn"

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    invoke-virtual {v6, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "pricing_type_3d_buy_promotion_id"

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v10, "pricing_type_3d_buy_price"

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-wide v11, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v6, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v10, "pricing_type_3d_buy_rent_days"

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v10, "pricing_type_3d_buy_display_promotion"

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->e:Ljava/lang/String;

    invoke-virtual {v6, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4bd

    :cond_5f3
    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v10, "06"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4bd

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4bd

    :cond_612
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    const-string v11, "Y"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62b

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_62b
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_22f

    :cond_630
    const-string v4, "pricing_type_hd_rent_type_code"

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    invoke-virtual {v6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "pricing_type_hd_rent_re_rental_yn"

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    invoke-virtual {v6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "pricing_type_hd_rent_promotion_id"

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "pricing_type_hd_rent_price"

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-wide v11, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v4, "pricing_type_hd_rent_rent_days"

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "pricing_type_hd_rent_display_promotion"

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->e:Ljava/lang/String;

    invoke-virtual {v6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_29b

    :cond_692
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    const-string v7, "Y"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6ab

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6ab
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_2ab

    :cond_6b0
    const-string v4, "pricing_type_sd_rent_type_code"

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    invoke-virtual {v6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "pricing_type_sd_rent_re_rental_yn"

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    invoke-virtual {v6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "pricing_type_sd_rent_promotion_id"

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "pricing_type_sd_rent_price"

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-wide v11, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v4, "pricing_type_sd_rent_rent_days"

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "pricing_type_sd_rent_display_promotion"

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->e:Ljava/lang/String;

    invoke-virtual {v6, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_317

    :cond_712
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    const-string v4, "Y"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72b

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_72b
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_326

    :cond_730
    const-string v3, "pricing_type_3d_rent_type_code"

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    invoke-virtual {v6, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "pricing_type_3d_rent_re_rental_yn"

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    invoke-virtual {v6, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "pricing_type_3d_rent_promotion_id"

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "pricing_type_3d_rent_price"

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-wide v10, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v6, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v3, "pricing_type_3d_rent_rent_days"

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "pricing_type_3d_rent_display_promotion"

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->e:Ljava/lang/String;

    invoke-virtual {v6, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_790
    .catchall {:try_start_3da .. :try_end_790} :catchall_3a9
    .catch Ljava/lang/IllegalStateException; {:try_start_3da .. :try_end_790} :catch_3d4

    goto/16 :goto_392
.end method

.method private static a(Lcom/sdgtl/mediahub/spr/common/di;)J
    .registers 11

    const-wide/16 v2, -0x1

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_e
    move-wide v0, v2

    :goto_f
    return-wide v0

    :cond_10
    const-class v4, Lcom/sdgtl/mediahub/spr/c/a;

    monitor-enter v4

    :try_start_13
    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "download_storage"

    iget v1, p0, Lcom/sdgtl/mediahub/spr/common/di;->R:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_2a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_6b

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "tb_mediahub_mymedia_list"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "product_id=\'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' AND video_attr_type_code=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5d
    .catchall {:try_start_13 .. :try_end_5d} :catchall_c2
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_5d} :catch_ba
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_5d} :catch_c5

    move-result v0

    int-to-long v0, v0

    :try_start_5f
    sget-object v5, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    sget-object v5, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_69
    .catchall {:try_start_5f .. :try_end_69} :catchall_c2
    .catch Ljava/lang/IllegalStateException; {:try_start_5f .. :try_end_69} :catch_ca
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5f .. :try_end_69} :catch_c5

    :goto_69
    monitor-exit v4

    goto :goto_f

    :cond_6b
    :try_start_6b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->b:Ljava/lang/String;

    const-string v6, "01"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_94

    const-string v6, "hd_file_size"

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;

    iget-wide v7, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->c:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_90
    :goto_90
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2a

    :cond_94
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->b:Ljava/lang/String;

    const-string v6, "02"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    const-string v6, "sd_file_size"

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;

    iget-wide v7, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->c:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_b9
    .catchall {:try_start_6b .. :try_end_b9} :catchall_c2
    .catch Ljava/lang/IllegalStateException; {:try_start_6b .. :try_end_b9} :catch_ba
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6b .. :try_end_b9} :catch_c5

    goto :goto_90

    :catch_ba
    move-exception v0

    move-object v9, v0

    move-wide v0, v2

    move-object v2, v9

    :goto_be
    :try_start_be
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_c1
    .catchall {:try_start_be .. :try_end_c1} :catchall_c2

    goto :goto_69

    :catchall_c2
    move-exception v0

    monitor-exit v4

    throw v0

    :catch_c5
    move-exception v0

    :try_start_c6
    monitor-exit v4
    :try_end_c7
    .catchall {:try_start_c6 .. :try_end_c7} :catchall_c2

    move-wide v0, v2

    goto/16 :goto_f

    :catch_ca
    move-exception v2

    goto :goto_be
.end method

.method public static a(Ljava/lang/String;)J
    .registers 10

    const-wide/16 v2, -0x1

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_e
    move-wide v0, v2

    :goto_f
    return-wide v0

    :cond_10
    const-class v4, Lcom/sdgtl/mediahub/spr/c/a;

    monitor-enter v4

    :try_start_13
    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "eula_version"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "tb_mediahub_info"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_13 .. :try_end_2b} :catchall_41
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_2b} :catch_39
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_2b} :catch_44

    move-result v0

    int-to-long v0, v0

    :try_start_2d
    sget-object v5, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    sget-object v5, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_41
    .catch Ljava/lang/IllegalStateException; {:try_start_2d .. :try_end_37} :catch_48
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2d .. :try_end_37} :catch_44

    :goto_37
    monitor-exit v4

    goto :goto_f

    :catch_39
    move-exception v0

    move-object v8, v0

    move-wide v0, v2

    move-object v2, v8

    :goto_3d
    :try_start_3d
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    goto :goto_37

    :catchall_41
    move-exception v0

    monitor-exit v4

    throw v0

    :catch_44
    move-exception v0

    :try_start_45
    monitor-exit v4
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_41

    move-wide v0, v2

    goto :goto_f

    :catch_48
    move-exception v2

    goto :goto_3d
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)J
    .registers 12

    const-wide/16 v0, -0x1

    :try_start_2
    sget-object v2, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_e

    sget-object v2, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_f

    :cond_e
    :goto_e
    return-wide v0

    :cond_f
    const-class v3, Lcom/sdgtl/mediahub/spr/c/a;

    monitor-enter v3
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_6b

    :try_start_12
    sget-object v2, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "mediahub_dgta_key"

    invoke-virtual {v2, v4, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "mediahub_data_vaule"

    invoke-virtual {v2, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "tb_mediahub_data"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2e
    .catchall {:try_start_12 .. :try_end_2e} :catchall_3c
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_2e} :catch_61

    move-result-wide v1

    :try_start_2f
    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_39
    .catchall {:try_start_2f .. :try_end_39} :catchall_6d
    .catch Ljava/lang/IllegalStateException; {:try_start_2f .. :try_end_39} :catch_6f

    move-wide v0, v1

    :goto_3a
    :try_start_3a
    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3c

    goto :goto_e

    :catchall_3c
    move-exception v2

    move-object v7, v2

    move-wide v8, v0

    move-wide v1, v8

    move-object v0, v7

    :goto_41
    :try_start_41
    monitor-exit v3

    throw v0
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_43} :catch_43

    :catch_43
    move-exception v0

    move-object v7, v0

    move-wide v8, v1

    move-wide v0, v8

    move-object v2, v7

    :goto_48
    const-string v3, "MediaHubAPP"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "MHDatabaseController - insertMediaHubData() -"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :catch_61
    move-exception v2

    move-object v7, v2

    move-wide v8, v0

    move-wide v1, v8

    move-object v0, v7

    :goto_66
    :try_start_66
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_6d

    move-wide v0, v1

    goto :goto_3a

    :catch_6b
    move-exception v2

    goto :goto_48

    :catchall_6d
    move-exception v0

    goto :goto_41

    :catch_6f
    move-exception v0

    goto :goto_66
.end method

.method public static a(Z)J
    .registers 10

    const-wide/16 v2, -0x1

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_e
    move-wide v0, v2

    :goto_f
    return-wide v0

    :cond_10
    const-class v4, Lcom/sdgtl/mediahub/spr/c/a;

    monitor-enter v4

    :try_start_13
    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    if-eqz p0, :cond_40

    const/4 v0, 0x1

    :goto_1b
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "sim_card"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "tb_mediahub_info"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v1, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_13 .. :try_end_32} :catchall_4a
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_32} :catch_42
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_32} :catch_4d

    move-result v0

    int-to-long v0, v0

    :try_start_34
    sget-object v5, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    sget-object v5, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3e
    .catchall {:try_start_34 .. :try_end_3e} :catchall_4a
    .catch Ljava/lang/IllegalStateException; {:try_start_34 .. :try_end_3e} :catch_51
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_34 .. :try_end_3e} :catch_4d

    :goto_3e
    monitor-exit v4

    goto :goto_f

    :cond_40
    const/4 v0, 0x0

    goto :goto_1b

    :catch_42
    move-exception v0

    move-object v8, v0

    move-wide v0, v2

    move-object v2, v8

    :goto_46
    :try_start_46
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_4a

    goto :goto_3e

    :catchall_4a
    move-exception v0

    monitor-exit v4

    throw v0

    :catch_4d
    move-exception v0

    :try_start_4e
    monitor-exit v4
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4a

    move-wide v0, v2

    goto :goto_f

    :catch_51
    move-exception v2

    goto :goto_46
.end method

.method public static a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;
    .registers 2

    :try_start_0
    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->a:Lcom/sdgtl/mediahub/spr/c/a;

    if-nez v0, :cond_b

    new-instance v0, Lcom/sdgtl/mediahub/spr/c/a;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/c/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sdgtl/mediahub/spr/c/a;->a:Lcom/sdgtl/mediahub/spr/c/a;

    :cond_b
    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_17

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_22

    :cond_17
    new-instance v0, Lcom/sdgtl/mediahub/spr/c/c;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/c/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/c/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sput-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_22
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_22} :catch_25

    :cond_22
    :goto_22
    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->a:Lcom/sdgtl/mediahub/spr/c/a;

    return-object v0

    :catch_25
    move-exception v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_22
.end method

.method public static a(Landroid/content/Context;I)Lcom/sdgtl/mediahub/spr/common/di;
    .registers 15

    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_11

    :cond_f
    move-object v0, v8

    :goto_10
    return-object v0

    :cond_11
    const-class v9, Lcom/sdgtl/mediahub/spr/c/a;

    monitor-enter v9

    :try_start_14
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v1, "tb_mediahub_mymedia_list"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "product_id=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/c/a;->l()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "product_title"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_45
    .catchall {:try_start_14 .. :try_end_45} :catchall_47c
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_45} :catch_475
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_45} :catch_47f

    move-result-object v2

    if-nez v2, :cond_4b

    :try_start_48
    monitor-exit v9
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47c

    move-object v0, v8

    goto :goto_10

    :cond_4b
    :try_start_4b
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_48e

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/di;

    invoke-direct {v1}, Lcom/sdgtl/mediahub/spr/common/di;-><init>()V
    :try_end_56
    .catchall {:try_start_4b .. :try_end_56} :catchall_47c
    .catch Ljava/lang/IllegalStateException; {:try_start_4b .. :try_end_56} :catch_475
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4b .. :try_end_56} :catch_47f

    :try_start_56
    const-string v0, "order_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/sdgtl/mediahub/spr/common/di;->a:J

    const-string v0, "order_item_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/sdgtl/mediahub/spr/common/di;->b:J

    const-string v0, "license"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->e:I

    const-string v0, "pricing_type_code"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v0, "availability"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->F:Ljava/lang/String;

    const-string v0, "product_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    const-string v0, "saffron_item_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->h:I

    const-string v0, "saffron_user_license_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->i:I

    const-string v0, "product_title"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    const-string v0, "parent_product_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->m:I

    const-string v0, "parent_product_title"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->n:Ljava/lang/String;

    const-string v0, "release_date"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->r:Ljava/lang/String;

    const-string v0, "thumbnail_url"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->s:Ljava/lang/String;

    const-string v0, "large_poster_url"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->u:Ljava/lang/String;

    const-string v0, "parent_thumbnail_url"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->o:Ljava/lang/String;

    const-string v0, "running_time"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->x:Ljava/lang/String;

    const-string v0, "actor"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->y:Ljava/lang/String;

    const-string v0, "DIRECTOR"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->z:Ljava/lang/String;

    const-string v0, "genre"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->A:Ljava/lang/String;

    const-string v0, "purchase_date"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->d:Ljava/lang/String;

    const-string v0, "due_date"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->C:Ljava/lang/String;

    const-string v0, "rent_days"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->D:I

    const-string v0, "file_status"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->O:Ljava/lang/String;

    const-string v0, "availability"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->F:Ljava/lang/String;

    const-string v0, "hdmi_yn"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->G:Ljava/lang/String;

    const-string v0, "archive_yn"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->I:Ljava/lang/String;

    const-string v0, "nesting_status"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->N:Z

    const-string v0, "paused_position"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/sdgtl/mediahub/spr/common/di;->P:J

    const-string v0, "video_attr_type_code"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    const-string v0, "synopsis"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->B:Ljava/lang/String;

    const-string v0, "download_storage"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->R:I

    const-string v0, "drm_license_status"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->S:I

    const-string v0, "product_type_code"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->k:Ljava/lang/String;

    const-string v0, "mpaa_rating"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->v:Ljava/lang/String;

    const-string v0, "licensed_date"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->J:Ljava/lang/String;

    const-string v0, "wfd_yn"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->H:Ljava/lang/String;

    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->J:Ljava/lang/String;

    if-eqz v0, :cond_220

    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->J:Ljava/lang/String;

    if-eqz v0, :cond_224

    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->J:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_224

    :cond_220
    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->c:Ljava/lang/String;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->J:Ljava/lang/String;

    :cond_224
    const-string v0, "hd_file_size"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    cmp-long v0, v3, v10

    if-lez v0, :cond_24d

    new-instance v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;

    invoke-direct {v5}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;-><init>()V

    const v0, 0x7f0a0014

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->a:Ljava/lang/String;

    const-string v0, "01"

    iput-object v0, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->b:Ljava/lang/String;

    iput-wide v3, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->c:J

    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24d
    const-string v0, "sd_file_size"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    cmp-long v0, v3, v10

    if-lez v0, :cond_276

    new-instance v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;

    invoke-direct {v5}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;-><init>()V

    const v0, 0x7f0a0015

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->a:Ljava/lang/String;

    const-string v0, "02"

    iput-object v0, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->b:Ljava/lang/String;

    iput-wide v3, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->c:J

    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_276
    const-string v0, "pricing_type_hd_buy_type_code"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2ca

    new-instance v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    invoke-direct {v3}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;-><init>()V

    const-string v4, "pricing_type_hd_buy_price"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    iput-object v0, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v0, "pricing_type_hd_buy_re_rental_yn"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    const-string v0, "pricing_type_hd_buy_promotion_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->d:I

    const-string v0, "pricing_type_hd_buy_rent_days"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->i:I

    const-string v0, "pricing_type_hd_buy_display_promotion"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->e:Ljava/lang/String;

    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2ca
    const-string v0, "pricing_type_hd_rent_type_code"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_31e

    new-instance v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    invoke-direct {v3}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;-><init>()V

    const-string v4, "pricing_type_hd_rent_price"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    iput-object v0, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v0, "pricing_type_hd_rent_re_rental_yn"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    const-string v0, "pricing_type_hd_rent_promotion_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->d:I

    const-string v0, "pricing_type_hd_rent_rent_days"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->i:I

    const-string v0, "pricing_type_hd_rent_display_promotion"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->e:Ljava/lang/String;

    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31e
    const-string v0, "pricing_type_sd_buy_type_code"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_372

    new-instance v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    invoke-direct {v3}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;-><init>()V

    const-string v4, "pricing_type_sd_buy_price"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    iput-object v0, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v0, "pricing_type_sd_buy_re_rental_yn"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    const-string v0, "pricing_type_sd_buy_promotion_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->d:I

    const-string v0, "pricing_type_sd_buy_rent_days"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->i:I

    const-string v0, "pricing_type_sd_buy_display_promotion"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->e:Ljava/lang/String;

    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_372
    const-string v0, "pricing_type_sd_rent_type_code"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3c6

    new-instance v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    invoke-direct {v3}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;-><init>()V

    const-string v4, "pricing_type_sd_rent_price"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    iput-object v0, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v0, "pricing_type_sd_rent_re_rental_yn"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    const-string v0, "pricing_type_sd_rent_promotion_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->d:I

    const-string v0, "pricing_type_sd_rent_rent_days"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->i:I

    const-string v0, "pricing_type_sd_rent_display_promotion"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->e:Ljava/lang/String;

    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3c6
    const-string v0, "pricing_type_3d_buy_type_code"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_41a

    new-instance v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    invoke-direct {v3}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;-><init>()V

    const-string v4, "pricing_type_3d_buy_price"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    iput-object v0, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v0, "pricing_type_3d_buy_re_rental_yn"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    const-string v0, "pricing_type_3d_buy_promotion_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->d:I

    const-string v0, "pricing_type_3d_buy_rent_days"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->i:I

    const-string v0, "pricing_type_3d_buy_display_promotion"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->e:Ljava/lang/String;

    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_41a
    const-string v0, "pricing_type_3d_rent_type_code"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_46e

    new-instance v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    invoke-direct {v3}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;-><init>()V

    const-string v4, "pricing_type_3d_rent_price"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    iput-object v0, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v0, "pricing_type_3d_rent_re_rental_yn"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    const-string v0, "pricing_type_3d_rent_promotion_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->d:I

    const-string v0, "pricing_type_3d_rent_rent_days"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->i:I

    const-string v0, "pricing_type_3d_rent_display_promotion"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->e:Ljava/lang/String;

    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_46e
    .catchall {:try_start_56 .. :try_end_46e} :catchall_47c
    .catch Ljava/lang/IllegalStateException; {:try_start_56 .. :try_end_46e} :catch_487
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_56 .. :try_end_46e} :catch_47f

    :cond_46e
    move-object v0, v1

    :goto_46f
    :try_start_46f
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_472
    .catchall {:try_start_46f .. :try_end_472} :catchall_47c
    .catch Ljava/lang/IllegalStateException; {:try_start_46f .. :try_end_472} :catch_48c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_46f .. :try_end_472} :catch_47f

    :goto_472
    monitor-exit v9

    goto/16 :goto_10

    :catch_475
    move-exception v0

    move-object v1, v0

    move-object v0, v8

    :goto_478
    :try_start_478
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_47b
    .catchall {:try_start_478 .. :try_end_47b} :catchall_47c

    goto :goto_472

    :catchall_47c
    move-exception v0

    monitor-exit v9

    throw v0

    :catch_47f
    move-exception v0

    :try_start_480
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    monitor-exit v9
    :try_end_484
    .catchall {:try_start_480 .. :try_end_484} :catchall_47c

    move-object v0, v8

    goto/16 :goto_10

    :catch_487
    move-exception v0

    move-object v12, v0

    move-object v0, v1

    move-object v1, v12

    goto :goto_478

    :catch_48c
    move-exception v1

    goto :goto_478

    :cond_48e
    move-object v0, v8

    goto :goto_46f
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;I)Ljava/util/ArrayList;
    .registers 16

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const-string v7, ""

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_13

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_15

    :cond_13
    move-object v0, v8

    :goto_14
    return-object v0

    :cond_15
    packed-switch p3, :pswitch_data_4c6

    :goto_18
    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_24

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_2c

    :cond_24
    const/4 v0, 0x0

    goto :goto_14

    :pswitch_26
    const-string v7, "purchase_date DESC"

    goto :goto_18

    :pswitch_29
    const-string v7, "product_title"

    goto :goto_18

    :cond_2c
    const-class v9, Lcom/sdgtl/mediahub/spr/c/a;

    monitor-enter v9

    :try_start_2f
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v1, "tb_mediahub_mymedia_list"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "parent_product_id=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/c/a;->l()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5e
    .catchall {:try_start_2f .. :try_end_5e} :catchall_4bb
    .catch Ljava/lang/IllegalStateException; {:try_start_2f .. :try_end_5e} :catch_4b6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2f .. :try_end_5e} :catch_4be

    move-result-object v4

    if-nez v4, :cond_64

    :try_start_61
    monitor-exit v9
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_4bb

    const/4 v0, 0x0

    goto :goto_14

    :cond_64
    :try_start_64
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4a1

    const/4 v1, 0x0

    const-string v0, ""

    :cond_6d
    const-string v2, "product_id"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v2, "file_status"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-ne v1, v3, :cond_91

    const-string v5, "Downloading"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_91

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_49b

    :cond_91
    new-instance v1, Lcom/sdgtl/mediahub/spr/common/di;

    invoke-direct {v1}, Lcom/sdgtl/mediahub/spr/common/di;-><init>()V

    const-string v0, "order_id"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/sdgtl/mediahub/spr/common/di;->a:J

    const-string v0, "order_item_id"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/sdgtl/mediahub/spr/common/di;->b:J

    const-string v0, "license"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->e:I

    const-string v0, "pricing_type_code"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v0, "episode_title"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->l:Ljava/lang/String;

    iput v3, v1, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    const-string v0, "saffron_item_id"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->h:I

    const-string v0, "saffron_user_license_id"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->i:I

    const-string v0, "product_title"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    const-string v0, "parent_product_id"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->m:I

    const-string v0, "parent_product_title"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->n:Ljava/lang/String;

    const-string v0, "release_date"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->r:Ljava/lang/String;

    const-string v0, "thumbnail_url"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->s:Ljava/lang/String;

    const-string v0, "large_poster_url"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->u:Ljava/lang/String;

    const-string v0, "parent_thumbnail_url"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->o:Ljava/lang/String;

    const-string v0, "running_time"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->x:Ljava/lang/String;

    const-string v0, "actor"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->y:Ljava/lang/String;

    const-string v0, "DIRECTOR"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->z:Ljava/lang/String;

    const-string v0, "genre"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->A:Ljava/lang/String;

    const-string v0, "purchase_date"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->d:Ljava/lang/String;

    const-string v0, "due_date"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->C:Ljava/lang/String;

    const-string v0, "rent_days"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->D:I

    iput-object v2, v1, Lcom/sdgtl/mediahub/spr/common/di;->O:Ljava/lang/String;

    const-string v0, "availability"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->F:Ljava/lang/String;

    const-string v0, "hdmi_yn"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->G:Ljava/lang/String;

    const-string v0, "archive_yn"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->I:Ljava/lang/String;

    const-string v0, "paused_position"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/sdgtl/mediahub/spr/common/di;->P:J

    const-string v0, "video_attr_type_code"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    const-string v0, "synopsis"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->B:Ljava/lang/String;

    const-string v0, "download_storage"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->R:I

    const-string v0, "drm_license_status"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->S:I

    const-string v0, "product_type_code"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->k:Ljava/lang/String;

    const-string v0, "mpaa_rating"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->v:Ljava/lang/String;

    const-string v0, "licensed_date"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->J:Ljava/lang/String;

    const-string v0, "wfd_yn"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->H:Ljava/lang/String;

    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->J:Ljava/lang/String;

    if-eqz v0, :cond_238

    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->J:Ljava/lang/String;

    if-eqz v0, :cond_23c

    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->J:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23c

    :cond_238
    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->c:Ljava/lang/String;

    iput-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->J:Ljava/lang/String;

    :cond_23c
    const-string v0, "hd_file_size"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-wide/16 v10, 0x0

    cmp-long v0, v5, v10

    if-lez v0, :cond_267

    new-instance v7, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;

    invoke-direct {v7}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;-><init>()V

    const v0, 0x7f0a0014

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v7, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->a:Ljava/lang/String;

    const-string v0, "01"

    iput-object v0, v7, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->b:Ljava/lang/String;

    iput-wide v5, v7, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->c:J

    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_267
    const-string v0, "sd_file_size"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-wide/16 v10, 0x0

    cmp-long v0, v5, v10

    if-lez v0, :cond_292

    new-instance v7, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;

    invoke-direct {v7}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;-><init>()V

    const v0, 0x7f0a0015

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v7, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->a:Ljava/lang/String;

    const-string v0, "02"

    iput-object v0, v7, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->b:Ljava/lang/String;

    iput-wide v5, v7, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->c:J

    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_292
    const-string v0, "pricing_type_hd_buy_type_code"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2e6

    new-instance v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    invoke-direct {v5}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;-><init>()V

    const-string v6, "pricing_type_hd_buy_price"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    iput-wide v6, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    iput-object v0, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v0, "pricing_type_hd_buy_re_rental_yn"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    const-string v0, "pricing_type_hd_buy_promotion_id"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->d:I

    const-string v0, "pricing_type_hd_buy_rent_days"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->i:I

    const-string v0, "pricing_type_hd_buy_display_promotion"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->e:Ljava/lang/String;

    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e6
    const-string v0, "pricing_type_hd_rent_type_code"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_33a

    new-instance v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    invoke-direct {v5}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;-><init>()V

    const-string v6, "pricing_type_hd_rent_price"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    iput-wide v6, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    iput-object v0, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v0, "pricing_type_hd_rent_re_rental_yn"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    const-string v0, "pricing_type_hd_rent_promotion_id"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->d:I

    const-string v0, "pricing_type_hd_rent_rent_days"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->i:I

    const-string v0, "pricing_type_hd_rent_display_promotion"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->e:Ljava/lang/String;

    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_33a
    const-string v0, "pricing_type_sd_buy_type_code"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_38e

    new-instance v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    invoke-direct {v5}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;-><init>()V

    const-string v6, "pricing_type_sd_buy_price"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    iput-wide v6, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    iput-object v0, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v0, "pricing_type_sd_buy_re_rental_yn"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    const-string v0, "pricing_type_sd_buy_promotion_id"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->d:I

    const-string v0, "pricing_type_sd_buy_rent_days"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->i:I

    const-string v0, "pricing_type_sd_buy_display_promotion"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->e:Ljava/lang/String;

    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_38e
    const-string v0, "pricing_type_sd_rent_type_code"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3e2

    new-instance v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    invoke-direct {v5}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;-><init>()V

    const-string v6, "pricing_type_sd_rent_price"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    iput-wide v6, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    iput-object v0, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v0, "pricing_type_sd_rent_re_rental_yn"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    const-string v0, "pricing_type_sd_rent_promotion_id"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->d:I

    const-string v0, "pricing_type_sd_rent_rent_days"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->i:I

    const-string v0, "pricing_type_sd_rent_display_promotion"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->e:Ljava/lang/String;

    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3e2
    const-string v0, "pricing_type_3d_buy_type_code"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_436

    new-instance v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    invoke-direct {v5}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;-><init>()V

    const-string v6, "pricing_type_3d_buy_price"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    iput-wide v6, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    iput-object v0, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v0, "pricing_type_3d_buy_re_rental_yn"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    const-string v0, "pricing_type_3d_buy_promotion_id"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->d:I

    const-string v0, "pricing_type_3d_buy_rent_days"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->i:I

    const-string v0, "pricing_type_3d_buy_display_promotion"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->e:Ljava/lang/String;

    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_436
    const-string v0, "pricing_type_3d_rent_type_code"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_48a

    new-instance v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    invoke-direct {v5}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;-><init>()V

    const-string v6, "pricing_type_3d_rent_price"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    iput-wide v6, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    iput-object v0, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v0, "pricing_type_3d_rent_re_rental_yn"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    const-string v0, "pricing_type_3d_rent_promotion_id"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->d:I

    const-string v0, "pricing_type_3d_rent_rent_days"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->i:I

    const-string v0, "pricing_type_3d_rent_display_promotion"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->e:Ljava/lang/String;

    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_48a
    if-nez p2, :cond_4a8

    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->O:Ljava/lang/String;

    const-string v5, "Archive"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b3

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    move v1, v3

    :cond_49b
    :goto_49b
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_6d

    :cond_4a1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_4a4
    .catchall {:try_start_64 .. :try_end_4a4} :catchall_4bb
    .catch Ljava/lang/IllegalStateException; {:try_start_64 .. :try_end_4a4} :catch_4b6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_64 .. :try_end_4a4} :catch_4be

    :goto_4a4
    monitor-exit v9

    move-object v0, v8

    goto/16 :goto_14

    :cond_4a8
    :try_start_4a8
    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/common/di;->O:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b3

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4b3
    .catchall {:try_start_4a8 .. :try_end_4b3} :catchall_4bb
    .catch Ljava/lang/IllegalStateException; {:try_start_4a8 .. :try_end_4b3} :catch_4b6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4a8 .. :try_end_4b3} :catch_4be

    :cond_4b3
    move-object v0, v2

    move v1, v3

    goto :goto_49b

    :catch_4b6
    move-exception v0

    :try_start_4b7
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_4ba
    .catchall {:try_start_4b7 .. :try_end_4ba} :catchall_4bb

    goto :goto_4a4

    :catchall_4bb
    move-exception v0

    monitor-exit v9

    throw v0

    :catch_4be
    move-exception v0

    :try_start_4bf
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    monitor-exit v9
    :try_end_4c3
    .catchall {:try_start_4bf .. :try_end_4c3} :catchall_4bb

    move-object v0, v8

    goto/16 :goto_14

    :pswitch_data_4c6
    .packed-switch 0x0
        :pswitch_26
        :pswitch_29
    .end packed-switch
.end method

.method public static a()V
    .registers 2

    const-class v1, Lcom/sdgtl/mediahub/spr/c/a;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_14
    :goto_14
    const/4 v0, 0x0

    sput-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v0, 0x0

    sput-object v0, Lcom/sdgtl/mediahub/spr/c/a;->a:Lcom/sdgtl/mediahub/spr/c/a;

    monitor-exit v1

    return-void

    :cond_1c
    sget-boolean v0, Lcom/a/a/a/a/c/a;->a:Z

    if-eqz v0, :cond_14

    const-string v0, "release, mDB is null"

    invoke-static {v0}, Lcom/a/a/a/a/c/a;->c(Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_26

    goto :goto_14

    :catchall_26
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/common/di;Z)V
    .registers 10

    const-wide/16 v5, 0x0

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a8

    :cond_16
    const/4 v0, 0x0

    move v1, v0

    :goto_18
    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_21

    :goto_20
    return-void

    :cond_21
    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->b:Ljava/lang/String;

    const-string v2, "01"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const-string v0, "01"

    iput-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    iget v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    const-string v2, "01"

    invoke-static {v0, v2}, Lcom/sdgtl/mediahub/spr/c/a;->c(ILjava/lang/String;)J

    move-result-wide v2

    if-nez p2, :cond_48

    iget v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    iget-object v4, p1, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/sdgtl/mediahub/spr/c/a;->i(ILjava/lang/String;)V

    :cond_48
    cmp-long v0, v2, v5

    if-gez v0, :cond_5f

    iput-wide v5, p1, Lcom/sdgtl/mediahub/spr/common/di;->P:J

    :goto_4e
    iget v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    const-string v2, "01"

    invoke-static {v0, v2}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-static {p0, p1}, Lcom/sdgtl/mediahub/spr/c/a;->b(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/common/di;)J

    :cond_5b
    :goto_5b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_18

    :cond_5f
    iput-wide v2, p1, Lcom/sdgtl/mediahub/spr/common/di;->P:J

    goto :goto_4e

    :cond_62
    invoke-static {p0, p1}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/common/di;)J

    goto :goto_5b

    :cond_66
    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->b:Ljava/lang/String;

    const-string v2, "02"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    const-string v0, "02"

    iput-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    iget v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    const-string v2, "02"

    invoke-static {v0, v2}, Lcom/sdgtl/mediahub/spr/c/a;->c(ILjava/lang/String;)J

    move-result-wide v2

    if-nez p2, :cond_8d

    iget v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    iget-object v4, p1, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/sdgtl/mediahub/spr/c/a;->i(ILjava/lang/String;)V

    :cond_8d
    cmp-long v0, v2, v5

    if-gez v0, :cond_a1

    iput-wide v5, p1, Lcom/sdgtl/mediahub/spr/common/di;->P:J

    :goto_93
    iget v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    const-string v2, "02"

    invoke-static {v0, v2}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a4

    invoke-static {p0, p1}, Lcom/sdgtl/mediahub/spr/c/a;->b(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/common/di;)J

    goto :goto_5b

    :cond_a1
    iput-wide v2, p1, Lcom/sdgtl/mediahub/spr/common/di;->P:J

    goto :goto_93

    :cond_a4
    invoke-static {p0, p1}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/common/di;)J

    goto :goto_5b

    :cond_a8
    const-string v0, "02"

    iput-object v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    iget v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    const-string v1, "02"

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/c/a;->c(ILjava/lang/String;)J

    move-result-wide v0

    if-nez p2, :cond_bd

    iget v2, p1, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    iget-object v3, p1, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sdgtl/mediahub/spr/c/a;->i(ILjava/lang/String;)V

    :cond_bd
    cmp-long v2, v0, v5

    if-gez v2, :cond_d2

    iput-wide v5, p1, Lcom/sdgtl/mediahub/spr/common/di;->P:J

    :goto_c3
    iget v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    const-string v1, "02"

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d5

    invoke-static {p0, p1}, Lcom/sdgtl/mediahub/spr/c/a;->b(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/common/di;)J

    goto/16 :goto_20

    :cond_d2
    iput-wide v0, p1, Lcom/sdgtl/mediahub/spr/common/di;->P:J

    goto :goto_c3

    :cond_d5
    invoke-static {p0, p1}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/common/di;)J

    goto/16 :goto_20
.end method

.method public static a(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 10

    const/4 v2, 0x0

    sput-boolean v2, Lcom/sdgtl/mediahub/spr/c/a;->c:Z

    invoke-static {p0}, Lcom/sdgtl/mediahub/spr/c/a;->b(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v5

    const-class v6, Lcom/sdgtl/mediahub/spr/c/a;

    monitor-enter v6

    :try_start_a
    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    move v1, v2

    :goto_10
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_2d

    :cond_16
    sget-boolean v0, Lcom/sdgtl/mediahub/spr/c/a;->c:Z

    if-nez v0, :cond_21

    move v1, v2

    :goto_1b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_3f

    :cond_21
    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2b
    .catchall {:try_start_a .. :try_end_2b} :catchall_88
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_2b} :catch_83
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_2b} :catch_8b

    :goto_2b
    :try_start_2b
    monitor-exit v6
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_88

    return-void

    :cond_2d
    :try_start_2d
    sget-boolean v0, Lcom/sdgtl/mediahub/spr/c/a;->c:Z

    if-nez v0, :cond_16

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/di;

    const/4 v3, 0x0

    invoke-static {p0, v0, v3}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/common/di;Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    :cond_3f
    const/4 v3, 0x1

    move v4, v2

    :goto_41
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v4, v0, :cond_61

    move v0, v3

    :goto_48
    if-eqz v0, :cond_79

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/di;

    iget v3, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/sdgtl/mediahub/spr/c/a;->i(ILjava/lang/String;)V

    :goto_5d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1b

    :cond_61
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/di;

    iget v7, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/di;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    if-ne v7, v0, :cond_75

    move v0, v2

    goto :goto_48

    :cond_75
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_41

    :cond_79
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/di;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Lcom/sdgtl/mediahub/spr/common/di;)J
    :try_end_82
    .catchall {:try_start_2d .. :try_end_82} :catchall_88
    .catch Ljava/lang/IllegalStateException; {:try_start_2d .. :try_end_82} :catch_83
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2d .. :try_end_82} :catch_8b

    goto :goto_5d

    :catch_83
    move-exception v0

    :try_start_84
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_88

    goto :goto_2b

    :catchall_88
    move-exception v0

    monitor-exit v6

    throw v0

    :catch_8b
    move-exception v0

    :try_start_8c
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_88

    goto :goto_2b
.end method

.method public static a(ILjava/lang/String;)Z
    .registers 13

    const/4 v9, 0x1

    const/4 v8, 0x0

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_e
    move v0, v8

    :goto_f
    return v0

    :cond_10
    const-class v10, Lcom/sdgtl/mediahub/spr/c/a;

    monitor-enter v10

    :try_start_13
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v1, "tb_mediahub_mymedia_list"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "product_id=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "product_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "video_attr_type_code"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "video_attr_type_code=\'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "product_title"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_82

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_63
    .catchall {:try_start_13 .. :try_end_63} :catchall_73
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_63} :catch_6c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_63} :catch_76

    move-result v0

    if-lez v0, :cond_82

    move v0, v9

    :goto_67
    :try_start_67
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_73
    .catch Ljava/lang/IllegalStateException; {:try_start_67 .. :try_end_6a} :catch_80
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_67 .. :try_end_6a} :catch_7e

    :goto_6a
    monitor-exit v10

    goto :goto_f

    :catch_6c
    move-exception v0

    move-object v1, v0

    move v0, v8

    :goto_6f
    :try_start_6f
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_73

    goto :goto_6a

    :catchall_73
    move-exception v0

    monitor-exit v10

    throw v0

    :catch_76
    move-exception v0

    move-object v1, v0

    move v0, v8

    :goto_79
    :try_start_79
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    monitor-exit v10
    :try_end_7d
    .catchall {:try_start_79 .. :try_end_7d} :catchall_73

    goto :goto_f

    :catch_7e
    move-exception v1

    goto :goto_79

    :catch_80
    move-exception v1

    goto :goto_6f

    :cond_82
    move v0, v8

    goto :goto_67
.end method

.method public static b(ILjava/lang/String;J)J
    .registers 13

    const-wide/16 v2, -0x1

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_e
    move-wide v0, v2

    :goto_f
    return-wide v0

    :cond_10
    const-class v4, Lcom/sdgtl/mediahub/spr/c/a;

    monitor-enter v4

    :try_start_13
    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "01"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    const-string v1, "hd_file_size"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "tb_mediahub_mymedia_list"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "product_id=\'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' AND video_attr_type_code=\'01\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4b
    .catchall {:try_start_13 .. :try_end_4b} :catchall_92
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_4b} :catch_8a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_4b} :catch_95

    move-result v0

    int-to-long v0, v0

    :goto_4d
    :try_start_4d
    sget-object v5, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    sget-object v5, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_57
    .catchall {:try_start_4d .. :try_end_57} :catchall_92
    .catch Ljava/lang/IllegalStateException; {:try_start_4d .. :try_end_57} :catch_9a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4d .. :try_end_57} :catch_95

    :goto_57
    monitor-exit v4

    goto :goto_f

    :cond_59
    :try_start_59
    const-string v1, "02"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9c

    const-string v1, "sd_file_size"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "tb_mediahub_mymedia_list"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "product_id=\'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' AND video_attr_type_code=\'02\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_87
    .catchall {:try_start_59 .. :try_end_87} :catchall_92
    .catch Ljava/lang/IllegalStateException; {:try_start_59 .. :try_end_87} :catch_8a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_59 .. :try_end_87} :catch_95

    move-result v0

    int-to-long v0, v0

    goto :goto_4d

    :catch_8a
    move-exception v0

    move-object v8, v0

    move-wide v0, v2

    move-object v2, v8

    :goto_8e
    :try_start_8e
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_91
    .catchall {:try_start_8e .. :try_end_91} :catchall_92

    goto :goto_57

    :catchall_92
    move-exception v0

    monitor-exit v4

    throw v0

    :catch_95
    move-exception v0

    :try_start_96
    monitor-exit v4
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_92

    move-wide v0, v2

    goto/16 :goto_f

    :catch_9a
    move-exception v2

    goto :goto_8e

    :cond_9c
    move-wide v0, v2

    goto :goto_4d
.end method

.method public static b(ILjava/lang/String;Ljava/lang/String;)J
    .registers 12

    const-wide/16 v2, -0x1

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_e
    move-wide v0, v2

    :goto_f
    return-wide v0

    :cond_10
    const-class v4, Lcom/sdgtl/mediahub/spr/c/a;

    monitor-enter v4

    :try_start_13
    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "licensed_date"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "tb_mediahub_mymedia_list"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "product_id=\'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' AND video_attr_type_code=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_13 .. :try_end_49} :catchall_5f
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_49} :catch_57
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_49} :catch_62

    move-result v0

    int-to-long v0, v0

    :try_start_4b
    sget-object v5, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    sget-object v5, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_55
    .catchall {:try_start_4b .. :try_end_55} :catchall_5f
    .catch Ljava/lang/IllegalStateException; {:try_start_4b .. :try_end_55} :catch_66
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4b .. :try_end_55} :catch_62

    :goto_55
    monitor-exit v4

    goto :goto_f

    :catch_57
    move-exception v0

    move-object v8, v0

    move-wide v0, v2

    move-object v2, v8

    :goto_5b
    :try_start_5b
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_5f

    goto :goto_55

    :catchall_5f
    move-exception v0

    monitor-exit v4

    throw v0

    :catch_62
    move-exception v0

    :try_start_63
    monitor-exit v4
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_5f

    move-wide v0, v2

    goto :goto_f

    :catch_66
    move-exception v2

    goto :goto_5b
.end method

.method private static b(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/common/di;)J
    .registers 19

    const-wide/16 v3, -0x1

    sget-object v2, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_e

    sget-object v2, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_11

    :cond_e
    const-wide/16 v2, -0x1

    :goto_10
    return-wide v2

    :cond_11
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/di;->I:Ljava/lang/String;

    const-string v5, "Y"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_312

    const-string v2, "Archive"

    :goto_1f
    const-class v6, Lcom/sdgtl/mediahub/spr/c/a;

    monitor-enter v6

    :try_start_22
    sget-object v5, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "order_id"

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/sdgtl/mediahub/spr/common/di;->a:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "order_item_id"

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/sdgtl/mediahub/spr/common/di;->b:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "license"

    move-object/from16 v0, p1

    iget v8, v0, Lcom/sdgtl/mediahub/spr/common/di;->e:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "pricing_type_code"

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    invoke-virtual {v7, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "episode_title"

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/sdgtl/mediahub/spr/common/di;->l:Ljava/lang/String;

    invoke-virtual {v7, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "product_id"

    move-object/from16 v0, p1

    iget v8, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "saffron_item_id"

    move-object/from16 v0, p1

    iget v8, v0, Lcom/sdgtl/mediahub/spr/common/di;->h:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "saffron_user_license_id"

    move-object/from16 v0, p1

    iget v8, v0, Lcom/sdgtl/mediahub/spr/common/di;->i:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "product_title"

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    invoke-virtual {v7, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "parent_product_id"

    move-object/from16 v0, p1

    iget v8, v0, Lcom/sdgtl/mediahub/spr/common/di;->m:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "parent_product_title"

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/sdgtl/mediahub/spr/common/di;->n:Ljava/lang/String;

    invoke-virtual {v7, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "release_date"

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/sdgtl/mediahub/spr/common/di;->r:Ljava/lang/String;

    invoke-virtual {v7, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "thumbnail_url"

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/sdgtl/mediahub/spr/common/di;->s:Ljava/lang/String;

    invoke-virtual {v7, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "large_poster_url"

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/sdgtl/mediahub/spr/common/di;->u:Ljava/lang/String;

    invoke-virtual {v7, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "parent_thumbnail_url"

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/sdgtl/mediahub/spr/common/di;->o:Ljava/lang/String;

    invoke-virtual {v7, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "running_time"

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/sdgtl/mediahub/spr/common/di;->x:Ljava/lang/String;

    invoke-virtual {v7, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "actor"

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/sdgtl/mediahub/spr/common/di;->y:Ljava/lang/String;

    invoke-virtual {v7, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "DIRECTOR"

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/sdgtl/mediahub/spr/common/di;->z:Ljava/lang/String;

    invoke-virtual {v7, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "genre"

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/sdgtl/mediahub/spr/common/di;->A:Ljava/lang/String;

    invoke-virtual {v7, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "purchase_date"

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/sdgtl/mediahub/spr/common/di;->d:Ljava/lang/String;

    invoke-virtual {v7, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "due_date"

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/sdgtl/mediahub/spr/common/di;->C:Ljava/lang/String;

    invoke-virtual {v7, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "rent_days"

    move-object/from16 v0, p1

    iget v8, v0, Lcom/sdgtl/mediahub/spr/common/di;->D:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "file_status"

    invoke-virtual {v7, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "availability"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/sdgtl/mediahub/spr/common/di;->F:Ljava/lang/String;

    invoke-virtual {v7, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "hdmi_yn"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/sdgtl/mediahub/spr/common/di;->G:Ljava/lang/String;

    invoke-virtual {v7, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "archive_yn"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/sdgtl/mediahub/spr/common/di;->I:Ljava/lang/String;

    invoke-virtual {v7, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "nesting_status"

    const-string v5, "false"

    invoke-virtual {v7, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "paused_position"

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/sdgtl/mediahub/spr/common/di;->P:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "synopsis"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/sdgtl/mediahub/spr/common/di;->B:Ljava/lang/String;

    invoke-virtual {v7, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "product_type_code"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/sdgtl/mediahub/spr/common/di;->k:Ljava/lang/String;

    invoke-virtual {v7, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mpaa_rating"

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/sdgtl/mediahub/spr/common/di;->v:Ljava/lang/String;

    invoke-virtual {v7, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v5, v2

    :goto_172
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v5, v2, :cond_32b

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_52c

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v5, 0x1

    if-le v2, v5, :cond_1f2

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    move v5, v2

    :goto_194
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v5, v2, :cond_50e

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_52c

    const-string v5, "pricing_type_hd_rent_type_code"

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    invoke-virtual {v7, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pricing_type_hd_rent_re_rental_yn"

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    invoke-virtual {v7, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pricing_type_hd_rent_promotion_id"

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "pricing_type_hd_rent_price"

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-wide v12, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v7, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v5, "pricing_type_hd_rent_rent_days"

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1f2
    :goto_1f2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_59e

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v5, 0x1

    if-le v2, v5, :cond_263

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    move v5, v2

    :goto_205
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v5, v2, :cond_580

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_59e

    const-string v5, "pricing_type_sd_rent_type_code"

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    invoke-virtual {v7, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pricing_type_sd_rent_re_rental_yn"

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    invoke-virtual {v7, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pricing_type_sd_rent_promotion_id"

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "pricing_type_sd_rent_price"

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-wide v8, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v7, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v5, "pricing_type_sd_rent_rent_days"

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_263
    :goto_263
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_610

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v5, 0x1

    if-le v2, v5, :cond_2d4

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    move v5, v2

    :goto_276
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v5, v2, :cond_5f2

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_610

    const-string v5, "pricing_type_3d_rent_type_code"

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    invoke-virtual {v7, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pricing_type_3d_rent_re_rental_yn"

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    invoke-virtual {v7, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pricing_type_3d_rent_promotion_id"

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "pricing_type_3d_rent_price"

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-wide v8, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v7, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v5, "pricing_type_3d_rent_rent_days"

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2d4
    :goto_2d4
    sget-object v2, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "tb_mediahub_mymedia_list"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "product_id=\'"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v9, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' AND video_attr_type_code=\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v2, v5, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_303
    .catchall {:try_start_22 .. :try_end_303} :catchall_3d1
    .catch Ljava/lang/IllegalStateException; {:try_start_22 .. :try_end_303} :catch_3c7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_22 .. :try_end_303} :catch_44b

    move-result v2

    int-to-long v2, v2

    :try_start_305
    sget-object v4, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    sget-object v4, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_30f
    .catchall {:try_start_305 .. :try_end_30f} :catchall_3d1
    .catch Ljava/lang/IllegalStateException; {:try_start_305 .. :try_end_30f} :catch_664
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_305 .. :try_end_30f} :catch_44b

    :goto_30f
    monitor-exit v6

    goto/16 :goto_10

    :cond_312
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/util/ArrayList;Ljava/lang/String;)J

    move-result-wide v5

    invoke-static/range {p0 .. p0}, Lcom/sdgtl/mediahub/spr/download/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/download/a;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5, v6}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/common/di;J)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1f

    :cond_32b
    :try_start_32b
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v11, "01"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a5

    const-string v11, "pricing_type_hd_buy_type_code"

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    invoke-virtual {v7, v11, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "pricing_type_hd_buy_re_rental_yn"

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    invoke-virtual {v7, v11, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "pricing_type_hd_buy_promotion_id"

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v11, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v11, "pricing_type_hd_buy_price"

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-wide v12, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v7, v11, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v11, "pricing_type_hd_buy_rent_days"

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v11, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3a0
    :goto_3a0
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_172

    :cond_3a5
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v11, "02"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d4

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3c6
    .catchall {:try_start_32b .. :try_end_3c6} :catchall_3d1
    .catch Ljava/lang/IllegalStateException; {:try_start_32b .. :try_end_3c6} :catch_3c7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_32b .. :try_end_3c6} :catch_44b

    goto :goto_3a0

    :catch_3c7
    move-exception v2

    move-object v14, v2

    move-wide v15, v3

    move-wide v2, v15

    move-object v4, v14

    :goto_3cc
    :try_start_3cc
    invoke-virtual {v4}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_3cf
    .catchall {:try_start_3cc .. :try_end_3cf} :catchall_3d1

    goto/16 :goto_30f

    :catchall_3d1
    move-exception v2

    monitor-exit v6

    throw v2

    :cond_3d4
    :try_start_3d4
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v11, "03"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_451

    const-string v11, "pricing_type_sd_buy_type_code"

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    invoke-virtual {v7, v11, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "pricing_type_sd_buy_re_rental_yn"

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    invoke-virtual {v7, v11, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "pricing_type_sd_buy_promotion_id"

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v11, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v11, "pricing_type_sd_buy_price"

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-wide v12, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v7, v11, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v11, "pricing_type_sd_buy_rent_days"

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v11, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_449
    .catchall {:try_start_3d4 .. :try_end_449} :catchall_3d1
    .catch Ljava/lang/IllegalStateException; {:try_start_3d4 .. :try_end_449} :catch_3c7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3d4 .. :try_end_449} :catch_44b

    goto/16 :goto_3a0

    :catch_44b
    move-exception v2

    :try_start_44c
    monitor-exit v6
    :try_end_44d
    .catchall {:try_start_44c .. :try_end_44d} :catchall_3d1

    const-wide/16 v2, -0x1

    goto/16 :goto_10

    :cond_451
    :try_start_451
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v11, "04"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_474

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3a0

    :cond_474
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v11, "05"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4eb

    const-string v11, "pricing_type_3d_buy_type_code"

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    invoke-virtual {v7, v11, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "pricing_type_3d_buy_re_rental_yn"

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    invoke-virtual {v7, v11, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "pricing_type_3d_buy_promotion_id"

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v11, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v11, "pricing_type_3d_buy_price"

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-wide v12, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v7, v11, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v11, "pricing_type_3d_buy_rent_days"

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v11, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_3a0

    :cond_4eb
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v11, "06"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3a0

    :cond_50e
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    const-string v12, "Y"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_527

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_527
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_194

    :cond_52c
    const-string v5, "pricing_type_hd_rent_type_code"

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    invoke-virtual {v7, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pricing_type_hd_rent_re_rental_yn"

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    invoke-virtual {v7, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pricing_type_hd_rent_promotion_id"

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "pricing_type_hd_rent_price"

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-wide v12, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v7, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v5, "pricing_type_hd_rent_rent_days"

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1f2

    :cond_580
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    const-string v8, "Y"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_599

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_599
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_205

    :cond_59e
    const-string v5, "pricing_type_sd_rent_type_code"

    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    invoke-virtual {v7, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pricing_type_sd_rent_re_rental_yn"

    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    invoke-virtual {v7, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pricing_type_sd_rent_promotion_id"

    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "pricing_type_sd_rent_price"

    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-wide v12, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v7, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v5, "pricing_type_sd_rent_rent_days"

    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_263

    :cond_5f2
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    const-string v8, "Y"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60b

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_60b
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_276

    :cond_610
    const-string v5, "pricing_type_3d_rent_type_code"

    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    invoke-virtual {v7, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pricing_type_3d_rent_re_rental_yn"

    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    invoke-virtual {v7, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "pricing_type_3d_rent_promotion_id"

    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "pricing_type_3d_rent_price"

    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget-wide v8, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v7, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v5, "pricing_type_3d_rent_rent_days"

    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    iget v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_662
    .catchall {:try_start_451 .. :try_end_662} :catchall_3d1
    .catch Ljava/lang/IllegalStateException; {:try_start_451 .. :try_end_662} :catch_3c7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_451 .. :try_end_662} :catch_44b

    goto/16 :goto_2d4

    :catch_664
    move-exception v4

    goto/16 :goto_3cc
.end method

.method public static b(Ljava/lang/String;)J
    .registers 10

    const-wide/16 v2, -0x1

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_e
    move-wide v0, v2

    :goto_f
    return-wide v0

    :cond_10
    const-class v4, Lcom/sdgtl/mediahub/spr/c/a;

    monitor-enter v4

    :try_start_13
    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "currency_symbol"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "tb_mediahub_info"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_13 .. :try_end_2b} :catchall_41
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_2b} :catch_39
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_2b} :catch_44

    move-result v0

    int-to-long v0, v0

    :try_start_2d
    sget-object v5, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    sget-object v5, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_41
    .catch Ljava/lang/IllegalStateException; {:try_start_2d .. :try_end_37} :catch_48
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2d .. :try_end_37} :catch_44

    :goto_37
    monitor-exit v4

    goto :goto_f

    :catch_39
    move-exception v0

    move-object v8, v0

    move-wide v0, v2

    move-object v2, v8

    :goto_3d
    :try_start_3d
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    goto :goto_37

    :catchall_41
    move-exception v0

    monitor-exit v4

    throw v0

    :catch_44
    move-exception v0

    :try_start_45
    monitor-exit v4
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_41

    move-wide v0, v2

    goto :goto_f

    :catch_48
    move-exception v2

    goto :goto_3d
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)J
    .registers 12

    const-wide/16 v0, -0x1

    sget-object v2, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_e

    sget-object v2, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_f

    :cond_e
    :goto_e
    return-wide v0

    :cond_f
    const-class v3, Lcom/sdgtl/mediahub/spr/c/a;

    monitor-enter v3

    :try_start_12
    sget-object v2, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "mediahub_card_key"

    invoke-virtual {v2, v4, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "mediahub_card_data"

    invoke-virtual {v2, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "tb_mediahub_card"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2e
    .catchall {:try_start_12 .. :try_end_2e} :catchall_3c
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_2e} :catch_3f

    move-result-wide v1

    :try_start_2f
    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_39
    .catchall {:try_start_2f .. :try_end_39} :catchall_3c
    .catch Ljava/lang/IllegalStateException; {:try_start_2f .. :try_end_39} :catch_49

    move-wide v0, v1

    :goto_3a
    :try_start_3a
    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3c

    goto :goto_e

    :catchall_3c
    move-exception v0

    monitor-exit v3

    throw v0

    :catch_3f
    move-exception v2

    move-object v7, v2

    move-wide v8, v0

    move-wide v1, v8

    move-object v0, v7

    :goto_44
    :try_start_44
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_3c

    move-wide v0, v1

    goto :goto_3a

    :catch_49
    move-exception v0

    goto :goto_44
.end method

.method public static b(ILjava/lang/String;)Ljava/lang/String;
    .registers 12

    const-string v8, ""

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_e
    move-object v0, v8

    :goto_f
    return-object v0

    :cond_10
    const-class v9, Lcom/sdgtl/mediahub/spr/c/a;

    monitor-enter v9

    :try_start_13
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v1, "tb_mediahub_mymedia_list"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "product_id=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "file_status"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "video_attr_type_code"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "video_attr_type_code=\'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "product_title"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5d
    .catchall {:try_start_13 .. :try_end_5d} :catchall_86
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_5d} :catch_7f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_5d} :catch_89

    move-result-object v1

    if-nez v1, :cond_63

    :try_start_60
    monitor-exit v9
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_86

    move-object v0, v8

    goto :goto_f

    :cond_63
    :try_start_63
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_79

    :cond_69
    const-string v0, "file_status"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_76
    .catchall {:try_start_63 .. :try_end_76} :catchall_86
    .catch Ljava/lang/IllegalStateException; {:try_start_63 .. :try_end_76} :catch_7f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_63 .. :try_end_76} :catch_89

    move-result v0

    if-nez v0, :cond_69

    :cond_79
    move-object v0, v8

    :try_start_7a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_86
    .catch Ljava/lang/IllegalStateException; {:try_start_7a .. :try_end_7d} :catch_94
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7a .. :try_end_7d} :catch_92

    :goto_7d
    monitor-exit v9

    goto :goto_f

    :catch_7f
    move-exception v0

    move-object v1, v0

    move-object v0, v8

    :goto_82
    :try_start_82
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_86

    goto :goto_7d

    :catchall_86
    move-exception v0

    monitor-exit v9

    throw v0

    :catch_89
    move-exception v0

    move-object v1, v0

    move-object v0, v8

    :goto_8c
    :try_start_8c
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    monitor-exit v9
    :try_end_90
    .catchall {:try_start_8c .. :try_end_90} :catchall_86

    goto/16 :goto_f

    :catch_92
    move-exception v1

    goto :goto_8c

    :catch_94
    move-exception v1

    goto :goto_82
.end method

.method private static b(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 16

    const-wide/16 v13, 0x0

    const-wide/16 v11, 0x0

    const/4 v8, 0x0

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_11

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_13

    :cond_11
    move-object v0, v8

    :goto_12
    return-object v0

    :cond_13
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const-class v10, Lcom/sdgtl/mediahub/spr/c/a;

    monitor-enter v10

    :try_start_1b
    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "tb_mediahub_mymedia_list"

    invoke-static {}, Lcom/sdgtl/mediahub/spr/c/a;->l()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "product_title ASC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2c
    .catchall {:try_start_1b .. :try_end_2c} :catchall_476
    .catch Ljava/lang/IllegalStateException; {:try_start_1b .. :try_end_2c} :catch_471
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b .. :try_end_2c} :catch_479

    move-result-object v1

    if-nez v1, :cond_32

    :try_start_2f
    monitor-exit v10
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_476

    move-object v0, v8

    goto :goto_12

    :cond_32
    :try_start_32
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_46a

    :cond_38
    new-instance v2, Lcom/sdgtl/mediahub/spr/common/di;

    invoke-direct {v2}, Lcom/sdgtl/mediahub/spr/common/di;-><init>()V

    const-string v0, "order_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/sdgtl/mediahub/spr/common/di;->a:J

    const-string v0, "order_item_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/sdgtl/mediahub/spr/common/di;->b:J

    const-string v0, "license"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->e:I

    const-string v0, "pricing_type_code"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v0, "episode_title"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->l:Ljava/lang/String;

    const-string v0, "product_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    const-string v0, "saffron_item_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->h:I

    const-string v0, "saffron_user_license_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->i:I

    const-string v0, "product_title"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    const-string v0, "parent_product_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->m:I

    const-string v0, "parent_product_title"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->n:Ljava/lang/String;

    const-string v0, "release_date"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->r:Ljava/lang/String;

    const-string v0, "thumbnail_url"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->s:Ljava/lang/String;

    const-string v0, "large_poster_url"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->u:Ljava/lang/String;

    const-string v0, "parent_thumbnail_url"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->o:Ljava/lang/String;

    const-string v0, "running_time"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->x:Ljava/lang/String;

    const-string v0, "actor"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->y:Ljava/lang/String;

    const-string v0, "DIRECTOR"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->z:Ljava/lang/String;

    const-string v0, "genre"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->A:Ljava/lang/String;

    const-string v0, "purchase_date"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->d:Ljava/lang/String;

    const-string v0, "due_date"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->C:Ljava/lang/String;

    const-string v0, "rent_days"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->D:I

    const-string v0, "file_status"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->O:Ljava/lang/String;

    const-string v0, "availability"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->F:Ljava/lang/String;

    const-string v0, "hdmi_yn"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->G:Ljava/lang/String;

    const-string v0, "archive_yn"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->I:Ljava/lang/String;

    const-string v0, "nesting_status"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->N:Z

    const-string v0, "paused_position"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/sdgtl/mediahub/spr/common/di;->P:J

    const-string v0, "video_attr_type_code"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    const-string v0, "synopsis"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->B:Ljava/lang/String;

    const-string v0, "download_storage"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->R:I

    const-string v0, "drm_license_status"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->S:I

    const-string v0, "product_type_code"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->k:Ljava/lang/String;

    const-string v0, "mpaa_rating"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->v:Ljava/lang/String;

    const-string v0, "licensed_date"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->J:Ljava/lang/String;

    const-string v0, "wfd_yn"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->H:Ljava/lang/String;

    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->J:Ljava/lang/String;

    if-eqz v0, :cond_207

    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->J:Ljava/lang/String;

    if-eqz v0, :cond_20b

    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->J:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20b

    :cond_207
    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->c:Ljava/lang/String;

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->J:Ljava/lang/String;

    :cond_20b
    const-string v0, "hd_file_size"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    cmp-long v0, v3, v13

    if-lez v0, :cond_234

    new-instance v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;

    invoke-direct {v5}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;-><init>()V

    const v0, 0x7f0a0014

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->a:Ljava/lang/String;

    const-string v0, "01"

    iput-object v0, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->b:Ljava/lang/String;

    iput-wide v3, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->c:J

    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_234
    const-string v0, "sd_file_size"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    cmp-long v0, v3, v13

    if-lez v0, :cond_25d

    new-instance v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;

    invoke-direct {v5}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;-><init>()V

    const v0, 0x7f0a0015

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->a:Ljava/lang/String;

    const-string v0, "02"

    iput-object v0, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->b:Ljava/lang/String;

    iput-wide v3, v5, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->c:J

    iget-object v0, v2, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25d
    const-string v0, "pricing_type_hd_buy_price"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    cmpl-double v0, v3, v11

    if-lez v0, :cond_2b3

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;-><init>()V

    iput-wide v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    const-string v3, "pricing_type_hd_buy_type_code"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v3, "pricing_type_hd_buy_re_rental_yn"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    const-string v3, "pricing_type_hd_buy_promotion_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->d:I

    const-string v3, "pricing_type_hd_buy_rent_days"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->i:I

    const-string v3, "pricing_type_hd_buy_display_promotion"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->e:Ljava/lang/String;

    iget-object v3, v2, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b3
    const-string v0, "pricing_type_hd_rent_price"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    cmpl-double v0, v3, v11

    if-lez v0, :cond_309

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;-><init>()V

    iput-wide v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    const-string v3, "pricing_type_hd_rent_type_code"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v3, "pricing_type_hd_rent_re_rental_yn"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    const-string v3, "pricing_type_hd_rent_promotion_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->d:I

    const-string v3, "pricing_type_hd_rent_rent_days"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->i:I

    const-string v3, "pricing_type_hd_rent_display_promotion"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->e:Ljava/lang/String;

    iget-object v3, v2, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_309
    const-string v0, "pricing_type_sd_buy_price"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    cmpl-double v0, v3, v11

    if-lez v0, :cond_35f

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;-><init>()V

    iput-wide v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    const-string v3, "pricing_type_sd_buy_type_code"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v3, "pricing_type_sd_buy_re_rental_yn"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    const-string v3, "pricing_type_sd_buy_promotion_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->d:I

    const-string v3, "pricing_type_sd_buy_rent_days"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->i:I

    const-string v3, "pricing_type_sd_buy_display_promotion"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->e:Ljava/lang/String;

    iget-object v3, v2, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_35f
    const-string v0, "pricing_type_sd_rent_price"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    cmpl-double v0, v3, v11

    if-lez v0, :cond_3b5

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;-><init>()V

    iput-wide v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    const-string v3, "pricing_type_sd_rent_type_code"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v3, "pricing_type_sd_rent_re_rental_yn"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    const-string v3, "pricing_type_sd_rent_promotion_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->d:I

    const-string v3, "pricing_type_sd_rent_rent_days"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->i:I

    const-string v3, "pricing_type_sd_rent_display_promotion"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->e:Ljava/lang/String;

    iget-object v3, v2, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3b5
    const-string v0, "pricing_type_3d_buy_price"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    cmpl-double v0, v3, v11

    if-lez v0, :cond_40b

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;-><init>()V

    iput-wide v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    const-string v3, "pricing_type_3d_buy_type_code"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v3, "pricing_type_3d_buy_re_rental_yn"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    const-string v3, "pricing_type_3d_buy_promotion_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->d:I

    const-string v3, "pricing_type_3d_buy_rent_days"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->i:I

    const-string v3, "pricing_type_3d_buy_display_promotion"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->e:Ljava/lang/String;

    iget-object v3, v2, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_40b
    const-string v0, "pricing_type_3d_rent_price"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    cmpl-double v0, v3, v11

    if-lez v0, :cond_461

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;-><init>()V

    iput-wide v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    const-string v3, "pricing_type_3d_rent_type_code"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v3, "pricing_type_3d_rent_re_rental_yn"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    const-string v3, "pricing_type_3d_rent_promotion_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->d:I

    const-string v3, "pricing_type_3d_rent_rent_days"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->i:I

    const-string v3, "pricing_type_3d_rent_display_promotion"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->e:Ljava/lang/String;

    iget-object v3, v2, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_461
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_38

    :cond_46a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_46d
    .catchall {:try_start_32 .. :try_end_46d} :catchall_476
    .catch Ljava/lang/IllegalStateException; {:try_start_32 .. :try_end_46d} :catch_471
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_32 .. :try_end_46d} :catch_479

    :goto_46d
    monitor-exit v10

    move-object v0, v9

    goto/16 :goto_12

    :catch_471
    move-exception v0

    :try_start_472
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_475
    .catchall {:try_start_472 .. :try_end_475} :catchall_476

    goto :goto_46d

    :catchall_476
    move-exception v0

    monitor-exit v10

    throw v0

    :catch_479
    move-exception v0

    :try_start_47a
    monitor-exit v10
    :try_end_47b
    .catchall {:try_start_47a .. :try_end_47b} :catchall_476

    move-object v0, v8

    goto/16 :goto_12
.end method

.method public static b()Z
    .registers 12

    const/4 v9, 0x1

    const/4 v8, 0x0

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_e
    move v0, v8

    :goto_f
    return v0

    :cond_10
    const-class v10, Lcom/sdgtl/mediahub/spr/c/a;

    monitor-enter v10

    :try_start_13
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v1, "tb_mediahub_info"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "sim_card"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2f
    .catchall {:try_start_13 .. :try_end_2f} :catchall_5c
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_2f} :catch_55
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_2f} :catch_5f

    move-result-object v2

    if-nez v2, :cond_35

    :try_start_32
    monitor-exit v10
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_5c

    move v0, v8

    goto :goto_f

    :cond_35
    :try_start_35
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_5c
    .catch Ljava/lang/IllegalStateException; {:try_start_35 .. :try_end_38} :catch_55
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_35 .. :try_end_38} :catch_5f

    move-result v0

    if-eqz v0, :cond_6f

    move v1, v8

    :cond_3c
    :try_start_3c
    const-string v0, "sim_card"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_49
    .catchall {:try_start_3c .. :try_end_49} :catchall_5c
    .catch Ljava/lang/IllegalStateException; {:try_start_3c .. :try_end_49} :catch_68
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3c .. :try_end_49} :catch_5f

    move-result v0

    if-nez v0, :cond_3c

    move v0, v1

    :goto_4d
    :try_start_4d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_5c
    .catch Ljava/lang/IllegalStateException; {:try_start_4d .. :try_end_50} :catch_6d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4d .. :try_end_50} :catch_5f

    :goto_50
    monitor-exit v10

    if-nez v0, :cond_66

    move v0, v8

    goto :goto_f

    :catch_55
    move-exception v0

    move-object v1, v0

    move v0, v8

    :goto_58
    :try_start_58
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_5c

    goto :goto_50

    :catchall_5c
    move-exception v0

    monitor-exit v10

    throw v0

    :catch_5f
    move-exception v0

    :try_start_60
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    monitor-exit v10
    :try_end_64
    .catchall {:try_start_60 .. :try_end_64} :catchall_5c

    move v0, v8

    goto :goto_f

    :cond_66
    move v0, v9

    goto :goto_f

    :catch_68
    move-exception v0

    move-object v11, v0

    move v0, v1

    move-object v1, v11

    goto :goto_58

    :catch_6d
    move-exception v1

    goto :goto_58

    :cond_6f
    move v0, v8

    goto :goto_4d
.end method

.method public static b(I)Z
    .registers 7

    const/4 v0, 0x0

    sget-object v1, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_d

    sget-object v1, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    const-class v2, Lcom/sdgtl/mediahub/spr/c/a;

    monitor-enter v2

    :try_start_11
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SELECT product_id FROM tb_mediahub_mymedia_list where product_id = \'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_3a

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I
    :try_end_32
    .catchall {:try_start_11 .. :try_end_32} :catchall_3c
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_32} :catch_3f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_32} :catch_48

    move-result v1

    if-lez v1, :cond_55

    const/4 v1, 0x1

    :goto_36
    :try_start_36
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3c
    .catch Ljava/lang/IllegalStateException; {:try_start_36 .. :try_end_39} :catch_53
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_36 .. :try_end_39} :catch_51

    move v0, v1

    :cond_3a
    :goto_3a
    :try_start_3a
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3c

    goto :goto_d

    :catchall_3c
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_3f
    move-exception v1

    move-object v5, v1

    move v1, v0

    move-object v0, v5

    :goto_43
    :try_start_43
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    move v0, v1

    goto :goto_3a

    :catch_48
    move-exception v1

    move-object v5, v1

    move v1, v0

    move-object v0, v5

    :goto_4c
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_4f
    .catchall {:try_start_43 .. :try_end_4f} :catchall_3c

    move v0, v1

    goto :goto_3a

    :catch_51
    move-exception v0

    goto :goto_4c

    :catch_53
    move-exception v0

    goto :goto_43

    :cond_55
    move v1, v0

    goto :goto_36
.end method

.method public static c(ILjava/lang/String;)J
    .registers 13

    const-wide/16 v8, -0x1

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_e
    move-wide v0, v8

    :goto_f
    return-wide v0

    :cond_10
    const-class v10, Lcom/sdgtl/mediahub/spr/c/a;

    monitor-enter v10

    :try_start_13
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v1, "tb_mediahub_mymedia_list"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "product_id=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "paused_position"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "video_attr_type_code"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "video_attr_type_code=\'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "product_title"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5d
    .catchall {:try_start_13 .. :try_end_5d} :catchall_86
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_5d} :catch_7f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_5d} :catch_89

    move-result-object v2

    if-nez v2, :cond_63

    :try_start_60
    monitor-exit v10
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_86

    move-wide v0, v8

    goto :goto_f

    :cond_63
    :try_start_63
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_79

    :cond_69
    const-string v0, "paused_position"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_76
    .catchall {:try_start_63 .. :try_end_76} :catchall_86
    .catch Ljava/lang/IllegalStateException; {:try_start_63 .. :try_end_76} :catch_7f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_63 .. :try_end_76} :catch_89

    move-result v0

    if-nez v0, :cond_69

    :cond_79
    move-wide v0, v8

    :try_start_7a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_86
    .catch Ljava/lang/IllegalStateException; {:try_start_7a .. :try_end_7d} :catch_94
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7a .. :try_end_7d} :catch_92

    :goto_7d
    monitor-exit v10

    goto :goto_f

    :catch_7f
    move-exception v0

    move-object v2, v0

    move-wide v0, v8

    :goto_82
    :try_start_82
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_86

    goto :goto_7d

    :catchall_86
    move-exception v0

    monitor-exit v10

    throw v0

    :catch_89
    move-exception v0

    move-object v2, v0

    move-wide v0, v8

    :goto_8c
    :try_start_8c
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    monitor-exit v10
    :try_end_90
    .catchall {:try_start_8c .. :try_end_90} :catchall_86

    goto/16 :goto_f

    :catch_92
    move-exception v2

    goto :goto_8c

    :catch_94
    move-exception v2

    goto :goto_82
.end method

.method public static c(ILjava/lang/String;Ljava/lang/String;)J
    .registers 12

    const-wide/16 v2, -0x1

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_e
    move-wide v0, v2

    :goto_f
    return-wide v0

    :cond_10
    const-class v4, Lcom/sdgtl/mediahub/spr/c/a;

    monitor-enter v4

    :try_start_13
    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "charge_dialog_display"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "tb_mediahub_mymedia_list"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "product_id=\'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' AND video_attr_type_code=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_13 .. :try_end_49} :catchall_5f
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_49} :catch_57
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_49} :catch_62

    move-result v0

    int-to-long v0, v0

    :try_start_4b
    sget-object v5, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    sget-object v5, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_55
    .catchall {:try_start_4b .. :try_end_55} :catchall_5f
    .catch Ljava/lang/IllegalStateException; {:try_start_4b .. :try_end_55} :catch_66
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4b .. :try_end_55} :catch_62

    :goto_55
    monitor-exit v4

    goto :goto_f

    :catch_57
    move-exception v0

    move-object v8, v0

    move-wide v0, v2

    move-object v2, v8

    :goto_5b
    :try_start_5b
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_5f

    goto :goto_55

    :catchall_5f
    move-exception v0

    monitor-exit v4

    throw v0

    :catch_62
    move-exception v0

    :try_start_63
    monitor-exit v4
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_5f

    move-wide v0, v2

    goto :goto_f

    :catch_66
    move-exception v2

    goto :goto_5b
.end method

.method public static c()Ljava/lang/String;
    .registers 10

    const/4 v8, 0x0

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_f

    :cond_d
    move-object v0, v8

    :goto_e
    return-object v0

    :cond_f
    const-class v9, Lcom/sdgtl/mediahub/spr/c/a;

    monitor-enter v9

    :try_start_12
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v1, "tb_mediahub_info"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "eula_version"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2e
    .catchall {:try_start_12 .. :try_end_2e} :catchall_57
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_2e} :catch_50
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_2e} :catch_5a

    move-result-object v1

    if-nez v1, :cond_34

    :try_start_31
    monitor-exit v9
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_57

    move-object v0, v8

    goto :goto_e

    :cond_34
    :try_start_34
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_57
    .catch Ljava/lang/IllegalStateException; {:try_start_34 .. :try_end_37} :catch_50
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_34 .. :try_end_37} :catch_5a

    move-result v0

    if-eqz v0, :cond_6e

    :cond_3a
    :try_start_3a
    const-string v0, "eula_version"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_47
    .catchall {:try_start_3a .. :try_end_47} :catchall_57
    .catch Ljava/lang/IllegalStateException; {:try_start_3a .. :try_end_47} :catch_68
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3a .. :try_end_47} :catch_62

    move-result v0

    if-nez v0, :cond_3a

    move-object v0, v8

    :goto_4b
    :try_start_4b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_57
    .catch Ljava/lang/IllegalStateException; {:try_start_4b .. :try_end_4e} :catch_6c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4b .. :try_end_4e} :catch_66

    :goto_4e
    monitor-exit v9

    goto :goto_e

    :catch_50
    move-exception v0

    move-object v1, v0

    move-object v0, v8

    :goto_53
    :try_start_53
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_57

    goto :goto_4e

    :catchall_57
    move-exception v0

    monitor-exit v9

    throw v0

    :catch_5a
    move-exception v0

    move-object v1, v0

    move-object v0, v8

    :goto_5d
    :try_start_5d
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    monitor-exit v9
    :try_end_61
    .catchall {:try_start_5d .. :try_end_61} :catchall_57

    goto :goto_e

    :catch_62
    move-exception v0

    move-object v1, v0

    move-object v0, v8

    goto :goto_5d

    :catch_66
    move-exception v1

    goto :goto_5d

    :catch_68
    move-exception v0

    move-object v1, v0

    move-object v0, v8

    goto :goto_53

    :catch_6c
    move-exception v1

    goto :goto_53

    :cond_6e
    move-object v0, v8

    goto :goto_4b
.end method

.method public static c(I)Ljava/lang/String;
    .registers 11

    const/4 v8, 0x0

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_f

    :cond_d
    move-object v0, v8

    :goto_e
    return-object v0

    :cond_f
    const-class v9, Lcom/sdgtl/mediahub/spr/c/a;

    monitor-enter v9

    :try_start_12
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v1, "tb_mediahub_mymedia_list"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "product_id=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "due_date"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "product_title"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_47
    .catchall {:try_start_12 .. :try_end_47} :catchall_70
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_47} :catch_69
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_47} :catch_73

    move-result-object v1

    if-nez v1, :cond_4d

    :try_start_4a
    monitor-exit v9
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_70

    move-object v0, v8

    goto :goto_e

    :cond_4d
    :try_start_4d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_70
    .catch Ljava/lang/IllegalStateException; {:try_start_4d .. :try_end_50} :catch_69
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4d .. :try_end_50} :catch_73

    move-result v0

    if-eqz v0, :cond_87

    :cond_53
    :try_start_53
    const-string v0, "due_date"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_60
    .catchall {:try_start_53 .. :try_end_60} :catchall_70
    .catch Ljava/lang/IllegalStateException; {:try_start_53 .. :try_end_60} :catch_81
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_53 .. :try_end_60} :catch_7b

    move-result v0

    if-nez v0, :cond_53

    move-object v0, v8

    :goto_64
    :try_start_64
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_70
    .catch Ljava/lang/IllegalStateException; {:try_start_64 .. :try_end_67} :catch_85
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_64 .. :try_end_67} :catch_7f

    :goto_67
    monitor-exit v9

    goto :goto_e

    :catch_69
    move-exception v0

    move-object v1, v0

    move-object v0, v8

    :goto_6c
    :try_start_6c
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_70

    goto :goto_67

    :catchall_70
    move-exception v0

    monitor-exit v9

    throw v0

    :catch_73
    move-exception v0

    move-object v1, v0

    move-object v0, v8

    :goto_76
    :try_start_76
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    monitor-exit v9
    :try_end_7a
    .catchall {:try_start_76 .. :try_end_7a} :catchall_70

    goto :goto_e

    :catch_7b
    move-exception v0

    move-object v1, v0

    move-object v0, v8

    goto :goto_76

    :catch_7f
    move-exception v1

    goto :goto_76

    :catch_81
    move-exception v0

    move-object v1, v0

    move-object v0, v8

    goto :goto_6c

    :catch_85
    move-exception v1

    goto :goto_6c

    :cond_87
    move-object v0, v8

    goto :goto_64
.end method

.method public static c(Ljava/lang/String;)V
    .registers 6

    :try_start_0
    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    const-class v1, Lcom/sdgtl/mediahub/spr/c/a;

    monitor-enter v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_41

    :try_start_10
    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "tb_mediahub_data"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mediahub_dgta_key=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3c
    .catchall {:try_start_10 .. :try_end_3c} :catchall_3e
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_3c} :catch_5b

    :goto_3c
    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3e

    goto :goto_c

    :catchall_3e
    move-exception v0

    :try_start_3f
    monitor-exit v1

    throw v0
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_41} :catch_41

    :catch_41
    move-exception v0

    const-string v1, "MediaHubAPP"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MHDatabaseController - deleteMediaHubDataRow() -"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :catch_5b
    move-exception v0

    :try_start_5c
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_3e

    goto :goto_3c
.end method

.method public static d(ILjava/lang/String;)I
    .registers 12

    const/4 v8, 0x1

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_f

    :cond_d
    move v0, v8

    :goto_e
    return v0

    :cond_f
    const-class v9, Lcom/sdgtl/mediahub/spr/c/a;

    monitor-enter v9

    :try_start_12
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v1, "tb_mediahub_mymedia_list"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "product_id=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "drm_license_status"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "video_attr_type_code"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "video_attr_type_code=\'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "product_title"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5c
    .catchall {:try_start_12 .. :try_end_5c} :catchall_85
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_5c} :catch_7e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_5c} :catch_88

    move-result-object v1

    if-nez v1, :cond_62

    :try_start_5f
    monitor-exit v9
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_85

    move v0, v8

    goto :goto_e

    :cond_62
    :try_start_62
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_78

    :cond_68
    const-string v0, "drm_license_status"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_75
    .catchall {:try_start_62 .. :try_end_75} :catchall_85
    .catch Ljava/lang/IllegalStateException; {:try_start_62 .. :try_end_75} :catch_7e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_62 .. :try_end_75} :catch_88

    move-result v0

    if-nez v0, :cond_68

    :cond_78
    move v0, v8

    :try_start_79
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_85
    .catch Ljava/lang/IllegalStateException; {:try_start_79 .. :try_end_7c} :catch_93
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_79 .. :try_end_7c} :catch_91

    :goto_7c
    monitor-exit v9

    goto :goto_e

    :catch_7e
    move-exception v0

    move-object v1, v0

    move v0, v8

    :goto_81
    :try_start_81
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_85

    goto :goto_7c

    :catchall_85
    move-exception v0

    monitor-exit v9

    throw v0

    :catch_88
    move-exception v0

    move-object v1, v0

    move v0, v8

    :goto_8b
    :try_start_8b
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    monitor-exit v9
    :try_end_8f
    .catchall {:try_start_8b .. :try_end_8f} :catchall_85

    goto/16 :goto_e

    :catch_91
    move-exception v1

    goto :goto_8b

    :catch_93
    move-exception v1

    goto :goto_81
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const-string v8, ""

    :try_start_2
    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_e
    move-object v0, v8

    :goto_f
    return-object v0

    :cond_10
    const-class v9, Lcom/sdgtl/mediahub/spr/c/a;

    monitor-enter v9
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_13} :catch_90

    :try_start_13
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v1, "tb_mediahub_data"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mediahub_dgta_key=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "mediahub_data_vaule"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_47
    .catchall {:try_start_13 .. :try_end_47} :catchall_94
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_47} :catch_83

    move-result-object v1

    if-nez v1, :cond_4d

    :try_start_4a
    monitor-exit v9
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_94

    move-object v0, v8

    goto :goto_f

    :cond_4d
    :try_start_4d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_63

    :cond_53
    const-string v0, "mediahub_data_vaule"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_60
    .catchall {:try_start_4d .. :try_end_60} :catchall_94
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4d .. :try_end_60} :catch_83

    move-result v0

    if-nez v0, :cond_53

    :cond_63
    move-object v0, v8

    :try_start_64
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_8b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_64 .. :try_end_67} :catch_96

    :try_start_67
    monitor-exit v9
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_68} :catch_69

    goto :goto_f

    :catch_69
    move-exception v1

    :goto_6a
    const-string v2, "MediaHubAPP"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MHDatabaseController - getMediaHubData() -"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :catch_83
    move-exception v0

    move-object v1, v0

    move-object v0, v8

    :goto_86
    :try_start_86
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    monitor-exit v9
    :try_end_8a
    .catchall {:try_start_86 .. :try_end_8a} :catchall_8b

    goto :goto_f

    :catchall_8b
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    :goto_8e
    :try_start_8e
    monitor-exit v9

    throw v0
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_90} :catch_90

    :catch_90
    move-exception v0

    move-object v1, v0

    move-object v0, v8

    goto :goto_6a

    :catchall_94
    move-exception v0

    goto :goto_8e

    :catch_96
    move-exception v1

    goto :goto_86
.end method

.method public static d()Z
    .registers 12

    const/4 v9, 0x1

    const/4 v8, 0x0

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_e
    move v0, v8

    :goto_f
    return v0

    :cond_10
    const-class v10, Lcom/sdgtl/mediahub/spr/c/a;

    monitor-enter v10

    :try_start_13
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v1, "tb_mediahub_info"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "did"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2f
    .catchall {:try_start_13 .. :try_end_2f} :catchall_5c
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_2f} :catch_55
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_2f} :catch_5f

    move-result-object v2

    if-nez v2, :cond_35

    :try_start_32
    monitor-exit v10
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_5c

    move v0, v8

    goto :goto_f

    :cond_35
    :try_start_35
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_5c
    .catch Ljava/lang/IllegalStateException; {:try_start_35 .. :try_end_38} :catch_55
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_35 .. :try_end_38} :catch_5f

    move-result v0

    if-eqz v0, :cond_6f

    move v1, v8

    :cond_3c
    :try_start_3c
    const-string v0, "did"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_49
    .catchall {:try_start_3c .. :try_end_49} :catchall_5c
    .catch Ljava/lang/IllegalStateException; {:try_start_3c .. :try_end_49} :catch_68
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3c .. :try_end_49} :catch_5f

    move-result v0

    if-nez v0, :cond_3c

    move v0, v1

    :goto_4d
    :try_start_4d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_5c
    .catch Ljava/lang/IllegalStateException; {:try_start_4d .. :try_end_50} :catch_6d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4d .. :try_end_50} :catch_5f

    :goto_50
    monitor-exit v10

    if-nez v0, :cond_66

    move v0, v8

    goto :goto_f

    :catch_55
    move-exception v0

    move-object v1, v0

    move v0, v8

    :goto_58
    :try_start_58
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_5c

    goto :goto_50

    :catchall_5c
    move-exception v0

    monitor-exit v10

    throw v0

    :catch_5f
    move-exception v0

    :try_start_60
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    monitor-exit v10
    :try_end_64
    .catchall {:try_start_60 .. :try_end_64} :catchall_5c

    move v0, v8

    goto :goto_f

    :cond_66
    move v0, v9

    goto :goto_f

    :catch_68
    move-exception v0

    move-object v11, v0

    move v0, v1

    move-object v1, v11

    goto :goto_58

    :catch_6d
    move-exception v1

    goto :goto_58

    :cond_6f
    move v0, v8

    goto :goto_4d
.end method

.method public static e()J
    .registers 9

    const-wide/16 v2, -0x1

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_e
    move-wide v0, v2

    :goto_f
    return-wide v0

    :cond_10
    const-class v4, Lcom/sdgtl/mediahub/spr/c/a;

    monitor-enter v4

    :try_start_13
    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "did"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "tb_mediahub_info"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_13 .. :try_end_30} :catchall_46
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_30} :catch_3e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_30} :catch_49

    move-result v0

    int-to-long v0, v0

    :try_start_32
    sget-object v5, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    sget-object v5, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_46
    .catch Ljava/lang/IllegalStateException; {:try_start_32 .. :try_end_3c} :catch_4d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_32 .. :try_end_3c} :catch_49

    :goto_3c
    monitor-exit v4

    goto :goto_f

    :catch_3e
    move-exception v0

    move-object v8, v0

    move-wide v0, v2

    move-object v2, v8

    :goto_42
    :try_start_42
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_46

    goto :goto_3c

    :catchall_46
    move-exception v0

    monitor-exit v4

    throw v0

    :catch_49
    move-exception v0

    :try_start_4a
    monitor-exit v4
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_46

    move-wide v0, v2

    goto :goto_f

    :catch_4d
    move-exception v2

    goto :goto_42
.end method

.method public static e(ILjava/lang/String;)Ljava/lang/String;
    .registers 12

    const/4 v8, 0x0

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_f

    :cond_d
    move-object v0, v8

    :goto_e
    return-object v0

    :cond_f
    const-class v9, Lcom/sdgtl/mediahub/spr/c/a;

    monitor-enter v9

    :try_start_12
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v1, "tb_mediahub_mymedia_list"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "product_id=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "licensed_date"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "video_attr_type_code"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "video_attr_type_code=\'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "product_title"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5c
    .catchall {:try_start_12 .. :try_end_5c} :catchall_85
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_5c} :catch_7e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_5c} :catch_88

    move-result-object v1

    if-nez v1, :cond_62

    :try_start_5f
    monitor-exit v9
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_85

    move-object v0, v8

    goto :goto_e

    :cond_62
    :try_start_62
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_85
    .catch Ljava/lang/IllegalStateException; {:try_start_62 .. :try_end_65} :catch_7e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_62 .. :try_end_65} :catch_88

    move-result v0

    if-eqz v0, :cond_9d

    :cond_68
    :try_start_68
    const-string v0, "licensed_date"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_75
    .catchall {:try_start_68 .. :try_end_75} :catchall_85
    .catch Ljava/lang/IllegalStateException; {:try_start_68 .. :try_end_75} :catch_97
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_68 .. :try_end_75} :catch_91

    move-result v0

    if-nez v0, :cond_68

    move-object v0, v8

    :goto_79
    :try_start_79
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_85
    .catch Ljava/lang/IllegalStateException; {:try_start_79 .. :try_end_7c} :catch_9b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_79 .. :try_end_7c} :catch_95

    :goto_7c
    monitor-exit v9

    goto :goto_e

    :catch_7e
    move-exception v0

    move-object v1, v0

    move-object v0, v8

    :goto_81
    :try_start_81
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_85

    goto :goto_7c

    :catchall_85
    move-exception v0

    monitor-exit v9

    throw v0

    :catch_88
    move-exception v0

    move-object v1, v0

    move-object v0, v8

    :goto_8b
    :try_start_8b
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    monitor-exit v9
    :try_end_8f
    .catchall {:try_start_8b .. :try_end_8f} :catchall_85

    goto/16 :goto_e

    :catch_91
    move-exception v0

    move-object v1, v0

    move-object v0, v8

    goto :goto_8b

    :catch_95
    move-exception v1

    goto :goto_8b

    :catch_97
    move-exception v0

    move-object v1, v0

    move-object v0, v8

    goto :goto_81

    :catch_9b
    move-exception v1

    goto :goto_81

    :cond_9d
    move-object v0, v8

    goto :goto_79
.end method

.method public static e(Ljava/lang/String;)V
    .registers 6

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    const-class v1, Lcom/sdgtl/mediahub/spr/c/a;

    monitor-enter v1

    :try_start_10
    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "tb_mediahub_card"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mediahub_card_key=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3c
    .catchall {:try_start_10 .. :try_end_3c} :catchall_3e
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_3c} :catch_41

    :goto_3c
    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3e

    goto :goto_c

    :catchall_3e
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_41
    move-exception v0

    :try_start_42
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_3e

    goto :goto_3c
.end method

.method public static f(ILjava/lang/String;)J
    .registers 11

    const-wide/16 v2, -0x1

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_e
    move-wide v0, v2

    :goto_f
    return-wide v0

    :cond_10
    const-class v4, Lcom/sdgtl/mediahub/spr/c/a;

    monitor-enter v4

    :try_start_13
    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "due_date"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "tb_mediahub_mymedia_list"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "product_id=\'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_13 .. :try_end_3f} :catchall_55
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_3f} :catch_4d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_3f} :catch_58

    move-result v0

    int-to-long v0, v0

    :try_start_41
    sget-object v5, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    sget-object v5, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4b
    .catchall {:try_start_41 .. :try_end_4b} :catchall_55
    .catch Ljava/lang/IllegalStateException; {:try_start_41 .. :try_end_4b} :catch_5c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_41 .. :try_end_4b} :catch_58

    :goto_4b
    monitor-exit v4

    goto :goto_f

    :catch_4d
    move-exception v0

    move-object v8, v0

    move-wide v0, v2

    move-object v2, v8

    :goto_51
    :try_start_51
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_55

    goto :goto_4b

    :catchall_55
    move-exception v0

    monitor-exit v4

    throw v0

    :catch_58
    move-exception v0

    :try_start_59
    monitor-exit v4
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_55

    move-wide v0, v2

    goto :goto_f

    :catch_5c
    move-exception v2

    goto :goto_51
.end method

.method public static f()Ljava/lang/String;
    .registers 10

    const/4 v8, 0x0

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_f

    :cond_d
    move-object v0, v8

    :goto_e
    return-object v0

    :cond_f
    const-class v9, Lcom/sdgtl/mediahub/spr/c/a;

    monitor-enter v9

    :try_start_12
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v1, "tb_mediahub_info"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "currency_symbol"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2e
    .catchall {:try_start_12 .. :try_end_2e} :catchall_57
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_2e} :catch_50
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_2e} :catch_5a

    move-result-object v1

    if-nez v1, :cond_34

    :try_start_31
    monitor-exit v9
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_57

    move-object v0, v8

    goto :goto_e

    :cond_34
    :try_start_34
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_57
    .catch Ljava/lang/IllegalStateException; {:try_start_34 .. :try_end_37} :catch_50
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_34 .. :try_end_37} :catch_5a

    move-result v0

    if-eqz v0, :cond_6e

    :cond_3a
    :try_start_3a
    const-string v0, "currency_symbol"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_47
    .catchall {:try_start_3a .. :try_end_47} :catchall_57
    .catch Ljava/lang/IllegalStateException; {:try_start_3a .. :try_end_47} :catch_68
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3a .. :try_end_47} :catch_62

    move-result v0

    if-nez v0, :cond_3a

    move-object v0, v8

    :goto_4b
    :try_start_4b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_57
    .catch Ljava/lang/IllegalStateException; {:try_start_4b .. :try_end_4e} :catch_6c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4b .. :try_end_4e} :catch_66

    :goto_4e
    monitor-exit v9

    goto :goto_e

    :catch_50
    move-exception v0

    move-object v1, v0

    move-object v0, v8

    :goto_53
    :try_start_53
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_57

    goto :goto_4e

    :catchall_57
    move-exception v0

    monitor-exit v9

    throw v0

    :catch_5a
    move-exception v0

    move-object v1, v0

    move-object v0, v8

    :goto_5d
    :try_start_5d
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    monitor-exit v9
    :try_end_61
    .catchall {:try_start_5d .. :try_end_61} :catchall_57

    goto :goto_e

    :catch_62
    move-exception v0

    move-object v1, v0

    move-object v0, v8

    goto :goto_5d

    :catch_66
    move-exception v1

    goto :goto_5d

    :catch_68
    move-exception v0

    move-object v1, v0

    move-object v0, v8

    goto :goto_53

    :catch_6c
    move-exception v1

    goto :goto_53

    :cond_6e
    move-object v0, v8

    goto :goto_4b
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v8, 0x0

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_f

    :cond_d
    move-object v0, v8

    :goto_e
    return-object v0

    :cond_f
    const-class v9, Lcom/sdgtl/mediahub/spr/c/a;

    monitor-enter v9

    :try_start_12
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v1, "tb_mediahub_card"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mediahub_card_key=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "mediahub_card_data"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_46
    .catchall {:try_start_12 .. :try_end_46} :catchall_70
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_46} :catch_68

    move-result-object v1

    if-nez v1, :cond_4c

    :try_start_49
    monitor-exit v9
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_70

    move-object v0, v8

    goto :goto_e

    :cond_4c
    :try_start_4c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_70
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4c .. :try_end_4f} :catch_68

    move-result v0

    if-eqz v0, :cond_79

    :cond_52
    :try_start_52
    const-string v0, "mediahub_card_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5f
    .catchall {:try_start_52 .. :try_end_5f} :catchall_70
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_52 .. :try_end_5f} :catch_73

    move-result v0

    if-nez v0, :cond_52

    move-object v0, v8

    :goto_63
    :try_start_63
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_70
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_63 .. :try_end_66} :catch_77

    monitor-exit v9

    goto :goto_e

    :catch_68
    move-exception v0

    move-object v1, v0

    move-object v0, v8

    :goto_6b
    :try_start_6b
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    monitor-exit v9
    :try_end_6f
    .catchall {:try_start_6b .. :try_end_6f} :catchall_70

    goto :goto_e

    :catchall_70
    move-exception v0

    monitor-exit v9

    throw v0

    :catch_73
    move-exception v0

    move-object v1, v0

    move-object v0, v8

    goto :goto_6b

    :catch_77
    move-exception v1

    goto :goto_6b

    :cond_79
    move-object v0, v8

    goto :goto_63
.end method

.method public static g()I
    .registers 11

    const/4 v8, 0x0

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_f

    :cond_d
    move v0, v8

    :goto_e
    return v0

    :cond_f
    const-class v9, Lcom/sdgtl/mediahub/spr/c/a;

    monitor-enter v9

    :try_start_12
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v1, "tb_mediahub_info"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "currency_position"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2e
    .catchall {:try_start_12 .. :try_end_2e} :catchall_58
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_2e} :catch_51
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_2e} :catch_5b

    move-result-object v2

    if-nez v2, :cond_34

    :try_start_31
    monitor-exit v9
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_58

    move v0, v8

    goto :goto_e

    :cond_34
    :try_start_34
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_58
    .catch Ljava/lang/IllegalStateException; {:try_start_34 .. :try_end_37} :catch_51
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_34 .. :try_end_37} :catch_5b

    move-result v0

    if-eqz v0, :cond_69

    move v1, v8

    :cond_3b
    :try_start_3b
    const-string v0, "currency_position"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_48
    .catchall {:try_start_3b .. :try_end_48} :catchall_58
    .catch Ljava/lang/IllegalStateException; {:try_start_3b .. :try_end_48} :catch_62
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3b .. :try_end_48} :catch_5b

    move-result v0

    if-nez v0, :cond_3b

    move v0, v1

    :goto_4c
    :try_start_4c
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_58
    .catch Ljava/lang/IllegalStateException; {:try_start_4c .. :try_end_4f} :catch_67
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4c .. :try_end_4f} :catch_5b

    :goto_4f
    monitor-exit v9

    goto :goto_e

    :catch_51
    move-exception v0

    move-object v1, v0

    move v0, v8

    :goto_54
    :try_start_54
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_58

    goto :goto_4f

    :catchall_58
    move-exception v0

    monitor-exit v9

    throw v0

    :catch_5b
    move-exception v0

    :try_start_5c
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    monitor-exit v9
    :try_end_60
    .catchall {:try_start_5c .. :try_end_60} :catchall_58

    move v0, v8

    goto :goto_e

    :catch_62
    move-exception v0

    move-object v10, v0

    move v0, v1

    move-object v1, v10

    goto :goto_54

    :catch_67
    move-exception v1

    goto :goto_54

    :cond_69
    move v0, v8

    goto :goto_4c
.end method

.method public static g(Ljava/lang/String;)I
    .registers 12

    const/4 v9, 0x0

    const/4 v8, 0x0

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_e
    const/4 v0, -0x1

    :goto_f
    return v0

    :cond_10
    const-class v10, Lcom/sdgtl/mediahub/spr/c/a;

    monitor-enter v10

    :try_start_13
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v1, "tb_mediahub_mymedia_list"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    if-eqz p0, :cond_37

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file_status=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    :cond_37
    sget-object v1, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "product_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "file_status"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "product_title"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4f
    .catchall {:try_start_13 .. :try_end_4f} :catchall_92
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_4f} :catch_9a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_4f} :catch_a2

    move-result-object v1

    :try_start_50
    const-string v0, ""

    if-eqz v1, :cond_95

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_57
    .catchall {:try_start_50 .. :try_end_57} :catchall_92
    .catch Ljava/lang/IllegalStateException; {:try_start_50 .. :try_end_57} :catch_ad
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_50 .. :try_end_57} :catch_aa

    move-result v2

    if-eqz v2, :cond_95

    move v2, v9

    :cond_5b
    :try_start_5b
    const-string v3, "product_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v3, "file_status"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-ne v4, v9, :cond_7f

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7f

    const-string v5, "Downloading"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_83

    :cond_7f
    add-int/lit8 v2, v2, 0x1

    move-object v0, v3

    move v9, v4

    :cond_83
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_86
    .catchall {:try_start_5b .. :try_end_86} :catchall_92
    .catch Ljava/lang/IllegalStateException; {:try_start_5b .. :try_end_86} :catch_b0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5b .. :try_end_86} :catch_aa

    move-result v3

    if-nez v3, :cond_5b

    move v0, v2

    :goto_8a
    if-eqz v1, :cond_8f

    :try_start_8c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8f
    monitor-exit v10
    :try_end_90
    .catchall {:try_start_8c .. :try_end_90} :catchall_92

    goto/16 :goto_f

    :catchall_92
    move-exception v0

    monitor-exit v10

    throw v0

    :cond_95
    if-nez v1, :cond_b2

    const/4 v2, -0x2

    move v0, v2

    goto :goto_8a

    :catch_9a
    move-exception v0

    move-object v1, v8

    move v2, v9

    :goto_9d
    :try_start_9d
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    move v0, v2

    goto :goto_8a

    :catch_a2
    move-exception v0

    :goto_a3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_a6
    .catchall {:try_start_9d .. :try_end_a6} :catchall_92

    const/4 v2, -0x3

    move-object v1, v8

    move v0, v2

    goto :goto_8a

    :catch_aa
    move-exception v0

    move-object v8, v1

    goto :goto_a3

    :catch_ad
    move-exception v0

    move v2, v9

    goto :goto_9d

    :catch_b0
    move-exception v0

    goto :goto_9d

    :cond_b2
    move v0, v9

    goto :goto_8a
.end method

.method public static g(ILjava/lang/String;)J
    .registers 13

    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_11

    :cond_f
    move-wide v0, v8

    :goto_10
    return-wide v0

    :cond_11
    const-class v10, Lcom/sdgtl/mediahub/spr/c/a;

    monitor-enter v10

    :try_start_14
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v2, "tb_mediahub_mymedia_list"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "product_id=\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    const-string v2, "01"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    sget-object v1, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "hd_file_size"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "video_attr_type_code"

    const-string v6, "video_attr_type_code=\'01\'"

    const-string v7, "product_title"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_53
    .catchall {:try_start_14 .. :try_end_53} :catchall_b9
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_53} :catch_b2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_53} :catch_bc

    move-result-object v0

    move-object v2, v0

    :goto_55
    if-nez v2, :cond_7a

    :try_start_57
    monitor-exit v10
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_b9

    move-wide v0, v8

    goto :goto_10

    :cond_5a
    :try_start_5a
    const-string v2, "02"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c9

    sget-object v1, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "sd_file_size"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "video_attr_type_code"

    const-string v6, "video_attr_type_code=\'02\'"

    const-string v7, "product_title"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v2, v0

    goto :goto_55

    :cond_7a
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_98

    :cond_80
    const-string v0, "01"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    const-string v0, "hd_file_size"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    :cond_92
    :goto_92
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_95
    .catchall {:try_start_5a .. :try_end_95} :catchall_b9
    .catch Ljava/lang/IllegalStateException; {:try_start_5a .. :try_end_95} :catch_b2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5a .. :try_end_95} :catch_bc

    move-result v0

    if-nez v0, :cond_80

    :cond_98
    move-wide v0, v8

    :try_start_99
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_9c
    .catchall {:try_start_99 .. :try_end_9c} :catchall_b9
    .catch Ljava/lang/IllegalStateException; {:try_start_99 .. :try_end_9c} :catch_c7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_99 .. :try_end_9c} :catch_c5

    :goto_9c
    monitor-exit v10

    goto/16 :goto_10

    :cond_9f
    :try_start_9f
    const-string v0, "02"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    const-string v0, "sd_file_size"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_b0
    .catchall {:try_start_9f .. :try_end_b0} :catchall_b9
    .catch Ljava/lang/IllegalStateException; {:try_start_9f .. :try_end_b0} :catch_b2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9f .. :try_end_b0} :catch_bc

    move-result-wide v8

    goto :goto_92

    :catch_b2
    move-exception v0

    move-object v2, v0

    move-wide v0, v8

    :goto_b5
    :try_start_b5
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_b8
    .catchall {:try_start_b5 .. :try_end_b8} :catchall_b9

    goto :goto_9c

    :catchall_b9
    move-exception v0

    monitor-exit v10

    throw v0

    :catch_bc
    move-exception v0

    move-object v2, v0

    move-wide v0, v8

    :goto_bf
    :try_start_bf
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    monitor-exit v10
    :try_end_c3
    .catchall {:try_start_bf .. :try_end_c3} :catchall_b9

    goto/16 :goto_10

    :catch_c5
    move-exception v2

    goto :goto_bf

    :catch_c7
    move-exception v2

    goto :goto_b5

    :cond_c9
    move-object v2, v1

    goto :goto_55
.end method

.method public static h(ILjava/lang/String;)Ljava/lang/String;
    .registers 12

    const/4 v8, 0x0

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_f

    :cond_d
    move-object v0, v8

    :goto_e
    return-object v0

    :cond_f
    const-class v9, Lcom/sdgtl/mediahub/spr/c/a;

    monitor-enter v9

    :try_start_12
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v1, "tb_mediahub_mymedia_list"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "product_id=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "charge_dialog_display"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "video_attr_type_code"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "video_attr_type_code=\'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "product_title"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5c
    .catchall {:try_start_12 .. :try_end_5c} :catchall_85
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_5c} :catch_7e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_5c} :catch_88

    move-result-object v1

    if-nez v1, :cond_62

    :try_start_5f
    monitor-exit v9
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_85

    move-object v0, v8

    goto :goto_e

    :cond_62
    :try_start_62
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_85
    .catch Ljava/lang/IllegalStateException; {:try_start_62 .. :try_end_65} :catch_7e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_62 .. :try_end_65} :catch_88

    move-result v0

    if-eqz v0, :cond_9d

    :cond_68
    :try_start_68
    const-string v0, "charge_dialog_display"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_75
    .catchall {:try_start_68 .. :try_end_75} :catchall_85
    .catch Ljava/lang/IllegalStateException; {:try_start_68 .. :try_end_75} :catch_97
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_68 .. :try_end_75} :catch_91

    move-result v0

    if-nez v0, :cond_68

    move-object v0, v8

    :goto_79
    :try_start_79
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_85
    .catch Ljava/lang/IllegalStateException; {:try_start_79 .. :try_end_7c} :catch_9b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_79 .. :try_end_7c} :catch_95

    :goto_7c
    monitor-exit v9

    goto :goto_e

    :catch_7e
    move-exception v0

    move-object v1, v0

    move-object v0, v8

    :goto_81
    :try_start_81
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_85

    goto :goto_7c

    :catchall_85
    move-exception v0

    monitor-exit v9

    throw v0

    :catch_88
    move-exception v0

    move-object v1, v0

    move-object v0, v8

    :goto_8b
    :try_start_8b
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    monitor-exit v9
    :try_end_8f
    .catchall {:try_start_8b .. :try_end_8f} :catchall_85

    goto/16 :goto_e

    :catch_91
    move-exception v0

    move-object v1, v0

    move-object v0, v8

    goto :goto_8b

    :catch_95
    move-exception v1

    goto :goto_8b

    :catch_97
    move-exception v0

    move-object v1, v0

    move-object v0, v8

    goto :goto_81

    :catch_9b
    move-exception v1

    goto :goto_81

    :cond_9d
    move-object v0, v8

    goto :goto_79
.end method

.method public static h()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sdgtl/mediahub/spr/c/a;->c:Z

    return-void
.end method

.method public static i()I
    .registers 5

    const/4 v0, 0x0

    sget-object v1, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_d

    sget-object v1, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    const-class v2, Lcom/sdgtl/mediahub/spr/c/a;

    monitor-enter v2

    :try_start_11
    const-string v1, "SELECT * FROM tb_mediahub_mymedia_list"

    sget-object v3, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_23
    .catchall {:try_start_11 .. :try_end_23} :catchall_2a
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_23} :catch_25
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_23} :catch_2d

    :cond_23
    :goto_23
    monitor-exit v2

    goto :goto_d

    :catch_25
    move-exception v1

    :try_start_26
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_23

    :catchall_2a
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_2d
    move-exception v1

    :try_start_2e
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2a

    goto :goto_d
.end method

.method private static i(ILjava/lang/String;)V
    .registers 7

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    const-class v1, Lcom/sdgtl/mediahub/spr/c/a;

    monitor-enter v1

    :try_start_10
    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "tb_mediahub_mymedia_list"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "product_id=\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' AND video_attr_type_code=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_46
    .catchall {:try_start_10 .. :try_end_46} :catchall_48
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_46} :catch_4b

    :goto_46
    :try_start_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_48

    goto :goto_c

    :catchall_48
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_4b
    move-exception v0

    :try_start_4c
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_48

    goto :goto_46
.end method

.method public static j()V
    .registers 5

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    const-class v1, Lcom/sdgtl/mediahub/spr/c/a;

    monitor-enter v1

    :try_start_10
    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "tb_mediahub_mymedia_list"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "key_update_db_yn"

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/c/a;->c(Ljava/lang/String;)V

    const-string v0, "key_update_db_yn"

    const-string v2, "update_db_n"

    invoke-static {v0, v2}, Lcom/sdgtl/mediahub/spr/c/a;->a(Ljava/lang/String;Ljava/lang/String;)J

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_27

    goto :goto_c

    :catchall_27
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static k()Z
    .registers 12

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v10, "Downloadable"

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_10

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    move v0, v8

    :goto_11
    return v0

    :cond_12
    const-class v11, Lcom/sdgtl/mediahub/spr/c/a;

    monitor-enter v11

    :try_start_15
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v1, "tb_mediahub_mymedia_list"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "file_status"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "paused_position"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "saffron_item_id"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "drm_license_status"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "product_title"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_41
    .catchall {:try_start_15 .. :try_end_41} :catchall_9d
    .catch Ljava/lang/IllegalStateException; {:try_start_15 .. :try_end_41} :catch_98
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_41} :catch_a0

    move-result-object v0

    if-nez v0, :cond_47

    :try_start_44
    monitor-exit v11
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_9d

    move v0, v8

    goto :goto_11

    :cond_47
    :try_start_47
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_91

    :cond_4d
    const-string v1, "saffron_item_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "file_status"

    invoke-virtual {v2, v3, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "paused_position"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "download_storage"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-lez v1, :cond_81

    const-string v1, "drm_license_status"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_81
    sget-object v1, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "tb_mediahub_mymedia_list"

    const-string v4, "file_status=\'Downloading\' OR file_status=\'Downloaded\'"

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_4d

    :cond_91
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_94
    .catchall {:try_start_47 .. :try_end_94} :catchall_9d
    .catch Ljava/lang/IllegalStateException; {:try_start_47 .. :try_end_94} :catch_98
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_47 .. :try_end_94} :catch_a0

    :goto_94
    monitor-exit v11

    move v0, v9

    goto/16 :goto_11

    :catch_98
    move-exception v0

    :try_start_99
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_9c
    .catchall {:try_start_99 .. :try_end_9c} :catchall_9d

    goto :goto_94

    :catchall_9d
    move-exception v0

    monitor-exit v11

    throw v0

    :catch_a0
    move-exception v0

    :try_start_a1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    monitor-exit v11
    :try_end_a5
    .catchall {:try_start_a1 .. :try_end_a5} :catchall_9d

    move v0, v8

    goto/16 :goto_11
.end method

.method private static l()[Ljava/lang/String;
    .registers 3

    const/16 v0, 0x4a

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "order_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "order_item_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "license"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "pricing_type_code"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "episode_title"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "product_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "saffron_item_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "saffron_user_license_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "product_title"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "parent_product_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "parent_product_title"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "release_date"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "thumbnail_url"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "large_poster_url"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "parent_thumbnail_url"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "running_time"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "actor"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "DIRECTOR"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "genre"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "purchase_date"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "due_date"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "rent_days"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "hd_file_size"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "sd_file_size"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "file_status"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "availability"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "hdmi_yn"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "archive_yn"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "nesting_status"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "paused_position"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "video_attr_type_code"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "synopsis"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "download_storage"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "drm_license_status"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "product_type_code"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "mpaa_rating"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "licensed_date"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "wfd_yn"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "pricing_type_hd_buy_type_code"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "pricing_type_hd_buy_re_rental_yn"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "pricing_type_hd_buy_promotion_id"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "pricing_type_hd_buy_price"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "pricing_type_hd_buy_rent_days"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "pricing_type_hd_buy_display_promotion"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "pricing_type_hd_rent_type_code"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "pricing_type_hd_rent_re_rental_yn"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "pricing_type_hd_rent_promotion_id"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "pricing_type_hd_rent_price"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "pricing_type_hd_rent_rent_days"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "pricing_type_hd_rent_display_promotion"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "pricing_type_sd_buy_type_code"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "pricing_type_sd_buy_re_rental_yn"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "pricing_type_sd_buy_promotion_id"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "pricing_type_sd_buy_price"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "pricing_type_sd_buy_rent_days"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "pricing_type_sd_buy_display_promotion"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "pricing_type_sd_rent_type_code"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "pricing_type_sd_rent_re_rental_yn"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "pricing_type_sd_rent_promotion_id"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "pricing_type_sd_rent_price"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "pricing_type_sd_rent_rent_days"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "pricing_type_sd_rent_display_promotion"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "pricing_type_3d_buy_type_code"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "pricing_type_3d_buy_re_rental_yn"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "pricing_type_3d_buy_promotion_id"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "pricing_type_3d_buy_price"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "pricing_type_3d_buy_rent_days"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "pricing_type_3d_buy_display_promotion"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "pricing_type_3d_rent_type_code"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "pricing_type_3d_rent_re_rental_yn"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "pricing_type_3d_rent_promotion_id"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "pricing_type_3d_rent_price"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "pricing_type_3d_rent_rent_days"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "pricing_type_3d_rent_display_promotion"

    aput-object v2, v0, v1

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 17

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const-string v7, ""

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_18

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1a

    :cond_18
    move-object v0, v8

    :goto_19
    return-object v0

    :cond_1a
    packed-switch p3, :pswitch_data_540

    :goto_1d
    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_29

    sget-object v0, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_31

    :cond_29
    move-object v0, v8

    goto :goto_19

    :pswitch_2b
    const-string v7, "purchase_date DESC"

    goto :goto_1d

    :pswitch_2e
    const-string v7, "product_title"

    goto :goto_1d

    :cond_31
    const-class v10, Lcom/sdgtl/mediahub/spr/c/a;

    monitor-enter v10

    :try_start_34
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v1, "tb_mediahub_mymedia_list"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    if-eqz p2, :cond_6b

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file_status=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    :goto_58
    sget-object v1, Lcom/sdgtl/mediahub/spr/c/a;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/c/a;->l()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_65
    .catchall {:try_start_34 .. :try_end_65} :catchall_532
    .catch Ljava/lang/IllegalStateException; {:try_start_34 .. :try_end_65} :catch_71
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_34 .. :try_end_65} :catch_529

    move-result-object v4

    if-nez v4, :cond_7b

    :try_start_68
    monitor-exit v10
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_532

    move-object v0, v8

    goto :goto_19

    :cond_6b
    :try_start_6b
    const-string v1, "file_status<>\'Archive\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V
    :try_end_70
    .catchall {:try_start_6b .. :try_end_70} :catchall_532
    .catch Ljava/lang/IllegalStateException; {:try_start_6b .. :try_end_70} :catch_71
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6b .. :try_end_70} :catch_529

    goto :goto_58

    :catch_71
    move-exception v0

    :try_start_72
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_532

    :goto_75
    monitor-exit v10

    packed-switch p3, :pswitch_data_548

    :goto_79
    move-object v0, v8

    goto :goto_19

    :cond_7b
    :try_start_7b
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_524

    const/4 v1, 0x0

    const-string v0, ""

    :cond_84
    new-instance v5, Lcom/sdgtl/mediahub/spr/common/di;

    invoke-direct {v5}, Lcom/sdgtl/mediahub/spr/common/di;-><init>()V

    const-string v2, "product_id"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v2, "file_status"

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-ne v1, v3, :cond_ad

    const-string v6, "Downloading"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_ad

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_51e

    :cond_ad
    const-string v0, "order_id"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v5, Lcom/sdgtl/mediahub/spr/common/di;->a:J

    const-string v0, "order_item_id"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v5, Lcom/sdgtl/mediahub/spr/common/di;->b:J

    const-string v0, "license"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v5, Lcom/sdgtl/mediahub/spr/common/di;->e:I

    const-string v0, "pricing_type_code"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/sdgtl/mediahub/spr/common/di;->f:Ljava/lang/String;

    const-string v0, "episode_title"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/sdgtl/mediahub/spr/common/di;->l:Ljava/lang/String;

    iput v3, v5, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    const-string v0, "saffron_item_id"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v5, Lcom/sdgtl/mediahub/spr/common/di;->h:I

    const-string v0, "saffron_user_license_id"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v5, Lcom/sdgtl/mediahub/spr/common/di;->i:I

    const-string v0, "product_title"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    const-string v0, "parent_product_id"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v5, Lcom/sdgtl/mediahub/spr/common/di;->m:I

    const-string v0, "parent_product_title"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/sdgtl/mediahub/spr/common/di;->n:Ljava/lang/String;

    const-string v0, "release_date"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/sdgtl/mediahub/spr/common/di;->r:Ljava/lang/String;

    const-string v0, "thumbnail_url"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/sdgtl/mediahub/spr/common/di;->s:Ljava/lang/String;

    const-string v0, "large_poster_url"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/sdgtl/mediahub/spr/common/di;->u:Ljava/lang/String;

    const-string v0, "parent_thumbnail_url"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/sdgtl/mediahub/spr/common/di;->o:Ljava/lang/String;

    const-string v0, "running_time"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/sdgtl/mediahub/spr/common/di;->x:Ljava/lang/String;

    const-string v0, "actor"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/sdgtl/mediahub/spr/common/di;->y:Ljava/lang/String;

    const-string v0, "DIRECTOR"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/sdgtl/mediahub/spr/common/di;->z:Ljava/lang/String;

    const-string v0, "genre"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/sdgtl/mediahub/spr/common/di;->A:Ljava/lang/String;

    const-string v0, "purchase_date"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/sdgtl/mediahub/spr/common/di;->d:Ljava/lang/String;

    const-string v0, "due_date"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/sdgtl/mediahub/spr/common/di;->C:Ljava/lang/String;

    const-string v0, "rent_days"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v5, Lcom/sdgtl/mediahub/spr/common/di;->D:I

    iput-object v2, v5, Lcom/sdgtl/mediahub/spr/common/di;->O:Ljava/lang/String;

    const-string v0, "availability"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/sdgtl/mediahub/spr/common/di;->F:Ljava/lang/String;

    const-string v0, "hdmi_yn"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/sdgtl/mediahub/spr/common/di;->G:Ljava/lang/String;

    const-string v0, "archive_yn"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/sdgtl/mediahub/spr/common/di;->I:Ljava/lang/String;

    const-string v0, "paused_position"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v5, Lcom/sdgtl/mediahub/spr/common/di;->P:J

    const-string v0, "video_attr_type_code"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    const-string v0, "synopsis"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/sdgtl/mediahub/spr/common/di;->B:Ljava/lang/String;

    const-string v0, "download_storage"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v5, Lcom/sdgtl/mediahub/spr/common/di;->R:I

    const-string v0, "drm_license_status"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v5, Lcom/sdgtl/mediahub/spr/common/di;->S:I

    const-string v0, "product_type_code"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/sdgtl/mediahub/spr/common/di;->k:Ljava/lang/String;

    const-string v0, "mpaa_rating"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/sdgtl/mediahub/spr/common/di;->v:Ljava/lang/String;

    const-string v0, "licensed_date"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/sdgtl/mediahub/spr/common/di;->J:Ljava/lang/String;

    const-string v0, "wfd_yn"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/sdgtl/mediahub/spr/common/di;->H:Ljava/lang/String;

    iget v0, v5, Lcom/sdgtl/mediahub/spr/common/di;->m:I

    invoke-static {p2, v0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lcom/sdgtl/mediahub/spr/common/di;->T:I

    iget-object v0, v5, Lcom/sdgtl/mediahub/spr/common/di;->J:Ljava/lang/String;

    if-eqz v0, :cond_257

    iget-object v0, v5, Lcom/sdgtl/mediahub/spr/common/di;->J:Ljava/lang/String;

    if-eqz v0, :cond_25b

    iget-object v0, v5, Lcom/sdgtl/mediahub/spr/common/di;->J:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25b

    :cond_257
    iget-object v0, v5, Lcom/sdgtl/mediahub/spr/common/di;->c:Ljava/lang/String;

    iput-object v0, v5, Lcom/sdgtl/mediahub/spr/common/di;->J:Ljava/lang/String;

    :cond_25b
    const/4 v1, 0x1

    const-string v0, "hd_file_size"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v11, 0x0

    cmp-long v0, v6, v11

    if-lez v0, :cond_287

    new-instance v11, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;

    invoke-direct {v11}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;-><init>()V

    const v0, 0x7f0a0014

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v11, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->a:Ljava/lang/String;

    const-string v0, "01"

    iput-object v0, v11, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->b:Ljava/lang/String;

    iput-wide v6, v11, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->c:J

    iget-object v0, v5, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_287
    const-string v0, "sd_file_size"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v11, 0x0

    cmp-long v0, v6, v11

    if-lez v0, :cond_2b3

    const/4 v1, 0x0

    new-instance v11, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;

    invoke-direct {v11}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;-><init>()V

    const v0, 0x7f0a0015

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v11, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->a:Ljava/lang/String;

    const-string v0, "02"

    iput-object v0, v11, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->b:Ljava/lang/String;

    iput-wide v6, v11, Lcom/sdgtl/mediahub/spr/common/CommonStructure$FormatList;->c:J

    iget-object v0, v5, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b3
    move v0, v1

    const-string v1, "pricing_type_hd_buy_type_code"

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_308

    new-instance v6, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    invoke-direct {v6}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;-><init>()V

    const-string v7, "pricing_type_hd_buy_price"

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v11

    iput-wide v11, v6, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    iput-object v1, v6, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v1, "pricing_type_hd_buy_re_rental_yn"

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    const-string v1, "pricing_type_hd_buy_promotion_id"

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v6, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->d:I

    const-string v1, "pricing_type_hd_buy_rent_days"

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v6, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->i:I

    const-string v1, "pricing_type_hd_buy_display_promotion"

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->e:Ljava/lang/String;

    iget-object v1, v5, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_308
    const-string v1, "pricing_type_hd_rent_type_code"

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_35c

    new-instance v6, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    invoke-direct {v6}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;-><init>()V

    const-string v7, "pricing_type_hd_rent_price"

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v11

    iput-wide v11, v6, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    iput-object v1, v6, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v1, "pricing_type_hd_rent_re_rental_yn"

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    const-string v1, "pricing_type_hd_rent_promotion_id"

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v6, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->d:I

    const-string v1, "pricing_type_hd_rent_rent_days"

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v6, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->i:I

    const-string v1, "pricing_type_hd_rent_display_promotion"

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->e:Ljava/lang/String;

    iget-object v1, v5, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_35c
    const-string v1, "pricing_type_sd_buy_type_code"

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3b0

    new-instance v6, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    invoke-direct {v6}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;-><init>()V

    const-string v7, "pricing_type_sd_buy_price"

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v11

    iput-wide v11, v6, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    iput-object v1, v6, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v1, "pricing_type_sd_buy_re_rental_yn"

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    const-string v1, "pricing_type_sd_buy_promotion_id"

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v6, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->d:I

    const-string v1, "pricing_type_sd_buy_rent_days"

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v6, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->i:I

    const-string v1, "pricing_type_sd_buy_display_promotion"

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->e:Ljava/lang/String;

    iget-object v1, v5, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3b0
    const-string v1, "pricing_type_sd_rent_type_code"

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_404

    new-instance v6, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    invoke-direct {v6}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;-><init>()V

    const-string v7, "pricing_type_sd_rent_price"

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v11

    iput-wide v11, v6, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    iput-object v1, v6, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v1, "pricing_type_sd_rent_re_rental_yn"

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    const-string v1, "pricing_type_sd_rent_promotion_id"

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v6, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->d:I

    const-string v1, "pricing_type_sd_rent_rent_days"

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v6, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->i:I

    const-string v1, "pricing_type_sd_rent_display_promotion"

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->e:Ljava/lang/String;

    iget-object v1, v5, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_404
    const-string v1, "pricing_type_3d_buy_type_code"

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_458

    new-instance v6, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    invoke-direct {v6}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;-><init>()V

    const-string v7, "pricing_type_3d_buy_price"

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v11

    iput-wide v11, v6, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    iput-object v1, v6, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v1, "pricing_type_3d_buy_re_rental_yn"

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    const-string v1, "pricing_type_3d_buy_promotion_id"

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v6, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->d:I

    const-string v1, "pricing_type_3d_buy_rent_days"

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v6, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->i:I

    const-string v1, "pricing_type_3d_buy_display_promotion"

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->e:Ljava/lang/String;

    iget-object v1, v5, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_458
    const-string v1, "pricing_type_3d_rent_type_code"

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4ac

    new-instance v6, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;

    invoke-direct {v6}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;-><init>()V

    const-string v7, "pricing_type_3d_rent_price"

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v11

    iput-wide v11, v6, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->g:D

    iput-object v1, v6, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->a:Ljava/lang/String;

    const-string v1, "pricing_type_3d_rent_re_rental_yn"

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->c:Ljava/lang/String;

    const-string v1, "pricing_type_3d_rent_promotion_id"

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v6, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->d:I

    const-string v1, "pricing_type_3d_rent_rent_days"

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v6, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->i:I

    const-string v1, "pricing_type_3d_rent_display_promotion"

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PricingTypeList;->e:Ljava/lang/String;

    iget-object v1, v5, Lcom/sdgtl/mediahub/spr/common/di;->L:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4ac
    iget-object v1, v5, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    const-string v6, "02"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f0

    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/a/a;->g(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4f0

    iget-object v1, v5, Lcom/sdgtl/mediahub/spr/common/di;->G:Ljava/lang/String;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/gk;->m(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4f0

    iget v1, v5, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    const-string v6, "01"

    invoke-static {v1, v6}, Lcom/sdgtl/mediahub/spr/c/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "Downloadable"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f0

    iget v1, v5, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    const-string v6, "02"

    invoke-static {v1, v6}, Lcom/sdgtl/mediahub/spr/c/a;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "Downloadable"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f0

    iget-object v1, v5, Lcom/sdgtl/mediahub/spr/common/di;->Q:Ljava/lang/String;

    const-string v6, "01"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51c

    if-eqz v0, :cond_51c

    :cond_4f0
    iget v0, v5, Lcom/sdgtl/mediahub/spr/common/di;->m:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51c

    iget v0, v5, Lcom/sdgtl/mediahub/spr/common/di;->m:I

    if-eqz v0, :cond_52e

    iget v0, v5, Lcom/sdgtl/mediahub/spr/common/di;->m:I

    invoke-static {p2, v0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_52e

    const/4 v0, 0x1

    iput-boolean v0, v5, Lcom/sdgtl/mediahub/spr/common/di;->N:Z

    iget-object v0, v5, Lcom/sdgtl/mediahub/spr/common/di;->o:Ljava/lang/String;

    iput-object v0, v5, Lcom/sdgtl/mediahub/spr/common/di;->s:Ljava/lang/String;

    iget v0, v5, Lcom/sdgtl/mediahub/spr/common/di;->m:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_519
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_51c
    move-object v0, v2

    move v1, v3

    :cond_51e
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_84

    :cond_524
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_527
    .catchall {:try_start_7b .. :try_end_527} :catchall_532
    .catch Ljava/lang/IllegalStateException; {:try_start_7b .. :try_end_527} :catch_71
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7b .. :try_end_527} :catch_529

    goto/16 :goto_75

    :catch_529
    move-exception v0

    :try_start_52a
    monitor-exit v10
    :try_end_52b
    .catchall {:try_start_52a .. :try_end_52b} :catchall_532

    const/4 v0, 0x0

    goto/16 :goto_19

    :cond_52e
    const/4 v0, 0x0

    :try_start_52f
    iput-boolean v0, v5, Lcom/sdgtl/mediahub/spr/common/di;->N:Z
    :try_end_531
    .catchall {:try_start_52f .. :try_end_531} :catchall_532
    .catch Ljava/lang/IllegalStateException; {:try_start_52f .. :try_end_531} :catch_71
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_52f .. :try_end_531} :catch_529

    goto :goto_519

    :catchall_532
    move-exception v0

    monitor-exit v10

    throw v0

    :pswitch_535
    new-instance v0, Lcom/sdgtl/mediahub/spr/c/b;

    invoke-direct {v0, p0}, Lcom/sdgtl/mediahub/spr/c/b;-><init>(Lcom/sdgtl/mediahub/spr/c/a;)V

    invoke-static {v8, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto/16 :goto_79

    nop

    :pswitch_data_540
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_2e
    .end packed-switch

    :pswitch_data_548
    .packed-switch 0x1
        :pswitch_535
    .end packed-switch
.end method
