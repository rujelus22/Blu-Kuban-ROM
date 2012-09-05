.class public Lcom/android/exchange/adapter/NotesSyncAdapter;
.super Lcom/android/exchange/adapter/AbstractSyncAdapter;
.source "NotesSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;,
        Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    }
.end annotation


# instance fields
.field mIsLooping:Z

.field mNoteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V
    .registers 4
    .parameter "mailbox"
    .parameter "service"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/AbstractSyncAdapter;-><init>(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Lcom/android/exchange/EasSyncService;)V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter;->mNoteList:Ljava/util/ArrayList;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter;->mIsLooping:Z

    .line 43
    invoke-virtual {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter;->committAccount()V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/android/exchange/EasSyncService;)V
    .registers 3
    .parameter "service"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter;->mNoteList:Ljava/util/ArrayList;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter;->mIsLooping:Z

    .line 35
    invoke-virtual {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter;->committAccount()V

    .line 36
    return-void
.end method

.method private queryDBForDeletedNotes(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 20
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;",
            ">;"
        }
    .end annotation

    .prologue
    .line 511
    .local p1, noteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;>;"
    const/4 v11, 0x0

    .line 513
    .local v11, c_deleted:Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 514
    .local v15, note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "accountKey"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, "server_id"

    aput-object v2, v3, v1

    .line 520
    .local v3, projectionDeletedNotes:[Ljava/lang/String;
    :try_start_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/Notes$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "accountKey=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v7, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 525
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    .line 527
    .local v14, nextRow:Z
    :goto_39
    if-eqz v14, :cond_cb

    .line 528
    new-instance v4, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;-><init>(Lcom/android/exchange/adapter/NotesSyncAdapter;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_14 .. :try_end_4a} :catchall_bd

    .line 530
    .end local v15           #note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    .local v4, note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    const/4 v1, 0x2

    :try_start_4b
    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->setmServerIDNote(Ljava/lang/String;)V

    .line 532
    const/4 v1, 0x3

    invoke-virtual {v4, v1}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->setSyncNeededFlag(I)V

    .line 533
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 536
    .local v12, cv:Landroid/content/ContentValues;
    const-string v1, "flag_sync_needed"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 537
    sget-object v1, Lcom/android/emailcommon/provider/Notes$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 539
    .local v16, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v12, v2, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 541
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 542
    .local v13, cv_acc:Landroid/content/ContentValues;
    const-string v1, "syncNeeded"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 543
    sget-object v1, Lcom/android/emailcommon/provider/Notes$Account;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v5, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 545
    .local v17, uri_acc:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v1, v0, v13, v2, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 547
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_b9
    .catchall {:try_start_4b .. :try_end_b9} :catchall_d7

    move-result v14

    move-object v15, v4

    .line 549
    .end local v4           #note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    .restart local v15       #note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    goto/16 :goto_39

    .line 551
    .end local v12           #cv:Landroid/content/ContentValues;
    .end local v13           #cv_acc:Landroid/content/ContentValues;
    .end local v14           #nextRow:Z
    .end local v16           #uri:Landroid/net/Uri;
    .end local v17           #uri_acc:Landroid/net/Uri;
    :catchall_bd
    move-exception v1

    move-object v4, v15

    .end local v15           #note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    .restart local v4       #note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    :goto_bf
    if-eqz v11, :cond_ca

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_ca

    .line 552
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 551
    :cond_ca
    throw v1

    .end local v4           #note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    .restart local v14       #nextRow:Z
    .restart local v15       #note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    :cond_cb
    if-eqz v11, :cond_d6

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_d6

    .line 552
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 556
    :cond_d6
    return-object p1

    .line 551
    .end local v15           #note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    .restart local v4       #note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    :catchall_d7
    move-exception v1

    goto :goto_bf
.end method

.method private queryDBForLocalChanges()Ljava/util/ArrayList;
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;",
            ">;"
        }
    .end annotation

    .prologue
    .line 407
    const/16 v17, 0x0

    .line 408
    .local v17, c:Landroid/database/Cursor;
    const/16 v19, 0x0

    .line 409
    .local v19, c_msg:Landroid/database/Cursor;
    const/16 v18, 0x0

    .line 411
    .local v18, c_body:Landroid/database/Cursor;
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 412
    .local v24, noteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;>;"
    const/4 v9, 0x0

    .line 414
    .local v9, note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    const/16 v2, 0x8

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v16, v2

    const/4 v2, 0x1

    const-string v3, "accountKey"

    aput-object v3, v16, v2

    const/4 v2, 0x2

    const-string v3, "clientId"

    aput-object v3, v16, v2

    const/4 v2, 0x3

    const-string v3, "subject"

    aput-object v3, v16, v2

    const/4 v2, 0x4

    const-string v3, "last_modified_date"

    aput-object v3, v16, v2

    const/4 v2, 0x5

    const-string v3, "categories"

    aput-object v3, v16, v2

    const/4 v2, 0x6

    const-string v3, "flag_sync_needed"

    aput-object v3, v16, v2

    const/4 v2, 0x7

    const-string v3, "server_id"

    aput-object v3, v16, v2

    .line 427
    .local v16, NEW_CLIENT_MESSAGE_PROJECTION:[Ljava/lang/String;
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "accountKey"

    aput-object v3, v4, v2

    .line 431
    .local v4, projection:[Ljava/lang/String;
    :try_start_47
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/Notes$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "accountKey=?"

    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v10, v10, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 436
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_6b
    .catchall {:try_start_47 .. :try_end_6b} :catchall_19d

    move-result v22

    .local v22, nextRow:Z
    move-object/from16 v23, v9

    .line 438
    .end local v9           #note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    .local v23, note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    :goto_6e
    if-eqz v22, :cond_1c0

    .line 440
    :try_start_70
    sget-object v2, Lcom/android/emailcommon/provider/Notes$Message;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/Long;

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-direct {v3, v10, v11}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 442
    .local v6, uri_msg:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v7, v16

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 445
    sget-object v2, Lcom/android/emailcommon/provider/Notes$Body;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/Long;

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-direct {v3, v10, v11}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 447
    .local v8, uri_body:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v9, Lcom/android/emailcommon/provider/Notes$Body;->BODY_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 450
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1ee

    .line 452
    new-instance v9, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v9 .. v15}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;-><init>(Lcom/android/exchange/adapter/NotesSyncAdapter;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d5
    .catchall {:try_start_70 .. :try_end_d5} :catchall_1ea

    .line 456
    .end local v23           #note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    .restart local v9       #note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    const/4 v2, 0x2

    :try_start_d6
    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->setmClientID(Ljava/lang/String;)V

    .line 457
    const/4 v2, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->setmSubject(Ljava/lang/String;)V

    .line 458
    const/4 v2, 0x4

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->setmLastModifyDate(Ljava/lang/String;)V

    .line 459
    const/4 v2, 0x5

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->setmCategories(Ljava/lang/String;)V

    .line 460
    const/4 v2, 0x6

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->setSyncNeededFlag(I)V

    .line 461
    const/4 v2, 0x7

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->setmServerIDNote(Ljava/lang/String;)V

    .line 463
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_12b

    .line 465
    const/4 v2, 0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->setBodyData(Ljava/lang/String;)V

    .line 466
    const/4 v2, 0x4

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v9, v2}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->setBodyType(I)V

    .line 471
    :cond_12b
    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 474
    .local v20, cv:Landroid/content/ContentValues;
    const-string v2, "flag_sync_needed"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 475
    sget-object v2, Lcom/android/emailcommon/provider/Notes$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    .line 477
    .local v25, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v1, v3, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 479
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 480
    .local v21, cv_acc:Landroid/content/ContentValues;
    const-string v2, "syncNeeded"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 481
    sget-object v2, Lcom/android/emailcommon/provider/Notes$Account;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v10, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    .line 483
    .local v26, uri_acc:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v1, v3, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 487
    .end local v20           #cv:Landroid/content/ContentValues;
    .end local v21           #cv_acc:Landroid/content/ContentValues;
    .end local v25           #uri:Landroid/net/Uri;
    .end local v26           #uri_acc:Landroid/net/Uri;
    :goto_195
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_198
    .catchall {:try_start_d6 .. :try_end_198} :catchall_19d

    move-result v22

    move-object/from16 v23, v9

    .line 488
    .end local v9           #note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    .restart local v23       #note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    goto/16 :goto_6e

    .line 491
    .end local v6           #uri_msg:Landroid/net/Uri;
    .end local v8           #uri_body:Landroid/net/Uri;
    .end local v22           #nextRow:Z
    .end local v23           #note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    .restart local v9       #note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    :catchall_19d
    move-exception v2

    :goto_19e
    if-eqz v17, :cond_1a9

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1a9

    .line 492
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 494
    :cond_1a9
    if-eqz v18, :cond_1b4

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1b4

    .line 495
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 497
    :cond_1b4
    if-eqz v19, :cond_1bf

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1bf

    .line 498
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 491
    :cond_1bf
    throw v2

    .end local v9           #note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    .restart local v22       #nextRow:Z
    .restart local v23       #note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    :cond_1c0
    if-eqz v17, :cond_1cb

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1cb

    .line 492
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 494
    :cond_1cb
    if-eqz v18, :cond_1d6

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1d6

    .line 495
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 497
    :cond_1d6
    if-eqz v19, :cond_1e1

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1e1

    .line 498
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 502
    :cond_1e1
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/NotesSyncAdapter;->queryDBForDeletedNotes(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v24

    .line 504
    return-object v24

    .line 491
    :catchall_1ea
    move-exception v2

    move-object/from16 v9, v23

    .end local v23           #note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    .restart local v9       #note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    goto :goto_19e

    .end local v9           #note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    .restart local v6       #uri_msg:Landroid/net/Uri;
    .restart local v8       #uri_body:Landroid/net/Uri;
    .restart local v23       #note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    :cond_1ee
    move-object/from16 v9, v23

    .end local v23           #note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    .restart local v9       #note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    goto :goto_195
.end method


# virtual methods
.method public cleanup()V
    .registers 16

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 51
    const/4 v8, 0x0

    .line 52
    .local v8, count:I
    const/4 v6, 0x0

    .line 53
    .local v6, c_deleted:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 54
    .local v7, c_updated:Landroid/database/Cursor;
    new-array v4, v3, [Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 59
    .local v4, argument:[Ljava/lang/String;
    new-array v2, v3, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    .line 64
    .local v2, projection:[Ljava/lang/String;
    :try_start_13
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Notes$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "flag_sync_needed=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 67
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    .line 68
    .local v9, nextRow:Z
    :goto_26
    if-eqz v9, :cond_61

    .line 69
    sget-object v0, Lcom/android/emailcommon/provider/Notes$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 71
    .local v10, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v10, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 73
    sget-object v0, Lcom/android/emailcommon/provider/Notes$Body;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 75
    .local v11, uri2:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v11, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 77
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    .line 78
    goto :goto_26

    .line 81
    .end local v10           #uri:Landroid/net/Uri;
    .end local v11           #uri2:Landroid/net/Uri;
    :cond_61
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Notes$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "flag_sync_needed=?"

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 84
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Notes$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "flag_sync_needed=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 88
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    .line 89
    :goto_82
    if-eqz v9, :cond_b2

    .line 90
    sget-object v0, Lcom/android/emailcommon/provider/Notes$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 92
    .restart local v10       #uri:Landroid/net/Uri;
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 93
    .local v12, values:Landroid/content/ContentValues;
    const-string v0, "flag_sync_needed"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 94
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v10, v12, v1, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 95
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    .line 96
    goto :goto_82

    .line 99
    .end local v10           #uri:Landroid/net/Uri;
    .end local v12           #values:Landroid/content/ContentValues;
    :cond_b2
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Notes$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "flag_sync_needed=?"

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_bf
    .catchall {:try_start_13 .. :try_end_bf} :catchall_d7

    move-result v8

    .line 103
    if-eqz v7, :cond_cb

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_cb

    .line 104
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 106
    :cond_cb
    if-eqz v6, :cond_d6

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_d6

    .line 107
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 111
    :cond_d6
    return-void

    .line 103
    .end local v9           #nextRow:Z
    :catchall_d7
    move-exception v0

    if-eqz v7, :cond_e3

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_e3

    .line 104
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 106
    :cond_e3
    if-eqz v6, :cond_ee

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_ee

    .line 107
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 103
    :cond_ee
    throw v0
.end method

.method public committAccount()V
    .registers 9

    .prologue
    .line 384
    const-wide/16 v1, -0x1

    .line 386
    .local v1, rowId:J
    iget-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {p0, v4, v5}, Lcom/android/exchange/adapter/NotesSyncAdapter;->isAccountPresent(J)Z

    move-result v4

    if-nez v4, :cond_b1

    .line 387
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 388
    .local v0, cv:Landroid/content/ContentValues;
    const-string v4, "_id"

    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v5, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 389
    const-string v4, "accountKey"

    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v5, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 390
    const-string v4, "mailBoxId"

    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v5, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 392
    const-string v4, "accountType"

    const-string v5, "com.android.exchange"

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string v4, "emailAddress"

    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v4, "displayName"

    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v4, "newMessageCount"

    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v5, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mNewMessageCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 396
    iget-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/emailcommon/provider/Notes$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 397
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 398
    sget-boolean v4, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v4, :cond_b1

    .line 399
    const-string v4, "Notes"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Account Added -- Account ID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Email: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v6, v6, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Notes Mailbox ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_b1
    return-void
.end method

.method public getCollectionName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 167
    const-string v0, "IPM.StickyNote"

    return-object v0
.end method

.method public isAccountPresent(J)Z
    .registers 12
    .parameter "id"

    .prologue
    const/4 v8, 0x1

    .line 360
    new-array v2, v8, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 363
    .local v2, projection:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 364
    .local v7, flag:Z
    const/4 v6, 0x0

    .line 367
    .local v6, c:Landroid/database/Cursor;
    :try_start_a
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Notes$Account;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 370
    if-eqz v6, :cond_34

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_30
    .catchall {:try_start_a .. :try_end_30} :catchall_40

    move-result v0

    if-ne v0, v8, :cond_34

    .line 371
    const/4 v7, 0x1

    .line 374
    :cond_34
    if-eqz v6, :cond_3f

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 375
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 379
    :cond_3f
    return v7

    .line 374
    :catchall_40
    move-exception v0

    if-eqz v6, :cond_4c

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_4c

    .line 375
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 374
    :cond_4c
    throw v0
.end method

.method public isLooping()Z
    .registers 2

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/android/exchange/adapter/NotesSyncAdapter;->mIsLooping:Z

    return v0
.end method

.method public isSyncable()Z
    .registers 2

    .prologue
    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method public parse(Ljava/io/InputStream;)Z
    .registers 10
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/utility/DeviceAccessException;,
            Lcom/android/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    .line 189
    const/4 v1, 0x0

    .line 191
    .local v1, p:Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;
    :try_start_1
    new-instance v2, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;

    invoke-direct {v2, p0, p1, p0}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;-><init>(Lcom/android/exchange/adapter/NotesSyncAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/NotesSyncAdapter;)V
    :try_end_6
    .catch Lcom/android/exchange/adapter/Parser$EofException; {:try_start_1 .. :try_end_6} :catch_12

    .line 203
    .end local v1           #p:Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;
    .local v2, p:Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;
    invoke-virtual {v2}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->parse()Z

    move-result v3

    .line 204
    .local v3, res:Z
    invoke-virtual {v2}, Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;->isLooping()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/exchange/adapter/NotesSyncAdapter;->mIsLooping:Z

    move-object v1, v2

    .line 205
    .end local v2           #p:Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;
    .end local v3           #res:Z
    .restart local v1       #p:Lcom/android/exchange/adapter/NotesSyncAdapter$EasNotesSyncParser;
    :goto_11
    return v3

    .line 192
    :catch_12
    move-exception v0

    .line 194
    .local v0, e:Lcom/android/exchange/adapter/Parser$EofException;
    iget-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v4, v4, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide v6, 0x4028333333333333L

    cmpl-double v4, v4, v6

    if-nez v4, :cond_29

    .line 195
    invoke-virtual {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter;->setIntervalPing()V

    .line 196
    const/4 v3, 0x0

    goto :goto_11

    .line 198
    :cond_29
    throw v0
.end method

.method public sendLocalChanges(Lcom/android/exchange/adapter/Serializer;)Z
    .registers 12
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter;->getSyncKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 212
    const/4 v6, 0x0

    .line 355
    :goto_d
    return v6

    .line 214
    :cond_e
    invoke-direct {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter;->queryDBForLocalChanges()Ljava/util/ArrayList;

    move-result-object v5

    .line 216
    .local v5, noteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;>;"
    const/4 v4, 0x0

    .line 217
    .local v4, noteIndex:I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 219
    .local v1, listSize:I
    if-lez v1, :cond_1e

    .line 220
    const/16 v6, 0x16

    invoke-virtual {p1, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 223
    :cond_1e
    :goto_1e
    if-ge v4, v1, :cond_1e5

    .line 225
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;

    .line 227
    .local v3, note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    const/4 v2, 0x0

    .line 229
    .local v2, multiCategories:[Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getmCategories()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_37

    .line 230
    invoke-virtual {v3}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getmCategories()Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 233
    :cond_37
    invoke-virtual {v3}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getSyncNeededFlag()I

    move-result v6

    packed-switch v6, :pswitch_data_1f2

    .line 348
    :goto_3e
    add-int/lit8 v4, v4, 0x1

    .line 349
    goto :goto_1e

    .line 237
    :pswitch_41
    sget-boolean v6, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v6, :cond_6f

    .line 238
    const-string v6, "Notes"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Send local NEW Note --  Account ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v8, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Client ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getmClientID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_6f
    const/4 v6, 0x7

    invoke-virtual {p1, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    const/16 v7, 0xc

    invoke-virtual {v3}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getmClientID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 243
    const/16 v6, 0x1d

    invoke-virtual {p1, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 247
    invoke-virtual {v3}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getBodyData()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_bc

    invoke-virtual {v3}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getBodyData()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_bc

    invoke-virtual {v3}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getBodyType()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_bc

    .line 249
    const/16 v6, 0x44a

    invoke-virtual {p1, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    const/16 v7, 0x446

    invoke-virtual {v3}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getBodyType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    const/16 v7, 0x44b

    invoke-virtual {v3}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getBodyData()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 256
    :cond_bc
    if-eqz v2, :cond_d7

    array-length v6, v2

    if-lez v6, :cond_d7

    .line 257
    const/16 v6, 0x5c8

    invoke-virtual {p1, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 258
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c7
    array-length v6, v2

    if-ge v0, v6, :cond_d4

    .line 259
    const/16 v6, 0x5c9

    aget-object v7, v2, v0

    invoke-virtual {p1, v6, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_c7

    .line 261
    :cond_d4
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 271
    .end local v0           #i:I
    :cond_d7
    invoke-virtual {v3}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getmSubject()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_e6

    .line 272
    const/16 v6, 0x5c5

    invoke-virtual {v3}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getmSubject()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 276
    :cond_e6
    const/16 v6, 0x5c6

    invoke-virtual {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter;->getCollectionName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 278
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 280
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_3e

    .line 286
    :pswitch_f7
    sget-boolean v6, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v6, :cond_125

    .line 287
    const-string v6, "Notes"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "send local MODIFIED Note --  Account ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v8, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Server ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getmServerIDNote()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_125
    const/16 v6, 0x8

    invoke-virtual {p1, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    const/16 v7, 0xd

    invoke-virtual {v3}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getmServerIDNote()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 292
    const/16 v6, 0x1d

    invoke-virtual {p1, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 295
    invoke-virtual {v3}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getBodyData()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_167

    invoke-virtual {v3}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getBodyType()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_167

    .line 296
    const/16 v6, 0x44a

    invoke-virtual {p1, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    const/16 v7, 0x446

    invoke-virtual {v3}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getBodyType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    const/16 v7, 0x44b

    invoke-virtual {v3}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getBodyData()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 308
    :cond_167
    if-eqz v2, :cond_182

    array-length v6, v2

    if-lez v6, :cond_182

    .line 309
    const/16 v6, 0x5c8

    invoke-virtual {p1, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 310
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_172
    array-length v6, v2

    if-ge v0, v6, :cond_17f

    .line 311
    const/16 v6, 0x5c9

    aget-object v7, v2, v0

    invoke-virtual {p1, v6, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_172

    .line 313
    :cond_17f
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 323
    .end local v0           #i:I
    :cond_182
    invoke-virtual {v3}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getmSubject()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_191

    .line 324
    const/16 v6, 0x5c5

    invoke-virtual {v3}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getmSubject()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 328
    :cond_191
    const/16 v6, 0x5c6

    invoke-virtual {p0}, Lcom/android/exchange/adapter/NotesSyncAdapter;->getCollectionName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 330
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 332
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_3e

    .line 338
    :pswitch_1a2
    sget-boolean v6, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v6, :cond_1d0

    .line 339
    const-string v6, "Notes"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "send local DELETED Note --  Account ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v8, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Server ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getmServerIDNote()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_1d0
    const/16 v6, 0x9

    invoke-virtual {p1, v6}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    const/16 v7, 0xd

    invoke-virtual {v3}, Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;->getmServerIDNote()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_3e

    .line 351
    .end local v2           #multiCategories:[Ljava/lang/String;
    .end local v3           #note:Lcom/android/exchange/adapter/NotesSyncAdapter$NoteContents;
    :cond_1e5
    if-lez v1, :cond_1ea

    .line 352
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 355
    :cond_1ea
    if-lez v1, :cond_1ef

    const/4 v6, 0x1

    goto/16 :goto_d

    :cond_1ef
    const/4 v6, 0x0

    goto/16 :goto_d

    .line 233
    :pswitch_data_1f2
    .packed-switch 0x1
        :pswitch_41
        :pswitch_f7
        :pswitch_1a2
    .end packed-switch
.end method

.method public wipe()V
    .registers 15

    .prologue
    .line 118
    const/4 v8, 0x0

    .line 119
    .local v8, count:I
    const/4 v7, 0x0

    .line 120
    .local v7, c_msg:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 121
    .local v9, cv:Landroid/content/ContentValues;
    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v0

    .line 126
    .local v6, argument:[Ljava/lang/String;
    :try_start_11
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Notes$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Notes$Message;->MESSAGE_PROJECTION:[Ljava/lang/String;

    const-string v3, "accountKey=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v12, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v12, v12, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 131
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    .line 132
    .local v10, nextMsg:Z
    :goto_34
    if-eqz v10, :cond_5f

    .line 133
    sget-object v0, Lcom/android/emailcommon/provider/Notes$Body;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 134
    .local v11, uri_body:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v11, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 135
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_50
    .catchall {:try_start_11 .. :try_end_50} :catchall_52

    move-result v10

    .line 136
    goto :goto_34

    .line 138
    .end local v10           #nextMsg:Z
    .end local v11           #uri_body:Landroid/net/Uri;
    :catchall_52
    move-exception v0

    if-eqz v7, :cond_5e

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5e

    .line 139
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 138
    :cond_5e
    throw v0

    .restart local v10       #nextMsg:Z
    :cond_5f
    if-eqz v7, :cond_6a

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_6a

    .line 139
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 143
    :cond_6a
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Notes$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "accountKey=?"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 145
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Notes$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "accountKey=?"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 147
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Notes$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "accountKey=?"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 150
    new-instance v9, Landroid/content/ContentValues;

    .end local v9           #cv:Landroid/content/ContentValues;
    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 151
    .restart local v9       #cv:Landroid/content/ContentValues;
    const-string v0, "syncKey"

    const-string v1, "0"

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v12, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 157
    sget-boolean v0, Lcom/android/emailcommon/EasRefs;->USER_LOG:Z

    if-eqz v0, :cond_e9

    .line 158
    const-string v0, "Notes"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Note\'s Wipe is recieved  for  Account ID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Email: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_e9
    return-void
.end method
