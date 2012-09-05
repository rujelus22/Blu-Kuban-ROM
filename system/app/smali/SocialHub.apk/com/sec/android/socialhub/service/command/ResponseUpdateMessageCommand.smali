.class public Lcom/sec/android/socialhub/service/command/ResponseUpdateMessageCommand;
.super Lcom/sec/android/socialhub/service/command/AbstractCommand;
.source "ResponseUpdateMessageCommand.java"

# interfaces
.implements Lcom/sec/android/socialhub/service/command/AbstractCommand$ICommandResposneListener;


# instance fields
.field private final EMAIL_UPDATE_CONDITION:Ljava/lang/String;

.field private actionType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/socialhub/service/command/AbstractCommand$ICommandResposneListener;)V
    .registers 4
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/sec/android/socialhub/service/command/AbstractCommand;-><init>(Landroid/content/Context;Lcom/sec/android/socialhub/service/command/AbstractCommand$ICommandResposneListener;)V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/socialhub/service/command/ResponseUpdateMessageCommand;->actionType:I

    .line 39
    const-string v0, "_id_origin = ?  and app_type in (400, 410)"

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/ResponseUpdateMessageCommand;->EMAIL_UPDATE_CONDITION:Ljava/lang/String;

    .line 45
    const/16 v0, 0x19

    iput v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reqType:I

    .line 46
    return-void
.end method

.method private doInsertEmail([Ljava/lang/String;)Z
    .registers 18
    .parameter "_ids"

    .prologue
    .line 291
    const/4 v8, 0x0

    .line 294
    .local v8, cursor:Landroid/database/Cursor;
    const-string v1, "ResponseUpdateMessageCommand"

    const-string v2, "doInsertEmail()"

    const-string v3, "START"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-wide/16 v1, 0x12c

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 300
    :try_start_f
    const-string v1, "ResponseUpdateMessageCommand"

    const-string v2, "doInsertEmail()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " insert count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    array-length v4, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .local v15, value_array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    move-object/from16 v7, p1

    .local v7, arr$:[Ljava/lang/String;
    array-length v13, v7

    .local v13, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_39
    if-ge v11, v13, :cond_1d8

    aget-object v12, v7, v11

    .line 306
    .local v12, id:Ljava/lang/String;
    const-string v1, "ResponseUpdateMessageCommand"

    const-string v2, "doInsertEmail()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/sec/android/socialhub/db/Emailcontent$EmailMessage;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/sec/android/socialhub/db/Emailcontent$EmailMessage;->CONTENT_PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 312
    if-eqz v8, :cond_80

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_96

    .line 314
    :cond_80
    const-string v1, "ResponseUpdateMessageCommand"

    const-string v2, "doInsertEmail()"

    const-string v3, "END(no email messages"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    if-eqz v8, :cond_8e

    .line 316
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_8e
    .catchall {:try_start_f .. :try_end_8e} :catchall_207
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_8e} :catch_1fd

    .line 317
    :cond_8e
    const/4 v8, 0x0

    .line 318
    const/4 v1, 0x0

    .line 378
    if-eqz v8, :cond_95

    .line 380
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 385
    .end local v7           #arr$:[Ljava/lang/String;
    .end local v11           #i$:I
    .end local v12           #id:Ljava/lang/String;
    .end local v13           #len$:I
    .end local v15           #value_array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_95
    :goto_95
    return v1

    .line 321
    .restart local v7       #arr$:[Ljava/lang/String;
    .restart local v11       #i$:I
    .restart local v12       #id:Ljava/lang/String;
    .restart local v13       #len$:I
    .restart local v15       #value_array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_96
    :try_start_96
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 323
    .local v9, data:Landroid/content/ContentValues;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1d0

    .line 325
    const/16 v1, 0xa

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/socialhub/service/command/ResponseUpdateMessageCommand;->getEmailRecipientCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 327
    .local v14, receiverCnt:I
    const-string v1, "sns_receiver_count"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 328
    const-string v1, "_id_origin"

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 329
    const-string v1, "app_type"

    const/16 v2, 0x190

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 330
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 331
    const-string v1, "date"

    const/4 v2, 0x2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 332
    const-string v1, "name"

    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v1, "email_address"

    const/16 v2, 0x9

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v1, "m_subject"

    const/4 v2, 0x3

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v1, "new"

    const/4 v2, 0x4

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 336
    const-string v1, "count"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 337
    const-string v1, "hasAttachment"

    const/4 v2, 0x6

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 338
    const-string v1, "account_id"

    const/16 v2, 0x8

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 339
    const-string v1, "flagFavorite"

    const/4 v2, 0x5

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 340
    const-string v1, "thread_id"

    const/16 v2, 0xc

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 341
    const-string v1, "flagStatus"

    const/16 v2, 0xe

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 342
    const-string v1, "importance"

    const/16 v2, 0xd

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 343
    const-string v1, "smimeFlags"

    const/16 v2, 0xf

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 344
    const-string v1, "umCallerId"

    const/16 v2, 0x10

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string v1, "messageType"

    const/16 v2, 0x12

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 346
    const-string v1, "flags"

    const/4 v2, 0x7

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 347
    const-string v1, "lastVerb"

    const/16 v2, 0x11

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 348
    const-string v1, "m_content"

    const/16 v2, 0x13

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    .end local v14           #receiverCnt:I
    :cond_1d0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1d3
    .catchall {:try_start_96 .. :try_end_1d3} :catchall_207
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_1d3} :catch_1fd

    .line 354
    const/4 v8, 0x0

    .line 304
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_39

    .line 359
    .end local v9           #data:Landroid/content/ContentValues;
    .end local v12           #id:Ljava/lang/String;
    :cond_1d8
    :try_start_1d8
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1e7

    .line 361
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/sec/android/socialhub/unifiedinbox/util/SocialHubColumn$SocialHub;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v2, v15}, Lcom/sec/android/socialhub/service/util/DataBaseUtil;->bulkInsert(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/ArrayList;)I
    :try_end_1e7
    .catchall {:try_start_1d8 .. :try_end_1e7} :catchall_207
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_1d8 .. :try_end_1e7} :catch_1f8
    .catch Ljava/lang/Exception; {:try_start_1d8 .. :try_end_1e7} :catch_1fd

    .line 370
    :cond_1e7
    :goto_1e7
    :try_start_1e7
    const-string v1, "ResponseUpdateMessageCommand"

    const-string v2, "doInsertEmail()"

    const-string v3, "END"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f0
    .catchall {:try_start_1e7 .. :try_end_1f0} :catchall_207
    .catch Ljava/lang/Exception; {:try_start_1e7 .. :try_end_1f0} :catch_1fd

    .line 378
    if-eqz v8, :cond_1f5

    .line 380
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 385
    .end local v7           #arr$:[Ljava/lang/String;
    .end local v11           #i$:I
    .end local v13           #len$:I
    .end local v15           #value_array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_1f5
    :goto_1f5
    const/4 v1, 0x1

    goto/16 :goto_95

    .line 365
    .restart local v7       #arr$:[Ljava/lang/String;
    .restart local v11       #i$:I
    .restart local v13       #len$:I
    .restart local v15       #value_array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :catch_1f8
    move-exception v10

    .line 367
    .local v10, e:Landroid/database/sqlite/SQLiteConstraintException;
    :try_start_1f9
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteConstraintException;->printStackTrace()V
    :try_end_1fc
    .catchall {:try_start_1f9 .. :try_end_1fc} :catchall_207
    .catch Ljava/lang/Exception; {:try_start_1f9 .. :try_end_1fc} :catch_1fd

    goto :goto_1e7

    .line 372
    .end local v7           #arr$:[Ljava/lang/String;
    .end local v10           #e:Landroid/database/sqlite/SQLiteConstraintException;
    .end local v11           #i$:I
    .end local v13           #len$:I
    .end local v15           #value_array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :catch_1fd
    move-exception v10

    .line 374
    .local v10, e:Ljava/lang/Exception;
    :try_start_1fe
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_201
    .catchall {:try_start_1fe .. :try_end_201} :catchall_207

    .line 378
    if-eqz v8, :cond_1f5

    .line 380
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1f5

    .line 378
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_207
    move-exception v1

    if-eqz v8, :cond_20d

    .line 380
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 378
    :cond_20d
    throw v1
.end method

.method private doUpdateBodyAttachment([Ljava/lang/String;Z)Z
    .registers 14
    .parameter "_ids"
    .parameter "bSuccess"

    .prologue
    const/4 v10, 0x1

    .line 166
    if-nez p2, :cond_c

    .line 168
    const-string v5, "ResponseUpdateMessageCommand"

    const-string v6, "doUpdateBodyAttachment()"

    const-string v7, "bSuccess - false. something wrong!!"

    invoke-static {v5, v6, v7}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_c
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 173
    .local v4, value:Landroid/content/ContentValues;
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_14
    if-ge v1, v3, :cond_41

    aget-object v2, v0, v1

    .line 175
    .local v2, id:Ljava/lang/String;
    invoke-virtual {p0, v4, v2}, Lcom/sec/android/socialhub/service/command/ResponseUpdateMessageCommand;->getEmailDbBody(Landroid/content/ContentValues;Ljava/lang/String;)Z

    .line 176
    if-eqz v4, :cond_37

    invoke-virtual {v4}, Landroid/content/ContentValues;->size()I

    move-result v5

    if-lez v5, :cond_37

    .line 178
    iget-object v5, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/sec/android/socialhub/unifiedinbox/util/SocialHubColumn$SocialHub;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "_id_origin = ?  and app_type in (400, 410)"

    new-array v8, v10, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-virtual {v5, v6, v4, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 184
    :goto_31
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 182
    :cond_37
    const-string v5, "ResponseUpdateMessageCommand"

    const-string v6, "doUpdateBodyAttachment()"

    const-string v7, "value is null!!"

    invoke-static {v5, v6, v7}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31

    .line 187
    .end local v2           #id:Ljava/lang/String;
    :cond_41
    return v10
.end method

.method private doUpdateEmail([Ljava/lang/String;Z)Z
    .registers 14
    .parameter "_ids"
    .parameter "flag"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 267
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 269
    .local v4, value:Landroid/content/ContentValues;
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_a
    if-ge v1, v3, :cond_53

    aget-object v2, v0, v1

    .line 271
    .local v2, id:Ljava/lang/String;
    const-string v5, "ResponseUpdateMessageCommand"

    const-string v8, "doUpdateEmail()"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "change read state as "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for ID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v8, v9}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v8, "new"

    if-ne p2, v6, :cond_51

    move v5, v6

    :goto_37
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 274
    iget-object v5, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/sec/android/socialhub/unifiedinbox/util/SocialHubColumn$SocialHub;->CONTENT_URI:Landroid/net/Uri;

    const-string v9, "_id_origin = ?  and app_type in (400, 410)"

    new-array v10, v6, [Ljava/lang/String;

    aput-object v2, v10, v7

    invoke-virtual {v5, v8, v4, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 275
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 269
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_51
    move v5, v7

    .line 273
    goto :goto_37

    .line 278
    .end local v2           #id:Ljava/lang/String;
    :cond_53
    return v6
.end method

.method private doUpdateFavoriteFlag([Ljava/lang/String;Z)Z
    .registers 14
    .parameter "_ids"
    .parameter "flag"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 241
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 243
    .local v4, value:Landroid/content/ContentValues;
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_a
    if-ge v1, v3, :cond_53

    aget-object v2, v0, v1

    .line 245
    .local v2, id:Ljava/lang/String;
    const-string v5, "ResponseUpdateMessageCommand"

    const-string v8, "doUpdateFavoriteFlag()"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "change Favorite state as "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " for ID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v8, v9}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v8, "flagFavorite"

    if-ne p2, v6, :cond_51

    move v5, v6

    :goto_37
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 249
    iget-object v5, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/sec/android/socialhub/unifiedinbox/util/SocialHubColumn$SocialHub;->CONTENT_URI:Landroid/net/Uri;

    const-string v9, "_id_origin = ?  and app_type in (400, 410)"

    new-array v10, v6, [Ljava/lang/String;

    aput-object v2, v10, v7

    invoke-virtual {v5, v8, v4, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 251
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_51
    move v5, v7

    .line 247
    goto :goto_37

    .line 254
    .end local v2           #id:Ljava/lang/String;
    :cond_53
    return v6
.end method

.method private doUpdateFollowUpFlag([Ljava/lang/String;I)Z
    .registers 14
    .parameter "_ids"
    .parameter "flag"

    .prologue
    const/4 v10, 0x1

    .line 217
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 219
    .local v4, values:Landroid/content/ContentValues;
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_9
    if-ge v1, v3, :cond_4e

    aget-object v2, v0, v1

    .line 221
    .local v2, id:Ljava/lang/String;
    const-string v5, "ResponseUpdateMessageCommand"

    const-string v6, "doUpdateFollowUpFlag()"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "change EAS Flag as "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v5, "flagStatus"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 223
    iget-object v5, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/sec/android/socialhub/unifiedinbox/util/SocialHubColumn$SocialHub;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "_id_origin = ?  and app_type in (400, 410)"

    new-array v8, v10, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-virtual {v5, v6, v4, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 224
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 227
    .end local v2           #id:Ljava/lang/String;
    :cond_4e
    return v10
.end method

.method private doUpdateLastVerb([Ljava/lang/String;I)Z
    .registers 14
    .parameter "_ids"
    .parameter "flag"

    .prologue
    const/4 v10, 0x1

    .line 192
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 194
    .local v4, value:Landroid/content/ContentValues;
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_9
    if-ge v1, v3, :cond_4e

    aget-object v2, v0, v1

    .line 196
    .local v2, id:Ljava/lang/String;
    const-string v5, "ResponseUpdateMessageCommand"

    const-string v6, "doUpdateLastVerb()"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "change EAS Flag as "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v5, "lastVerb"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 199
    iget-object v5, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/sec/android/socialhub/unifiedinbox/util/SocialHubColumn$SocialHub;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "_id_origin = ?  and app_type in (400, 410)"

    new-array v8, v10, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-virtual {v5, v6, v4, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 200
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 194
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 203
    .end local v2           #id:Ljava/lang/String;
    :cond_4e
    return v10
.end method


# virtual methods
.method protected execute()Z
    .registers 10

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 67
    iput v4, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->errorCode:I

    .line 68
    iget v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->errorCode:I

    invoke-static {v0}, Lcom/sec/android/socialhub/service/error/SocialHubServiceError;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reason:Ljava/lang/String;

    .line 70
    iget-object v7, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mMessage:Lcom/sec/android/socialhub/service/message/RequestMessage;

    check-cast v7, Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;

    .line 72
    .local v7, message:Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->account_type:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/socialhub/type/SocialHubAccountType;->getAccountType(Ljava/lang/String;)I

    move-result v6

    .line 74
    .local v6, app_type:I
    packed-switch v6, :pswitch_data_8e

    .line 156
    const-string v0, "ResponseUpdateMessageCommand"

    const-string v1, "excute()"

    const-string v2, "Invalid Type!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :goto_22
    :pswitch_22
    return v4

    .line 79
    :pswitch_23
    iget v0, p0, Lcom/sec/android/socialhub/service/command/ResponseUpdateMessageCommand;->actionType:I

    packed-switch v0, :pswitch_data_9c

    .line 106
    :goto_28
    :pswitch_28
    iget v0, p0, Lcom/sec/android/socialhub/service/command/ResponseUpdateMessageCommand;->actionType:I

    sparse-switch v0, :sswitch_data_b8

    .line 128
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/android/socialhub/db/SocialHubDB$MessageTable;->FAST_REQUERY_URI:Landroid/net/Uri;

    invoke-static {v0, v6, v1, v3}, Lcom/sec/android/socialhub/badge/BadgeManager;->updateAccountBadge(Landroid/content/Context;ILandroid/net/Uri;Z)V

    .line 132
    :goto_34
    iget v1, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reqID:I

    iget v2, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reqType:I

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/service/command/ResponseUpdateMessageCommand;->invokeCallback(IIZILjava/lang/String;)V

    goto :goto_22

    .line 82
    :pswitch_3e
    iget-object v0, v7, Lcom/sec/android/socialhub/service/message/RequestMessage$MsgMessage;->messageID:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/socialhub/service/command/ResponseUpdateMessageCommand;->doInsertEmail([Ljava/lang/String;)Z

    goto :goto_28

    .line 86
    :pswitch_44
    iget-object v0, v7, Lcom/sec/android/socialhub/service/message/RequestMessage$MsgMessage;->messageID:[Ljava/lang/String;

    iget-boolean v1, v7, Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;->is_read:Z

    invoke-direct {p0, v0, v1}, Lcom/sec/android/socialhub/service/command/ResponseUpdateMessageCommand;->doUpdateEmail([Ljava/lang/String;Z)Z

    goto :goto_28

    .line 90
    :pswitch_4c
    iget-object v0, v7, Lcom/sec/android/socialhub/service/message/RequestMessage$MsgMessage;->messageID:[Ljava/lang/String;

    iget-boolean v1, v7, Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;->is_favorite:Z

    invoke-direct {p0, v0, v1}, Lcom/sec/android/socialhub/service/command/ResponseUpdateMessageCommand;->doUpdateFavoriteFlag([Ljava/lang/String;Z)Z

    goto :goto_28

    .line 94
    :pswitch_54
    iget-object v0, v7, Lcom/sec/android/socialhub/service/message/RequestMessage$MsgMessage;->messageID:[Ljava/lang/String;

    iget v1, v7, Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;->status_followupflag:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/socialhub/service/command/ResponseUpdateMessageCommand;->doUpdateFollowUpFlag([Ljava/lang/String;I)Z

    goto :goto_28

    .line 98
    :pswitch_5c
    iget-object v0, v7, Lcom/sec/android/socialhub/service/message/RequestMessage$MsgMessage;->messageID:[Ljava/lang/String;

    iget v1, v7, Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;->status_lastverb:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/socialhub/service/command/ResponseUpdateMessageCommand;->doUpdateLastVerb([Ljava/lang/String;I)Z

    goto :goto_28

    .line 102
    :pswitch_64
    iget-object v0, v7, Lcom/sec/android/socialhub/service/message/RequestMessage$MsgMessage;->messageID:[Ljava/lang/String;

    iget-boolean v1, v7, Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;->success:Z

    invoke-direct {p0, v0, v1}, Lcom/sec/android/socialhub/service/command/ResponseUpdateMessageCommand;->doUpdateBodyAttachment([Ljava/lang/String;Z)Z

    goto :goto_28

    .line 110
    :sswitch_6c
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/android/socialhub/db/SocialHubDB$MessageTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v6, v1, v3}, Lcom/sec/android/socialhub/badge/BadgeManager;->updateAccountBadge(Landroid/content/Context;ILandroid/net/Uri;Z)V

    goto :goto_34

    .line 142
    :pswitch_74
    new-instance v8, Lcom/sec/android/socialhub/service/message/RequestMessage;

    invoke-direct {v8}, Lcom/sec/android/socialhub/service/message/RequestMessage;-><init>()V

    .line 143
    .local v8, request:Lcom/sec/android/socialhub/service/message/RequestMessage;
    iput v4, v8, Lcom/sec/android/socialhub/service/message/RequestMessage;->reqID:I

    .line 145
    iget-object v0, v7, Lcom/sec/android/socialhub/service/message/RequestMessage;->accountType:Ljava/lang/String;

    iput-object v0, v8, Lcom/sec/android/socialhub/service/message/RequestMessage;->accountType:Ljava/lang/String;

    .line 147
    new-instance v0, Lcom/sec/android/socialhub/service/command/RequestDBSyncCommand;

    iget-object v1, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/sec/android/socialhub/service/command/RequestDBSyncCommand;-><init>(Landroid/content/Context;Lcom/sec/android/socialhub/service/command/AbstractCommand$ICommandResposneListener;)V

    new-array v1, v3, [Lcom/sec/android/socialhub/service/message/RequestMessage;

    aput-object v8, v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/service/command/RequestDBSyncCommand;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_22

    .line 74
    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_22
        :pswitch_23
        :pswitch_23
        :pswitch_22
        :pswitch_74
    .end packed-switch

    .line 79
    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_44
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_4c
        :pswitch_28
        :pswitch_54
        :pswitch_5c
        :pswitch_64
    .end packed-switch

    .line 106
    :sswitch_data_b8
    .sparse-switch
        0x1 -> :sswitch_6c
        0xc -> :sswitch_6c
    .end sparse-switch
.end method

.method protected getTaskName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 391
    const-string v0, "ResponseUpdateMessageCommand"

    return-object v0
.end method

.method protected loadMessage(Lcom/sec/android/socialhub/service/message/RequestMessage;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 51
    instance-of v0, p1, Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;

    if-eqz v0, :cond_1a

    .line 53
    iget-object v0, p1, Lcom/sec/android/socialhub/service/message/RequestMessage;->accountType:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->account_type:Ljava/lang/String;

    .line 54
    iget-object v0, p1, Lcom/sec/android/socialhub/service/message/RequestMessage;->accountID:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->account_id:Ljava/lang/String;

    .line 56
    iget-object v0, p1, Lcom/sec/android/socialhub/service/message/RequestMessage;->accountArray:[Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->accountIdArray:[Ljava/lang/String;

    .line 58
    iget v0, p1, Lcom/sec/android/socialhub/service/message/RequestMessage;->reqID:I

    iput v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reqID:I

    .line 59
    check-cast p1, Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;

    .end local p1
    iget v0, p1, Lcom/sec/android/socialhub/service/message/RequestMessage$UpdateMsgMessage;->updateAction:I

    iput v0, p0, Lcom/sec/android/socialhub/service/command/ResponseUpdateMessageCommand;->actionType:I

    .line 61
    :cond_1a
    return-void
.end method

.method public onCommandCallback(IIZILjava/lang/String;)V
    .registers 12
    .parameter "reqID"
    .parameter "reqType"
    .parameter "bSuccess"
    .parameter "errorCode"
    .parameter "reason"

    .prologue
    .line 397
    iget v1, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reqID:I

    iget v2, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reqType:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/service/command/ResponseUpdateMessageCommand;->invokeCallback(IIZILjava/lang/String;)V

    .line 398
    return-void
.end method
