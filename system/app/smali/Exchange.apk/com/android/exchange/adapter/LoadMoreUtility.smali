.class public Lcom/android/exchange/adapter/LoadMoreUtility;
.super Ljava/lang/Object;
.source "LoadMoreUtility.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 84
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateAttachment(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .registers 19
    .parameter "context"
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 655
    new-instance v9, Ljava/io/FileInputStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/tempFile"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v9, v13}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 657
    .local v9, in:Ljava/io/InputStream;
    if-nez v9, :cond_1f

    .line 753
    :goto_1e
    return-void

    .line 663
    :cond_1f
    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v1

    .line 667
    .local v1, atts:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-nez v1, :cond_2f

    .line 671
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    goto :goto_1e

    .line 677
    :cond_2f
    if-eqz v1, :cond_39

    array-length v13, v1

    const/4 v14, 0x1

    if-ge v13, v14, :cond_39

    .line 679
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    goto :goto_1e

    .line 687
    :cond_39
    const/4 v10, 0x0

    .line 689
    .local v10, os:Ljava/io/OutputStream;
    const-wide/16 v3, 0x0

    .line 691
    .local v3, copySize:J
    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    const/4 v15, 0x0

    aget-object v15, v1, v15

    iget-wide v15, v15, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static/range {v13 .. v16}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v11

    .line 699
    .local v11, saveUri:Landroid/net/Uri;
    :try_start_49
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v10

    .line 701
    invoke-static {v9, v10}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_54
    .catchall {:try_start_49 .. :try_end_54} :catchall_ca
    .catch Ljava/io/FileNotFoundException; {:try_start_49 .. :try_end_54} :catch_b2
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_54} :catch_be

    move-result v13

    int-to-long v3, v13

    .line 713
    if-eqz v9, :cond_5b

    .line 715
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 717
    :cond_5b
    if-eqz v10, :cond_60

    .line 719
    :goto_5d
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 727
    :cond_60
    new-instance v8, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/tempFile"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v8, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 731
    .local v8, fileToDelete:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_85

    .line 733
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 737
    :cond_85
    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 743
    .local v2, contentUriString:Ljava/lang/String;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 745
    .local v5, cv:Landroid/content/ContentValues;
    const-string v13, "size"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 747
    const-string v13, "contentUri"

    invoke-virtual {v5, v13, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    sget-object v13, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    const/4 v14, 0x0

    aget-object v14, v1, v14

    iget-wide v14, v14, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v13, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 751
    .local v12, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v12, v5, v14, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1e

    .line 703
    .end local v2           #contentUriString:Ljava/lang/String;
    .end local v5           #cv:Landroid/content/ContentValues;
    .end local v8           #fileToDelete:Ljava/io/File;
    .end local v12           #uri:Landroid/net/Uri;
    :catch_b2
    move-exception v7

    .line 705
    .local v7, e1:Ljava/io/FileNotFoundException;
    :try_start_b3
    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_b6
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_ca

    .line 713
    if-eqz v9, :cond_bb

    .line 715
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 717
    :cond_bb
    if-eqz v10, :cond_60

    goto :goto_5d

    .line 707
    .end local v7           #e1:Ljava/io/FileNotFoundException;
    :catch_be
    move-exception v6

    .line 709
    .local v6, e:Ljava/io/IOException;
    :try_start_bf
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c2
    .catchall {:try_start_bf .. :try_end_c2} :catchall_ca

    .line 713
    if-eqz v9, :cond_c7

    .line 715
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 717
    :cond_c7
    if-eqz v10, :cond_60

    goto :goto_5d

    .line 713
    .end local v6           #e:Ljava/io/IOException;
    :catchall_ca
    move-exception v13

    if-eqz v9, :cond_d0

    .line 715
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 717
    :cond_d0
    if-eqz v10, :cond_d5

    .line 719
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 713
    :cond_d5
    throw v13
.end method

.method public static updateEmail(Lcom/android/exchange/AbstractSyncService;Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Body;)V
    .registers 35
    .parameter "service"
    .parameter "context"
    .parameter "msg"
    .parameter "body"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v19, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 96
    .local v12, cv:Landroid/content/ContentValues;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 100
    .local v11, cr:Landroid/content/ContentResolver;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/AbstractSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v24

    monitor-enter v24

    .line 104
    :try_start_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/AbstractSyncService;->isStopped()Z

    move-result v23

    if-eqz v23, :cond_22

    .line 108
    new-instance v23, Ljava/io/IOException;

    invoke-direct/range {v23 .. v23}, Ljava/io/IOException;-><init>()V

    throw v23

    .line 648
    :catchall_1f
    move-exception v23

    monitor-exit v24
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_1f

    throw v23

    .line 126
    :cond_22
    :try_start_22
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v7, bodyChunks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v20, 0x0

    .line 138
    .local v20, pstCPResult:[Landroid/content/ContentProviderResult;
    const/4 v15, 0x0

    .line 142
    .local v15, htmlPresence:Z
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1ad

    .line 146
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    .line 150
    .local v18, lastChar:C
    if-nez v18, :cond_72

    .line 154
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v25, 0x0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    .line 164
    :cond_72
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "<BR><BR>...<BR><BR>"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const v25, 0x7f060019

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v25, "<BR>"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 176
    .local v10, clipMsg:Ljava/lang/String;
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagTruncated:I

    move/from16 v23, v0

    const/16 v25, 0x1

    move/from16 v0, v23

    move/from16 v1, v25

    if-eq v0, v1, :cond_c2

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    const/high16 v25, 0x10

    move/from16 v0, v23

    move/from16 v1, v25

    if-lt v0, v1, :cond_198

    .line 184
    :cond_c2
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    const/high16 v25, 0x10

    move/from16 v0, v23

    move/from16 v1, v25

    if-lt v0, v1, :cond_f4

    .line 188
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v25, 0x0

    const/high16 v26, 0x10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v27

    sub-int v26, v26, v27

    move-object/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 198
    :cond_f4
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 202
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagTruncated:I
    :try_end_11f
    .catchall {:try_start_22 .. :try_end_11f} :catchall_1f
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_11f} :catch_1a6
    .catch Landroid/content/OperationApplicationException; {:try_start_22 .. :try_end_11f} :catch_2c6

    .line 214
    :goto_11f
    const/4 v15, 0x1

    .line 314
    .end local v10           #clipMsg:Ljava/lang/String;
    .end local v18           #lastChar:C
    :cond_120
    :goto_120
    const/4 v9, 0x0

    .line 318
    .local v9, bodyIdsCursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 326
    .local v8, bodyIds:[J
    :try_start_122
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v25, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v25

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Body;->getBodyIdCursor(Landroid/content/Context;J)Landroid/database/Cursor;

    move-result-object v9

    .line 330
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v23

    move/from16 v0, v23

    new-array v8, v0, [J

    .line 334
    :goto_138
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v23

    if-eqz v23, :cond_4c3

    .line 338
    invoke-interface {v9}, Landroid/database/Cursor;->getPosition()I

    move-result v23

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    aput-wide v25, v8, v23
    :try_end_14c
    .catchall {:try_start_122 .. :try_end_14c} :catchall_2db
    .catch Ljava/lang/NullPointerException; {:try_start_122 .. :try_end_14c} :catch_14d

    goto :goto_138

    .line 348
    :catch_14d
    move-exception v14

    .line 351
    .local v14, e:Ljava/lang/NullPointerException;
    :try_start_14e
    invoke-virtual {v14}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_151
    .catchall {:try_start_14e .. :try_end_151} :catchall_2db

    .line 356
    if-eqz v9, :cond_15e

    .line 358
    :try_start_153
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v23

    if-eqz v23, :cond_15b

    if-eqz v9, :cond_15e

    .line 364
    :cond_15b
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 376
    .end local v14           #e:Ljava/lang/NullPointerException;
    :cond_15e
    :goto_15e
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->splitInsert(Landroid/content/Context;)Ljava/lang/Long;

    .line 384
    const/16 v16, 0x0

    .local v16, i:I
    :goto_167
    array-length v0, v8

    move/from16 v23, v0

    move/from16 v0, v16

    move/from16 v1, v23

    if-ge v0, v1, :cond_2ea

    .line 388
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    sget-object v25, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    const-string v26, "_id=?"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget-wide v29, v8, v16

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 384
    add-int/lit8 v16, v16, 0x1

    goto :goto_167

    .line 208
    .end local v8           #bodyIds:[J
    .end local v9           #bodyIdsCursor:Landroid/database/Cursor;
    .end local v16           #i:I
    .restart local v10       #clipMsg:Ljava/lang/String;
    .restart local v18       #lastChar:C
    :cond_198
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;
    :try_end_1a4
    .catchall {:try_start_153 .. :try_end_1a4} :catchall_1f
    .catch Landroid/os/RemoteException; {:try_start_153 .. :try_end_1a4} :catch_1a6
    .catch Landroid/content/OperationApplicationException; {:try_start_153 .. :try_end_1a4} :catch_2c6

    goto/16 :goto_11f

    .line 628
    .end local v7           #bodyChunks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10           #clipMsg:Ljava/lang/String;
    .end local v15           #htmlPresence:Z
    .end local v18           #lastChar:C
    .end local v20           #pstCPResult:[Landroid/content/ContentProviderResult;
    :catch_1a6
    move-exception v14

    .line 632
    .local v14, e:Landroid/os/RemoteException;
    :try_start_1a7
    new-instance v23, Ljava/io/IOException;

    invoke-direct/range {v23 .. v23}, Ljava/io/IOException;-><init>()V

    throw v23
    :try_end_1ad
    .catchall {:try_start_1a7 .. :try_end_1ad} :catchall_1f

    .line 222
    .end local v14           #e:Landroid/os/RemoteException;
    .restart local v7       #bodyChunks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v15       #htmlPresence:Z
    .restart local v20       #pstCPResult:[Landroid/content/ContentProviderResult;
    :cond_1ad
    :try_start_1ad
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_120

    .line 230
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v25, 0x0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    .line 236
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v25, "\r\n"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    add-int/lit8 v26, v26, -0x2

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v22

    .line 242
    .local v22, value:I
    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_217

    .line 246
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    .line 254
    :cond_217
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "\n\r\n\r...\n\r\n\r"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const v25, 0x7f060019

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v25, "\n\r"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 266
    .restart local v10       #clipMsg:Ljava/lang/String;
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagTruncated:I

    move/from16 v23, v0

    const/16 v25, 0x1

    move/from16 v0, v23

    move/from16 v1, v25

    if-eq v0, v1, :cond_267

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    const/high16 v25, 0x10

    move/from16 v0, v23

    move/from16 v1, v25

    if-lt v0, v1, :cond_2cd

    .line 272
    :cond_267
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    const/high16 v25, 0x10

    move/from16 v0, v23

    move/from16 v1, v25

    if-lt v0, v1, :cond_299

    .line 276
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v25, 0x0

    const/high16 v26, 0x10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v27

    sub-int v26, v26, v27

    move-object/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    .line 286
    :cond_299
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    .line 290
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagTruncated:I
    :try_end_2c4
    .catchall {:try_start_1ad .. :try_end_2c4} :catchall_1f
    .catch Landroid/os/RemoteException; {:try_start_1ad .. :try_end_2c4} :catch_1a6
    .catch Landroid/content/OperationApplicationException; {:try_start_1ad .. :try_end_2c4} :catch_2c6

    goto/16 :goto_120

    .line 636
    .end local v7           #bodyChunks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10           #clipMsg:Ljava/lang/String;
    .end local v15           #htmlPresence:Z
    .end local v20           #pstCPResult:[Landroid/content/ContentProviderResult;
    .end local v22           #value:I
    :catch_2c6
    move-exception v14

    .line 640
    .local v14, e:Landroid/content/OperationApplicationException;
    :try_start_2c7
    new-instance v23, Ljava/io/IOException;

    invoke-direct/range {v23 .. v23}, Ljava/io/IOException;-><init>()V

    throw v23
    :try_end_2cd
    .catchall {:try_start_2c7 .. :try_end_2cd} :catchall_1f

    .line 298
    .end local v14           #e:Landroid/content/OperationApplicationException;
    .restart local v7       #bodyChunks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10       #clipMsg:Ljava/lang/String;
    .restart local v15       #htmlPresence:Z
    .restart local v20       #pstCPResult:[Landroid/content/ContentProviderResult;
    .restart local v22       #value:I
    :cond_2cd
    :try_start_2cd
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    goto/16 :goto_120

    .line 356
    .end local v10           #clipMsg:Ljava/lang/String;
    .end local v22           #value:I
    .restart local v8       #bodyIds:[J
    .restart local v9       #bodyIdsCursor:Landroid/database/Cursor;
    :catchall_2db
    move-exception v23

    if-eqz v9, :cond_2e9

    .line 358
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v25

    if-eqz v25, :cond_2e6

    if-eqz v9, :cond_2e9

    .line 364
    :cond_2e6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 356
    :cond_2e9
    throw v23

    .line 410
    .restart local v16       #i:I
    :cond_2ea
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_304

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v25, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_349

    .line 414
    :cond_304
    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    .line 418
    const/16 v21, 0x0

    .line 422
    .local v21, snippet:Ljava/lang/String;
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v15, v0, :cond_3c1

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/emailcommon/mail/Snippet;->fromHtmlText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 430
    :goto_319
    if-eqz v21, :cond_349

    .line 434
    const-string v23, "snippet"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    sget-object v23, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v25, v0

    move-object/from16 v0, v23

    move-wide/from16 v1, v25

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    .end local v21           #snippet:Ljava/lang/String;
    :cond_349
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v25, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v25

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v4

    .line 466
    .local v4, TmpMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 470
    .local v13, cv1:Landroid/content/ContentValues;
    const-string v23, "flagLoaded"

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 474
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    move/from16 v23, v0

    iget-boolean v0, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    move/from16 v25, v0

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_385

    iget-boolean v0, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3cd

    .line 478
    :cond_385
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3cd

    .line 482
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :goto_397
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_3cd

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 486
    .local v5, att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    sget-object v23, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v23 .. v23}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v23

    invoke-virtual {v5}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->toContentValues()Landroid/content/ContentValues;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_397

    .line 422
    .end local v4           #TmpMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v5           #att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v13           #cv1:Landroid/content/ContentValues;
    .end local v17           #i$:Ljava/util/Iterator;
    .restart local v21       #snippet:Ljava/lang/String;
    :cond_3c1
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/emailcommon/mail/Snippet;->fromPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_319

    .line 508
    .end local v21           #snippet:Ljava/lang/String;
    .restart local v4       #TmpMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v13       #cv1:Landroid/content/ContentValues;
    :cond_3cd
    const-string v23, "flagAttachment"

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 524
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSigned:Z

    move/from16 v23, v0

    if-nez v23, :cond_3f7

    .line 528
    const-string v23, "isMimeLoaded"

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 540
    :cond_3f7
    sget-object v23, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v23 .. v23}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v23

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "_id="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v26, v0

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v23

    if-nez v23, :cond_4c1

    .line 550
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v25, "com.android.email.provider"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v20

    .line 556
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v23, v0

    if-gtz v23, :cond_45a

    .line 558
    new-instance v23, Ljava/io/IOException;

    invoke-direct/range {v23 .. v23}, Ljava/io/IOException;-><init>()V

    throw v23

    .line 570
    :cond_45a
    const-string v23, "SMIME Attachment"

    const-string v25, "Testing if the attmt entry is made in table"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v25, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v25

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v6

    .line 580
    .local v6, atts:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-eqz v6, :cond_47a

    array-length v0, v6

    move/from16 v23, v0

    if-nez v23, :cond_4c1

    .line 584
    :cond_47a
    const-string v23, "SMIME Attachment"

    const-string v25, "Inside attmt null"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    move/from16 v23, v0

    iget-boolean v0, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    move/from16 v25, v0

    move/from16 v0, v23

    move/from16 v1, v25

    if-eq v0, v1, :cond_4c1

    .line 592
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    if-eqz v23, :cond_4c1

    .line 596
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .restart local v17       #i$:Ljava/util/Iterator;
    :goto_4a7
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_4c1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 600
    .restart local v5       #att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    sget-object v23, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->toContentValues()Landroid/content/ContentValues;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_4c0
    .catchall {:try_start_2cd .. :try_end_4c0} :catchall_1f
    .catch Landroid/os/RemoteException; {:try_start_2cd .. :try_end_4c0} :catch_1a6
    .catch Landroid/content/OperationApplicationException; {:try_start_2cd .. :try_end_4c0} :catch_2c6

    goto :goto_4a7

    .line 648
    .end local v5           #att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v6           #atts:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v17           #i$:Ljava/util/Iterator;
    :cond_4c1
    :try_start_4c1
    monitor-exit v24
    :try_end_4c2
    .catchall {:try_start_4c1 .. :try_end_4c2} :catchall_1f

    .line 650
    return-void

    .line 356
    .end local v4           #TmpMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v13           #cv1:Landroid/content/ContentValues;
    .end local v16           #i:I
    :cond_4c3
    if-eqz v9, :cond_15e

    .line 358
    :try_start_4c5
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v23

    if-eqz v23, :cond_4cd

    if-eqz v9, :cond_15e

    .line 364
    :cond_4cd
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_4d0
    .catchall {:try_start_4c5 .. :try_end_4d0} :catchall_1f
    .catch Landroid/os/RemoteException; {:try_start_4c5 .. :try_end_4d0} :catch_1a6
    .catch Landroid/content/OperationApplicationException; {:try_start_4c5 .. :try_end_4d0} :catch_2c6

    goto/16 :goto_15e
.end method

.method public static updateInlineAttachment(Lcom/android/exchange/AbstractSyncService;Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .registers 18
    .parameter "service"
    .parameter "context"
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 761
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 765
    .local v10, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move-object/from16 v0, p2

    iget-wide v11, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, p1

    invoke-static {v0, v11, v12}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v3

    .line 769
    .local v3, attachments:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-eqz v3, :cond_95

    .line 771
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    if-eqz v11, :cond_77

    .line 773
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1f
    :goto_1f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_77

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 775
    .local v9, msgAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    move-object v1, v3

    .local v1, arr$:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    array-length v8, v1

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_2e
    if-ge v7, v8, :cond_1f

    aget-object v2, v1, v7

    .line 777
    .local v2, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget-object v11, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    iget-object v12, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_74

    .line 779
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 781
    .local v4, cv:Landroid/content/ContentValues;
    const-string v11, "contentId"

    iget-object v12, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v4, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    sget-object v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "_id="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v13, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 775
    .end local v4           #cv:Landroid/content/ContentValues;
    :cond_74
    add-int/lit8 v7, v7, 0x1

    goto :goto_2e

    .line 809
    .end local v1           #arr$:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v2           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v9           #msgAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_77
    invoke-virtual {p0}, Lcom/android/exchange/AbstractSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 811
    :try_start_7c
    invoke-virtual {p0}, Lcom/android/exchange/AbstractSyncService;->isStopped()Z

    move-result v11

    if-eqz v11, :cond_8b

    .line 813
    new-instance v11, Ljava/io/IOException;

    invoke-direct {v11}, Ljava/io/IOException;-><init>()V

    throw v11

    .line 831
    :catchall_88
    move-exception v11

    monitor-exit v12
    :try_end_8a
    .catchall {:try_start_7c .. :try_end_8a} :catchall_88

    throw v11

    .line 819
    :cond_8b
    :try_start_8b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v13, "com.android.email.provider"

    invoke-virtual {v11, v13, v10}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_94
    .catchall {:try_start_8b .. :try_end_94} :catchall_88
    .catch Landroid/os/RemoteException; {:try_start_8b .. :try_end_94} :catch_96
    .catch Landroid/content/OperationApplicationException; {:try_start_8b .. :try_end_94} :catch_9d

    .line 831
    :try_start_94
    monitor-exit v12

    .line 833
    :cond_95
    return-void

    .line 821
    :catch_96
    move-exception v5

    .line 823
    .local v5, e:Landroid/os/RemoteException;
    new-instance v11, Ljava/io/IOException;

    invoke-direct {v11}, Ljava/io/IOException;-><init>()V

    throw v11

    .line 825
    .end local v5           #e:Landroid/os/RemoteException;
    :catch_9d
    move-exception v5

    .line 827
    .local v5, e:Landroid/content/OperationApplicationException;
    new-instance v11, Ljava/io/IOException;

    invoke-direct {v11}, Ljava/io/IOException;-><init>()V

    throw v11
    :try_end_a4
    .catchall {:try_start_94 .. :try_end_a4} :catchall_88
.end method
