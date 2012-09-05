.class public Lcom/sec/android/socialhub/badge/BadgeManager;
.super Ljava/lang/Object;
.source "BadgeManager.java"


# static fields
.field public static final BADGE_URI:Landroid/net/Uri;

.field public static final PACKAGE_MMS:Ljava/lang/String;

.field private static instance:Lcom/sec/android/socialhub/badge/BadgeManager;


# instance fields
.field private mBadgeArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/socialhub/badge/IBadgeHandler;",
            ">;"
        }
    .end annotation
.end field

.field private where_socialhub:Ljava/lang/String;

.field private where_total:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/socialhub/badge/BadgeManager;->instance:Lcom/sec/android/socialhub/badge/BadgeManager;

    .line 43
    const-string v0, "content://com.sec.badge/apps"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/socialhub/badge/BadgeManager;->BADGE_URI:Landroid/net/Uri;

    .line 46
    invoke-static {}, Lcom/sec/android/socialhub/feature/FeatureFactory;->getMessageInterface()Lcom/sec/android/socialhub/feature/FeatureFactory$MessageInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/socialhub/feature/FeatureFactory$MessageInterface;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/socialhub/badge/BadgeManager;->PACKAGE_MMS:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "%1$s = \'%2$s\' or %1$s = \'%3$s\'"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "package"

    aput-object v2, v1, v3

    const-string v2, "com.android.email"

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/android/socialhub/badge/BadgeManager;->PACKAGE_MMS:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/badge/BadgeManager;->where_total:Ljava/lang/String;

    .line 49
    const-string v0, "%1$s = \'%2$s\'"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "package"

    aput-object v2, v1, v3

    const-string v2, "com.sec.android.socialhub"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/badge/BadgeManager;->where_socialhub:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/badge/BadgeManager;->mBadgeArray:Ljava/util/ArrayList;

    .line 58
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/socialhub/badge/BadgeManager;
    .registers 3

    .prologue
    .line 67
    const-class v1, Lcom/sec/android/socialhub/badge/BadgeManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/sec/android/socialhub/badge/BadgeManager;->instance:Lcom/sec/android/socialhub/badge/BadgeManager;

    if-nez v0, :cond_12

    .line 69
    const-class v2, Lcom/sec/android/socialhub/badge/BadgeManager;

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_19

    .line 71
    :try_start_a
    new-instance v0, Lcom/sec/android/socialhub/badge/BadgeManager;

    invoke-direct {v0}, Lcom/sec/android/socialhub/badge/BadgeManager;-><init>()V

    sput-object v0, Lcom/sec/android/socialhub/badge/BadgeManager;->instance:Lcom/sec/android/socialhub/badge/BadgeManager;

    .line 72
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_16

    .line 75
    :cond_12
    :try_start_12
    sget-object v0, Lcom/sec/android/socialhub/badge/BadgeManager;->instance:Lcom/sec/android/socialhub/badge/BadgeManager;
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_19

    monitor-exit v1

    return-object v0

    .line 72
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    :try_start_18
    throw v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_19

    .line 67
    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleBadgeArray(I)V
    .registers 8
    .parameter "count"

    .prologue
    .line 233
    const-string v2, "BadgeManager"

    const-string v3, "handleBadgeArray()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "count is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v2, p0, Lcom/sec/android/socialhub/badge/BadgeManager;->mBadgeArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/socialhub/badge/IBadgeHandler;

    .line 237
    .local v0, badge:Lcom/sec/android/socialhub/badge/IBadgeHandler;
    invoke-interface {v0, p1}, Lcom/sec/android/socialhub/badge/IBadgeHandler;->updateBadge(I)V

    goto :goto_20

    .line 239
    .end local v0           #badge:Lcom/sec/android/socialhub/badge/IBadgeHandler;
    :cond_30
    return-void
.end method

.method public static updateAccountBadge(Landroid/content/Context;ILandroid/net/Uri;Z)V
    .registers 6
    .parameter "ctx"
    .parameter "app_type"
    .parameter "notifyUri"
    .parameter "bNotify"

    .prologue
    const/16 v1, 0x190

    const/16 v0, 0x12c

    .line 419
    packed-switch p1, :pswitch_data_22

    .line 445
    :goto_7
    :pswitch_7
    const/4 v0, 0x1

    if-ne p3, v0, :cond_12

    .line 447
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 449
    :cond_12
    return-void

    .line 423
    :pswitch_13
    invoke-static {p0, v1}, Lcom/sec/android/socialhub/badge/BadgeManager;->updateEmailAccountBadge(Landroid/content/Context;I)V

    goto :goto_7

    .line 435
    :pswitch_17
    invoke-static {p0, v0}, Lcom/sec/android/socialhub/badge/BadgeManager;->updateMsgAccountBadge(Landroid/content/Context;I)V

    goto :goto_7

    .line 439
    :pswitch_1b
    invoke-static {p0, v0}, Lcom/sec/android/socialhub/badge/BadgeManager;->updateMsgAccountBadge(Landroid/content/Context;I)V

    .line 440
    invoke-static {p0, v1}, Lcom/sec/android/socialhub/badge/BadgeManager;->updateEmailAccountBadge(Landroid/content/Context;I)V

    goto :goto_7

    .line 419
    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_17
        :pswitch_13
        :pswitch_13
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_1b
    .end packed-switch
.end method

.method private static updateEmailAccountBadge(Landroid/content/Context;I)V
    .registers 19
    .parameter "ctx"
    .parameter "app_type"

    .prologue
    .line 256
    const/4 v7, 0x0

    .line 257
    .local v7, account_cursor:Landroid/database/Cursor;
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 259
    .local v16, where:Ljava/lang/StringBuffer;
    const-string v1, "app_type"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " in ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    const/16 v1, 0x190

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 261
    const/16 v1, 0x19a

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 265
    :try_start_2d
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/android/socialhub/db/SocialHubDB$AccountTable;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 267
    if-eqz v7, :cond_157

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_157

    .line 271
    :cond_47
    const/4 v12, 0x0

    .line 272
    .local v12, message_cursor:Landroid/database/Cursor;
    const-string v1, "real_email_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 273
    .local v11, idx_account_id:I
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_51
    .catchall {:try_start_2d .. :try_end_51} :catchall_161
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_51} :catch_14c

    move-result-object v8

    .line 278
    .local v8, account_id:Ljava/lang/String;
    :try_start_52
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    .line 279
    .local v13, message_where:Ljava/lang/StringBuffer;
    const-string v1, "new"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " = 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 280
    const-string v1, " and "

    invoke-virtual {v13, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 281
    const-string v1, "app_type"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " in ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 282
    const/16 v1, 0x190

    invoke-virtual {v13, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 283
    const/16 v1, 0x19a

    invoke-virtual {v13, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 284
    const-string v1, " and "

    invoke-virtual {v13, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 285
    const-string v1, "account_id"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 286
    const-string v1, " and "

    invoke-virtual {v13, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 287
    const-string v1, "status"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 289
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/android/socialhub/db/SocialHubDB$MessageTable;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "count(new)"

    aput-object v5, v3, v4

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 298
    if-eqz v12, :cond_12f

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_12f

    .line 300
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 301
    .local v9, count:I
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 303
    .local v14, update_condition:Ljava/lang/StringBuffer;
    const-string v1, "app_type"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 304
    const-string v1, " and "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 305
    const-string v1, "account_id"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 307
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 308
    .local v15, value:Landroid/content/ContentValues;
    const-string v1, "unread"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 310
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/android/socialhub/db/SocialHubDB$AccountTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v15, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_11c
    .catchall {:try_start_52 .. :try_end_11c} :catchall_144
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_11c} :catch_139

    .line 323
    .end local v9           #count:I
    .end local v14           #update_condition:Ljava/lang/StringBuffer;
    .end local v15           #value:Landroid/content/ContentValues;
    :goto_11c
    if-eqz v12, :cond_122

    .line 325
    :try_start_11e
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 326
    const/4 v12, 0x0

    .line 329
    .end local v13           #message_where:Ljava/lang/StringBuffer;
    :cond_122
    :goto_122
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_125
    .catchall {:try_start_11e .. :try_end_125} :catchall_161
    .catch Ljava/lang/Exception; {:try_start_11e .. :try_end_125} :catch_14c

    move-result v1

    if-nez v1, :cond_47

    .line 342
    .end local v8           #account_id:Ljava/lang/String;
    .end local v11           #idx_account_id:I
    .end local v12           #message_cursor:Landroid/database/Cursor;
    :goto_128
    if-eqz v7, :cond_12e

    .line 344
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 345
    const/4 v7, 0x0

    .line 348
    :cond_12e
    :goto_12e
    return-void

    .line 314
    .restart local v8       #account_id:Ljava/lang/String;
    .restart local v11       #idx_account_id:I
    .restart local v12       #message_cursor:Landroid/database/Cursor;
    .restart local v13       #message_where:Ljava/lang/StringBuffer;
    :cond_12f
    :try_start_12f
    const-string v1, "BadgeManager"

    const-string v2, "updateEmailAccountBadge()"

    const-string v3, "message_cursor is null!! or moveToFirst is failed"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_138
    .catchall {:try_start_12f .. :try_end_138} :catchall_144
    .catch Ljava/lang/Exception; {:try_start_12f .. :try_end_138} :catch_139

    goto :goto_11c

    .line 317
    .end local v13           #message_where:Ljava/lang/StringBuffer;
    :catch_139
    move-exception v10

    .line 319
    .local v10, e:Ljava/lang/Exception;
    :try_start_13a
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_13d
    .catchall {:try_start_13a .. :try_end_13d} :catchall_144

    .line 323
    if-eqz v12, :cond_122

    .line 325
    :try_start_13f
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 326
    const/4 v12, 0x0

    goto :goto_122

    .line 323
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_144
    move-exception v1

    if-eqz v12, :cond_14b

    .line 325
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 326
    const/4 v12, 0x0

    :cond_14b
    throw v1
    :try_end_14c
    .catchall {:try_start_13f .. :try_end_14c} :catchall_161
    .catch Ljava/lang/Exception; {:try_start_13f .. :try_end_14c} :catch_14c

    .line 336
    .end local v8           #account_id:Ljava/lang/String;
    .end local v11           #idx_account_id:I
    .end local v12           #message_cursor:Landroid/database/Cursor;
    :catch_14c
    move-exception v10

    .line 338
    .restart local v10       #e:Ljava/lang/Exception;
    :try_start_14d
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_150
    .catchall {:try_start_14d .. :try_end_150} :catchall_161

    .line 342
    if-eqz v7, :cond_12e

    .line 344
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 345
    const/4 v7, 0x0

    goto :goto_12e

    .line 333
    .end local v10           #e:Ljava/lang/Exception;
    :cond_157
    :try_start_157
    const-string v1, "BadgeManager"

    const-string v2, "updateEmailAccountBadge()"

    const-string v3, "account_cursor is null!! or moveToFirst is failed"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_160
    .catchall {:try_start_157 .. :try_end_160} :catchall_161
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_160} :catch_14c

    goto :goto_128

    .line 342
    :catchall_161
    move-exception v1

    if-eqz v7, :cond_168

    .line 344
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 345
    const/4 v7, 0x0

    :cond_168
    throw v1
.end method

.method private static updateMsgAccountBadge(Landroid/content/Context;I)V
    .registers 14
    .parameter "ctx"
    .parameter "app_type"

    .prologue
    .line 352
    const/4 v8, 0x0

    .line 356
    .local v8, message_cursor:Landroid/database/Cursor;
    :try_start_1
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 357
    .local v9, message_where:Ljava/lang/StringBuffer;
    const-string v0, "app_type"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " in ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 358
    const/16 v0, 0xc8

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 359
    const/16 v0, 0x12c

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 360
    const/16 v0, 0x136

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 361
    const-string v0, " and "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 362
    const-string v0, "status"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 364
    const-string v0, "BadgeManager"

    const-string v1, "updateMsgAccountBadge()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "condition - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/socialhub/db/SocialHubDB$MessageTable;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "sum(new)"

    aput-object v4, v2, v3

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 375
    if-eqz v8, :cond_db

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_db

    .line 377
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 378
    .local v6, count:I
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 380
    .local v10, update_condition:Ljava/lang/StringBuffer;
    const-string v0, "BadgeManager"

    const-string v1, "updateMsgAccountBadge()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "count - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v0, "app_type"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 384
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 385
    .local v11, value:Landroid/content/ContentValues;
    const-string v0, "unread"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 387
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/socialhub/db/SocialHubDB$AccountTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_d4
    .catchall {:try_start_1 .. :try_end_d4} :catchall_f0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d4} :catch_e5

    .line 400
    .end local v6           #count:I
    .end local v10           #update_condition:Ljava/lang/StringBuffer;
    .end local v11           #value:Landroid/content/ContentValues;
    :goto_d4
    if-eqz v8, :cond_da

    .line 402
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 403
    const/4 v8, 0x0

    .line 406
    .end local v9           #message_where:Ljava/lang/StringBuffer;
    :cond_da
    :goto_da
    return-void

    .line 391
    .restart local v9       #message_where:Ljava/lang/StringBuffer;
    :cond_db
    :try_start_db
    const-string v0, "BadgeManager"

    const-string v1, "updateMsgAccountBadge()"

    const-string v2, "message_cursor is null!! or moveToFirst is failed"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e4
    .catchall {:try_start_db .. :try_end_e4} :catchall_f0
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_e4} :catch_e5

    goto :goto_d4

    .line 394
    .end local v9           #message_where:Ljava/lang/StringBuffer;
    :catch_e5
    move-exception v7

    .line 396
    .local v7, e:Ljava/lang/Exception;
    :try_start_e6
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e9
    .catchall {:try_start_e6 .. :try_end_e9} :catchall_f0

    .line 400
    if-eqz v8, :cond_da

    .line 402
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 403
    const/4 v8, 0x0

    goto :goto_da

    .line 400
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_f0
    move-exception v0

    if-eqz v8, :cond_f7

    .line 402
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 403
    const/4 v8, 0x0

    :cond_f7
    throw v0
.end method


# virtual methods
.method public getBadgeCount(Landroid/content/Context;Ljava/lang/String;)I
    .registers 12
    .parameter "ctx"
    .parameter "where"

    .prologue
    .line 109
    if-nez p1, :cond_d

    .line 111
    const-string v0, "BadgeManager"

    const-string v1, "updateBadge()"

    const-string v2, "ctx is null!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const/4 v8, 0x0

    .line 147
    :cond_c
    :goto_c
    return v8

    .line 115
    :cond_d
    const/4 v6, 0x0

    .line 117
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 121
    .local v8, total:I
    :try_start_f
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/socialhub/badge/BadgeManager;->BADGE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/socialhub/badge/BadgeColumn;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 123
    if-eqz v6, :cond_39

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_39

    .line 125
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_39

    .line 129
    :cond_2d
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    add-int/2addr v8, v0

    .line 130
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_36
    .catchall {:try_start_f .. :try_end_36} :catchall_4b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_36} :catch_40

    move-result v0

    if-nez v0, :cond_2d

    .line 140
    :cond_39
    if-eqz v6, :cond_c

    .line 142
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 143
    const/4 v6, 0x0

    goto :goto_c

    .line 134
    :catch_40
    move-exception v7

    .line 136
    .local v7, e:Ljava/lang/Exception;
    :try_start_41
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_4b

    .line 140
    if-eqz v6, :cond_c

    .line 142
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 143
    const/4 v6, 0x0

    goto :goto_c

    .line 140
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_4b
    move-exception v0

    if-eqz v6, :cond_52

    .line 142
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 143
    const/4 v6, 0x0

    :cond_52
    throw v0
.end method

.method public declared-synchronized registerBadgeInterface(Lcom/sec/android/socialhub/badge/IBadgeHandler;)V
    .registers 6
    .parameter "badge"

    .prologue
    .line 158
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/socialhub/badge/BadgeManager;->mBadgeArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/sec/android/socialhub/badge/BadgeManager;->mBadgeArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 160
    iget-object v0, p0, Lcom/sec/android/socialhub/badge/BadgeManager;->mBadgeArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    const-string v0, "BadgeManager"

    const-string v1, "registerBadgeInterface()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "badge array size - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/socialhub/badge/BadgeManager;->mBadgeArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_34

    .line 163
    :cond_32
    monitor-exit p0

    return-void

    .line 158
    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterBadgeInterface(Lcom/sec/android/socialhub/badge/IBadgeHandler;)V
    .registers 6
    .parameter "badge"

    .prologue
    .line 168
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/socialhub/badge/BadgeManager;->mBadgeArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/sec/android/socialhub/badge/BadgeManager;->mBadgeArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 170
    iget-object v0, p0, Lcom/sec/android/socialhub/badge/BadgeManager;->mBadgeArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 171
    const-string v0, "BadgeManager"

    const-string v1, "unregisterBadgeInterface()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "badge array size - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/socialhub/badge/BadgeManager;->mBadgeArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_34

    .line 173
    :cond_32
    monitor-exit p0

    return-void

    .line 168
    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateBadge(Landroid/content/Context;)V
    .registers 6
    .parameter "ctx"

    .prologue
    .line 80
    if-nez p1, :cond_c

    .line 82
    const-string v1, "BadgeManager"

    const-string v2, "updateBadge()"

    const-string v3, "ctx is null!!"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :goto_b
    return-void

    .line 86
    :cond_c
    iget-object v1, p0, Lcom/sec/android/socialhub/badge/BadgeManager;->where_total:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/socialhub/badge/BadgeManager;->getBadgeCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 88
    .local v0, total:I
    invoke-virtual {p0, p1, v0}, Lcom/sec/android/socialhub/badge/BadgeManager;->updateBadgeValue(Landroid/content/Context;I)V

    goto :goto_b
.end method

.method public updateBadgeValue(Landroid/content/Context;I)V
    .registers 8
    .parameter "ctx"
    .parameter "cnt"

    .prologue
    .line 186
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.sec.android.socialhub"

    const-string v3, "com.sec.android.socialhub.activity.SocialHubMainActivity"

    invoke-static {v1, v2, v3, p2}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->setBadgeCount(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    .line 187
    const-string v1, "BadgeManager"

    const-string v2, "updateBadgeValue()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Badge Count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26

    .line 193
    :goto_25
    return-void

    .line 189
    :catch_26
    move-exception v0

    .line 191
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_25
.end method

.method public updateLocalBadge(Landroid/content/Context;)V
    .registers 13
    .parameter "ctx"

    .prologue
    const/4 v10, 0x1

    .line 197
    const/4 v6, 0x0

    .line 198
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 202
    .local v9, total:I
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/socialhub/unifiedinbox/Uinbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "sum(unread)"

    aput-object v4, v2, v3

    const-string v3, "app != \'4_SevenIM\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 203
    if-eqz v6, :cond_58

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-ne v0, v10, :cond_58

    .line 205
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 207
    invoke-static {}, Lcom/sec/android/socialhub/feature/FeatureFactory;->getMessageInterface()Lcom/sec/android/socialhub/feature/FeatureFactory$MessageInterface;

    move-result-object v8

    .line 208
    .local v8, message:Lcom/sec/android/socialhub/feature/FeatureFactory$MessageInterface;
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Lcom/sec/android/socialhub/feature/FeatureFactory$MessageInterface;->isSupport(I)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 210
    invoke-static {}, Lcom/sec/android/socialhub/feature/FeatureFactory;->getMessageInterface()Lcom/sec/android/socialhub/feature/FeatureFactory$MessageInterface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/sec/android/socialhub/feature/FeatureFactory$MessageInterface;->getCount(Landroid/content/Context;I)I

    move-result v0

    add-int/2addr v9, v0

    .line 212
    :cond_3b
    const-string v0, "BadgeManager"

    const-string v1, "updateLocalBadge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "total count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-direct {p0, v9}, Lcom/sec/android/socialhub/badge/BadgeManager;->handleBadgeArray(I)V
    :try_end_58
    .catchall {:try_start_3 .. :try_end_58} :catchall_6a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_58} :catch_5f

    .line 222
    .end local v8           #message:Lcom/sec/android/socialhub/feature/FeatureFactory$MessageInterface;
    :cond_58
    if-eqz v6, :cond_5e

    .line 224
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 225
    const/4 v6, 0x0

    .line 228
    :cond_5e
    :goto_5e
    return-void

    .line 216
    :catch_5f
    move-exception v7

    .line 218
    .local v7, e:Ljava/lang/Exception;
    :try_start_60
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_6a

    .line 222
    if-eqz v6, :cond_5e

    .line 224
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 225
    const/4 v6, 0x0

    goto :goto_5e

    .line 222
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_6a
    move-exception v0

    if-eqz v6, :cond_71

    .line 224
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 225
    const/4 v6, 0x0

    :cond_71
    throw v0
.end method
