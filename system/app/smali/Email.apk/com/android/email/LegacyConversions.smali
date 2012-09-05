.class public Lcom/android/email/LegacyConversions;
.super Ljava/lang/Object;
.source "LegacyConversions.java"


# static fields
.field private static final ATTACHMENT_META_COLUMNS_PROJECTION:[Ljava/lang/String;

.field private static final sServerMailboxNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    .line 100
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_size"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/LegacyConversions;->ATTACHMENT_META_COLUMNS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addOneAttachment(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/mail/Part;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .registers 32
    .parameter "context"
    .parameter "localMessage"
    .parameter "part"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 516
    new-instance v21, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct/range {v21 .. v21}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 519
    .local v21, localAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-interface/range {p2 .. p2}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/emailcommon/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 520
    .local v12, contentType:Ljava/lang/String;
    const-string v3, "name"

    invoke-static {v12, v3}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 521
    .local v22, name:Ljava/lang/String;
    if-nez v22, :cond_23

    .line 522
    invoke-interface/range {p2 .. p2}, Lcom/android/emailcommon/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/emailcommon/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 523
    .local v11, contentDisposition:Ljava/lang/String;
    const-string v3, "filename"

    invoke-static {v11, v3}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 528
    .end local v11           #contentDisposition:Ljava/lang/String;
    :cond_23
    const-wide/16 v26, 0x0

    .line 530
    .local v26, size:J
    invoke-interface/range {p2 .. p2}, Lcom/android/emailcommon/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v15

    .line 531
    .local v15, disposition:Ljava/lang/String;
    if-eqz v15, :cond_37

    .line 532
    const-string v3, "size"

    invoke-static {v15, v3}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 533
    .local v25, s:Ljava/lang/String;
    if-eqz v25, :cond_37

    .line 534
    invoke-static/range {v25 .. v25}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v26

    .line 538
    .end local v25           #s:Ljava/lang/String;
    :cond_37
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseInlineTag()Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 539
    const/16 v16, 0x0

    .line 540
    .local v16, dispositionType:Ljava/lang/String;
    if-eqz v15, :cond_46

    .line 541
    const/4 v3, 0x0

    invoke-static {v15, v3}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 545
    :cond_46
    if-eqz v16, :cond_58

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_58

    const-string v3, "inline"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b4

    :cond_58
    const/16 v20, 0x1

    .line 549
    .local v20, inlineDisposition:Z
    :goto_5a
    if-eqz v20, :cond_1b8

    if-eqz v22, :cond_1b8

    const/16 v19, 0x1

    .line 551
    .local v19, inline:Z
    :goto_60
    if-eqz v19, :cond_6c

    .line 552
    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    or-int/lit16 v3, v3, 0x80

    move-object/from16 v0, v21

    iput v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    .line 559
    .end local v16           #dispositionType:Ljava/lang/String;
    .end local v19           #inline:Z
    .end local v20           #inlineDisposition:Z
    :cond_6c
    const-string v3, "X-Android-Attachment-StoreData"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Lcom/android/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 560
    .local v24, partIds:[Ljava/lang/String;
    if-eqz v24, :cond_1bc

    const/4 v3, 0x0

    aget-object v23, v24, v3

    .line 562
    .local v23, partId:Ljava/lang/String;
    :goto_79
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 563
    invoke-interface/range {p2 .. p2}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .line 564
    move-wide/from16 v0, v26

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 565
    invoke-interface/range {p2 .. p2}, Lcom/android/emailcommon/mail/Part;->getContentId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    .line 566
    const/4 v3, 0x0

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    .line 568
    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, v21

    iput-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    .line 569
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    .line 574
    const-string v3, "Content-Transfer-Encoding"

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Lcom/android/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 575
    .local v17, encoding:[Ljava/lang/String;
    if-eqz v17, :cond_1c0

    const/4 v3, 0x0

    aget-object v3, v17, v3

    :goto_b5
    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    .line 577
    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-object/from16 v0, v21

    iput-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    .line 581
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    const-string v5, "message/rfc822"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f4

    .line 582
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    if-nez v3, :cond_f4

    .line 583
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NoName_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".eml"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 599
    :cond_f4
    const/4 v10, 0x0

    .line 600
    .local v10, bIsPOP3Account:Z
    if-eqz p3, :cond_111

    .line 601
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v3, v0}, Lcom/android/email/mail/Store$StoreInfo;->getStoreInfo(Ljava/lang/String;Landroid/content/Context;)Lcom/android/email/mail/Store$StoreInfo;

    move-result-object v18

    .line 603
    .local v18, info:Lcom/android/email/mail/Store$StoreInfo;
    if-eqz v18, :cond_111

    .line 604
    const-string v3, "pop3"

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/email/mail/Store$StoreInfo;->mScheme:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    .line 608
    .end local v18           #info:Lcom/android/email/mail/Store$StoreInfo;
    :cond_111
    const/4 v3, 0x1

    if-eq v10, v3, :cond_120

    if-eqz p3, :cond_1c9

    move-object/from16 v0, p3

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6}, Lcom/android/email/Controller;->isSnc(J)Z

    move-result v3

    if-eqz v3, :cond_1c9

    .line 610
    :cond_120
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->MESSAGE_ID_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v3, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 611
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 613
    .local v13, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 615
    .local v9, attachmentFoundInDb:Z
    :cond_138
    :try_start_138
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_17d

    .line 616
    new-instance v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v14}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 617
    .local v14, dbAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-virtual {v14, v13}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restore(Landroid/database/Cursor;)V

    .line 621
    iget-object v3, v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/android/email/LegacyConversions;->stringNotEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_138

    .line 623
    iget-object v3, v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/android/email/LegacyConversions;->stringNotEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_138

    .line 625
    iget-object v3, v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/android/email/LegacyConversions;->stringNotEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_138

    .line 627
    iget-object v3, v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/android/email/LegacyConversions;->stringNotEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_138

    .line 631
    const/4 v9, 0x1

    .line 632
    iget-wide v5, v14, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, v21

    iput-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J
    :try_end_17d
    .catchall {:try_start_138 .. :try_end_17d} :catchall_1c4

    .line 639
    .end local v14           #dbAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_17d
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 643
    if-nez v9, :cond_189

    .line 644
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 652
    .end local v4           #uri:Landroid/net/Uri;
    .end local v9           #attachmentFoundInDb:Z
    .end local v13           #cursor:Landroid/database/Cursor;
    :cond_189
    :goto_189
    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2, v5, v6}, Lcom/android/email/LegacyConversions;->saveAttachmentBody(Landroid/content/Context;Lcom/android/emailcommon/mail/Part;Lcom/android/emailcommon/provider/EmailContent$Attachment;J)V

    .line 654
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    if-nez v3, :cond_1a5

    .line 655
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 657
    :cond_1a5
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    const/4 v3, 0x1

    move-object/from16 v0, p1

    iput-boolean v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    .line 659
    return-void

    .line 545
    .end local v10           #bIsPOP3Account:Z
    .end local v17           #encoding:[Ljava/lang/String;
    .end local v23           #partId:Ljava/lang/String;
    .end local v24           #partIds:[Ljava/lang/String;
    .restart local v16       #dispositionType:Ljava/lang/String;
    :cond_1b4
    const/16 v20, 0x0

    goto/16 :goto_5a

    .line 549
    .restart local v20       #inlineDisposition:Z
    :cond_1b8
    const/16 v19, 0x0

    goto/16 :goto_60

    .line 560
    .end local v16           #dispositionType:Ljava/lang/String;
    .end local v20           #inlineDisposition:Z
    .restart local v24       #partIds:[Ljava/lang/String;
    :cond_1bc
    const/16 v23, 0x0

    goto/16 :goto_79

    .line 575
    .restart local v17       #encoding:[Ljava/lang/String;
    .restart local v23       #partId:Ljava/lang/String;
    :cond_1c0
    const-string v3, "base64"

    goto/16 :goto_b5

    .line 639
    .restart local v4       #uri:Landroid/net/Uri;
    .restart local v9       #attachmentFoundInDb:Z
    .restart local v10       #bIsPOP3Account:Z
    .restart local v13       #cursor:Landroid/database/Cursor;
    :catchall_1c4
    move-exception v3

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v3

    .line 647
    .end local v4           #uri:Landroid/net/Uri;
    .end local v9           #attachmentFoundInDb:Z
    .end local v13           #cursor:Landroid/database/Cursor;
    :cond_1c9
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->save(Landroid/content/Context;)Landroid/net/Uri;

    goto :goto_189
.end method

.method private static addTextBodyPart(Lcom/android/emailcommon/internet/MimeMultipart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "mp"
    .parameter "contentType"
    .parameter "quotedPartTag"
    .parameter "partText"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 839
    if-nez p3, :cond_3

    .line 848
    :goto_2
    return-void

    .line 842
    :cond_3
    new-instance v0, Lcom/android/emailcommon/internet/TextBody;

    invoke-direct {v0, p3}, Lcom/android/emailcommon/internet/TextBody;-><init>(Ljava/lang/String;)V

    .line 843
    .local v0, body:Lcom/android/emailcommon/internet/TextBody;
    new-instance v1, Lcom/android/emailcommon/internet/MimeBodyPart;

    invoke-direct {v1, v0, p1}, Lcom/android/emailcommon/internet/MimeBodyPart;-><init>(Lcom/android/emailcommon/mail/Body;Ljava/lang/String;)V

    .line 844
    .local v1, bp:Lcom/android/emailcommon/internet/MimeBodyPart;
    if-eqz p2, :cond_14

    .line 845
    const-string v2, "X-Android-Body-Quoted-Part"

    invoke-virtual {v1, v2, p2}, Lcom/android/emailcommon/internet/MimeBodyPart;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    :cond_14
    invoke-virtual {p0, v1}, Lcom/android/emailcommon/internet/MimeMultipart;->addBodyPart(Lcom/android/emailcommon/mail/BodyPart;)V

    goto :goto_2
.end method

.method private static appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;
    .registers 3
    .parameter "sb"
    .parameter "newText"

    .prologue
    .line 443
    if-nez p1, :cond_3

    .line 453
    :goto_2
    return-object p0

    .line 445
    :cond_3
    if-nez p0, :cond_b

    .line 446
    new-instance p0, Ljava/lang/StringBuffer;

    .end local p0
    invoke-direct {p0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .restart local p0
    goto :goto_2

    .line 448
    :cond_b
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_16

    .line 449
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 451
    :cond_16
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public static declared-synchronized inferMailboxTypeFromName(Landroid/content/Context;Ljava/lang/String;)I
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1070
    const-class v2, Lcom/android/email/LegacyConversions;

    monitor-enter v2

    :try_start_4
    sget-object v0, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_94

    .line 1072
    sget-object v0, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    const v3, 0x7f08000c

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    sget-object v0, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    const v3, 0x7f08000d

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    sget-object v0, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    const v3, 0x7f08000e

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1078
    sget-object v0, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    const v3, 0x7f08000f

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1080
    sget-object v0, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    const v3, 0x7f080010

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    sget-object v0, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    const v3, 0x7f080011

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1085
    :cond_94
    if-eqz p1, :cond_9c

    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_99
    .catchall {:try_start_4 .. :try_end_99} :catchall_b6

    move-result v0

    if-nez v0, :cond_9f

    :cond_9c
    move v0, v1

    .line 1093
    :goto_9d
    monitor-exit v2

    return v0

    .line 1088
    :cond_9f
    :try_start_9f
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1089
    sget-object v3, Lcom/android/email/LegacyConversions;->sServerMailboxNames:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1090
    if-eqz v0, :cond_b4

    .line 1091
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_b2
    .catchall {:try_start_9f .. :try_end_b2} :catchall_b6

    move-result v0

    goto :goto_9d

    :cond_b4
    move v0, v1

    .line 1093
    goto :goto_9d

    .line 1070
    :catchall_b6
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static makeAccount(Landroid/content/Context;Lcom/android/email/Account;)Lcom/android/emailcommon/provider/EmailContent$Account;
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 925
    new-instance v9, Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct {v9}, Lcom/android/emailcommon/provider/EmailContent$Account;-><init>()V

    .line 927
    invoke-virtual {p1}, Lcom/android/email/Account;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDisplayName(Ljava/lang/String;)V

    .line 928
    invoke-virtual {p1}, Lcom/android/email/Account;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setEmailAddress(Ljava/lang/String;)V

    .line 929
    iput-object v2, v9, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    .line 930
    invoke-virtual {p1}, Lcom/android/email/Account;->getSyncWindow()I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncLookback(I)V

    .line 931
    invoke-virtual {p1}, Lcom/android/email/Account;->getAutomaticCheckIntervalMinutes()I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncInterval(I)V

    .line 935
    invoke-virtual {p1}, Lcom/android/email/Account;->isNotifyNewMail()Z

    move-result v0

    if-eqz v0, :cond_18e

    move v0, v7

    .line 937
    :goto_2d
    invoke-virtual {p1}, Lcom/android/email/Account;->isVibrate()Z

    move-result v1

    if-eqz v1, :cond_15a

    .line 938
    or-int/lit8 v0, v0, 0x2

    .line 941
    :cond_35
    :goto_35
    invoke-virtual {p1}, Lcom/android/email/Account;->isAddSignature()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 942
    or-int/lit16 v0, v0, 0x2000

    .line 943
    :cond_3d
    invoke-virtual {v9, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setFlags(I)V

    .line 944
    invoke-virtual {p1}, Lcom/android/email/Account;->getDeletePolicy()I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDeletePolicy(I)V

    .line 946
    invoke-virtual {p1}, Lcom/android/email/Account;->getUuid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/emailcommon/provider/EmailContent$Account;->mCompatibilityUuid:Ljava/lang/String;

    .line 947
    invoke-virtual {p1}, Lcom/android/email/Account;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSenderName(Ljava/lang/String;)V

    .line 948
    invoke-virtual {p1}, Lcom/android/email/Account;->getRingtone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setRingtone(Ljava/lang/String;)V

    .line 949
    iget-object v0, p1, Lcom/android/email/Account;->mProtocolVersion:Ljava/lang/String;

    iput-object v0, v9, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    .line 950
    iput v8, v9, Lcom/android/emailcommon/provider/EmailContent$Account;->mNewMessageCount:I

    .line 951
    iget-wide v0, p1, Lcom/android/email/Account;->mSecurityFlags:J

    iput-wide v0, v9, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecurityFlags:J

    .line 952
    iput-object v2, v9, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 955
    invoke-virtual {p1}, Lcom/android/email/Account;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSignature(Ljava/lang/String;)V

    .line 957
    iget-boolean v0, p1, Lcom/android/email/Account;->mIsDefault:Z

    iput-boolean v0, v9, Lcom/android/emailcommon/provider/EmailContent$Account;->mIsDefault:Z

    .line 958
    invoke-virtual {p1}, Lcom/android/email/Account;->getSyncScheduleData()Ljava/lang/String;

    move-result-object v0

    .line 959
    if-eqz v0, :cond_c6

    .line 960
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 961
    new-instance v0, Lcom/android/emailcommon/utility/SyncScheduleData;

    aget-object v1, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v2, v6, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    aget-object v3, v6, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    aget-object v4, v6, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x4

    aget-object v5, v6, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v10, 0x5

    aget-object v6, v6, v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/android/emailcommon/utility/SyncScheduleData;-><init>(IIIIII)V

    .line 965
    invoke-virtual {v9, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncScheduleData(Lcom/android/emailcommon/utility/SyncScheduleData;)V

    .line 970
    :cond_c6
    :try_start_c6
    invoke-virtual {v9, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v0

    .line 971
    invoke-virtual {p1}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/utility/Utility;->setHostAuthFromString(Lcom/android/emailcommon/provider/EmailContent$HostAuth;Ljava/lang/String;)V
    :try_end_d1
    .catch Ljava/net/URISyntaxException; {:try_start_c6 .. :try_end_d1} :catch_164

    .line 977
    :goto_d1
    :try_start_d1
    invoke-virtual {v9, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v0

    .line 978
    invoke-virtual {p1}, Lcom/android/email/Account;->getSenderUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/utility/Utility;->setHostAuthFromString(Lcom/android/emailcommon/provider/EmailContent$HostAuth;Ljava/lang/String;)V
    :try_end_dc
    .catch Ljava/net/URISyntaxException; {:try_start_d1 .. :try_end_dc} :catch_173

    .line 987
    :goto_dc
    :try_start_dc
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p1}, Lcom/android/email/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 988
    if-eqz v0, :cond_ee

    .line 989
    invoke-virtual {v0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setCbaCertificate(Ljava/lang/String;)V
    :try_end_ee
    .catch Ljava/net/URISyntaxException; {:try_start_dc .. :try_end_ee} :catch_182

    .line 999
    :cond_ee
    :goto_ee
    iget-wide v0, p1, Lcom/android/email/Account;->mAccountKey:J

    invoke-virtual {v9, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setAccountKey(J)V

    .line 1000
    iget-wide v0, p1, Lcom/android/email/Account;->mSevenAccountKey:J

    invoke-virtual {v9, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSevenAccountKey(J)V

    .line 1001
    iget v0, p1, Lcom/android/email/Account;->mTypeMsg:I

    invoke-virtual {v9, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setTypeMsg(I)V

    .line 1002
    iget-wide v0, p1, Lcom/android/email/Account;->mTimeLimit:J

    invoke-virtual {v9, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setTimeLimit(J)V

    .line 1003
    iget-wide v0, p1, Lcom/android/email/Account;->mSizeLimit:J

    invoke-virtual {v9, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSizeLimit(J)V

    .line 1007
    invoke-virtual {p1}, Lcom/android/email/Account;->getMessageFormat()I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setMessageFormat(I)V

    .line 1008
    iget v0, p1, Lcom/android/email/Account;->mAccountType:I

    iput v0, v9, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    .line 1011
    invoke-virtual {p1}, Lcom/android/email/Account;->getEmailSize()B

    move-result v0

    invoke-virtual {v9, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setEmailSize(B)V

    .line 1012
    invoke-virtual {p1}, Lcom/android/email/Account;->getSyncLookbackData()I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncLookback(I)V

    .line 1013
    invoke-virtual {p1}, Lcom/android/email/Account;->getCalendarSyncLookbackData()I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setCalendarSyncLookback(I)Z

    .line 1015
    new-instance v1, Landroid/accounts/Account;

    iget-object v0, v9, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v2, "com.android.exchange"

    invoke-direct {v1, v0, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    const-string v0, "com.android.contacts"

    invoke-virtual {p1}, Lcom/android/email/Account;->getFlagSyncContact()I

    move-result v2

    invoke-static {v1, v0, v2}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1020
    const-string v2, "com.android.contacts"

    invoke-virtual {p1}, Lcom/android/email/Account;->getFlagSyncContact()I

    move-result v0

    if-ne v0, v7, :cond_18a

    move v0, v7

    :goto_142
    invoke-static {v1, v2, v0}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 1023
    const-string v0, "com.android.calendar"

    invoke-virtual {p1}, Lcom/android/email/Account;->getFlagSyncCalendar()I

    move-result v2

    invoke-static {v1, v0, v2}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1025
    const-string v0, "com.android.calendar"

    invoke-virtual {p1}, Lcom/android/email/Account;->getFlagSyncCalendar()I

    move-result v2

    if-ne v2, v7, :cond_18c

    :goto_156
    invoke-static {v1, v0, v7}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 1029
    return-object v9

    .line 939
    :cond_15a
    invoke-virtual {p1}, Lcom/android/email/Account;->isVibrateWhenSilent()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 940
    or-int/lit8 v0, v0, 0x40

    goto/16 :goto_35

    .line 972
    :catch_164
    move-exception v0

    .line 973
    new-instance v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-direct {v1}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;-><init>()V

    iput-object v1, v9, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 974
    const-string v1, "Email"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d1

    .line 979
    :catch_173
    move-exception v0

    .line 980
    new-instance v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-direct {v1}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;-><init>()V

    iput-object v1, v9, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthSend:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 981
    const-string v1, "Email"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_dc

    .line 990
    :catch_182
    move-exception v0

    .line 991
    const-string v1, "Email"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_ee

    :cond_18a
    move v0, v8

    .line 1020
    goto :goto_142

    :cond_18c
    move v7, v8

    .line 1025
    goto :goto_156

    :cond_18e
    move v0, v8

    goto/16 :goto_2d
.end method

.method static makeLegacyAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)Lcom/android/email/Account;
    .registers 8
    .parameter "context"
    .parameter "fromAccount"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 860
    new-instance v0, Lcom/android/email/Account;

    invoke-direct {v0, p0}, Lcom/android/email/Account;-><init>(Landroid/content/Context;)V

    .line 862
    .local v0, result:Lcom/android/email/Account;
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setDescription(Ljava/lang/String;)V

    .line 863
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setEmail(Ljava/lang/String;)V

    .line 865
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncLookback()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setSyncWindow(I)V

    .line 866
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSyncInterval()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setAutomaticCheckIntervalMinutes(I)V

    .line 879
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_a7

    move v1, v2

    :goto_2c
    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setNotifyNewMail(Z)V

    .line 880
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_a9

    move v1, v2

    :goto_38
    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setVibrate(Z)V

    .line 881
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_ab

    move v1, v2

    :goto_44
    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setVibrateWhenSilent(Z)V

    .line 882
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDeletePolicy()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setDeletePolicy(I)V

    .line 884
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getUuid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/email/Account;->mUuid:Ljava/lang/String;

    .line 885
    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSenderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setName(Ljava/lang/String;)V

    .line 886
    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mRingtoneUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setRingtone(Ljava/lang/String;)V

    .line 887
    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/email/Account;->mProtocolVersion:Ljava/lang/String;

    .line 889
    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSecurityFlags:J

    iput-wide v4, v0, Lcom/android/email/Account;->mSecurityFlags:J

    .line 891
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_ad

    :goto_6e
    invoke-virtual {v0, v2}, Lcom/android/email/Account;->setAddSignature(Z)V

    .line 892
    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSignature:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/email/Account;->mSignature:Ljava/lang/String;

    .line 895
    invoke-virtual {p1, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setStoreUri(Ljava/lang/String;)V

    .line 896
    invoke-virtual {p1, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getSenderUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setSenderUri(Ljava/lang/String;)V

    .line 901
    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountKey:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Account;->setAccountKey(J)V

    .line 902
    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSevenAccountKey:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Account;->setSevenAccountKey(J)V

    .line 903
    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mTypeMsg:I

    invoke-virtual {v0, v1}, Lcom/android/email/Account;->setTypeMsg(I)V

    .line 904
    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mTimeLimit:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Account;->setTimeLimit(J)V

    .line 905
    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSizeLimit:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Account;->setSizeLimit(J)V

    .line 909
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->getMessageFormat()I

    move-result v1

    iput v1, v0, Lcom/android/email/Account;->mMessageFormat:I

    .line 910
    iget v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mAccountType:I

    iput v1, v0, Lcom/android/email/Account;->mAccountType:I

    .line 912
    return-object v0

    :cond_a7
    move v1, v3

    .line 879
    goto :goto_2c

    :cond_a9
    move v1, v3

    .line 880
    goto :goto_38

    :cond_ab
    move v1, v3

    .line 881
    goto :goto_44

    :cond_ad
    move v2, v3

    .line 891
    goto :goto_6e
.end method

.method public static makeMessage(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/mail/Message;
    .registers 15
    .parameter "context"
    .parameter "localMessage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 732
    new-instance v3, Lcom/android/emailcommon/internet/MimeMessage;

    invoke-direct {v3}, Lcom/android/emailcommon/internet/MimeMessage;-><init>()V

    .line 735
    .local v3, message:Lcom/android/emailcommon/internet/MimeMessage;
    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    if-nez v7, :cond_e5

    const-string v7, ""

    :goto_d
    invoke-virtual {v3, v7}, Lcom/android/emailcommon/internet/MimeMessage;->setSubject(Ljava/lang/String;)V

    .line 736
    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    .line 737
    .local v0, from:[Lcom/android/emailcommon/mail/Address;
    array-length v7, v0

    if-lez v7, :cond_1e

    .line 738
    aget-object v7, v0, v9

    invoke-virtual {v3, v7}, Lcom/android/emailcommon/internet/MimeMessage;->setFrom(Lcom/android/emailcommon/mail/Address;)V

    .line 740
    :cond_1e
    new-instance v7, Ljava/util/Date;

    iget-wide v10, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    invoke-direct {v7, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v7}, Lcom/android/emailcommon/internet/MimeMessage;->setSentDate(Ljava/util/Date;)V

    .line 741
    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/android/emailcommon/internet/MimeMessage;->setUid(Ljava/lang/String;)V

    .line 742
    sget-object v10, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    iget v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    const/4 v11, 0x3

    if-ne v7, v11, :cond_e9

    move v7, v8

    :goto_35
    invoke-virtual {v3, v10, v7}, Lcom/android/emailcommon/internet/MimeMessage;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 744
    sget-object v7, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    iget-boolean v10, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    invoke-virtual {v3, v7, v10}, Lcom/android/emailcommon/internet/MimeMessage;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 745
    sget-object v7, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    iget-boolean v10, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    invoke-virtual {v3, v7, v10}, Lcom/android/emailcommon/internet/MimeMessage;->setFlag(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 748
    sget-object v7, Lcom/android/emailcommon/mail/Message$RecipientType;->TO:Lcom/android/emailcommon/mail/Message$RecipientType;

    iget-object v10, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v10

    invoke-virtual {v3, v7, v10}, Lcom/android/emailcommon/internet/MimeMessage;->setRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;[Lcom/android/emailcommon/mail/Address;)V

    .line 749
    sget-object v7, Lcom/android/emailcommon/mail/Message$RecipientType;->CC:Lcom/android/emailcommon/mail/Message$RecipientType;

    iget-object v10, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v10

    invoke-virtual {v3, v7, v10}, Lcom/android/emailcommon/internet/MimeMessage;->setRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;[Lcom/android/emailcommon/mail/Address;)V

    .line 750
    sget-object v7, Lcom/android/emailcommon/mail/Message$RecipientType;->BCC:Lcom/android/emailcommon/mail/Message$RecipientType;

    iget-object v10, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v10

    invoke-virtual {v3, v7, v10}, Lcom/android/emailcommon/internet/MimeMessage;->setRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;[Lcom/android/emailcommon/mail/Address;)V

    .line 751
    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/emailcommon/internet/MimeMessage;->setReplyTo([Lcom/android/emailcommon/mail/Address;)V

    .line 752
    new-instance v7, Ljava/util/Date;

    iget-wide v10, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerTimeStamp:J

    invoke-direct {v7, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v7}, Lcom/android/emailcommon/internet/MimeMessage;->setInternalDate(Ljava/util/Date;)V

    .line 753
    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    invoke-virtual {v3, v7}, Lcom/android/emailcommon/internet/MimeMessage;->setMessageId(Ljava/lang/String;)V

    .line 759
    const-string v7, "Content-Type"

    const-string v10, "multipart/mixed"

    invoke-virtual {v3, v7, v10}, Lcom/android/emailcommon/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    new-instance v4, Lcom/android/emailcommon/internet/MimeMultipart;

    invoke-direct {v4}, Lcom/android/emailcommon/internet/MimeMultipart;-><init>()V

    .line 761
    .local v4, mp:Lcom/android/emailcommon/internet/MimeMultipart;
    const-string v7, "mixed"

    invoke-virtual {v4, v7}, Lcom/android/emailcommon/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    .line 762
    invoke-virtual {v3, v4}, Lcom/android/emailcommon/internet/MimeMessage;->setBody(Lcom/android/emailcommon/mail/Body;)V

    .line 765
    :try_start_93
    const-string v7, "text/html"

    const/4 v10, 0x0

    iget-wide v11, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v11, v12}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v7, v10, v11}, Lcom/android/email/LegacyConversions;->addTextBodyPart(Lcom/android/emailcommon/internet/MimeMultipart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9f
    .catch Ljava/lang/RuntimeException; {:try_start_93 .. :try_end_9f} :catch_ec

    .line 772
    :goto_9f
    :try_start_9f
    const-string v7, "text/plain"

    const/4 v10, 0x0

    iget-wide v11, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v11, v12}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreBodyTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v7, v10, v11}, Lcom/android/email/LegacyConversions;->addTextBodyPart(Lcom/android/emailcommon/internet/MimeMultipart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ab
    .catch Ljava/lang/RuntimeException; {:try_start_9f .. :try_end_ab} :catch_10a

    .line 778
    :goto_ab
    iget v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_128

    move v2, v8

    .line 779
    .local v2, isReply:Z
    :goto_b2
    iget v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_12a

    move v1, v8

    .line 787
    .local v1, isForward:Z
    :goto_b9
    if-nez v2, :cond_bd

    if-eqz v1, :cond_e4

    .line 789
    :cond_bd
    :try_start_bd
    const-string v7, "text/plain"

    const-string v8, "quoted-intro"

    iget-wide v9, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v9, v10}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreIntroTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v7, v8, v9}, Lcom/android/email/LegacyConversions;->addTextBodyPart(Lcom/android/emailcommon/internet/MimeMultipart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ca
    .catch Ljava/lang/RuntimeException; {:try_start_bd .. :try_end_ca} :catch_12c

    .line 795
    :goto_ca
    if-eqz v2, :cond_14a

    const-string v5, "quoted-reply"

    .line 797
    .local v5, replyTag:Ljava/lang/String;
    :goto_ce
    :try_start_ce
    const-string v7, "text/html"

    iget-wide v8, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreReplyHtmlWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v7, v5, v8}, Lcom/android/email/LegacyConversions;->addTextBodyPart(Lcom/android/emailcommon/internet/MimeMultipart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d9
    .catch Ljava/lang/RuntimeException; {:try_start_ce .. :try_end_d9} :catch_14d

    .line 804
    :goto_d9
    :try_start_d9
    const-string v7, "text/plain"

    iget-wide v8, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Body;->restoreReplyTextWithMessageId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v7, v5, v8}, Lcom/android/email/LegacyConversions;->addTextBodyPart(Lcom/android/emailcommon/internet/MimeMultipart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e4
    .catch Ljava/lang/RuntimeException; {:try_start_d9 .. :try_end_e4} :catch_16c

    .line 825
    .end local v5           #replyTag:Ljava/lang/String;
    :cond_e4
    :goto_e4
    return-object v3

    .line 735
    .end local v0           #from:[Lcom/android/emailcommon/mail/Address;
    .end local v1           #isForward:Z
    .end local v2           #isReply:Z
    .end local v4           #mp:Lcom/android/emailcommon/internet/MimeMultipart;
    :cond_e5
    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    goto/16 :goto_d

    .restart local v0       #from:[Lcom/android/emailcommon/mail/Address;
    :cond_e9
    move v7, v9

    .line 742
    goto/16 :goto_35

    .line 767
    .restart local v4       #mp:Lcom/android/emailcommon/internet/MimeMultipart;
    :catch_ec
    move-exception v6

    .line 768
    .local v6, rte:Ljava/lang/RuntimeException;
    const-string v7, "Email"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception while reading html body "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9f

    .line 774
    .end local v6           #rte:Ljava/lang/RuntimeException;
    :catch_10a
    move-exception v6

    .line 775
    .restart local v6       #rte:Ljava/lang/RuntimeException;
    const-string v7, "Email"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception while reading text body "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ab

    .end local v6           #rte:Ljava/lang/RuntimeException;
    :cond_128
    move v2, v9

    .line 778
    goto :goto_b2

    .restart local v2       #isReply:Z
    :cond_12a
    move v1, v9

    .line 779
    goto :goto_b9

    .line 791
    .restart local v1       #isForward:Z
    :catch_12c
    move-exception v6

    .line 792
    .restart local v6       #rte:Ljava/lang/RuntimeException;
    const-string v7, "Email"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while reading text reply "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ca

    .line 795
    .end local v6           #rte:Ljava/lang/RuntimeException;
    :cond_14a
    const-string v5, "quoted-forward"

    goto :goto_ce

    .line 799
    .restart local v5       #replyTag:Ljava/lang/String;
    :catch_14d
    move-exception v6

    .line 800
    .restart local v6       #rte:Ljava/lang/RuntimeException;
    const-string v7, "Email"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while reading html reply "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d9

    .line 806
    .end local v6           #rte:Ljava/lang/RuntimeException;
    :catch_16c
    move-exception v6

    .line 807
    .restart local v6       #rte:Ljava/lang/RuntimeException;
    const-string v7, "Email"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception while reading text reply "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e4
.end method

.method public static saveAttachmentBody(Landroid/content/Context;Lcom/android/emailcommon/mail/Part;Lcom/android/emailcommon/provider/EmailContent$Attachment;J)V
    .registers 22
    .parameter "context"
    .parameter "part"
    .parameter "localAttachment"
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 681
    invoke-interface/range {p1 .. p1}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v14

    if-eqz v14, :cond_98

    .line 682
    move-object/from16 v0, p2

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 684
    .local v3, attachmentId:J
    invoke-interface/range {p1 .. p1}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/emailcommon/mail/Body;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 686
    .local v9, in:Ljava/io/InputStream;
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentDirectory(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v12

    .line 687
    .local v12, saveIn:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_23

    .line 688
    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    .line 690
    :cond_23
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentFilename(Landroid/content/Context;JJ)Ljava/io/File;

    move-result-object v11

    .line 692
    .local v11, saveAs:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z

    .line 693
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 694
    .local v10, out:Ljava/io/FileOutputStream;
    const-wide/16 v6, 0x0

    .line 695
    .local v6, copySize:J
    if-eqz v9, :cond_3f

    .line 697
    invoke-static {v9, v10}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v14

    int-to-long v6, v14

    .line 698
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 700
    :cond_3f
    if-eqz v10, :cond_44

    .line 701
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 704
    :cond_44
    move-wide/from16 v0, p3

    invoke-static {v0, v1, v3, v4}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 707
    .local v5, contentUriString:Ljava/lang/String;
    move-object/from16 v0, p2

    iput-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 708
    move-object/from16 v0, p2

    iput-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    .line 711
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 712
    .local v8, cv:Landroid/content/ContentValues;
    const-string v14, "size"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 713
    const-string v14, "contentUri"

    invoke-virtual {v8, v14, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseDownloadCancel()Z

    move-result v14

    if-eqz v14, :cond_86

    .line 715
    move-object/from16 v0, p2

    iget v14, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit16 v14, v14, 0x200

    if-nez v14, :cond_86

    .line 716
    const-string v14, "flags"

    move-object/from16 v0, p2

    iget v15, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    or-int/lit16 v15, v15, 0x200

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 720
    :cond_86
    sget-object v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v14, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    .line 721
    .local v13, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v14, v13, v8, v15, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 723
    .end local v3           #attachmentId:J
    .end local v5           #contentUriString:Ljava/lang/String;
    .end local v6           #copySize:J
    .end local v8           #cv:Landroid/content/ContentValues;
    .end local v9           #in:Ljava/io/InputStream;
    .end local v10           #out:Ljava/io/FileOutputStream;
    .end local v11           #saveAs:Ljava/io/File;
    .end local v12           #saveIn:Ljava/io/File;
    .end local v13           #uri:Landroid/net/Uri;
    :cond_98
    return-void
.end method

.method static stringNotEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v0, 0x0

    .line 666
    if-nez p0, :cond_6

    if-nez p1, :cond_6

    .line 672
    :cond_5
    :goto_5
    return v0

    .line 668
    :cond_6
    if-nez p0, :cond_a

    .line 669
    const-string p0, ""

    .line 670
    :cond_a
    if-nez p1, :cond_e

    .line 671
    const-string p1, ""

    .line 672
    :cond_e
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public static updateAttachments(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .registers 12
    .parameter "context"
    .parameter "localMessage"
    .parameter
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/emailcommon/provider/EmailContent$Message;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Part;",
            ">;",
            "Lcom/android/emailcommon/provider/EmailContent$Account;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 472
    .local p2, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    const/4 v7, 0x0

    iput-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 473
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_7
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_51

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/mail/Part;

    .line 474
    .local v1, attachmentPart:Lcom/android/emailcommon/mail/Part;
    invoke-interface {v1}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/emailcommon/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 475
    .local v3, contentType:Ljava/lang/String;
    const-string v7, "name"

    invoke-static {v3, v7}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 476
    .local v6, name:Ljava/lang/String;
    if-nez v6, :cond_31

    .line 477
    invoke-interface {v1}, Lcom/android/emailcommon/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/emailcommon/internet/MimeUtility;->unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 479
    .local v2, contentDisposition:Ljava/lang/String;
    const-string v7, "filename"

    invoke-static {v2, v7}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 482
    .end local v2           #contentDisposition:Ljava/lang/String;
    :cond_31
    const/4 v5, 0x0

    .line 483
    .local v5, mimeType:Ljava/lang/String;
    const/4 v0, 0x0

    .line 484
    .local v0, attContentType:Ljava/lang/String;
    invoke-interface {v1}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v5

    .line 485
    invoke-interface {v1}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 492
    if-nez v6, :cond_4d

    const-string v7, "(null)/(null)"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4d

    const-string v7, "(null)/(null)"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 494
    :cond_4d
    invoke-static {p0, p1, v1, p3}, Lcom/android/email/LegacyConversions;->addOneAttachment(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/mail/Part;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    goto :goto_7

    .line 496
    .end local v0           #attContentType:Ljava/lang/String;
    .end local v1           #attachmentPart:Lcom/android/emailcommon/mail/Part;
    .end local v3           #contentType:Ljava/lang/String;
    .end local v5           #mimeType:Ljava/lang/String;
    .end local v6           #name:Ljava/lang/String;
    :cond_51
    return-void
.end method

.method public static updateBodyFields(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Body;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/util/ArrayList;)Z
    .registers 26
    .parameter "context"
    .parameter "body"
    .parameter "localMessage"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/emailcommon/provider/EmailContent$Body;",
            "Lcom/android/emailcommon/provider/EmailContent$Message;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Part;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 314
    .local p3, viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent$Body;->mMessageKey:J

    .line 316
    const/4 v12, 0x0

    .line 317
    .local v12, sbHtml:Ljava/lang/StringBuffer;
    const/4 v15, 0x0

    .line 318
    .local v15, sbText:Ljava/lang/StringBuffer;
    const/4 v13, 0x0

    .line 319
    .local v13, sbHtmlReply:Ljava/lang/StringBuffer;
    const/16 v16, 0x0

    .line 320
    .local v16, sbTextReply:Ljava/lang/StringBuffer;
    const/4 v14, 0x0

    .line 322
    .local v14, sbIntroText:Ljava/lang/StringBuffer;
    const/4 v11, 0x0

    .line 324
    .local v11, sbCalendar:Ljava/lang/StringBuffer;
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_140

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/emailcommon/mail/Part;

    .line 325
    .local v18, viewable:Lcom/android/emailcommon/mail/Part;
    const/16 v17, 0x0

    .line 326
    .local v17, text:Ljava/lang/String;
    const-string v19, "X-Android-Body-Quoted-Part"

    invoke-interface/range {v18 .. v19}, Lcom/android/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 327
    .local v10, replyTags:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 328
    .local v9, replyTag:Ljava/lang/String;
    if-eqz v10, :cond_37

    array-length v0, v10

    move/from16 v19, v0

    if-lez v19, :cond_37

    .line 329
    const/16 v19, 0x0

    aget-object v9, v10, v19

    .line 333
    :cond_37
    const-string v19, "text/html"

    invoke-interface/range {v18 .. v18}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 334
    .local v5, isHtml:Z
    const-string v19, "text/calendar"

    invoke-interface/range {v18 .. v18}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    .line 337
    .local v4, isCalendar:Z
    :try_start_4b
    invoke-static/range {v18 .. v18}, Lcom/android/emailcommon/internet/MimeUtility;->getTextFromPart(Lcom/android/emailcommon/mail/Part;)Ljava/lang/String;

    move-result-object v17

    .line 338
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v19

    const/high16 v20, 0xc

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_93

    .line 339
    if-eqz v5, :cond_db

    .line 340
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v20, 0x0

    const/high16 v21, 0xc

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "<BR><BR>...<BR><BR>"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x7f080087

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "<BR>"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_92} :catch_1b5

    move-result-object v17

    .line 351
    :cond_93
    :goto_93
    if-eqz v9, :cond_124

    .line 352
    const-string v19, "quoted-reply"

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    .line 353
    .local v8, isQuotedReply:Z
    const-string v19, "quoted-forward"

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    .line 354
    .local v6, isQuotedForward:Z
    const-string v19, "quoted-intro"

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    .line 355
    .local v7, isQuotedIntro:Z
    if-nez v8, :cond_b1

    if-eqz v6, :cond_11a

    .line 356
    :cond_b1
    if-eqz v5, :cond_112

    .line 357
    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lcom/android/email/LegacyConversions;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    .line 362
    :goto_b9
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, -0x4

    move/from16 v0, v19

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 363
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    move/from16 v20, v0

    if-eqz v8, :cond_117

    const/16 v19, 0x1

    :goto_d1
    or-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    goto/16 :goto_17

    .line 344
    .end local v6           #isQuotedForward:Z
    .end local v7           #isQuotedIntro:Z
    .end local v8           #isQuotedReply:Z
    :cond_db
    :try_start_db
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v20, 0x0

    const/high16 v21, 0xc

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n\r\n\r...\n\r\n\r"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0x7f080087

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n\r"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_110} :catch_1b5

    move-result-object v17

    goto :goto_93

    .line 359
    .restart local v6       #isQuotedForward:Z
    .restart local v7       #isQuotedIntro:Z
    .restart local v8       #isQuotedReply:Z
    :cond_112
    invoke-static/range {v16 .. v17}, Lcom/android/email/LegacyConversions;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    goto :goto_b9

    .line 363
    :cond_117
    const/16 v19, 0x2

    goto :goto_d1

    .line 367
    :cond_11a
    if-eqz v7, :cond_124

    .line 368
    move-object/from16 v0, v17

    invoke-static {v14, v0}, Lcom/android/email/LegacyConversions;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    .line 369
    goto/16 :goto_17

    .line 373
    .end local v6           #isQuotedForward:Z
    .end local v7           #isQuotedIntro:Z
    .end local v8           #isQuotedReply:Z
    :cond_124
    if-eqz v5, :cond_12e

    .line 374
    move-object/from16 v0, v17

    invoke-static {v12, v0}, Lcom/android/email/LegacyConversions;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    goto/16 :goto_17

    .line 375
    :cond_12e
    if-eqz v4, :cond_138

    .line 376
    move-object/from16 v0, v17

    invoke-static {v11, v0}, Lcom/android/email/LegacyConversions;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    goto/16 :goto_17

    .line 378
    :cond_138
    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/android/email/LegacyConversions;->appendTextPart(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    goto/16 :goto_17

    .line 388
    .end local v4           #isCalendar:Z
    .end local v5           #isHtml:Z
    .end local v9           #replyTag:Ljava/lang/String;
    .end local v10           #replyTags:[Ljava/lang/String;
    .end local v17           #text:Ljava/lang/String;
    .end local v18           #viewable:Lcom/android/emailcommon/mail/Part;
    :cond_140
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_162

    .line 389
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    .line 390
    .restart local v17       #text:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    .line 391
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_162

    .line 392
    invoke-static/range {v17 .. v17}, Lcom/android/emailcommon/mail/Snippet;->fromHtmlText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    .line 395
    .end local v17           #text:Ljava/lang/String;
    :cond_162
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_17c

    .line 396
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    .line 397
    .restart local v17       #text:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    .line 398
    invoke-static/range {v17 .. v17}, Lcom/android/emailcommon/mail/Snippet;->fromPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    .line 410
    .end local v17           #text:Ljava/lang/String;
    :cond_17c
    if-eqz v13, :cond_18e

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->length()I

    move-result v19

    if-eqz v19, :cond_18e

    .line 411
    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlReply:Ljava/lang/String;

    .line 420
    :cond_18e
    if-eqz v16, :cond_1a0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->length()I

    move-result v19

    if-eqz v19, :cond_1a0

    .line 421
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextReply:Ljava/lang/String;

    .line 423
    :cond_1a0
    if-eqz v14, :cond_1b2

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->length()I

    move-result v19

    if-eqz v19, :cond_1b2

    .line 424
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Body;->mIntroText:Ljava/lang/String;

    .line 433
    :cond_1b2
    const/16 v19, 0x1

    return v19

    .line 348
    .restart local v4       #isCalendar:Z
    .restart local v5       #isHtml:Z
    .restart local v9       #replyTag:Ljava/lang/String;
    .restart local v10       #replyTags:[Ljava/lang/String;
    .restart local v17       #text:Ljava/lang/String;
    .restart local v18       #viewable:Lcom/android/emailcommon/mail/Part;
    :catch_1b5
    move-exception v19

    goto/16 :goto_93
.end method

.method public static updateMessageFields(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/mail/Message;JJI)Z
    .registers 30
    .parameter "context"
    .parameter "localMessage"
    .parameter "message"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "mailboxType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-virtual/range {p2 .. p2}, Lcom/android/emailcommon/mail/Message;->getFrom()[Lcom/android/emailcommon/mail/Address;

    move-result-object v9

    .line 118
    .local v9, from:[Lcom/android/emailcommon/mail/Address;
    sget-object v19, Lcom/android/emailcommon/mail/Message$RecipientType;->TO:Lcom/android/emailcommon/mail/Message$RecipientType;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Message;->getRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v18

    .line 119
    .local v18, to:[Lcom/android/emailcommon/mail/Address;
    sget-object v19, Lcom/android/emailcommon/mail/Message$RecipientType;->CC:Lcom/android/emailcommon/mail/Message$RecipientType;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Message;->getRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v8

    .line 120
    .local v8, cc:[Lcom/android/emailcommon/mail/Address;
    sget-object v19, Lcom/android/emailcommon/mail/Message$RecipientType;->BCC:Lcom/android/emailcommon/mail/Message$RecipientType;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Message;->getRecipients(Lcom/android/emailcommon/mail/Message$RecipientType;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v7

    .line 121
    .local v7, bcc:[Lcom/android/emailcommon/mail/Address;
    invoke-virtual/range {p2 .. p2}, Lcom/android/emailcommon/mail/Message;->getReadReceiptTo()[Lcom/android/emailcommon/mail/Address;

    move-result-object v12

    .line 122
    .local v12, readReceiptTo:[Lcom/android/emailcommon/mail/Address;
    invoke-virtual/range {p2 .. p2}, Lcom/android/emailcommon/mail/Message;->getReplyTo()[Lcom/android/emailcommon/mail/Address;

    move-result-object v14

    .line 123
    .local v14, replyTo:[Lcom/android/emailcommon/mail/Address;
    invoke-virtual/range {p2 .. p2}, Lcom/android/emailcommon/mail/Message;->getSubject()Ljava/lang/String;

    move-result-object v16

    .line 124
    .local v16, subject:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/emailcommon/mail/Message;->getInternalDate()Ljava/util/Date;

    move-result-object v10

    .line 125
    .local v10, internalDate:Ljava/util/Date;
    const/4 v13, 0x0

    .line 126
    .local v13, receiveDate:Ljava/util/Date;
    const-wide/16 v5, 0x0

    .line 127
    .local v5, aTimeStampaa:J
    invoke-virtual/range {p2 .. p2}, Lcom/android/emailcommon/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v15

    .line 129
    .local v15, sentDate:Ljava/util/Date;
    if-eqz v15, :cond_1ce

    .line 131
    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    .line 141
    :cond_3f
    :goto_3f
    const-wide/16 v19, 0x0

    cmp-long v19, v5, v19

    if-eqz v19, :cond_1e2

    .line 142
    move-object/from16 v0, p1

    iput-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    .line 147
    :goto_49
    const/16 v19, 0x4

    move/from16 v0, p7

    move/from16 v1, v19

    if-eq v0, v1, :cond_61

    const/16 v19, 0x5

    move/from16 v0, p7

    move/from16 v1, v19

    if-eq v0, v1, :cond_61

    const/16 v19, 0x3

    move/from16 v0, p7

    move/from16 v1, v19

    if-ne v0, v1, :cond_1eb

    .line 151
    :cond_61
    const-string v19, " "

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    .line 163
    :goto_69
    if-eqz v15, :cond_75

    .line 164
    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    .line 166
    :cond_75
    if-eqz v16, :cond_216

    .line 167
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 172
    :goto_7d
    sget-object v19, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    .line 173
    sget-object v19, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    .line 177
    sget-object v19, Lcom/android/emailcommon/mail/Flag;->ANSWERED:Lcom/android/emailcommon/mail/Flag;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Message;->isSet(Lcom/android/emailcommon/mail/Flag;)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagReply:Z

    .line 179
    invoke-virtual/range {p2 .. p2}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    .line 180
    if-eqz v10, :cond_c3

    .line 181
    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerTimeStamp:J

    :cond_c3
    move-object/from16 v19, p2

    .line 188
    check-cast v19, Lcom/android/emailcommon/internet/MimeMessage;

    invoke-virtual/range {v19 .. v19}, Lcom/android/emailcommon/internet/MimeMessage;->getMessageId()Ljava/lang/String;

    move-result-object v11

    .line 189
    .local v11, messageId:Ljava/lang/String;
    if-eqz v11, :cond_d1

    .line 190
    move-object/from16 v0, p1

    iput-object v11, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    .line 194
    :cond_d1
    move-wide/from16 v0, p5

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 195
    move-wide/from16 v0, p3

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 197
    if-eqz v9, :cond_ee

    array-length v0, v9

    move/from16 v19, v0

    if-lez v19, :cond_ee

    .line 198
    invoke-static {v9}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    .line 201
    :cond_ee
    invoke-static/range {v18 .. v18}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    .line 202
    invoke-static {v8}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    .line 203
    invoke-static {v7}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    .line 204
    invoke-static {v14}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    .line 207
    const/16 v19, 0x4

    move/from16 v0, p7

    move/from16 v1, v19

    if-eq v0, v1, :cond_12e

    const/16 v19, 0x5

    move/from16 v0, p7

    move/from16 v1, v19

    if-eq v0, v1, :cond_12e

    const/16 v19, 0x3

    move/from16 v0, p7

    move/from16 v1, v19

    if-ne v0, v1, :cond_159

    .line 209
    :cond_12e
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/android/email/EmailUtility;->makeDisplayName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    .line 211
    const-string v19, "Email"

    const-string v20, "*****[toma_naver] localMessage.mDisplayName for outbox, sentbox, draft"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_159
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_185

    .line 219
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_17d

    const-string v19, ""

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_21f

    .line 220
    :cond_17d
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 258
    :cond_185
    :goto_185
    invoke-virtual/range {p2 .. p2}, Lcom/android/emailcommon/mail/Message;->getImportance()Ljava/lang/String;

    move-result-object v17

    .line 260
    .local v17, tempHeader:Ljava/lang/String;
    const-string v19, "high"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1a1

    const-string v19, "High"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_247

    .line 261
    :cond_1a1
    const/16 v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mImportance:I

    .line 272
    :goto_1a9
    invoke-static {v12}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v4

    .line 274
    .local v4, ReceiptTo:Ljava/lang/String;
    if-eqz v4, :cond_1cb

    const-string v19, ""

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1cb

    .line 275
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    move/from16 v19, v0

    move/from16 v0, v19

    or-int/lit16 v0, v0, 0x800

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 304
    :cond_1cb
    const/16 v19, 0x1

    return v19

    .line 133
    .end local v4           #ReceiptTo:Ljava/lang/String;
    .end local v11           #messageId:Ljava/lang/String;
    .end local v17           #tempHeader:Ljava/lang/String;
    :cond_1ce
    invoke-virtual/range {p2 .. p2}, Lcom/android/emailcommon/mail/Message;->getReceivedDate()Ljava/util/Date;

    move-result-object v13

    .line 134
    if-eqz v10, :cond_1da

    .line 135
    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    goto/16 :goto_3f

    .line 136
    :cond_1da
    if-eqz v13, :cond_3f

    .line 137
    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    goto/16 :goto_3f

    .line 144
    :cond_1e2
    const-string v19, "Email"

    const-string v20, "*****[toma_naver] localMessage.mTimeStamp = null "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_49

    .line 153
    :cond_1eb
    if-eqz v9, :cond_20d

    array-length v0, v9

    move/from16 v19, v0

    if-lez v19, :cond_20d

    .line 155
    const/16 v19, 0x0

    aget-object v19, v9, v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/emailcommon/mail/Address;->pack()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/email/util/EmailAddressCacheProcessor;->addFromAddressToCache(Ljava/lang/String;)V

    .line 157
    const/16 v19, 0x0

    aget-object v19, v9, v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/emailcommon/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    goto/16 :goto_69

    .line 159
    :cond_20d
    const-string v19, "Email"

    const-string v20, "*****[toma_naver] localMessage.mDisplayName null "

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_69

    .line 169
    :cond_216
    const-string v19, "Email"

    const-string v20, "*****[toma_naver] localMessage.mSubject == null"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7d

    .line 225
    .restart local v11       #messageId:Ljava/lang/String;
    :cond_21f
    invoke-static/range {p3 .. p4}, Lcom/android/email/adapter/ProtocolAdapter;->isPopAccount(J)Z

    move-result v19

    if-eqz v19, :cond_22f

    .line 226
    const/16 v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    goto/16 :goto_185

    .line 227
    :cond_22f
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_185

    .line 231
    const/16 v19, 0x4

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    goto/16 :goto_185

    .line 262
    .restart local v17       #tempHeader:Ljava/lang/String;
    :cond_247
    const-string v19, "low"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_25f

    const-string v19, "Low"

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_269

    .line 263
    :cond_25f
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mImportance:I

    goto/16 :goto_1a9

    .line 265
    :cond_269
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mImportance:I

    goto/16 :goto_1a9
.end method
