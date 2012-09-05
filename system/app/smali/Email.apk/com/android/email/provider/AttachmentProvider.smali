.class public Lcom/android/email/provider/AttachmentProvider;
.super Landroid/content/ContentProvider;
.source "AttachmentProvider.java"


# static fields
.field private static final MIME_TYPE_PROJECTION:[Ljava/lang/String;

.field private static final PROJECTION_QUERY:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "mimeType"

    aput-object v1, v0, v2

    const-string v1, "fileName"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/email/provider/AttachmentProvider;->MIME_TYPE_PROJECTION:[Ljava/lang/String;

    .line 86
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "fileName"

    aput-object v1, v0, v2

    const-string v1, "size"

    aput-object v1, v0, v3

    const-string v1, "contentUri"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/email/provider/AttachmentProvider;->PROJECTION_QUERY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static IsAllAttachmentFilesExist(Landroid/content/Context;JJ)Z
    .registers 16
    .parameter "context"
    .parameter "accountId"
    .parameter "messageId"

    .prologue
    const/4 v3, 0x0

    .line 93
    const/4 v9, 0x1

    .line 95
    .local v9, bret:Z
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    invoke-static {v0, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 96
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->ID_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 100
    .local v10, c:Landroid/database/Cursor;
    :cond_14
    :try_start_14
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 101
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 102
    .local v7, attachmentId:J
    invoke-static {p0, p1, p2, v7, v8}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;

    move-result-object v6

    .line 105
    .local v6, attachmentFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z
    :try_end_26
    .catchall {:try_start_14 .. :try_end_26} :catchall_2e

    move-result v0

    if-nez v0, :cond_14

    .line 106
    const/4 v9, 0x0

    .line 111
    .end local v6           #attachmentFile:Ljava/io/File;
    .end local v7           #attachmentId:J
    :cond_2a
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 114
    return v9

    .line 111
    :catchall_2e
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private createImageThumbnail(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .registers 8
    .parameter "data"

    .prologue
    const/4 v0, 0x0

    .line 594
    :try_start_1
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_24

    move-result-object v0

    .line 607
    :goto_5
    return-object v0

    .line 596
    :catch_6
    move-exception v2

    .line 597
    .local v2, oome:Ljava/lang/OutOfMemoryError;
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createImageThumbnail failed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 605
    .end local v2           #oome:Ljava/lang/OutOfMemoryError;
    :catch_24
    move-exception v1

    .line 606
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createImageThumbnail failed with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method private createThumbnail(Ljava/lang/String;Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "type"
    .parameter "data"

    .prologue
    .line 586
    const-string v0, "image/*"

    invoke-static {p1, v0}, Lcom/android/emailcommon/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 587
    invoke-direct {p0, p2}, Lcom/android/email/provider/AttachmentProvider;->createImageThumbnail(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 589
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static deleteAllAttachmentFiles(Landroid/content/Context;JJ)V
    .registers 5
    .parameter "context"
    .parameter "accountId"
    .parameter "messageId"

    .prologue
    .line 646
    return-void
.end method

.method public static deleteAllMailboxAttachmentFiles(Landroid/content/Context;JJ)V
    .registers 15
    .parameter "context"
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    const/4 v9, 0x0

    .line 658
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_COLUMN_PROJECTION:[Ljava/lang/String;

    const-string v3, "mailboxKey=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 663
    .local v6, c:Landroid/database/Cursor;
    :goto_19
    :try_start_19
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 664
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 665
    .local v7, messageId:J
    invoke-static {p0, p1, p2, v7, v8}, Lcom/android/email/provider/AttachmentProvider;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_28

    goto :goto_19

    .line 668
    .end local v7           #messageId:J
    :catchall_28
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2d
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 670
    return-void
.end method

.method public static getAllAttachmentId(Landroid/content/Context;J)Ljava/util/HashSet;
    .registers 13
    .parameter "context"
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 146
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 147
    .local v6, attachmentId:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    const-wide/16 v8, 0x0

    .line 149
    .local v8, id:J
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 150
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->ID_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 154
    .local v7, c:Landroid/database/Cursor;
    :goto_1a
    :try_start_1a
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 155
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 157
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2c
    .catchall {:try_start_1a .. :try_end_2c} :catchall_2d

    goto :goto_1a

    .line 160
    :catchall_2d
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_32
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 163
    return-object v6
.end method

.method public static getAttachmentDirectory(Landroid/content/Context;J)Ljava/io/File;
    .registers 7
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 678
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".db_att"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 684
    .local v0, directory:Ljava/io/File;
    return-object v0
.end method

.method public static getFileNotExistAttachmentId(Landroid/content/Context;JJ)Ljava/util/HashSet;
    .registers 16
    .parameter "context"
    .parameter "accountId"
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JJ)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 121
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 123
    .local v10, ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    invoke-static {v0, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 124
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->ID_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 128
    .local v9, c:Landroid/database/Cursor;
    :cond_18
    :goto_18
    :try_start_18
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 129
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 130
    .local v7, attachmentId:J
    invoke-static {p0, p1, p2, v7, v8}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;

    move-result-object v6

    .line 133
    .local v6, attachmentFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_18

    .line 134
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_34
    .catchall {:try_start_18 .. :try_end_34} :catchall_35

    goto :goto_18

    .line 138
    .end local v6           #attachmentFile:Ljava/io/File;
    .end local v7           #attachmentId:J
    :catchall_35
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_3a
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 141
    return-object v10
.end method

.method public static moveAllAttachmentToOtherAccount(Landroid/content/Context;JJJ)Z
    .registers 25
    .parameter "context"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "target_accountId"

    .prologue
    .line 174
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    move-wide/from16 v0, p3

    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 175
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Attachment;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 178
    .local v15, c:Landroid/database/Cursor;
    if-eqz v15, :cond_1d

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-gtz v5, :cond_2a

    .line 179
    :cond_1d
    if-eqz v15, :cond_28

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_28

    .line 180
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 182
    :cond_28
    const/4 v5, 0x1

    .line 227
    :cond_29
    :goto_29
    return v5

    .line 188
    :cond_2a
    :try_start_2a
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v17

    .line 189
    .local v17, fail_cnt:I
    :cond_2e
    :goto_2e
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 190
    const/4 v5, 0x0

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getLong(I)J
    :try_end_38
    .catchall {:try_start_2a .. :try_end_38} :catchall_93

    move-result-wide v10

    .local v10, attachmentId:J
    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    move-wide/from16 v12, p5

    .line 192
    :try_start_3f
    invoke-static/range {v7 .. v13}, Lcom/android/email/provider/AttachmentProvider;->moveOneAttachmentToOtherAccount(Landroid/content/Context;JJJ)Z
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_93
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_3f .. :try_end_42} :catch_49
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_4c

    move-result v14

    .line 199
    .local v14, bret:Z
    :goto_43
    const/4 v5, 0x1

    if-ne v14, v5, :cond_2e

    .line 200
    add-int/lit8 v17, v17, -0x1

    goto :goto_2e

    .line 194
    .end local v14           #bret:Z
    :catch_49
    move-exception v16

    .line 195
    .local v16, e:Lcom/android/emailcommon/mail/MessagingException;
    const/4 v14, 0x0

    .line 198
    .restart local v14       #bret:Z
    goto :goto_43

    .line 196
    .end local v14           #bret:Z
    .end local v16           #e:Lcom/android/emailcommon/mail/MessagingException;
    :catch_4c
    move-exception v16

    .line 197
    .local v16, e:Ljava/io/IOException;
    const/4 v14, 0x0

    .restart local v14       #bret:Z
    goto :goto_43

    .line 204
    .end local v10           #attachmentId:J
    .end local v14           #bret:Z
    .end local v16           #e:Ljava/io/IOException;
    :cond_4f
    if-lez v17, :cond_63

    .line 205
    if-eqz v15, :cond_5c

    :try_start_53
    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_5c

    .line 206
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_5c
    .catchall {:try_start_53 .. :try_end_5c} :catchall_93

    .line 208
    :cond_5c
    const/4 v5, 0x0

    .line 218
    if-eqz v15, :cond_29

    .line 219
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_29

    .line 211
    :cond_63
    :try_start_63
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-wide/from16 v3, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/email/provider/AttachmentProvider;->IsAllAttachmentFilesExist(Landroid/content/Context;JJ)Z

    move-result v5

    if-nez v5, :cond_81

    .line 212
    if-eqz v15, :cond_7a

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_7a

    .line 213
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_7a
    .catchall {:try_start_63 .. :try_end_7a} :catchall_93

    .line 215
    :cond_7a
    const/4 v5, 0x0

    .line 218
    if-eqz v15, :cond_29

    .line 219
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_29

    .line 218
    :cond_81
    if-eqz v15, :cond_86

    .line 219
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 223
    :cond_86
    if-eqz v15, :cond_91

    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_91

    .line 224
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 227
    :cond_91
    const/4 v5, 0x1

    goto :goto_29

    .line 218
    .end local v17           #fail_cnt:I
    :catchall_93
    move-exception v5

    if-eqz v15, :cond_99

    .line 219
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_99
    throw v5
.end method

.method public static moveOneAttachmentToOtherAccount(Landroid/content/Context;JJJ)Z
    .registers 25
    .parameter "context"
    .parameter "accountId"
    .parameter "attachmentId"
    .parameter "target_accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentDirectory(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v12

    .line 240
    .local v12, saveIn:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_11

    .line 241
    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    .line 243
    :cond_11
    invoke-static/range {p0 .. p4}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;

    move-result-object v5

    .line 244
    .local v5, OrigFile:Ljava/io/File;
    if-eqz v5, :cond_1d

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_1f

    .line 245
    :cond_1d
    const/4 v15, 0x0

    .line 281
    :goto_1e
    return v15

    .line 247
    :cond_1f
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-wide/from16 v3, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;

    move-result-object v6

    .line 250
    .local v6, SaveAs:Ljava/io/File;
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 251
    .local v11, from:Ljava/io/FileInputStream;
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 252
    .local v13, to:Ljava/io/FileOutputStream;
    if-nez v11, :cond_39

    if-nez v13, :cond_39

    .line 253
    const/4 v15, 0x0

    goto :goto_1e

    .line 254
    :cond_39
    if-nez v13, :cond_40

    .line 256
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 257
    const/4 v15, 0x0

    goto :goto_1e

    .line 258
    :cond_40
    if-nez v11, :cond_47

    .line 260
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 261
    const/4 v15, 0x0

    goto :goto_1e

    .line 264
    :cond_47
    const-wide/16 v8, 0x0

    .line 265
    .local v8, copySize:J
    invoke-static {v11, v13}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v15

    int-to-long v8, v15

    .line 266
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 267
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 270
    move-wide/from16 v0, p5

    move-wide/from16 v2, p3

    invoke-static {v0, v1, v2, v3}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 272
    .local v7, contentUriString_target:Ljava/lang/String;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 273
    .local v10, cv_target:Landroid/content/ContentValues;
    const-string v15, "size"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 274
    const-string v15, "contentUri"

    invoke-virtual {v10, v15, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    sget-object v15, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p3

    invoke-static {v15, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    .line 276
    .local v14, uri_target:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v15, v14, v10, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 279
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 281
    const/4 v15, 0x1

    goto :goto_1e
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .parameter "uri"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 511
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 16
    .parameter "uri"

    .prologue
    const/4 v12, 0x0

    .line 331
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 333
    .local v7, callingId:J
    :try_start_5
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v13

    .line 334
    .local v13, segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 335
    .local v11, id:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 336
    .local v10, format:Ljava/lang/String;
    const-string v0, "THUMBNAIL"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 337
    const-string v12, "image/png"
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_68

    .line 355
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_24
    return-object v12

    .line 339
    :cond_25
    :try_start_25
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 340
    invoke-virtual {p0}, Lcom/android/email/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/email/provider/AttachmentProvider;->MIME_TYPE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_40
    .catchall {:try_start_25 .. :try_end_40} :catchall_68

    move-result-object v6

    .line 343
    .local v6, c:Landroid/database/Cursor;
    :try_start_41
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 344
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 345
    .local v12, mimeType:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 346
    .local v9, fileName:Ljava/lang/String;
    invoke-static {v9, v12}, Lcom/android/emailcommon/utility/AttachmentUtilities;->inferMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_54
    .catchall {:try_start_41 .. :try_end_54} :catchall_63

    move-result-object v12

    .line 350
    :try_start_55
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_68

    .line 355
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_24

    .line 350
    .end local v9           #fileName:Ljava/lang/String;
    .end local v12           #mimeType:Ljava/lang/String;
    :cond_5c
    :try_start_5c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_68

    .line 355
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_24

    .line 350
    :catchall_63
    move-exception v0

    :try_start_64
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_68
    .catchall {:try_start_64 .. :try_end_68} :catchall_68

    .line 355
    .end local v6           #c:Landroid/database/Cursor;
    .end local v10           #format:Ljava/lang/String;
    .end local v11           #id:Ljava/lang/String;
    .end local v13           #segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_68
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 516
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .registers 8

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/android/email/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 314
    .local v3, files:[Ljava/io/File;
    move-object v0, v3

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_f
    if-ge v4, v5, :cond_2d

    aget-object v1, v0, v4

    .line 315
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 316
    .local v2, filename:Ljava/lang/String;
    const-string v6, ".tmp"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_27

    const-string v6, "thmb_"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 317
    :cond_27
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 314
    :cond_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 320
    .end local v1           #file:Ljava/io/File;
    .end local v2           #filename:Ljava/lang/String;
    :cond_2d
    const/4 v6, 0x1

    return v6
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 43
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 373
    if-nez p1, :cond_4

    .line 374
    const/4 v3, 0x0

    .line 505
    :goto_3
    return-object v3

    .line 377
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v17

    .line 378
    .local v17, context:Landroid/content/Context;
    const-string v3, "w"

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 379
    const-string v3, "com.android.email.permission.ACCESS_PROVIDER"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_22

    .line 380
    new-instance v3, Ljava/io/FileNotFoundException;

    invoke-direct {v3}, Ljava/io/FileNotFoundException;-><init>()V

    throw v3

    .line 382
    :cond_22
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v35

    .line 383
    .local v35, segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    move-object/from16 v0, v35

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 384
    .local v12, accountId:Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, v35

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 385
    .local v26, id:Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v17

    invoke-static {v0, v6, v7}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentDirectory(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v34

    .line 387
    .local v34, saveIn:Ljava/io/File;
    invoke-virtual/range {v34 .. v34}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4b

    .line 388
    invoke-virtual/range {v34 .. v34}, Ljava/io/File;->mkdirs()Z

    .line 390
    :cond_4b
    new-instance v29, Ljava/io/File;

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 391
    .local v29, newFile:Ljava/io/File;
    const/high16 v3, 0x3c00

    move-object/from16 v0, v29

    invoke-static {v0, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    goto :goto_3

    .line 394
    .end local v12           #accountId:Ljava/lang/String;
    .end local v26           #id:Ljava/lang/String;
    .end local v29           #newFile:Ljava/io/File;
    .end local v34           #saveIn:Ljava/io/File;
    .end local v35           #segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_5f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 396
    .local v15, callingId:J
    :try_start_63
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v35

    .line 397
    .restart local v35       #segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    move-object/from16 v0, v35

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 398
    .restart local v12       #accountId:Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, v35

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 399
    .restart local v26       #id:Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, v35

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 400
    .local v25, format:Ljava/lang/String;
    const-string v3, "THUMBNAIL"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_253

    .line 401
    const/4 v3, 0x3

    move-object/from16 v0, v35

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v37

    .line 402
    .local v37, width:I
    const/4 v3, 0x4

    move-object/from16 v0, v35

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 403
    .local v9, height:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "thmb_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 404
    .local v24, filename:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v19

    .line 405
    .local v19, dir:Ljava/io/File;
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_d8
    .catchall {:try_start_63 .. :try_end_d8} :catchall_18c

    .line 407
    .local v23, file:Ljava/io/File;
    const/16 v18, 0x0

    .line 410
    .local v18, degree:I
    :try_start_da
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v38

    move-object/from16 v0, v17

    move-wide/from16 v1, v38

    invoke-static {v0, v6, v7, v1, v2}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;

    move-result-object v13

    .line 413
    .local v13, attachmentFile:Ljava/io/File;
    new-instance v22, Landroid/media/ExifInterface;

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 415
    .local v22, exif:Landroid/media/ExifInterface;
    const-string v3, "Orientation"

    const/4 v6, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_fd
    .catchall {:try_start_da .. :try_end_fd} :catchall_18c
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_fd} :catch_186

    move-result v31

    .line 417
    .local v31, orientation:I
    const/4 v3, 0x6

    move/from16 v0, v31

    if-ne v0, v3, :cond_174

    .line 418
    const/16 v18, 0x5a

    .line 428
    .end local v13           #attachmentFile:Ljava/io/File;
    .end local v22           #exif:Landroid/media/ExifInterface;
    .end local v31           #orientation:I
    :cond_105
    :goto_105
    :try_start_105
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1e0

    .line 429
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static/range {v26 .. v26}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v38

    move-wide/from16 v0, v38

    invoke-static {v6, v7, v0, v1}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v4

    .line 431
    .local v4, attachmentUri:Landroid/net/Uri;
    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "_data"

    aput-object v6, v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/email/provider/AttachmentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_129
    .catchall {:try_start_105 .. :try_end_129} :catchall_18c

    move-result-object v14

    .line 434
    .local v14, c:Landroid/database/Cursor;
    if-eqz v14, :cond_13e

    .line 436
    :try_start_12c
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_191

    .line 437
    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_13a
    .catchall {:try_start_12c .. :try_end_13a} :catchall_1a2
    .catch Ljava/lang/Exception; {:try_start_12c .. :try_end_13a} :catch_19a

    move-result-object v4

    .line 444
    :try_start_13b
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 447
    :cond_13e
    :goto_13e
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_149
    .catchall {:try_start_13b .. :try_end_149} :catchall_18c

    move-result-object v36

    .line 448
    .local v36, type:Ljava/lang/String;
    const/16 v27, 0x0

    .line 449
    .local v27, in:Ljava/io/InputStream;
    const/16 v32, 0x0

    .line 451
    .local v32, out:Ljava/io/FileOutputStream;
    :try_start_14e
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v27

    .line 452
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/email/provider/AttachmentProvider;->createThumbnail(Ljava/lang/String;Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_163
    .catchall {:try_start_14e .. :try_end_163} :catchall_247
    .catch Ljava/io/IOException; {:try_start_14e .. :try_end_163} :catch_1ed
    .catch Ljava/lang/OutOfMemoryError; {:try_start_14e .. :try_end_163} :catch_21a

    move-result-object v5

    .line 453
    .local v5, thumbnail:Landroid/graphics/Bitmap;
    if-nez v5, :cond_1a7

    .line 454
    const/4 v3, 0x0

    .line 481
    if-eqz v32, :cond_16a

    .line 482
    :try_start_169
    throw v32
    :try_end_16a
    .catchall {:try_start_169 .. :try_end_16a} :catchall_18c
    .catch Ljava/io/IOException; {:try_start_169 .. :try_end_16a} :catch_289

    .line 486
    :cond_16a
    :goto_16a
    if-eqz v27, :cond_16f

    .line 487
    :try_start_16c
    invoke-virtual/range {v27 .. v27}, Ljava/io/InputStream;->close()V
    :try_end_16f
    .catchall {:try_start_16c .. :try_end_16f} :catchall_18c
    .catch Ljava/io/IOException; {:try_start_16c .. :try_end_16f} :catch_28c

    .line 505
    :cond_16f
    :goto_16f
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_3

    .line 419
    .end local v4           #attachmentUri:Landroid/net/Uri;
    .end local v5           #thumbnail:Landroid/graphics/Bitmap;
    .end local v14           #c:Landroid/database/Cursor;
    .end local v27           #in:Ljava/io/InputStream;
    .end local v32           #out:Ljava/io/FileOutputStream;
    .end local v36           #type:Ljava/lang/String;
    .restart local v13       #attachmentFile:Ljava/io/File;
    .restart local v22       #exif:Landroid/media/ExifInterface;
    .restart local v31       #orientation:I
    :cond_174
    const/4 v3, 0x3

    move/from16 v0, v31

    if-ne v0, v3, :cond_17c

    .line 420
    const/16 v18, 0xb4

    goto :goto_105

    .line 421
    :cond_17c
    const/16 v3, 0x8

    move/from16 v0, v31

    if-ne v0, v3, :cond_105

    .line 422
    const/16 v18, 0x10e

    goto/16 :goto_105

    .line 424
    .end local v13           #attachmentFile:Ljava/io/File;
    .end local v22           #exif:Landroid/media/ExifInterface;
    .end local v31           #orientation:I
    :catch_186
    move-exception v21

    .line 425
    .local v21, e:Ljava/lang/Exception;
    :try_start_187
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_18a
    .catchall {:try_start_187 .. :try_end_18a} :catchall_18c

    goto/16 :goto_105

    .line 505
    .end local v9           #height:I
    .end local v12           #accountId:Ljava/lang/String;
    .end local v18           #degree:I
    .end local v19           #dir:Ljava/io/File;
    .end local v21           #e:Ljava/lang/Exception;
    .end local v23           #file:Ljava/io/File;
    .end local v24           #filename:Ljava/lang/String;
    .end local v25           #format:Ljava/lang/String;
    .end local v26           #id:Ljava/lang/String;
    .end local v35           #segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v37           #width:I
    :catchall_18c
    move-exception v3

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 439
    .restart local v4       #attachmentUri:Landroid/net/Uri;
    .restart local v9       #height:I
    .restart local v12       #accountId:Ljava/lang/String;
    .restart local v14       #c:Landroid/database/Cursor;
    .restart local v18       #degree:I
    .restart local v19       #dir:Ljava/io/File;
    .restart local v23       #file:Ljava/io/File;
    .restart local v24       #filename:Ljava/lang/String;
    .restart local v25       #format:Ljava/lang/String;
    .restart local v26       #id:Ljava/lang/String;
    .restart local v35       #segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v37       #width:I
    :cond_191
    const/4 v3, 0x0

    .line 444
    :try_start_192
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_195
    .catchall {:try_start_192 .. :try_end_195} :catchall_18c

    .line 505
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_3

    .line 441
    :catch_19a
    move-exception v21

    .line 442
    .restart local v21       #e:Ljava/lang/Exception;
    :try_start_19b
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_19e
    .catchall {:try_start_19b .. :try_end_19e} :catchall_1a2

    .line 444
    :try_start_19e
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_13e

    .end local v21           #e:Ljava/lang/Exception;
    :catchall_1a2
    move-exception v3

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v3
    :try_end_1a7
    .catchall {:try_start_19e .. :try_end_1a7} :catchall_18c

    .line 457
    .restart local v5       #thumbnail:Landroid/graphics/Bitmap;
    .restart local v27       #in:Ljava/io/InputStream;
    .restart local v32       #out:Ljava/io/FileOutputStream;
    .restart local v36       #type:Ljava/lang/String;
    :cond_1a7
    const/4 v3, 0x1

    :try_start_1a8
    move/from16 v0, v37

    invoke-static {v5, v0, v9, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 459
    if-eqz v18, :cond_1c4

    .line 460
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 461
    .local v10, m:Landroid/graphics/Matrix;
    move/from16 v0, v18

    int-to-float v3, v0

    invoke-virtual {v10, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 462
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x1

    move/from16 v8, v37

    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 466
    .end local v10           #m:Landroid/graphics/Matrix;
    :cond_1c4
    new-instance v33, Ljava/io/FileOutputStream;

    move-object/from16 v0, v33

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1cd
    .catchall {:try_start_1a8 .. :try_end_1cd} :catchall_247
    .catch Ljava/io/IOException; {:try_start_1a8 .. :try_end_1cd} :catch_1ed
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1a8 .. :try_end_1cd} :catch_21a

    .line 468
    .end local v32           #out:Ljava/io/FileOutputStream;
    .local v33, out:Ljava/io/FileOutputStream;
    :try_start_1cd
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    move-object/from16 v0, v33

    invoke-virtual {v5, v3, v6, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1d6
    .catchall {:try_start_1cd .. :try_end_1d6} :catchall_2a3
    .catch Ljava/io/IOException; {:try_start_1cd .. :try_end_1d6} :catch_2ac
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1cd .. :try_end_1d6} :catch_2a7

    .line 481
    if-eqz v33, :cond_1db

    .line 482
    :try_start_1d8
    invoke-virtual/range {v33 .. v33}, Ljava/io/FileOutputStream;->close()V
    :try_end_1db
    .catchall {:try_start_1d8 .. :try_end_1db} :catchall_18c
    .catch Ljava/io/IOException; {:try_start_1d8 .. :try_end_1db} :catch_28f

    .line 486
    :cond_1db
    :goto_1db
    if-eqz v27, :cond_1e0

    .line 487
    :try_start_1dd
    invoke-virtual/range {v27 .. v27}, Ljava/io/InputStream;->close()V
    :try_end_1e0
    .catchall {:try_start_1dd .. :try_end_1e0} :catchall_18c
    .catch Ljava/io/IOException; {:try_start_1dd .. :try_end_1e0} :catch_292

    .line 492
    .end local v4           #attachmentUri:Landroid/net/Uri;
    .end local v5           #thumbnail:Landroid/graphics/Bitmap;
    .end local v14           #c:Landroid/database/Cursor;
    .end local v27           #in:Ljava/io/InputStream;
    .end local v33           #out:Ljava/io/FileOutputStream;
    .end local v36           #type:Ljava/lang/String;
    :cond_1e0
    :goto_1e0
    const/high16 v3, 0x1000

    :try_start_1e2
    move-object/from16 v0, v23

    invoke-static {v0, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_1e7
    .catchall {:try_start_1e2 .. :try_end_1e7} :catchall_18c

    move-result-object v3

    .line 505
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_3

    .line 472
    .restart local v4       #attachmentUri:Landroid/net/Uri;
    .restart local v14       #c:Landroid/database/Cursor;
    .restart local v27       #in:Ljava/io/InputStream;
    .restart local v32       #out:Ljava/io/FileOutputStream;
    .restart local v36       #type:Ljava/lang/String;
    :catch_1ed
    move-exception v28

    .line 473
    .local v28, ioe:Ljava/io/IOException;
    :goto_1ee
    :try_start_1ee
    const-string v3, "Email"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "openFile/thumbnail failed with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v28 .. v28}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20a
    .catchall {:try_start_1ee .. :try_end_20a} :catchall_247

    .line 474
    const/4 v3, 0x0

    .line 481
    if-eqz v32, :cond_210

    .line 482
    :try_start_20d
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileOutputStream;->close()V
    :try_end_210
    .catchall {:try_start_20d .. :try_end_210} :catchall_18c
    .catch Ljava/io/IOException; {:try_start_20d .. :try_end_210} :catch_295

    .line 486
    :cond_210
    :goto_210
    if-eqz v27, :cond_215

    .line 487
    :try_start_212
    invoke-virtual/range {v27 .. v27}, Ljava/io/InputStream;->close()V
    :try_end_215
    .catchall {:try_start_212 .. :try_end_215} :catchall_18c
    .catch Ljava/io/IOException; {:try_start_212 .. :try_end_215} :catch_298

    .line 505
    :cond_215
    :goto_215
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_3

    .line 475
    .end local v28           #ioe:Ljava/io/IOException;
    :catch_21a
    move-exception v30

    .line 476
    .local v30, oome:Ljava/lang/OutOfMemoryError;
    :goto_21b
    :try_start_21b
    const-string v3, "Email"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "openFile/thumbnail failed with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v30 .. v30}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_237
    .catchall {:try_start_21b .. :try_end_237} :catchall_247

    .line 478
    const/4 v3, 0x0

    .line 481
    if-eqz v32, :cond_23d

    .line 482
    :try_start_23a
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileOutputStream;->close()V
    :try_end_23d
    .catchall {:try_start_23a .. :try_end_23d} :catchall_18c
    .catch Ljava/io/IOException; {:try_start_23a .. :try_end_23d} :catch_29b

    .line 486
    :cond_23d
    :goto_23d
    if-eqz v27, :cond_242

    .line 487
    :try_start_23f
    invoke-virtual/range {v27 .. v27}, Ljava/io/InputStream;->close()V
    :try_end_242
    .catchall {:try_start_23f .. :try_end_242} :catchall_18c
    .catch Ljava/io/IOException; {:try_start_23f .. :try_end_242} :catch_29d

    .line 505
    :cond_242
    :goto_242
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_3

    .line 480
    .end local v30           #oome:Ljava/lang/OutOfMemoryError;
    :catchall_247
    move-exception v3

    .line 481
    :goto_248
    if-eqz v32, :cond_24d

    .line 482
    :try_start_24a
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileOutputStream;->close()V
    :try_end_24d
    .catchall {:try_start_24a .. :try_end_24d} :catchall_18c
    .catch Ljava/io/IOException; {:try_start_24a .. :try_end_24d} :catch_29f

    .line 486
    :cond_24d
    :goto_24d
    if-eqz v27, :cond_252

    .line 487
    :try_start_24f
    invoke-virtual/range {v27 .. v27}, Ljava/io/InputStream;->close()V
    :try_end_252
    .catchall {:try_start_24f .. :try_end_252} :catchall_18c
    .catch Ljava/io/IOException; {:try_start_24f .. :try_end_252} :catch_2a1

    .line 489
    :cond_252
    :goto_252
    :try_start_252
    throw v3

    .line 495
    .end local v4           #attachmentUri:Landroid/net/Uri;
    .end local v9           #height:I
    .end local v14           #c:Landroid/database/Cursor;
    .end local v18           #degree:I
    .end local v19           #dir:Ljava/io/File;
    .end local v23           #file:Ljava/io/File;
    .end local v24           #filename:Ljava/lang/String;
    .end local v27           #in:Ljava/io/InputStream;
    .end local v32           #out:Ljava/io/FileOutputStream;
    .end local v36           #type:Ljava/lang/String;
    .end local v37           #width:I
    :cond_253
    new-instance v20, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".db_att"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-direct {v0, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 496
    .local v20, directory:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/high16 v6, 0x1000

    invoke-static {v3, v6}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_283
    .catchall {:try_start_252 .. :try_end_283} :catchall_18c

    move-result-object v3

    .line 505
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_3

    .line 483
    .end local v20           #directory:Ljava/io/File;
    .restart local v4       #attachmentUri:Landroid/net/Uri;
    .restart local v5       #thumbnail:Landroid/graphics/Bitmap;
    .restart local v9       #height:I
    .restart local v14       #c:Landroid/database/Cursor;
    .restart local v18       #degree:I
    .restart local v19       #dir:Ljava/io/File;
    .restart local v23       #file:Ljava/io/File;
    .restart local v24       #filename:Ljava/lang/String;
    .restart local v27       #in:Ljava/io/InputStream;
    .restart local v32       #out:Ljava/io/FileOutputStream;
    .restart local v36       #type:Ljava/lang/String;
    .restart local v37       #width:I
    :catch_289
    move-exception v6

    goto/16 :goto_16a

    .line 488
    :catch_28c
    move-exception v6

    goto/16 :goto_16f

    .line 483
    .end local v32           #out:Ljava/io/FileOutputStream;
    .restart local v33       #out:Ljava/io/FileOutputStream;
    :catch_28f
    move-exception v3

    goto/16 :goto_1db

    .line 488
    :catch_292
    move-exception v3

    goto/16 :goto_1e0

    .line 483
    .end local v5           #thumbnail:Landroid/graphics/Bitmap;
    .end local v33           #out:Ljava/io/FileOutputStream;
    .restart local v28       #ioe:Ljava/io/IOException;
    .restart local v32       #out:Ljava/io/FileOutputStream;
    :catch_295
    move-exception v6

    goto/16 :goto_210

    .line 488
    :catch_298
    move-exception v6

    goto/16 :goto_215

    .line 483
    .end local v28           #ioe:Ljava/io/IOException;
    .restart local v30       #oome:Ljava/lang/OutOfMemoryError;
    :catch_29b
    move-exception v6

    goto :goto_23d

    .line 488
    :catch_29d
    move-exception v6

    goto :goto_242

    .line 483
    .end local v30           #oome:Ljava/lang/OutOfMemoryError;
    :catch_29f
    move-exception v6

    goto :goto_24d

    .line 488
    :catch_2a1
    move-exception v6

    goto :goto_252

    .line 480
    .end local v32           #out:Ljava/io/FileOutputStream;
    .restart local v5       #thumbnail:Landroid/graphics/Bitmap;
    .restart local v33       #out:Ljava/io/FileOutputStream;
    :catchall_2a3
    move-exception v3

    move-object/from16 v32, v33

    .end local v33           #out:Ljava/io/FileOutputStream;
    .restart local v32       #out:Ljava/io/FileOutputStream;
    goto :goto_248

    .line 475
    .end local v32           #out:Ljava/io/FileOutputStream;
    .restart local v33       #out:Ljava/io/FileOutputStream;
    :catch_2a7
    move-exception v30

    move-object/from16 v32, v33

    .end local v33           #out:Ljava/io/FileOutputStream;
    .restart local v32       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_21b

    .line 472
    .end local v32           #out:Ljava/io/FileOutputStream;
    .restart local v33       #out:Ljava/io/FileOutputStream;
    :catch_2ac
    move-exception v28

    move-object/from16 v32, v33

    .end local v33           #out:Ljava/io/FileOutputStream;
    .restart local v32       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_1ee
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 30
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 528
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 530
    .local v10, callingId:J
    if-nez p2, :cond_21

    .line 531
    const/4 v2, 0x4

    :try_start_7
    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v19, v2

    const/4 v2, 0x1

    const-string v3, "_data"

    aput-object v3, v19, v2

    const/4 v2, 0x2

    const-string v3, "_display_name"

    aput-object v3, v19, v2

    const/4 v2, 0x3

    const-string v3, "_size"

    aput-object v3, v19, v2

    .end local p2
    .local v19, projection:[Ljava/lang/String;
    move-object/from16 p2, v19

    .line 536
    .end local v19           #projection:[Ljava/lang/String;
    .restart local p2
    :cond_21
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v21

    .line 537
    .local v21, segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 538
    .local v8, accountId:Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 539
    .local v17, id:Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 540
    .local v15, format:Ljava/lang/String;
    const/16 v18, 0x0

    .line 541
    .local v18, name:Ljava/lang/String;
    const/16 v22, -0x1

    .line 542
    .local v22, size:I
    const/4 v13, 0x0

    .line 544
    .local v13, contentUri:Ljava/lang/String;
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 545
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/provider/AttachmentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/email/provider/AttachmentProvider;->PROJECTION_QUERY:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_61
    .catchall {:try_start_7 .. :try_end_61} :catchall_b0

    move-result-object v9

    .line 548
    .local v9, c:Landroid/database/Cursor;
    :try_start_62
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_a2

    .line 549
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 550
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 551
    const/4 v2, 0x2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_76
    .catchall {:try_start_62 .. :try_end_76} :catchall_ab

    move-result-object v13

    .line 556
    :try_start_77
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 559
    new-instance v20, Landroid/database/MatrixCursor;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 560
    .local v20, ret:Landroid/database/MatrixCursor;
    move-object/from16 v0, p2

    array-length v2, v0

    new-array v0, v2, [Ljava/lang/Object;

    move-object/from16 v23, v0

    .line 561
    .local v23, values:[Ljava/lang/Object;
    const/16 v16, 0x0

    .local v16, i:I
    move-object/from16 v0, p2

    array-length v14, v0

    .local v14, count:I
    :goto_8f
    move/from16 v0, v16

    if-ge v0, v14, :cond_da

    .line 562
    aget-object v12, p2, v16

    .line 563
    .local v12, column:Ljava/lang/String;
    const-string v2, "_id"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b5

    .line 564
    aput-object v17, v23, v16

    .line 561
    :cond_9f
    :goto_9f
    add-int/lit8 v16, v16, 0x1

    goto :goto_8f

    .line 553
    .end local v12           #column:Ljava/lang/String;
    .end local v14           #count:I
    .end local v16           #i:I
    .end local v20           #ret:Landroid/database/MatrixCursor;
    .end local v23           #values:[Ljava/lang/Object;
    :cond_a2
    const/16 v20, 0x0

    .line 556
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_a7
    .catchall {:try_start_77 .. :try_end_a7} :catchall_b0

    .line 576
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_aa
    return-object v20

    .line 556
    :catchall_ab
    move-exception v2

    :try_start_ac
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_b0
    .catchall {:try_start_ac .. :try_end_b0} :catchall_b0

    .line 576
    .end local v8           #accountId:Ljava/lang/String;
    .end local v9           #c:Landroid/database/Cursor;
    .end local v13           #contentUri:Ljava/lang/String;
    .end local v15           #format:Ljava/lang/String;
    .end local v17           #id:Ljava/lang/String;
    .end local v18           #name:Ljava/lang/String;
    .end local v21           #segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v22           #size:I
    :catchall_b0
    move-exception v2

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 565
    .restart local v8       #accountId:Ljava/lang/String;
    .restart local v9       #c:Landroid/database/Cursor;
    .restart local v12       #column:Ljava/lang/String;
    .restart local v13       #contentUri:Ljava/lang/String;
    .restart local v14       #count:I
    .restart local v15       #format:Ljava/lang/String;
    .restart local v16       #i:I
    .restart local v17       #id:Ljava/lang/String;
    .restart local v18       #name:Ljava/lang/String;
    .restart local v20       #ret:Landroid/database/MatrixCursor;
    .restart local v21       #segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22       #size:I
    .restart local v23       #values:[Ljava/lang/Object;
    :cond_b5
    :try_start_b5
    const-string v2, "_data"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c0

    .line 566
    aput-object v13, v23, v16

    goto :goto_9f

    .line 567
    :cond_c0
    const-string v2, "_display_name"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_cb

    .line 568
    aput-object v18, v23, v16

    goto :goto_9f

    .line 569
    :cond_cb
    const-string v2, "_size"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 570
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v23, v16

    goto :goto_9f

    .line 573
    .end local v12           #column:Ljava/lang/String;
    :cond_da
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_e1
    .catchall {:try_start_b5 .. :try_end_e1} :catchall_b0

    .line 576
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_aa
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 582
    const/4 v0, 0x0

    return v0
.end method
