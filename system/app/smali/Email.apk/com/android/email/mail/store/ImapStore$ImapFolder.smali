.class Lcom/android/email/mail/store/ImapStore$ImapFolder;
.super Lcom/android/emailcommon/mail/Folder;
.source "ImapStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/mail/store/ImapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImapFolder"
.end annotation


# instance fields
.field protected mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

.field private mDelimiter:I

.field protected mExists:Z

.field protected mMessageCount:I

.field protected mMode:Lcom/android/emailcommon/mail/Folder$OpenMode;

.field protected mName:Ljava/lang/String;

.field private mSelect:Z

.field protected final mStore:Lcom/android/email/mail/store/ImapStore;


# direct methods
.method constructor <init>(Lcom/android/email/mail/store/ImapStore;Ljava/lang/String;)V
    .registers 4
    .parameter "store"
    .parameter "name"

    .prologue
    .line 746
    invoke-direct {p0}, Lcom/android/emailcommon/mail/Folder;-><init>()V

    .line 732
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMessageCount:I

    .line 742
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mSelect:Z

    .line 744
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mDelimiter:I

    .line 747
    iput-object p1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    .line 748
    iput-object p2, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    .line 749
    return-void
.end method

.method private checkOpen()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1907
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->isOpen()Z

    move-result v0

    if-nez v0, :cond_27

    .line 1908
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Folder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not open."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1910
    :cond_27
    return-void
.end method

.method private decodeBody(Ljava/io/InputStream;Ljava/lang/String;ILcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)Lcom/android/emailcommon/mail/Body;
    .registers 18
    .parameter "in"
    .parameter "contentTransferEncoding"
    .parameter "size"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1496
    invoke-static {p1, p2}, Lcom/android/emailcommon/internet/MimeUtility;->getInputStreamForContentTransferEncoding(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 1497
    new-instance v9, Lcom/android/emailcommon/internet/BinaryTempFileBody;

    invoke-direct {v9}, Lcom/android/emailcommon/internet/BinaryTempFileBody;-><init>()V

    .line 1498
    .local v9, tempBody:Lcom/android/emailcommon/internet/BinaryTempFileBody;
    invoke-virtual {v9}, Lcom/android/emailcommon/internet/BinaryTempFileBody;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    .line 1500
    .local v6, out:Ljava/io/OutputStream;
    const/16 v11, 0x4000

    :try_start_f
    new-array v2, v11, [B

    .line 1501
    .local v2, buffer:[B
    const/4 v5, 0x0

    .line 1502
    .local v5, n:I
    const/4 v4, 0x0

    .line 1503
    .local v4, count:I
    const/4 v7, 0x0

    .line 1504
    .local v7, progress:I
    const/4 v8, 0x0

    .line 1505
    .local v8, temp:I
    invoke-static {}, Lcom/android/email/Controller;->getInstance()Lcom/android/email/Controller;

    move-result-object v3

    .line 1507
    .local v3, controller:Lcom/android/email/Controller;
    :cond_19
    :goto_19
    const/4 v11, -0x1

    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-eq v11, v5, :cond_a3

    .line 1508
    const/4 v11, 0x0

    invoke-virtual {v6, v2, v11, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 1509
    add-int/2addr v4, v5

    .line 1511
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseNewDownloadProgress()Z

    move-result v11

    if-eqz v11, :cond_90

    .line 1512
    if-eqz v3, :cond_73

    invoke-virtual {v3}, Lcom/android/email/Controller;->IsAttachdownstop()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_73

    .line 1513
    const-string v11, "Email:ImapStore"

    const-string v12, "Attachmentdownload is cancelled in decodeBody"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    invoke-virtual {v3}, Lcom/android/email/Controller;->IsAttachdownAllStop()Z

    move-result v11

    if-nez v11, :cond_45

    .line 1518
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Lcom/android/email/Controller;->SetAttachdownstop(Z)V

    .line 1520
    :cond_45
    new-instance v11, Ljava/io/IOException;

    const-string v12, "ATTACHMENT_DOWNLOAD_CANCEL"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_4d
    .catchall {:try_start_f .. :try_end_4d} :catchall_88
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_4d} :catch_4d

    .line 1544
    .end local v2           #buffer:[B
    .end local v3           #controller:Lcom/android/email/Controller;
    .end local v4           #count:I
    .end local v5           #n:I
    .end local v7           #progress:I
    .end local v8           #temp:I
    :catch_4d
    move-exception v1

    .line 1545
    .local v1, bde:Ljava/lang/Exception;
    :try_start_4e
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\n\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/android/email/activity/ActivityResourceInterface;->getMessageDecodeErrorString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1546
    .local v10, warning:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/io/OutputStream;->write([B)V
    :try_end_6c
    .catchall {:try_start_4e .. :try_end_6c} :catchall_88

    .line 1548
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 1549
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 1551
    .end local v1           #bde:Ljava/lang/Exception;
    .end local v10           #warning:Ljava/lang/String;
    :goto_72
    return-object v9

    .line 1523
    .restart local v2       #buffer:[B
    .restart local v3       #controller:Lcom/android/email/Controller;
    .restart local v4       #count:I
    .restart local v5       #n:I
    .restart local v7       #progress:I
    .restart local v8       #temp:I
    :cond_73
    if-eqz p4, :cond_19

    .line 1525
    mul-int/lit8 v11, v4, 0x64

    :try_start_77
    div-int v8, v11, p3

    .line 1527
    if-eq v8, v7, :cond_19

    const/16 v11, 0x64

    if-ge v8, v11, :cond_19

    .line 1528
    move v7, v8

    .line 1529
    sget-object v11, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;->DECODEBODY:Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;

    move-object/from16 v0, p4

    invoke-interface {v0, v7, v11}, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;->loadAttachmentProgress(ILcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;)V
    :try_end_87
    .catchall {:try_start_77 .. :try_end_87} :catchall_88
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_87} :catch_4d

    goto :goto_19

    .line 1548
    .end local v2           #buffer:[B
    .end local v3           #controller:Lcom/android/email/Controller;
    .end local v4           #count:I
    .end local v5           #n:I
    .end local v7           #progress:I
    .end local v8           #temp:I
    :catchall_88
    move-exception v11

    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 1549
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    throw v11

    .line 1534
    .restart local v2       #buffer:[B
    .restart local v3       #controller:Lcom/android/email/Controller;
    .restart local v4       #count:I
    .restart local v5       #n:I
    .restart local v7       #progress:I
    .restart local v8       #temp:I
    :cond_90
    if-eqz p4, :cond_19

    .line 1535
    mul-int/lit8 v11, v4, 0x64

    :try_start_94
    div-int v8, v11, p3

    .line 1536
    const/16 v11, 0x64

    if-ge v8, v11, :cond_19

    .line 1537
    sget-object v11, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;->BASE:Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;

    move-object/from16 v0, p4

    invoke-interface {v0, v8, v11}, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;->loadAttachmentProgress(ILcom/android/emailcommon/mail/Folder$MessageRetrievalListener$DOWNLOAD_STATUS;)V
    :try_end_a1
    .catchall {:try_start_94 .. :try_end_a1} :catchall_88
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_a1} :catch_4d

    goto/16 :goto_19

    .line 1548
    :cond_a3
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 1549
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    goto :goto_72
.end method

.method private handleUntaggedResponse(Lcom/android/email/mail/store/imap/ImapResponse;)V
    .registers 4
    .parameter "response"

    .prologue
    .line 1578
    const/4 v0, 0x1

    const-string v1, "EXISTS"

    invoke-virtual {p1, v0, v1}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1579
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapString;->getNumberOrZero()I

    move-result v0

    iput v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMessageCount:I

    .line 1581
    :cond_14
    return-void
.end method

.method private handleUntaggedResponses(Ljava/util/List;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/email/mail/store/imap/ImapResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1566
    .local p1, responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 1567
    .local v1, response:Lcom/android/email/mail/store/imap/ImapResponse;
    invoke-direct {p0, v1}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->handleUntaggedResponse(Lcom/android/email/mail/store/imap/ImapResponse;)V

    goto :goto_4

    .line 1569
    .end local v1           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_14
    return-void
.end method

.method private static parseBodyStructure(Lcom/android/email/mail/store/imap/ImapList;Lcom/android/emailcommon/mail/Part;Ljava/lang/String;)V
    .registers 27
    .parameter "bs"
    .parameter "part"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1585
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getElementOrNone(I)Lcom/android/email/mail/store/imap/ImapElement;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/email/mail/store/imap/ImapElement;->isList()Z

    move-result v20

    if-eqz v20, :cond_a2

    .line 1589
    new-instance v16, Lcom/android/emailcommon/internet/MimeMultipart;

    invoke-direct/range {v16 .. v16}, Lcom/android/emailcommon/internet/MimeMultipart;-><init>()V

    .line 1590
    .local v16, mp:Lcom/android/emailcommon/internet/MimeMultipart;
    const/4 v14, 0x0

    .local v14, i:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v11

    .local v11, count:I
    :goto_1a
    if-ge v14, v11, :cond_9a

    .line 1591
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/mail/store/imap/ImapList;->getElementOrNone(I)Lcom/android/email/mail/store/imap/ImapElement;

    move-result-object v12

    .line 1592
    .local v12, e:Lcom/android/email/mail/store/imap/ImapElement;
    invoke-virtual {v12}, Lcom/android/email/mail/store/imap/ImapElement;->isList()Z

    move-result v20

    if-eqz v20, :cond_7f

    .line 1597
    new-instance v7, Lcom/android/emailcommon/internet/MimeBodyPart;

    invoke-direct {v7}, Lcom/android/emailcommon/internet/MimeBodyPart;-><init>()V

    .line 1598
    .local v7, bp:Lcom/android/emailcommon/internet/MimeBodyPart;
    const-string v20, "TEXT"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_54

    .line 1599
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v20

    add-int/lit8 v21, v14, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v7, v1}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->parseBodyStructure(Lcom/android/email/mail/store/imap/ImapList;Lcom/android/emailcommon/mail/Part;Ljava/lang/String;)V

    .line 1604
    :goto_4c
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/android/emailcommon/internet/MimeMultipart;->addBodyPart(Lcom/android/emailcommon/mail/BodyPart;)V

    .line 1590
    add-int/lit8 v14, v14, 0x1

    goto :goto_1a

    .line 1602
    :cond_54
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    add-int/lit8 v22, v14, 0x1

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v7, v1}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->parseBodyStructure(Lcom/android/email/mail/store/imap/ImapList;Lcom/android/emailcommon/mail/Part;Ljava/lang/String;)V

    goto :goto_4c

    .line 1607
    .end local v7           #bp:Lcom/android/emailcommon/internet/MimeBodyPart;
    :cond_7f
    invoke-virtual {v12}, Lcom/android/email/mail/store/imap/ImapElement;->isString()Z

    move-result v20

    if-eqz v20, :cond_9a

    .line 1608
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/internet/MimeMultipart;->setSubType(Ljava/lang/String;)V

    .line 1613
    .end local v12           #e:Lcom/android/email/mail/store/imap/ImapElement;
    :cond_9a
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/android/emailcommon/mail/Part;->setBody(Lcom/android/emailcommon/mail/Body;)V

    .line 1766
    .end local v11           #count:I
    .end local v14           #i:I
    .end local v16           #mp:Lcom/android/emailcommon/internet/MimeMultipart;
    :goto_a1
    return-void

    .line 1624
    :cond_a2
    const/4 v3, 0x0

    .line 1625
    .local v3, bodyDisposition:Lcom/android/email/mail/store/imap/ImapList;
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v19

    .line 1626
    .local v19, type:Lcom/android/email/mail/store/imap/ImapString;
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v18

    .line 1627
    .local v18, subType:Lcom/android/email/mail/store/imap/ImapString;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v19 .. v19}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v18 .. v18}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    .line 1630
    .local v15, mimeType:Ljava/lang/String;
    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v6

    .line 1631
    .local v6, bodyParams:Lcom/android/email/mail/store/imap/ImapList;
    const/16 v20, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v8

    .line 1632
    .local v8, cid:Lcom/android/email/mail/store/imap/ImapString;
    const/16 v20, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v13

    .line 1633
    .local v13, encoding:Lcom/android/email/mail/store/imap/ImapString;
    const/16 v20, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/email/mail/store/imap/ImapString;->getNumberOrZero()I

    move-result v17

    .line 1661
    .local v17, size:I
    :try_start_106
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1667
    .local v10, contentType:Ljava/lang/StringBuilder;
    const/4 v14, 0x1

    .restart local v14       #i:I
    invoke-virtual {v6}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v11

    .restart local v11       #count:I
    :goto_110
    if-ge v14, v11, :cond_144

    .line 1674
    const-string v20, ";\n %s=\"%s\""

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    add-int/lit8 v23, v14, -0x1

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    invoke-virtual {v6, v14}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1667
    add-int/lit8 v14, v14, 0x2

    goto :goto_110

    .line 1679
    :cond_144
    const-string v20, "Content-Type"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/android/emailcommon/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1683
    const-string v20, "TEXT"

    invoke-virtual/range {v19 .. v20}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1e4

    const/16 v20, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getElementOrNone(I)Lcom/android/email/mail/store/imap/ImapElement;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/email/mail/store/imap/ImapElement;->isList()Z

    move-result v20

    if-eqz v20, :cond_1e4

    .line 1690
    const/16 v20, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;
    :try_end_174
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_106 .. :try_end_174} :catch_1ef

    move-result-object v3

    .line 1698
    .end local v10           #contentType:Ljava/lang/StringBuilder;
    .end local v11           #count:I
    .end local v14           #i:I
    :goto_175
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1700
    .local v9, contentDisposition:Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v20

    if-lez v20, :cond_20e

    .line 1701
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 1703
    .local v4, bodyDisposition0Str:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_199

    .line 1704
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1707
    :cond_199
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v5

    .line 1708
    .local v5, bodyDispositionParams:Lcom/android/email/mail/store/imap/ImapList;
    invoke-virtual {v5}, Lcom/android/email/mail/store/imap/ImapList;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_20e

    .line 1713
    const/4 v14, 0x1

    .restart local v14       #i:I
    invoke-virtual {v5}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v11

    .restart local v11       #count:I
    :goto_1ac
    if-ge v14, v11, :cond_20e

    .line 1716
    const-string v20, ";\n %s=\"%s\""

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    add-int/lit8 v23, v14, -0x1

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    invoke-virtual {v5, v14}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1713
    add-int/lit8 v14, v14, 0x2

    goto :goto_1ac

    .line 1692
    .end local v4           #bodyDisposition0Str:Ljava/lang/String;
    .end local v5           #bodyDispositionParams:Lcom/android/email/mail/store/imap/ImapList;
    .end local v9           #contentDisposition:Ljava/lang/StringBuilder;
    .restart local v10       #contentType:Ljava/lang/StringBuilder;
    :cond_1e4
    const/16 v20, 0x8

    :try_start_1e6
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;
    :try_end_1ed
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1e6 .. :try_end_1ed} :catch_1ef

    move-result-object v3

    goto :goto_175

    .line 1694
    .end local v10           #contentType:Ljava/lang/StringBuilder;
    .end local v11           #count:I
    .end local v14           #i:I
    :catch_1ef
    move-exception v12

    .line 1695
    .local v12, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v20, "Z7App"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "!! IndexOutOfBoundsException !! bs.getsize "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_175

    .line 1724
    .end local v12           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v9       #contentDisposition:Ljava/lang/StringBuilder;
    :cond_20e
    if-lez v17, :cond_237

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const-string v21, "size"

    invoke-static/range {v20 .. v21}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_237

    .line 1726
    const-string v20, ";\n size=%d"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1729
    :cond_237
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    if-lez v20, :cond_24c

    .line 1734
    const-string v20, "Content-Disposition"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/android/emailcommon/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1742
    :cond_24c
    invoke-virtual {v13}, Lcom/android/email/mail/store/imap/ImapString;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_261

    .line 1743
    const-string v20, "Content-Transfer-Encoding"

    invoke-virtual {v13}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/android/emailcommon/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1750
    :cond_261
    invoke-virtual {v8}, Lcom/android/email/mail/store/imap/ImapString;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_276

    .line 1751
    const-string v20, "Content-ID"

    invoke-virtual {v8}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/android/emailcommon/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1754
    :cond_276
    if-lez v17, :cond_28b

    .line 1755
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/email/mail/store/ImapStore$ImapMessage;

    move/from16 v20, v0

    if-eqz v20, :cond_298

    move-object/from16 v20, p1

    .line 1756
    check-cast v20, Lcom/android/email/mail/store/ImapStore$ImapMessage;

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->setSize(I)V

    .line 1763
    :cond_28b
    :goto_28b
    const-string v20, "X-Android-Attachment-StoreData"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/android/emailcommon/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a1

    .line 1757
    :cond_298
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/emailcommon/internet/MimeBodyPart;

    move/from16 v20, v0

    if-eqz v20, :cond_2ac

    move-object/from16 v20, p1

    .line 1758
    check-cast v20, Lcom/android/emailcommon/internet/MimeBodyPart;

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/internet/MimeBodyPart;->setSize(I)V

    goto :goto_28b

    .line 1760
    :cond_2ac
    new-instance v20, Lcom/android/emailcommon/mail/MessagingException;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unknown part type "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v20
.end method


# virtual methods
.method public appendMessages([Lcom/android/emailcommon/mail/Message;)V
    .registers 15
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x3

    const/4 v2, 0x0

    .line 1775
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->checkOpen()V

    .line 1777
    :try_start_5
    array-length v4, p1

    move v3, v2

    :goto_7
    if-ge v3, v4, :cond_113

    aget-object v5, p1, v3

    .line 1779
    new-instance v6, Lcom/android/email/mail/transport/CountingOutputStream;

    invoke-direct {v6}, Lcom/android/email/mail/transport/CountingOutputStream;-><init>()V

    .line 1780
    new-instance v0, Lcom/android/email/mail/transport/EOLConvertingOutputStream;

    invoke-direct {v0, v6}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1781
    invoke-virtual {v5, v0}, Lcom/android/emailcommon/mail/Message;->writeTo(Ljava/io/OutputStream;)V

    .line 1782
    invoke-virtual {v0}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;->flush()V

    .line 1784
    const-string v0, ""

    .line 1785
    invoke-virtual {v5}, Lcom/android/emailcommon/mail/Message;->getFlags()[Lcom/android/emailcommon/mail/Flag;

    move-result-object v7

    .line 1786
    array-length v1, v7

    if-lez v1, :cond_5d

    .line 1787
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1788
    array-length v9, v7

    move v1, v2

    :goto_2b
    if-ge v1, v9, :cond_52

    .line 1789
    aget-object v10, v7, v1

    .line 1790
    sget-object v11, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    if-ne v10, v11, :cond_3b

    .line 1791
    const-string v10, " \\SEEN"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1788
    :cond_38
    :goto_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 1792
    :cond_3b
    sget-object v11, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    if-ne v10, v11, :cond_38

    .line 1793
    const-string v10, " \\FLAGGED"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_44
    .catchall {:try_start_5 .. :try_end_44} :catchall_4d
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_44} :catch_45

    goto :goto_38

    .line 1851
    :catch_45
    move-exception v0

    .line 1852
    :try_start_46
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {p0, v1, v0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v0

    throw v0
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_4d

    .line 1854
    :catchall_4d
    move-exception v0

    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    throw v0

    .line 1796
    :cond_52
    :try_start_52
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_5d

    .line 1797
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1801
    :cond_5d
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    const-string v7, "APPEND \"%s\" (%s) {%d}"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    iget-object v11, v11, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/android/email/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v0, v8, v9

    const/4 v0, 0x2

    invoke-virtual {v6}, Lcom/android/email/mail/transport/CountingOutputStream;->getCount()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v8, v0

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;

    .line 1806
    :cond_87
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->readResponse()Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v0

    .line 1807
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapResponse;->isContinuationRequest()Z

    move-result v1

    if-eqz v1, :cond_e3

    .line 1808
    new-instance v1, Lcom/android/email/mail/transport/EOLConvertingOutputStream;

    iget-object v6, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    #getter for: Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v6}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->access$000(Lcom/android/email/mail/store/ImapStore$ImapConnection;)Lcom/android/email/mail/Transport;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/email/mail/Transport;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1810
    invoke-virtual {v5, v1}, Lcom/android/emailcommon/mail/Message;->writeTo(Ljava/io/OutputStream;)V

    .line 1811
    const/16 v6, 0xd

    invoke-virtual {v1, v6}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;->write(I)V

    .line 1812
    const/16 v6, 0xa

    invoke-virtual {v1, v6}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;->write(I)V

    .line 1813
    invoke-virtual {v1}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;->flush()V

    .line 1817
    :cond_b2
    :goto_b2
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v1

    if-eqz v1, :cond_87

    .line 1826
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapResponse;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v0

    .line 1827
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v1

    if-lt v1, v12, :cond_ed

    const/4 v1, 0x0

    const-string v6, "APPENDUID"

    invoke-virtual {v0, v1, v6}, Lcom/android/email/mail/store/imap/ImapList;->is(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ed

    .line 1828
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v0

    .line 1829
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ed

    .line 1830
    invoke-virtual {v5, v0}, Lcom/android/emailcommon/mail/Message;->setUid(Ljava/lang/String;)V

    .line 1777
    :cond_de
    :goto_de
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_7

    .line 1814
    :cond_e3
    invoke-virtual {v0}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v1

    if-nez v1, :cond_b2

    .line 1815
    invoke-direct {p0, v0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->handleUntaggedResponse(Lcom/android/email/mail/store/imap/ImapResponse;)V

    goto :goto_b2

    .line 1841
    :cond_ed
    invoke-virtual {v5}, Lcom/android/emailcommon/mail/Message;->getMessageId()Ljava/lang/String;

    move-result-object v0

    .line 1842
    if-eqz v0, :cond_de

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_de

    .line 1845
    const-string v1, "(HEADER MESSAGE-ID %s)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->searchForUids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1847
    array-length v1, v0

    if-lez v1, :cond_de

    .line 1848
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v5, v0}, Lcom/android/emailcommon/mail/Message;->setUid(Ljava/lang/String;)V
    :try_end_112
    .catchall {:try_start_52 .. :try_end_112} :catchall_4d
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_112} :catch_45

    goto :goto_de

    .line 1854
    :cond_113
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    .line 1856
    return-void
.end method

.method public canCreate(Lcom/android/emailcommon/mail/Folder$FolderType;)Z
    .registers 3
    .parameter "type"

    .prologue
    .line 963
    const/4 v0, 0x1

    return v0
.end method

.method public close(Z)V
    .registers 4
    .parameter "expunge"

    .prologue
    .line 891
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMessageCount:I

    .line 892
    monitor-enter p0

    .line 893
    :try_start_4
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    .line 894
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    .line 895
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    .line 896
    monitor-exit p0

    .line 897
    return-void

    .line 896
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public close(ZZ)V
    .registers 5
    .parameter "expunge"
    .parameter "forceClose"

    .prologue
    .line 874
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMessageCount:I

    .line 875
    monitor-enter p0

    .line 876
    :try_start_4
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    .line 877
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-eqz v0, :cond_12

    .line 878
    if-eqz p2, :cond_17

    .line 879
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->close()V

    .line 884
    :cond_12
    :goto_12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    .line 885
    monitor-exit p0

    .line 886
    return-void

    .line 881
    :cond_17
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    goto :goto_12

    .line 885
    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method protected connectionExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;ILjava/lang/Exception;)Lcom/android/emailcommon/mail/MessagingException;
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1914
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 1915
    const-string v0, "Email:ImapStore"

    const-string v1, "Connection Exception detected: "

    invoke-static {v0, v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1917
    :cond_b
    invoke-virtual {p1}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 1918
    invoke-virtual {p1}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->close()V

    .line 1919
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-ne p1, v0, :cond_1c

    .line 1920
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    .line 1922
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->close(Z)V

    .line 1924
    :cond_1c
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1, p3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public copyMessages([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/Folder;Lcom/android/emailcommon/mail/Folder$MessageUpdateCallbacks;)V
    .registers 11
    .parameter "messages"
    .parameter "folder"
    .parameter "callbacks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1041
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->checkOpen()V

    .line 1043
    :try_start_3
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    const-string v2, "UID COPY %s \"%s\""

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/android/email/mail/store/ImapStore;->joinMessageUids([Lcom/android/emailcommon/mail/Message;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p2}, Lcom/android/emailcommon/mail/Folder;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    iget-object v6, v6, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/email/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_33
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_27} :catch_2b

    .line 1049
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    .line 1051
    return-void

    .line 1046
    :catch_2b
    move-exception v0

    .line 1047
    .local v0, ioe:Ljava/io/IOException;
    :try_start_2c
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {p0, v1, v0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v1

    throw v1
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_33

    .line 1049
    .end local v0           #ioe:Ljava/io/IOException;
    :catchall_33
    move-exception v1

    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    throw v1
.end method

.method public create(Lcom/android/emailcommon/mail/Folder$FolderType;)Z
    .registers 12
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 974
    const/4 v0, 0x0

    .line 975
    .local v0, connection:Lcom/android/email/mail/store/ImapStore$ImapConnection;
    monitor-enter p0

    .line 976
    :try_start_4
    iget-object v5, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v5, :cond_35

    .line 977
    iget-object v5, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v5}, Lcom/android/email/mail/store/ImapStore;->getConnection()Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-result-object v0

    .line 981
    :goto_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_38

    .line 983
    :try_start_f
    const-string v5, "CREATE \"%s\""

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    iget-object v9, v9, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/android/email/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_28
    .catchall {:try_start_f .. :try_end_28} :catchall_50
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_f .. :try_end_28} :catch_3b
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_28} :catch_4a

    .line 994
    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 995
    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v4, :cond_34

    .line 996
    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v4, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    :cond_34
    :goto_34
    return v3

    .line 979
    :cond_35
    :try_start_35
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    goto :goto_e

    .line 981
    :catchall_38
    move-exception v3

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_38

    throw v3

    .line 987
    :catch_3b
    move-exception v2

    .line 994
    .local v2, me:Lcom/android/emailcommon/mail/MessagingException;
    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 995
    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v3, :cond_48

    .line 996
    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v3, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    :cond_48
    move v3, v4

    goto :goto_34

    .line 990
    .end local v2           #me:Lcom/android/emailcommon/mail/MessagingException;
    :catch_4a
    move-exception v1

    .line 991
    .local v1, ioe:Ljava/io/IOException;
    :try_start_4b
    invoke-virtual {p0, v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v3

    throw v3
    :try_end_50
    .catchall {:try_start_4b .. :try_end_50} :catchall_50

    .line 994
    .end local v1           #ioe:Ljava/io/IOException;
    :catchall_50
    move-exception v3

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 995
    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v4, :cond_5d

    .line 996
    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v4, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    :cond_5d
    throw v3
.end method

.method public createMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;
    .registers 3
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1943
    new-instance v0, Lcom/android/email/mail/store/ImapStore$ImapMessage;

    invoke-direct {v0, p1, p0}, Lcom/android/email/mail/store/ImapStore$ImapMessage;-><init>(Ljava/lang/String;Lcom/android/emailcommon/mail/Folder;)V

    return-object v0
.end method

.method public delete(Z)Z
    .registers 12
    .parameter "recurse"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1090
    const/4 v0, 0x0

    .line 1091
    .local v0, connection:Lcom/android/email/mail/store/ImapStore$ImapConnection;
    monitor-enter p0

    .line 1092
    :try_start_4
    iget-object v5, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v5, :cond_35

    .line 1093
    iget-object v5, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v5}, Lcom/android/email/mail/store/ImapStore;->getConnection()Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-result-object v0

    .line 1097
    :goto_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_38

    .line 1099
    :try_start_f
    const-string v5, "DELETE \"%s\""

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    iget-object v9, v9, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/android/email/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_28
    .catchall {:try_start_f .. :try_end_28} :catchall_50
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_f .. :try_end_28} :catch_3b
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_28} :catch_4a

    .line 1107
    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 1108
    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v4, :cond_34

    .line 1109
    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v4, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    :cond_34
    :goto_34
    return v3

    .line 1095
    :cond_35
    :try_start_35
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    goto :goto_e

    .line 1097
    :catchall_38
    move-exception v3

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_38

    throw v3

    .line 1102
    :catch_3b
    move-exception v2

    .line 1107
    .local v2, me:Lcom/android/emailcommon/mail/MessagingException;
    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 1108
    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v3, :cond_48

    .line 1109
    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v3, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    :cond_48
    move v3, v4

    goto :goto_34

    .line 1104
    .end local v2           #me:Lcom/android/emailcommon/mail/MessagingException;
    :catch_4a
    move-exception v1

    .line 1105
    .local v1, ioe:Ljava/io/IOException;
    :try_start_4b
    invoke-virtual {p0, v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v3

    throw v3
    :try_end_50
    .catchall {:try_start_4b .. :try_end_50} :catchall_50

    .line 1107
    .end local v1           #ioe:Ljava/io/IOException;
    :catchall_50
    move-exception v3

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 1108
    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v4, :cond_5d

    .line 1109
    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v4, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    :cond_5d
    throw v3
.end method

.method protected destroyResponses()V
    .registers 2

    .prologue
    .line 753
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-eqz v0, :cond_9

    .line 754
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 756
    :cond_9
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "o"

    .prologue
    .line 1935
    instance-of v0, p1, Lcom/android/email/mail/store/ImapStore$ImapFolder;

    if-eqz v0, :cond_f

    .line 1936
    check-cast p1, Lcom/android/email/mail/store/ImapStore$ImapFolder;

    .end local p1
    iget-object v0, p1, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1938
    :goto_e
    return v0

    .restart local p1
    :cond_f
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_e
.end method

.method public exists()Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 922
    iget-boolean v5, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mExists:Z

    if-eqz v5, :cond_7

    .line 955
    :cond_6
    :goto_6
    return v3

    .line 931
    :cond_7
    const/4 v0, 0x0

    .line 932
    .local v0, connection:Lcom/android/email/mail/store/ImapStore$ImapConnection;
    monitor-enter p0

    .line 933
    :try_start_9
    iget-object v5, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v5, :cond_3d

    .line 934
    iget-object v5, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v5}, Lcom/android/email/mail/store/ImapStore;->getConnection()Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-result-object v0

    .line 938
    :goto_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_40

    .line 940
    :try_start_14
    const-string v5, "STATUS \"%s\" (UIDVALIDITY)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    iget-object v9, v9, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/android/email/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    .line 943
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mExists:Z
    :try_end_30
    .catchall {:try_start_14 .. :try_end_30} :catchall_58
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_14 .. :try_end_30} :catch_43
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_30} :catch_52

    .line 953
    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 954
    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v4, :cond_6

    .line 955
    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v4, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    goto :goto_6

    .line 936
    :cond_3d
    :try_start_3d
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    goto :goto_13

    .line 938
    :catchall_40
    move-exception v3

    monitor-exit p0
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_40

    throw v3

    .line 946
    :catch_43
    move-exception v2

    .line 953
    .local v2, me:Lcom/android/emailcommon/mail/MessagingException;
    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 954
    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v3, :cond_50

    .line 955
    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v3, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    :cond_50
    move v3, v4

    goto :goto_6

    .line 949
    .end local v2           #me:Lcom/android/emailcommon/mail/MessagingException;
    :catch_52
    move-exception v1

    .line 950
    .local v1, ioe:Ljava/io/IOException;
    :try_start_53
    invoke-virtual {p0, v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v3

    throw v3
    :try_end_58
    .catchall {:try_start_53 .. :try_end_58} :catchall_58

    .line 953
    .end local v1           #ioe:Ljava/io/IOException;
    :catchall_58
    move-exception v3

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 954
    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v4, :cond_65

    .line 955
    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v4, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    :cond_65
    throw v3
.end method

.method public expunge()[Lcom/android/emailcommon/mail/Message;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1860
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->checkOpen()V

    .line 1862
    :try_start_3
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    const-string v1, "EXPUNGE"

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->handleUntaggedResponses(Ljava/util/List;)V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_1b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_e} :catch_13

    .line 1866
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    .line 1868
    const/4 v0, 0x0

    return-object v0

    .line 1863
    :catch_13
    move-exception v0

    .line 1864
    :try_start_14
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {p0, v1, v0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v0

    throw v0
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_1b

    .line 1866
    :catchall_1b
    move-exception v0

    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    throw v0
.end method

.method public fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V
    .registers 8
    .parameter "messages"
    .parameter "fp"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1250
    const/4 v1, -0x1

    :try_start_1
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->fetchInternal([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;I)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_4} :catch_5

    .line 1258
    return-void

    .line 1251
    :catch_5
    move-exception v0

    .line 1252
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception detected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-eqz v1, :cond_2b

    .line 1254
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {v1}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->logLastDiscourse()V

    .line 1256
    :cond_2b
    throw v0
.end method

.method public fetchInternal([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;I)V
    .registers 44
    .parameter "messages"
    .parameter "fp"
    .parameter "listener"
    .parameter "retrieveSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1279
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v33, v0

    if-nez v33, :cond_8

    .line 1487
    :goto_7
    return-void

    .line 1283
    :cond_8
    invoke-static {}, Lcom/android/email/Controller;->getInstance()Lcom/android/email/Controller;

    move-result-object v10

    .line 1284
    .local v10, controller:Lcom/android/email/Controller;
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseNewDownloadProgress()Z

    move-result v33

    if-eqz v33, :cond_28

    .line 1285
    if-eqz v10, :cond_28

    invoke-virtual {v10}, Lcom/android/email/Controller;->IsAttachdownstop()Z

    move-result v33

    const/16 v34, 0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_28

    .line 1286
    const-string v33, "Email"

    const-string v34, "Attachmentdownload is cancelled in fetchInternal "

    invoke-static/range {v33 .. v34}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 1291
    :cond_28
    invoke-direct/range {p0 .. p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->checkOpen()V

    .line 1292
    new-instance v26, Ljava/util/HashMap;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    .line 1293
    .local v26, messageMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/emailcommon/mail/Message;>;"
    move-object/from16 v4, p1

    .local v4, arr$:[Lcom/android/emailcommon/mail/Message;
    array-length v0, v4

    move/from16 v23, v0

    .local v23, len$:I
    const/16 v19, 0x0

    .local v19, i$:I
    :goto_37
    move/from16 v0, v19

    move/from16 v1, v23

    if-ge v0, v1, :cond_4f

    aget-object v24, v4, v19

    .line 1294
    .local v24, m:Lcom/android/emailcommon/mail/Message;
    invoke-virtual/range {v24 .. v24}, Lcom/android/emailcommon/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v26

    move-object/from16 v1, v33

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1293
    add-int/lit8 v19, v19, 0x1

    goto :goto_37

    .line 1307
    .end local v24           #m:Lcom/android/emailcommon/mail/Message;
    :cond_4f
    new-instance v13, Ljava/util/LinkedHashSet;

    invoke-direct {v13}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1309
    .local v13, fetchFields:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    const-string v33, "UID"

    move-object/from16 v0, v33

    invoke-virtual {v13, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1310
    sget-object v33, Lcom/android/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_6e

    .line 1311
    const-string v33, "FLAGS"

    move-object/from16 v0, v33

    invoke-virtual {v13, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1313
    :cond_6e
    sget-object v33, Lcom/android/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_8f

    .line 1314
    const-string v33, "INTERNALDATE"

    move-object/from16 v0, v33

    invoke-virtual {v13, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1315
    const-string v33, "RFC822.SIZE"

    move-object/from16 v0, v33

    invoke-virtual {v13, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1316
    const-string v33, "BODY.PEEK[HEADER.FIELDS (date subject from content-type to cc message-id disposition-notification-to)]"

    move-object/from16 v0, v33

    invoke-virtual {v13, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1318
    :cond_8f
    sget-object v33, Lcom/android/emailcommon/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_a2

    .line 1319
    const-string v33, "BODYSTRUCTURE"

    move-object/from16 v0, v33

    invoke-virtual {v13, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1322
    :cond_a2
    invoke-virtual/range {p2 .. p2}, Lcom/android/emailcommon/mail/FetchProfile;->getFirstPart()Lcom/android/emailcommon/mail/Part;

    move-result-object v15

    .line 1323
    .local v15, fetchPart:Lcom/android/emailcommon/mail/Part;
    if-eqz v15, :cond_189

    .line 1324
    const-string v33, "X-Android-Attachment-StoreData"

    move-object/from16 v0, v33

    invoke-interface {v15, v0}, Lcom/android/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 1326
    .local v28, partIds:[Ljava/lang/String;
    new-instance v30, Ljava/lang/StringBuffer;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuffer;-><init>()V

    .line 1327
    .local v30, sbuf:Ljava/lang/StringBuffer;
    if-eqz v28, :cond_d4

    .line 1328
    const-string v33, "BODY.PEEK"

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, "["

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    const/16 v34, 0x0

    aget-object v34, v28, v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, "]"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1333
    :cond_d4
    sget-object v33, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_ef

    .line 1334
    invoke-interface {v15}, Lcom/android/emailcommon/mail/Part;->getSize()I

    move-result v33

    if-nez v33, :cond_166

    .line 1335
    sget-object v33, Lcom/android/email/mail/store/imap/ImapConstants;->FETCH_FIELD_PART_SANE:Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1340
    :cond_ef
    :goto_ef
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v13, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1365
    .end local v28           #partIds:[Ljava/lang/String;
    .end local v30           #sbuf:Ljava/lang/StringBuffer;
    :cond_f8
    :goto_f8
    :try_start_f8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-object/from16 v33, v0

    const-string v34, "UID FETCH %s (%s)"

    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-static/range {p1 .. p1}, Lcom/android/email/mail/store/ImapStore;->joinMessageUids([Lcom/android/emailcommon/mail/Message;)Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    const/16 v36, 0x1

    invoke-virtual {v13}, Ljava/util/LinkedHashSet;->size()I

    move-result v37

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v13, v0}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v37

    const/16 v38, 0x20

    invoke-static/range {v37 .. v38}, Lcom/android/emailcommon/utility/Utility;->combine([Ljava/lang/Object;C)Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    invoke-static/range {v34 .. v35}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    const/16 v35, 0x0

    invoke-virtual/range {v33 .. v35}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->sendCommand(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_133
    .catch Ljava/io/IOException; {:try_start_f8 .. :try_end_133} :catch_233

    .line 1370
    const/16 v27, 0x0

    .line 1372
    .local v27, messageNumber:I
    :cond_135
    const/16 v29, 0x0

    .line 1374
    .local v29, response:Lcom/android/email/mail/store/imap/ImapResponse;
    :try_start_137
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseNewDownloadProgress()Z

    move-result v33

    if-eqz v33, :cond_206

    .line 1375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->readResponse(Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v29

    .line 1380
    :goto_14b
    const/16 v33, 0x1

    const-string v34, "FETCH"

    move-object/from16 v0, v29

    move/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z
    :try_end_158
    .catchall {:try_start_137 .. :try_end_158} :catchall_2ae

    move-result v33

    if-nez v33, :cond_212

    .line 1481
    :try_start_15b
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    .line 1483
    :goto_15e
    invoke-virtual/range {v29 .. v29}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z
    :try_end_161
    .catch Ljava/io/IOException; {:try_start_15b .. :try_end_161} :catch_233

    move-result v33

    if-eqz v33, :cond_135

    goto/16 :goto_7

    .line 1337
    .end local v27           #messageNumber:I
    .end local v29           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .restart local v28       #partIds:[Ljava/lang/String;
    .restart local v30       #sbuf:Ljava/lang/StringBuffer;
    :cond_166
    const-string v33, "<0.%d>"

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-interface {v15}, Lcom/android/emailcommon/mail/Part;->getSize()I

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    aput-object v36, v34, v35

    invoke-static/range {v33 .. v34}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_ef

    .line 1341
    .end local v28           #partIds:[Ljava/lang/String;
    .end local v30           #sbuf:Ljava/lang/StringBuffer;
    :cond_189
    sget-object v33, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_1f1

    .line 1342
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseRetrievesize()Z

    move-result v33

    if-eqz v33, :cond_1e8

    .line 1343
    sget-boolean v33, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v33, :cond_1bb

    .line 1344
    const-string v33, "Email"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "ImapStore : fetchInternal, retrieveSize = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    :cond_1bb
    if-gez p4, :cond_1c6

    .line 1348
    sget-object v33, Lcom/android/email/mail/store/imap/ImapConstants;->FETCH_FIELD_BODY_PEEK_SANE:Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-virtual {v13, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f8

    .line 1350
    :cond_1c6
    new-instance v3, Ljava/lang/String;

    const-string v33, "BODY.PEEK[]<0.%d>"

    const/16 v34, 0x1

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    aput-object v36, v34, v35

    invoke-static/range {v33 .. v34}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1355
    .local v3, FetchFieldBodyPeekSane:Ljava/lang/String;
    invoke-virtual {v13, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f8

    .line 1358
    .end local v3           #FetchFieldBodyPeekSane:Ljava/lang/String;
    :cond_1e8
    sget-object v33, Lcom/android/email/mail/store/imap/ImapConstants;->FETCH_FIELD_BODY_PEEK_SANE:Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-virtual {v13, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f8

    .line 1360
    :cond_1f1
    sget-object v33, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_f8

    .line 1361
    const-string v33, "BODY.PEEK[]"

    move-object/from16 v0, v33

    invoke-virtual {v13, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f8

    .line 1377
    .restart local v27       #messageNumber:I
    .restart local v29       #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_206
    :try_start_206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->readResponse()Lcom/android/email/mail/store/imap/ImapResponse;

    move-result-object v29

    goto/16 :goto_14b

    .line 1383
    :cond_212
    const/16 v33, 0x2

    move-object/from16 v0, v29

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapResponse;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v14

    .line 1384
    .local v14, fetchList:Lcom/android/email/mail/store/imap/ImapList;
    const-string v33, "UID"

    move-object/from16 v0, v33

    invoke-virtual {v14, v0}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v32

    .line 1386
    .local v32, uid:Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_22b
    .catchall {:try_start_206 .. :try_end_22b} :catchall_2ae

    move-result v33

    if-eqz v33, :cond_245

    .line 1481
    :try_start_22e
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V
    :try_end_231
    .catch Ljava/io/IOException; {:try_start_22e .. :try_end_231} :catch_233

    goto/16 :goto_15e

    .line 1484
    .end local v14           #fetchList:Lcom/android/email/mail/store/imap/ImapList;
    .end local v27           #messageNumber:I
    .end local v29           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .end local v32           #uid:Ljava/lang/String;
    :catch_233
    move-exception v22

    .line 1485
    .local v22, ioe:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v33

    throw v33

    .line 1389
    .end local v22           #ioe:Ljava/io/IOException;
    .restart local v14       #fetchList:Lcom/android/email/mail/store/imap/ImapList;
    .restart local v27       #messageNumber:I
    .restart local v29       #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .restart local v32       #uid:Ljava/lang/String;
    :cond_245
    :try_start_245
    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/email/mail/store/ImapStore$ImapMessage;
    :try_end_24f
    .catchall {:try_start_245 .. :try_end_24f} :catchall_2ae

    .line 1390
    .local v25, message:Lcom/android/email/mail/store/ImapStore$ImapMessage;
    if-nez v25, :cond_256

    .line 1481
    :try_start_251
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V
    :try_end_254
    .catch Ljava/io/IOException; {:try_start_251 .. :try_end_254} :catch_233

    goto/16 :goto_15e

    .line 1393
    :cond_256
    :try_start_256
    sget-object v33, Lcom/android/emailcommon/mail/FetchProfile$Item;->FLAGS:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_2e7

    .line 1394
    const-string v33, "FLAGS"

    move-object/from16 v0, v33

    invoke-virtual {v14, v0}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedListOrEmpty(Ljava/lang/String;)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v17

    .line 1396
    .local v17, flags:Lcom/android/email/mail/store/imap/ImapList;
    const/16 v18, 0x0

    .local v18, i:I
    invoke-virtual/range {v17 .. v17}, Lcom/android/email/mail/store/imap/ImapList;->size()I

    move-result v11

    .local v11, count:I
    :goto_270
    move/from16 v0, v18

    if-ge v0, v11, :cond_2e7

    .line 1397
    invoke-virtual/range {v17 .. v18}, Lcom/android/email/mail/store/imap/ImapList;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v16

    .line 1398
    .local v16, flag:Lcom/android/email/mail/store/imap/ImapString;
    const-string v33, "\\DELETED"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_294

    .line 1399
    sget-object v33, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    const/16 v34, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->setFlagInternal(Lcom/android/emailcommon/mail/Flag;Z)V

    .line 1396
    :cond_291
    :goto_291
    add-int/lit8 v18, v18, 0x1

    goto :goto_270

    .line 1400
    :cond_294
    const-string v33, "\\ANSWERED"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_2b3

    .line 1401
    sget-object v33, Lcom/android/emailcommon/mail/Flag;->ANSWERED:Lcom/android/emailcommon/mail/Flag;

    const/16 v34, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->setFlagInternal(Lcom/android/emailcommon/mail/Flag;Z)V
    :try_end_2ad
    .catchall {:try_start_256 .. :try_end_2ad} :catchall_2ae

    goto :goto_291

    .line 1481
    .end local v11           #count:I
    .end local v14           #fetchList:Lcom/android/email/mail/store/imap/ImapList;
    .end local v16           #flag:Lcom/android/email/mail/store/imap/ImapString;
    .end local v17           #flags:Lcom/android/email/mail/store/imap/ImapList;
    .end local v18           #i:I
    .end local v25           #message:Lcom/android/email/mail/store/ImapStore$ImapMessage;
    .end local v32           #uid:Ljava/lang/String;
    :catchall_2ae
    move-exception v33

    :try_start_2af
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    throw v33
    :try_end_2b3
    .catch Ljava/io/IOException; {:try_start_2af .. :try_end_2b3} :catch_233

    .line 1402
    .restart local v11       #count:I
    .restart local v14       #fetchList:Lcom/android/email/mail/store/imap/ImapList;
    .restart local v16       #flag:Lcom/android/email/mail/store/imap/ImapString;
    .restart local v17       #flags:Lcom/android/email/mail/store/imap/ImapList;
    .restart local v18       #i:I
    .restart local v25       #message:Lcom/android/email/mail/store/ImapStore$ImapMessage;
    .restart local v32       #uid:Ljava/lang/String;
    :cond_2b3
    :try_start_2b3
    const-string v33, "\\SEEN"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_2cd

    .line 1403
    sget-object v33, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    const/16 v34, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->setFlagInternal(Lcom/android/emailcommon/mail/Flag;Z)V

    goto :goto_291

    .line 1404
    :cond_2cd
    const-string v33, "\\FLAGGED"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_291

    .line 1405
    sget-object v33, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    const/16 v34, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->setFlagInternal(Lcom/android/emailcommon/mail/Flag;Z)V

    goto :goto_291

    .line 1409
    .end local v11           #count:I
    .end local v16           #flag:Lcom/android/email/mail/store/imap/ImapString;
    .end local v17           #flags:Lcom/android/email/mail/store/imap/ImapList;
    .end local v18           #i:I
    :cond_2e7
    sget-object v33, Lcom/android/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_330

    .line 1410
    const-string v33, "INTERNALDATE"

    move-object/from16 v0, v33

    invoke-virtual {v14, v0}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/android/email/mail/store/imap/ImapString;->getDateOrNull()Ljava/util/Date;

    move-result-object v21

    .line 1412
    .local v21, internalDate:Ljava/util/Date;
    const-string v33, "RFC822.SIZE"

    move-object/from16 v0, v33

    invoke-virtual {v14, v0}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/android/email/mail/store/imap/ImapString;->getNumberOrZero()I

    move-result v31

    .line 1418
    .local v31, size:I
    const-string v33, "BODY[HEADER"

    const/16 v34, 0x1

    move-object/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v14, v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;Z)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/android/email/mail/store/imap/ImapString;->getAsStream()Ljava/io/InputStream;

    move-result-object v20

    .line 1421
    .local v20, inHeader:Ljava/io/InputStream;
    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->setInternalDate(Ljava/util/Date;)V

    .line 1422
    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->setSize(I)V

    .line 1425
    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->parse(Ljava/io/InputStream;)V

    .line 1428
    .end local v20           #inHeader:Ljava/io/InputStream;
    .end local v21           #internalDate:Ljava/util/Date;
    .end local v31           #size:I
    :cond_330
    sget-object v33, Lcom/android/emailcommon/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_353

    .line 1429
    const-string v33, "BODYSTRUCTURE"

    move-object/from16 v0, v33

    invoke-virtual {v14, v0}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedListOrEmpty(Ljava/lang/String;)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v7

    .line 1431
    .local v7, bs:Lcom/android/email/mail/store/imap/ImapList;
    invoke-virtual {v7}, Lcom/android/email/mail/store/imap/ImapList;->isEmpty()Z
    :try_end_347
    .catchall {:try_start_2b3 .. :try_end_347} :catchall_2ae

    move-result v33

    if-nez v33, :cond_353

    .line 1433
    :try_start_34a
    const-string v33, "TEXT"

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-static {v7, v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->parseBodyStructure(Lcom/android/email/mail/store/imap/ImapList;Lcom/android/emailcommon/mail/Part;Ljava/lang/String;)V
    :try_end_353
    .catchall {:try_start_34a .. :try_end_353} :catchall_2ae
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_34a .. :try_end_353} :catch_3c9

    .line 1442
    .end local v7           #bs:Lcom/android/email/mail/store/imap/ImapList;
    :cond_353
    :goto_353
    :try_start_353
    sget-object v33, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_36b

    sget-object v33, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY_SANE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, p2

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/FetchProfile;->contains(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_380

    .line 1449
    :cond_36b
    const-string v33, "BODY["

    const/16 v34, 0x1

    move-object/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v14, v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;Z)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v5

    .line 1450
    .local v5, body:Lcom/android/email/mail/store/imap/ImapString;
    invoke-virtual {v5}, Lcom/android/email/mail/store/imap/ImapString;->getAsStream()Ljava/io/InputStream;

    move-result-object v6

    .line 1451
    .local v6, bodyStream:Ljava/io/InputStream;
    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->parse(Ljava/io/InputStream;)V

    .line 1453
    .end local v5           #body:Lcom/android/email/mail/store/imap/ImapString;
    .end local v6           #bodyStream:Ljava/io/InputStream;
    :cond_380
    if-eqz v15, :cond_3bb

    invoke-interface {v15}, Lcom/android/emailcommon/mail/Part;->getSize()I

    move-result v33

    if-lez v33, :cond_3bb

    .line 1454
    const-string v33, "BODY["

    const/16 v34, 0x1

    move-object/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v14, v0, v1}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;Z)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/android/email/mail/store/imap/ImapString;->getAsStream()Ljava/io/InputStream;
    :try_end_397
    .catchall {:try_start_353 .. :try_end_397} :catchall_2ae

    move-result-object v6

    .line 1457
    .restart local v6       #bodyStream:Ljava/io/InputStream;
    :try_start_398
    invoke-interface {v15}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v9

    .line 1458
    .local v9, contentType:Ljava/lang/String;
    const-string v33, "Content-Transfer-Encoding"

    move-object/from16 v0, v33

    invoke-interface {v15, v0}, Lcom/android/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x0

    aget-object v8, v33, v34

    .line 1468
    .local v8, contentTransferEncoding:Ljava/lang/String;
    invoke-interface {v15}, Lcom/android/emailcommon/mail/Part;->getSize()I

    move-result v33

    move-object/from16 v0, p0

    move/from16 v1, v33

    move-object/from16 v2, p3

    invoke-direct {v0, v6, v8, v1, v2}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->decodeBody(Ljava/io/InputStream;Ljava/lang/String;ILcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)Lcom/android/emailcommon/mail/Body;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-interface {v15, v0}, Lcom/android/emailcommon/mail/Part;->setBody(Lcom/android/emailcommon/mail/Body;)V
    :try_end_3bb
    .catchall {:try_start_398 .. :try_end_3bb} :catchall_2ae
    .catch Ljava/lang/Exception; {:try_start_398 .. :try_end_3bb} :catch_3d4

    .line 1477
    .end local v6           #bodyStream:Ljava/io/InputStream;
    .end local v8           #contentTransferEncoding:Ljava/lang/String;
    .end local v9           #contentType:Ljava/lang/String;
    :cond_3bb
    :goto_3bb
    if-eqz p3, :cond_3c4

    .line 1478
    :try_start_3bd
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;->messageRetrieved(Lcom/android/emailcommon/mail/Message;)V
    :try_end_3c4
    .catchall {:try_start_3bd .. :try_end_3c4} :catchall_2ae

    .line 1481
    :cond_3c4
    :try_start_3c4
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V
    :try_end_3c7
    .catch Ljava/io/IOException; {:try_start_3c4 .. :try_end_3c7} :catch_233

    goto/16 :goto_15e

    .line 1434
    .restart local v7       #bs:Lcom/android/email/mail/store/imap/ImapList;
    :catch_3c9
    move-exception v12

    .line 1438
    .local v12, e:Lcom/android/emailcommon/mail/MessagingException;
    const/16 v33, 0x0

    :try_start_3cc
    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapMessage;->setBody(Lcom/android/emailcommon/mail/Body;)V

    goto :goto_353

    .line 1470
    .end local v7           #bs:Lcom/android/email/mail/store/imap/ImapList;
    .end local v12           #e:Lcom/android/emailcommon/mail/MessagingException;
    .restart local v6       #bodyStream:Ljava/io/InputStream;
    :catch_3d4
    move-exception v12

    .line 1474
    .local v12, e:Ljava/lang/Exception;
    const/16 v33, 0x0

    move-object/from16 v0, v33

    invoke-interface {v15, v0}, Lcom/android/emailcommon/mail/Part;->setBody(Lcom/android/emailcommon/mail/Body;)V
    :try_end_3dc
    .catchall {:try_start_3cc .. :try_end_3dc} :catchall_2ae

    goto :goto_3bb
.end method

.method public fetchWithRetrieveSize([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;I)V
    .registers 9
    .parameter "messages"
    .parameter "fp"
    .parameter "listener"
    .parameter "retrieveSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1263
    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_b

    .line 1264
    const-string v1, "Email"

    const-string v2, "ImapStore : fetchWithRetrieveSize function is called"

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    :cond_b
    :try_start_b
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->fetchInternal([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;I)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_e} :catch_f

    .line 1275
    return-void

    .line 1268
    :catch_f
    move-exception v0

    .line 1269
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception detected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-eqz v1, :cond_35

    .line 1271
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {v1}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->logLastDiscourse()V

    .line 1273
    :cond_35
    throw v0
.end method

.method public getDelimiter()I
    .registers 2

    .prologue
    .line 868
    iget v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mDelimiter:I

    return v0
.end method

.method public getMailBoxSynchronizer()Lcom/android/email/mail/StoreSynchronizer;
    .registers 3

    .prologue
    .line 916
    const-string v0, "Email:ImapStore"

    const-string v1, "IMAPStore::getMailBoxSynchronizer "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getMailBoxSynchronizer()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 725
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->getMailBoxSynchronizer()Lcom/android/email/mail/StoreSynchronizer;

    move-result-object v0

    return-object v0
.end method

.method public getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;
    .registers 6
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1183
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->checkOpen()V

    .line 1185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->searchForUids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1186
    .local v1, uids:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1b
    array-length v2, v1

    if-ge v0, v2, :cond_2f

    .line 1187
    aget-object v2, v1, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1188
    new-instance v2, Lcom/android/email/mail/store/ImapStore$ImapMessage;

    invoke-direct {v2, p1, p0}, Lcom/android/email/mail/store/ImapStore$ImapMessage;-><init>(Ljava/lang/String;Lcom/android/emailcommon/mail/Folder;)V

    .line 1191
    :goto_2b
    return-object v2

    .line 1186
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 1191
    :cond_2f
    const/4 v2, 0x0

    goto :goto_2b
.end method

.method public getMessageCount()I
    .registers 2

    .prologue
    .line 1055
    iget v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMessageCount:I

    return v0
.end method

.method public getMessages(IILcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .registers 10
    .parameter "start"
    .parameter "end"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1197
    if-lt p1, v4, :cond_9

    if-lt p2, v4, :cond_9

    if-ge p2, p1, :cond_23

    .line 1198
    :cond_9
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const-string v1, "Invalid range: %d %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1200
    :cond_23
    const-string v0, "%d:%d NOT DELETED"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->searchForUids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->getMessagesInternal([Ljava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public getMessages(ILjava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .registers 10
    .parameter "start"
    .parameter "searchText"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1208
    if-ge p1, v4, :cond_1b

    .line 1209
    new-instance v0, Lcom/android/emailcommon/mail/MessagingException;

    const-string v1, "Invalid message set %d %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1212
    :cond_1b
    const-string v0, "%d:*%s"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object p2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->searchForUidsWithStr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->getMessagesInternal([Ljava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public getMessages(Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .registers 3
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1220
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->getMessages([Ljava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public getMessages([Ljava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .registers 4
    .parameter "uids"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1226
    if-nez p1, :cond_8

    .line 1227
    const-string v0, "1:* NOT DELETED"

    invoke-virtual {p0, v0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->searchForUids(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1229
    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->getMessagesInternal([Ljava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;

    move-result-object v0

    return-object v0
.end method

.method public getMessagesInternal([Ljava/lang/String;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)[Lcom/android/emailcommon/mail/Message;
    .registers 8
    .parameter "uids"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1234
    new-instance v2, Ljava/util/ArrayList;

    array-length v4, p1

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1235
    .local v2, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Message;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    array-length v4, p1

    if-ge v0, v4, :cond_1c

    .line 1236
    aget-object v3, p1, v0

    .line 1237
    .local v3, uid:Ljava/lang/String;
    new-instance v1, Lcom/android/email/mail/store/ImapStore$ImapMessage;

    invoke-direct {v1, v3, p0}, Lcom/android/email/mail/store/ImapStore$ImapMessage;-><init>(Ljava/lang/String;Lcom/android/emailcommon/mail/Folder;)V

    .line 1238
    .local v1, message:Lcom/android/email/mail/store/ImapStore$ImapMessage;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1239
    if-eqz p2, :cond_19

    .line 1240
    invoke-interface {p2, v1}, Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;->messageRetrieved(Lcom/android/emailcommon/mail/Message;)V

    .line 1235
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1243
    .end local v1           #message:Lcom/android/email/mail/store/ImapStore$ImapMessage;
    .end local v3           #uid:Ljava/lang/String;
    :cond_1c
    sget-object v4, Lcom/android/emailcommon/mail/Message;->EMPTY_ARRAY:[Lcom/android/emailcommon/mail/Message;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/emailcommon/mail/Message;

    return-object v4
.end method

.method public getMode()Lcom/android/emailcommon/mail/Folder$OpenMode;
    .registers 2

    .prologue
    .line 858
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMode:Lcom/android/emailcommon/mail/Folder$OpenMode;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 901
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermanentFlags()[Lcom/android/emailcommon/mail/Flag;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1556
    invoke-static {}, Lcom/android/email/mail/store/ImapStore;->access$100()[Lcom/android/emailcommon/mail/Flag;

    move-result-object v0

    return-object v0
.end method

.method public getSelect()Z
    .registers 2

    .prologue
    .line 911
    iget-boolean v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mSelect:Z

    return v0
.end method

.method public getUnreadMessageCount()I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1060
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->checkOpen()V

    .line 1062
    const/4 v4, 0x0

    .line 1063
    .local v4, unreadMessageCount:I
    :try_start_4
    iget-object v5, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    const-string v6, "STATUS \"%s\" (UNSEEN)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    iget-object v10, v10, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/android/email/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1067
    .local v3, responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_24
    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_49

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 1068
    .local v2, response:Lcom/android/email/mail/store/imap/ImapResponse;
    const/4 v5, 0x0

    const-string v6, "STATUS"

    invoke-virtual {v2, v5, v6}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 1069
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/android/email/mail/store/imap/ImapResponse;->getListOrEmpty(I)Lcom/android/email/mail/store/imap/ImapList;

    move-result-object v5

    const-string v6, "UNSEEN"

    invoke-virtual {v5, v6}, Lcom/android/email/mail/store/imap/ImapList;->getKeyedStringOrEmpty(Ljava/lang/String;)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/email/mail/store/imap/ImapString;->getNumberOrZero()I
    :try_end_47
    .catchall {:try_start_4 .. :try_end_47} :catchall_55
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_47} :catch_4d

    move-result v4

    goto :goto_24

    .line 1077
    .end local v2           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_49
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    return v4

    .line 1074
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :catch_4d
    move-exception v1

    .line 1075
    .local v1, ioe:Ljava/io/IOException;
    :try_start_4e
    iget-object v5, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {p0, v5, v1}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v5

    throw v5
    :try_end_55
    .catchall {:try_start_4e .. :try_end_55} :catchall_55

    .line 1077
    .end local v1           #ioe:Ljava/io/IOException;
    :catchall_55
    move-exception v5

    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    throw v5
.end method

.method public ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;
    .registers 4
    .parameter "connection"
    .parameter "ioe"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1929
    invoke-static {p2}, Lcom/android/emailcommon/mail/MessagingException;->decodeIOException(Ljava/io/IOException;)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->connectionExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;ILjava/lang/Exception;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v0

    return-object v0
.end method

.method public isOpen()Z
    .registers 2

    .prologue
    .line 853
    iget-boolean v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mExists:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public open(Lcom/android/emailcommon/mail/Folder$OpenMode;Lcom/android/emailcommon/mail/Folder$PersistentDataCallbacks;)V
    .registers 16
    .parameter "mode"
    .parameter "callbacks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 762
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_2e

    .line 763
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMode:Lcom/android/emailcommon/mail/Folder$OpenMode;

    invoke-virtual {v7, p1}, Lcom/android/emailcommon/mail/Folder$OpenMode;->equals(Ljava/lang/Object;)Z
    :try_end_b
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_0 .. :try_end_b} :catch_81
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_b} :catch_8f

    move-result v7

    if-eqz v7, :cond_8a

    .line 770
    :try_start_e
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    #getter for: Lcom/android/email/mail/store/ImapStore$ImapConnection;->mTransport:Lcom/android/email/mail/Transport;
    invoke-static {v7}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->access$000(Lcom/android/email/mail/store/ImapStore$ImapConnection;)Lcom/android/email/mail/Transport;

    move-result-object v7

    const v8, 0xea60

    invoke-interface {v7, v8}, Lcom/android/email/mail/Transport;->setSoTimeout(I)V

    .line 772
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    const-string v8, "NOOP"

    invoke-virtual {v7, v8}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_7c
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_21} :catch_25

    .line 778
    :try_start_21
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V
    :try_end_24
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_21 .. :try_end_24} :catch_81
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_21 .. :try_end_24} :catch_8f

    .line 849
    :goto_24
    return-void

    .line 775
    :catch_25
    move-exception v2

    .line 776
    .local v2, ioe:Ljava/io/IOException;
    :try_start_26
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {p0, v7, v2}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_7c

    .line 778
    :try_start_2b
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    .line 785
    .end local v2           #ioe:Ljava/io/IOException;
    :cond_2e
    :goto_2e
    monitor-enter p0
    :try_end_2f
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_2b .. :try_end_2f} :catch_81
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2b .. :try_end_2f} :catch_8f

    .line 786
    :try_start_2f
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v7}, Lcom/android/email/mail/store/ImapStore;->getConnection()Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-result-object v7

    iput-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    .line 787
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_98

    .line 799
    :try_start_38
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    const-string v8, "SELECT \"%s\""

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    iget-object v12, v12, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/android/email/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 807
    .local v6, responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    sget-object v7, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    iput-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMode:Lcom/android/emailcommon/mail/Folder$OpenMode;

    .line 809
    const/4 v3, -0x1

    .line 810
    .local v3, messageCount:I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_5d
    :goto_5d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ef

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 811
    .local v4, response:Lcom/android/email/mail/store/imap/ImapResponse;
    const/4 v7, 0x1

    const-string v8, "EXISTS"

    invoke-virtual {v4, v7, v8}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9b

    .line 812
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/email/mail/store/imap/ImapString;->getNumberOrZero()I
    :try_end_7a
    .catchall {:try_start_38 .. :try_end_7a} :catchall_ba
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_7a} :catch_b2

    move-result v3

    goto :goto_5d

    .line 778
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #messageCount:I
    .end local v4           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .end local v6           #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :catchall_7c
    move-exception v7

    :try_start_7d
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    throw v7
    :try_end_81
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_7d .. :try_end_81} :catch_81
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_7d .. :try_end_81} :catch_8f

    .line 838
    :catch_81
    move-exception v0

    .line 841
    .local v0, e:Lcom/android/emailcommon/mail/AuthenticationFailedException;
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    .line 842
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->close(Z)V

    .line 843
    throw v0

    .line 782
    .end local v0           #e:Lcom/android/emailcommon/mail/AuthenticationFailedException;
    :cond_8a
    const/4 v7, 0x0

    :try_start_8b
    invoke-virtual {p0, v7}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->close(Z)V
    :try_end_8e
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_8b .. :try_end_8e} :catch_81
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_8b .. :try_end_8e} :catch_8f

    goto :goto_2e

    .line 844
    :catch_8f
    move-exception v0

    .line 845
    .local v0, e:Lcom/android/emailcommon/mail/MessagingException;
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mExists:Z

    .line 846
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->close(Z)V

    .line 847
    throw v0

    .line 787
    .end local v0           #e:Lcom/android/emailcommon/mail/MessagingException;
    :catchall_98
    move-exception v7

    :try_start_99
    monitor-exit p0
    :try_end_9a
    .catchall {:try_start_99 .. :try_end_9a} :catchall_98

    :try_start_9a
    throw v7
    :try_end_9b
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_9a .. :try_end_9b} :catch_81
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_9a .. :try_end_9b} :catch_8f

    .line 814
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #messageCount:I
    .restart local v4       #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .restart local v6       #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :cond_9b
    :try_start_9b
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->isOk()Z

    move-result v7

    if-eqz v7, :cond_cc

    .line 815
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->getResponseCodeOrEmpty()Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v5

    .line 816
    .local v5, responseCode:Lcom/android/email/mail/store/imap/ImapString;
    const-string v7, "READ-ONLY"

    invoke-virtual {v5, v7}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_bf

    .line 817
    sget-object v7, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_ONLY:Lcom/android/emailcommon/mail/Folder$OpenMode;

    iput-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMode:Lcom/android/emailcommon/mail/Folder$OpenMode;
    :try_end_b1
    .catchall {:try_start_9b .. :try_end_b1} :catchall_ba
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_b1} :catch_b2

    goto :goto_5d

    .line 833
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #messageCount:I
    .end local v4           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .end local v5           #responseCode:Lcom/android/email/mail/store/imap/ImapString;
    .end local v6           #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :catch_b2
    move-exception v2

    .line 834
    .restart local v2       #ioe:Ljava/io/IOException;
    :try_start_b3
    iget-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {p0, v7, v2}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v7

    throw v7
    :try_end_ba
    .catchall {:try_start_b3 .. :try_end_ba} :catchall_ba

    .line 836
    .end local v2           #ioe:Ljava/io/IOException;
    :catchall_ba
    move-exception v7

    :try_start_bb
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    throw v7
    :try_end_bf
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_bb .. :try_end_bf} :catch_81
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_bb .. :try_end_bf} :catch_8f

    .line 818
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #messageCount:I
    .restart local v4       #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .restart local v5       #responseCode:Lcom/android/email/mail/store/imap/ImapString;
    .restart local v6       #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :cond_bf
    :try_start_bf
    const-string v7, "READ-WRITE"

    invoke-virtual {v5, v7}, Lcom/android/email/mail/store/imap/ImapString;->is(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5d

    .line 819
    sget-object v7, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    iput-object v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMode:Lcom/android/emailcommon/mail/Folder$OpenMode;

    goto :goto_5d

    .line 821
    .end local v5           #responseCode:Lcom/android/email/mail/store/imap/ImapString;
    :cond_cc
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->isTagged()Z

    move-result v7

    if-eqz v7, :cond_5d

    .line 822
    new-instance v7, Lcom/android/emailcommon/mail/MessagingException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t open mailbox: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->getStatusResponseTextOrEmpty()Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 827
    .end local v4           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    :cond_ef
    const/4 v7, -0x1

    if-ne v3, v7, :cond_fa

    .line 828
    new-instance v7, Lcom/android/emailcommon/mail/MessagingException;

    const-string v8, "Did not find message count during select"

    invoke-direct {v7, v8}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 830
    :cond_fa
    iput v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mMessageCount:I

    .line 831
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mExists:Z
    :try_end_ff
    .catchall {:try_start_bf .. :try_end_ff} :catchall_ba
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_ff} :catch_b2

    .line 836
    :try_start_ff
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V
    :try_end_102
    .catch Lcom/android/emailcommon/mail/AuthenticationFailedException; {:try_start_ff .. :try_end_102} :catch_81
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_ff .. :try_end_102} :catch_8f

    goto/16 :goto_24
.end method

.method public rename(Ljava/lang/String;)Z
    .registers 13
    .parameter "newName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1009
    const/4 v0, 0x0

    .line 1010
    .local v0, connection:Lcom/android/email/mail/store/ImapStore$ImapConnection;
    monitor-enter p0

    .line 1011
    :try_start_4
    iget-object v5, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v5, :cond_67

    .line 1012
    iget-object v5, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v5}, Lcom/android/email/mail/store/ImapStore;->getConnection()Lcom/android/email/mail/store/ImapStore$ImapConnection;

    move-result-object v0

    .line 1016
    :goto_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_6a

    .line 1018
    :try_start_f
    const-string v5, "RENAME %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    iget-object v10, v10, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/android/email/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    iget-object v9, v9, Lcom/android/email/mail/store/ImapStore;->mPathPrefix:Ljava/lang/String;

    invoke-static {p1, v9}, Lcom/android/email/mail/store/ImapStore;->encodeFolderName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    .line 1022
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mName:Ljava/lang/String;
    :try_end_5a
    .catchall {:try_start_f .. :try_end_5a} :catchall_82
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_f .. :try_end_5a} :catch_6d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_5a} :catch_7c

    .line 1031
    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 1032
    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v4, :cond_66

    .line 1033
    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v4, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    :cond_66
    :goto_66
    return v3

    .line 1014
    :cond_67
    :try_start_67
    iget-object v0, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    goto :goto_e

    .line 1016
    :catchall_6a
    move-exception v3

    monitor-exit p0
    :try_end_6c
    .catchall {:try_start_67 .. :try_end_6c} :catchall_6a

    throw v3

    .line 1024
    :catch_6d
    move-exception v2

    .line 1031
    .local v2, me:Lcom/android/emailcommon/mail/MessagingException;
    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 1032
    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v3, :cond_7a

    .line 1033
    iget-object v3, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v3, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    :cond_7a
    move v3, v4

    goto :goto_66

    .line 1027
    .end local v2           #me:Lcom/android/emailcommon/mail/MessagingException;
    :catch_7c
    move-exception v1

    .line 1028
    .local v1, ioe:Ljava/io/IOException;
    :try_start_7d
    invoke-virtual {p0, v0, v1}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v3

    throw v3
    :try_end_82
    .catchall {:try_start_7d .. :try_end_82} :catchall_82

    .line 1031
    .end local v1           #ioe:Ljava/io/IOException;
    :catchall_82
    move-exception v3

    invoke-virtual {v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->destroyResponses()V

    .line 1032
    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    if-nez v4, :cond_8f

    .line 1033
    iget-object v4, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mStore:Lcom/android/email/mail/store/ImapStore;

    invoke-virtual {v4, v0}, Lcom/android/email/mail/store/ImapStore;->poolConnection(Lcom/android/email/mail/store/ImapStore$ImapConnection;)V

    :cond_8f
    throw v3
.end method

.method searchForUids(Ljava/lang/String;)[Ljava/lang/String;
    .registers 13
    .parameter "searchCriteria"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1115
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->checkOpen()V

    .line 1119
    :try_start_3
    iget-object v8, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UID SEARCH "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_64
    .catch Lcom/android/email/mail/store/ImapStore$ImapException; {:try_start_3 .. :try_end_1b} :catch_55
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_1b} :catch_5c

    move-result-object v5

    .line 1127
    .local v5, responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :try_start_1c
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1128
    .local v7, uids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_69

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 1129
    .local v4, response:Lcom/android/email/mail/store/imap/ImapResponse;
    const/4 v8, 0x0

    const-string v9, "SEARCH"

    invoke-virtual {v4, v8, v9}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_25

    .line 1133
    const/4 v1, 0x1

    .local v1, i:I
    :goto_3b
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->size()I

    move-result v8

    if-ge v1, v8, :cond_25

    .line 1134
    invoke-virtual {v4, v1}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v6

    .line 1135
    .local v6, s:Lcom/android/email/mail/store/imap/ImapString;
    invoke-virtual {v6}, Lcom/android/email/mail/store/imap/ImapString;->isString()Z

    move-result v8

    if-eqz v8, :cond_52

    .line 1136
    invoke-virtual {v6}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1133
    :cond_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 1121
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .end local v5           #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    .end local v6           #s:Lcom/android/email/mail/store/imap/ImapString;
    .end local v7           #uids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_55
    move-exception v0

    .line 1122
    .local v0, e:Lcom/android/email/mail/store/ImapStore$ImapException;
    sget-object v8, Lcom/android/emailcommon/utility/Utility;->EMPTY_STRINGS:[Ljava/lang/String;
    :try_end_58
    .catchall {:try_start_1c .. :try_end_58} :catchall_64

    .line 1142
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    .end local v0           #e:Lcom/android/email/mail/store/ImapStore$ImapException;
    :goto_5b
    return-object v8

    .line 1123
    :catch_5c
    move-exception v3

    .line 1124
    .local v3, ioe:Ljava/io/IOException;
    :try_start_5d
    iget-object v8, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {p0, v8, v3}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v8

    throw v8
    :try_end_64
    .catchall {:try_start_5d .. :try_end_64} :catchall_64

    .line 1142
    .end local v3           #ioe:Ljava/io/IOException;
    :catchall_64
    move-exception v8

    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    throw v8

    .line 1140
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v5       #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    .restart local v7       #uids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_69
    :try_start_69
    sget-object v8, Lcom/android/emailcommon/utility/Utility;->EMPTY_STRINGS:[Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;
    :try_end_71
    .catchall {:try_start_69 .. :try_end_71} :catchall_64

    .line 1142
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    goto :goto_5b
.end method

.method searchForUidsWithStr(Ljava/lang/String;)[Ljava/lang/String;
    .registers 13
    .parameter "searchCriteria"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1147
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->checkOpen()V

    .line 1151
    :try_start_3
    iget-object v8, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UID SEARCH CHARSET UTF-8 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_68
    .catch Lcom/android/email/mail/store/ImapStore$ImapException; {:try_start_3 .. :try_end_1b} :catch_59
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_1b} :catch_60

    move-result-object v5

    .line 1159
    .local v5, responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    :try_start_1c
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1160
    .local v7, uids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/mail/store/imap/ImapResponse;

    .line 1161
    .local v4, response:Lcom/android/email/mail/store/imap/ImapResponse;
    const/4 v8, 0x0

    const-string v9, "SEARCH"

    invoke-virtual {v4, v8, v9}, Lcom/android/email/mail/store/imap/ImapResponse;->isDataResponse(ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_25

    .line 1165
    const/4 v1, 0x1

    .local v1, i:I
    :goto_3b
    invoke-virtual {v4}, Lcom/android/email/mail/store/imap/ImapResponse;->size()I

    move-result v8

    if-ge v1, v8, :cond_25

    .line 1166
    invoke-virtual {v4, v1}, Lcom/android/email/mail/store/imap/ImapResponse;->getStringOrEmpty(I)Lcom/android/email/mail/store/imap/ImapString;

    move-result-object v6

    .line 1167
    .local v6, s:Lcom/android/email/mail/store/imap/ImapString;
    invoke-virtual {v6}, Lcom/android/email/mail/store/imap/ImapString;->isString()Z

    move-result v8

    if-eqz v8, :cond_56

    .line 1168
    invoke-virtual {v6}, Lcom/android/email/mail/store/imap/ImapString;->getString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1169
    const/16 v8, 0x3e8

    if-gt v1, v8, :cond_25

    .line 1165
    :cond_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 1153
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #response:Lcom/android/email/mail/store/imap/ImapResponse;
    .end local v5           #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    .end local v6           #s:Lcom/android/email/mail/store/imap/ImapString;
    .end local v7           #uids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_59
    move-exception v0

    .line 1154
    .local v0, e:Lcom/android/email/mail/store/ImapStore$ImapException;
    sget-object v8, Lcom/android/emailcommon/utility/Utility;->EMPTY_STRINGS:[Ljava/lang/String;
    :try_end_5c
    .catchall {:try_start_1c .. :try_end_5c} :catchall_68

    .line 1177
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    .end local v0           #e:Lcom/android/email/mail/store/ImapStore$ImapException;
    :goto_5f
    return-object v8

    .line 1155
    :catch_60
    move-exception v3

    .line 1156
    .local v3, ioe:Ljava/io/IOException;
    :try_start_61
    iget-object v8, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {p0, v8, v3}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v8

    throw v8
    :try_end_68
    .catchall {:try_start_61 .. :try_end_68} :catchall_68

    .line 1177
    .end local v3           #ioe:Ljava/io/IOException;
    :catchall_68
    move-exception v8

    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    throw v8

    .line 1175
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v5       #responses:Ljava/util/List;,"Ljava/util/List<Lcom/android/email/mail/store/imap/ImapResponse;>;"
    .restart local v7       #uids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6d
    :try_start_6d
    sget-object v8, Lcom/android/emailcommon/utility/Utility;->EMPTY_STRINGS:[Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;
    :try_end_75
    .catchall {:try_start_6d .. :try_end_75} :catchall_68

    .line 1177
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    goto :goto_5f
.end method

.method public setDelimiter(I)V
    .registers 2
    .parameter "ch"

    .prologue
    .line 863
    iput p1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mDelimiter:I

    .line 864
    return-void
.end method

.method public setFlags([Lcom/android/emailcommon/mail/Message;[Lcom/android/emailcommon/mail/Flag;Z)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1874
    invoke-direct {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->checkOpen()V

    .line 1876
    const-string v0, ""

    .line 1877
    array-length v2, p2

    if-lez v2, :cond_77

    .line 1878
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1879
    array-length v3, p2

    move v0, v1

    :goto_11
    if-ge v0, v3, :cond_3f

    .line 1880
    aget-object v1, p2, v0

    .line 1881
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->SEEN:Lcom/android/emailcommon/mail/Flag;

    if-ne v1, v4, :cond_21

    .line 1882
    const-string v1, " \\SEEN"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1879
    :cond_1e
    :goto_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 1883
    :cond_21
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->DELETED:Lcom/android/emailcommon/mail/Flag;

    if-ne v1, v4, :cond_2b

    .line 1884
    const-string v1, " \\DELETED"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 1885
    :cond_2b
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->FLAGGED:Lcom/android/emailcommon/mail/Flag;

    if-ne v1, v4, :cond_35

    .line 1886
    const-string v1, " \\FLAGGED"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 1887
    :cond_35
    sget-object v4, Lcom/android/emailcommon/mail/Flag;->ANSWERED:Lcom/android/emailcommon/mail/Flag;

    if-ne v1, v4, :cond_1e

    .line 1889
    const-string v1, " \\ANSWERED"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e

    .line 1892
    :cond_3f
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1895
    :goto_44
    :try_start_44
    iget-object v2, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    const-string v3, "UID STORE %s %sFLAGS.SILENT (%s)"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/android/email/mail/store/ImapStore;->joinMessageUids([Lcom/android/emailcommon/mail/Message;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x1

    if-eqz p3, :cond_67

    const-string v0, "+"

    :goto_57
    aput-object v0, v4, v5

    const/4 v0, 0x2

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/email/mail/store/ImapStore$ImapConnection;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
    :try_end_63
    .catchall {:try_start_44 .. :try_end_63} :catchall_72
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_63} :catch_6a

    .line 1902
    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    .line 1904
    return-void

    .line 1895
    :cond_67
    :try_start_67
    const-string v0, "-"
    :try_end_69
    .catchall {:try_start_67 .. :try_end_69} :catchall_72
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_69} :catch_6a

    goto :goto_57

    .line 1899
    :catch_6a
    move-exception v0

    .line 1900
    :try_start_6b
    iget-object v1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mConnection:Lcom/android/email/mail/store/ImapStore$ImapConnection;

    invoke-virtual {p0, v1, v0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->ioExceptionHandler(Lcom/android/email/mail/store/ImapStore$ImapConnection;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;

    move-result-object v0

    throw v0
    :try_end_72
    .catchall {:try_start_6b .. :try_end_72} :catchall_72

    .line 1902
    :catchall_72
    move-exception v0

    invoke-virtual {p0}, Lcom/android/email/mail/store/ImapStore$ImapFolder;->destroyResponses()V

    throw v0

    :cond_77
    move-object v1, v0

    goto :goto_44
.end method

.method public setSelect(Z)V
    .registers 2
    .parameter "select"

    .prologue
    .line 906
    iput-boolean p1, p0, Lcom/android/email/mail/store/ImapStore$ImapFolder;->mSelect:Z

    .line 907
    return-void
.end method
