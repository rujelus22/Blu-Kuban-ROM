.class public Lcom/android/emailcommon/utility/AttachmentUtilities;
.super Ljava/lang/Object;
.source "AttachmentUtilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/utility/AttachmentUtilities$Columns;
    }
.end annotation


# static fields
.field public static final ACCEPTABLE_ATTACHMENT_DOWNLOAD_TYPES:[Ljava/lang/String;

.field public static final ACCEPTABLE_ATTACHMENT_SEND_INTENT_TYPES:[Ljava/lang/String;

.field public static final ACCEPTABLE_ATTACHMENT_SEND_UI_TYPES:[Ljava/lang/String;

.field public static final ACCEPTABLE_ATTACHMENT_VIEW_TYPES:[Ljava/lang/String;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final INSTALLABLE_ATTACHMENT_EXTENSIONS:[Ljava/lang/String;

.field public static final UNACCEPTABLE_ATTACHMENT_DOWNLOAD_TYPES:[Ljava/lang/String;

.field public static final UNACCEPTABLE_ATTACHMENT_EXTENSIONS:[Ljava/lang/String;

.field public static final UNACCEPTABLE_ATTACHMENT_VIEW_TYPES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    const-string v0, "content://com.android.email.attachmentprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->CONTENT_URI:Landroid/net/Uri;

    .line 54
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "*/*"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->ACCEPTABLE_ATTACHMENT_SEND_INTENT_TYPES:[Ljava/lang/String;

    .line 63
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "image/*"

    aput-object v1, v0, v3

    const-string v1, "video/*"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->ACCEPTABLE_ATTACHMENT_SEND_UI_TYPES:[Ljava/lang/String;

    .line 70
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "*/*"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->ACCEPTABLE_ATTACHMENT_VIEW_TYPES:[Ljava/lang/String;

    .line 76
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->UNACCEPTABLE_ATTACHMENT_VIEW_TYPES:[Ljava/lang/String;

    .line 81
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "*/*"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->ACCEPTABLE_ATTACHMENT_DOWNLOAD_TYPES:[Ljava/lang/String;

    .line 87
    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->UNACCEPTABLE_ATTACHMENT_DOWNLOAD_TYPES:[Ljava/lang/String;

    .line 94
    const/16 v0, 0x24

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ade"

    aput-object v1, v0, v3

    const-string v1, "adp"

    aput-object v1, v0, v4

    const-string v1, "bat"

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const-string v2, "chm"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "cmd"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "cpl"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "dll"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "exe"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "hta"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ins"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "isp"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "jse"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "lib"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "mde"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "msc"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "msp"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "mst"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "pif"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "scr"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "sct"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "shb"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "sys"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "vb"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "vbe"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "vbs"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "vxd"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "wsc"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "wsf"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "wsh"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "zip"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "gz"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "z"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "tar"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "tgz"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "bz2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->UNACCEPTABLE_ATTACHMENT_EXTENSIONS:[Ljava/lang/String;

    .line 108
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "apk"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->INSTALLABLE_ATTACHMENT_EXTENSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static deleteAllAccountAttachmentFiles(Landroid/content/Context;J)V
    .registers 12
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 343
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentDirectory(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 344
    .local v2, files:[Ljava/io/File;
    if-nez v2, :cond_b

    .line 351
    :cond_a
    return-void

    .line 345
    :cond_b
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_e
    if-ge v3, v4, :cond_a

    aget-object v1, v0, v3

    .line 346
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    .line 347
    .local v5, result:Z
    if-nez v5, :cond_34

    .line 348
    const-string v6, "Email"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to delete attachment file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_e
.end method

.method public static deleteAllAttachmentFiles(Landroid/content/Context;JJ)V
    .registers 15
    .parameter "context"
    .parameter "accountId"
    .parameter "messageId"

    .prologue
    const/4 v3, 0x0

    .line 297
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    invoke-static {v0, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 298
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->ID_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 301
    .local v9, c:Landroid/database/Cursor;
    :goto_13
    :try_start_13
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 302
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 303
    .local v7, attachmentId:J
    invoke-static {p0, p1, p2, v7, v8}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;

    move-result-object v6

    .line 307
    .local v6, attachmentFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_26

    goto :goto_13

    .line 310
    .end local v6           #attachmentFile:Ljava/io/File;
    .end local v7           #attachmentId:J
    :catchall_26
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2b
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 312
    return-void
.end method

.method public static deleteAllMailboxAttachmentFiles(Landroid/content/Context;JJ)V
    .registers 15
    .parameter "context"
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    const/4 v9, 0x0

    .line 323
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

    .line 327
    .local v6, c:Landroid/database/Cursor;
    :goto_19
    :try_start_19
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 328
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 329
    .local v7, messageId:J
    invoke-static {p0, p1, p2, v7, v8}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_28

    goto :goto_19

    .line 332
    .end local v7           #messageId:J
    :catchall_28
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2d
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 334
    return-void
.end method

.method public static getAttachmentDirectory(Landroid/content/Context;J)Ljava/io/File;
    .registers 5
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".db_att"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;
    .registers 8
    .parameter "context"
    .parameter "accountId"
    .parameter "attachmentId"

    .prologue
    .line 153
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentDirectory(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getAttachmentThumbnailUri(JJII)Landroid/net/Uri;
    .registers 8
    .parameter "accountId"
    .parameter "id"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 136
    sget-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "THUMBNAIL"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getAttachmentUri(JJ)Landroid/net/Uri;
    .registers 6
    .parameter "accountId"
    .parameter "id"

    .prologue
    .line 127
    sget-object v0, Lcom/android/emailcommon/utility/AttachmentUtilities;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "RAW"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getFilenameExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "fileName"

    .prologue
    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, extension:Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 252
    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 253
    .local v1, lastDot:I
    if-lez v1, :cond_21

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_21

    .line 254
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 257
    .end local v1           #lastDot:I
    :cond_21
    return-object v0
.end method

.method public static inferMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "fileName"
    .parameter "mimeType"

    .prologue
    .line 196
    const/4 v3, 0x0

    .line 197
    .local v3, resultType:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getFilenameExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, fileExtension:Ljava/lang/String;
    const-string v4, "text/plain"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 200
    .local v2, isTextPlain:Z
    const-string v4, "eml"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 201
    const-string v3, "message/rfc822"

    .line 221
    :cond_15
    :goto_15
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 222
    if-eqz v2, :cond_67

    const-string v3, "text/plain"

    .line 224
    :cond_1f
    :goto_1f
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 203
    :cond_24
    if-nez v2, :cond_2e

    const-string v4, "application/octet-stream"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4f

    :cond_2e
    const/4 v1, 0x1

    .line 206
    .local v1, isGenericType:Z
    :goto_2f
    if-nez v1, :cond_37

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 207
    :cond_37
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 209
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 210
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 212
    if-eqz v2, :cond_51

    move-object v3, p1

    :goto_4e
    goto :goto_15

    .line 203
    .end local v1           #isGenericType:Z
    :cond_4f
    const/4 v1, 0x0

    goto :goto_2f

    .line 212
    .restart local v1       #isGenericType:Z
    :cond_51
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "application/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_4e

    .line 216
    :cond_65
    move-object v3, p1

    goto :goto_15

    .line 222
    .end local v1           #isGenericType:Z
    :cond_67
    const-string v3, "application/octet-stream"

    goto :goto_1f
.end method

.method public static inferMimeTypeForUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 234
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, scheme:Ljava/lang/String;
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 236
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 238
    :goto_14
    return-object v1

    .line 237
    :cond_15
    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 238
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/android/emailcommon/utility/AttachmentUtilities;->inferMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_14

    .line 240
    :cond_28
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public static resolveAttachmentIdToContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 10
    .parameter "resolver"
    .parameter "attachmentUri"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 271
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v1

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 274
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_27

    .line 276
    :try_start_13
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 277
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 278
    .local v7, strUri:Ljava/lang/String;
    if-eqz v7, :cond_28

    .line 279
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_2c

    move-result-object p1

    .line 283
    .end local p1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 286
    .end local v7           #strUri:Ljava/lang/String;
    :cond_27
    :goto_27
    return-object p1

    .line 283
    .restart local p1
    :cond_28
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_27

    :catchall_2c
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method
