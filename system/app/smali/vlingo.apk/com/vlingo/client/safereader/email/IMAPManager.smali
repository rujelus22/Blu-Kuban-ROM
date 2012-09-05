.class public Lcom/vlingo/client/safereader/email/IMAPManager;
.super Ljava/lang/Object;
.source "IMAPManager.java"


# static fields
.field private static final HEADER:[Ljava/lang/String; = null

.field static final MAX_EMAIL_PART_SIZE:I = 0x7800


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 39
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "From"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Date"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Subject"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vlingo/client/safereader/email/IMAPManager;->HEADER:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fetchEmail(Lorg/columba/ristretto/imap/IMAPProtocol;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vlingo/client/util/BackgroundTask;)Lcom/vlingo/client/safereader/email/Email;
    .registers 19
    .parameter "protocol"
    .parameter "emailId"
    .parameter "emailTime"
    .parameter "sender"
    .parameter "addr"
    .parameter "subject"
    .parameter "callingTask"

    .prologue
    .line 219
    new-instance v5, Lcom/vlingo/client/safereader/email/Email;

    invoke-direct {v5}, Lcom/vlingo/client/safereader/email/Email;-><init>()V

    .line 220
    .local v5, result:Lcom/vlingo/client/safereader/email/Email;
    iput-wide p2, v5, Lcom/vlingo/client/safereader/email/Email;->date:J

    .line 221
    iput-object p4, v5, Lcom/vlingo/client/safereader/email/Email;->from:Ljava/lang/String;

    .line 222
    move-object/from16 v0, p6

    iput-object v0, v5, Lcom/vlingo/client/safereader/email/Email;->subject:Ljava/lang/String;

    .line 223
    const-string v9, ""

    iput-object v9, v5, Lcom/vlingo/client/safereader/email/Email;->body:Ljava/lang/String;

    .line 224
    move-object/from16 v0, p5

    iput-object v0, v5, Lcom/vlingo/client/safereader/email/Email;->senderAddress:Ljava/lang/String;

    .line 231
    :try_start_15
    invoke-virtual/range {p7 .. p7}, Lcom/vlingo/client/util/BackgroundTask;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_20

    .line 232
    invoke-virtual {p0}, Lorg/columba/ristretto/imap/IMAPProtocol;->logout()V

    .line 233
    const/4 v5, 0x0

    .line 302
    .end local v5           #result:Lcom/vlingo/client/safereader/email/Email;
    :cond_1f
    :goto_1f
    return-object v5

    .line 240
    .restart local v5       #result:Lcom/vlingo/client/safereader/email/Email;
    :cond_20
    invoke-virtual {p0, p1}, Lorg/columba/ristretto/imap/IMAPProtocol;->fetchBodystructure(I)Lorg/columba/ristretto/message/MimeTree;

    move-result-object v3

    .line 246
    .local v3, mimeTree:Lorg/columba/ristretto/message/MimeTree;
    const-string v9, "plain"

    invoke-virtual {v3, v9}, Lorg/columba/ristretto/message/MimeTree;->getFirstTextPart(Ljava/lang/String;)Lorg/columba/ristretto/message/MimePart;

    move-result-object v4

    .line 249
    .local v4, part:Lorg/columba/ristretto/message/MimePart;
    if-nez v4, :cond_36

    .line 252
    invoke-virtual {v3}, Lorg/columba/ristretto/message/MimeTree;->getRootMimeNode()Lorg/columba/ristretto/message/MimePart;

    move-result-object v9

    const-string v10, "text/html"

    invoke-virtual {v3, v9, v10}, Lorg/columba/ristretto/message/MimeTree;->getFirstLeafWithContentType(Lorg/columba/ristretto/message/MimePart;Ljava/lang/String;)Lorg/columba/ristretto/message/MimePart;

    move-result-object v4

    .line 255
    :cond_36
    if-eqz v4, :cond_1f

    .line 256
    invoke-virtual {v4}, Lorg/columba/ristretto/message/MimePart;->getHeader()Lorg/columba/ristretto/message/MimeHeader;

    move-result-object v2

    .line 261
    .local v2, h:Lorg/columba/ristretto/message/MimeHeader;
    invoke-virtual {v4}, Lorg/columba/ristretto/message/MimePart;->getSize()I

    move-result v6

    .line 263
    .local v6, size:I
    const/16 v9, 0x7800

    if-ge v6, v9, :cond_89

    .line 264
    invoke-virtual {v4}, Lorg/columba/ristretto/message/MimePart;->getAddress()[Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p0, p1, v9}, Lorg/columba/ristretto/imap/IMAPProtocol;->fetchBody(I[Ljava/lang/Integer;)Ljava/io/InputStream;

    move-result-object v7

    .line 266
    .local v7, stream:Ljava/io/InputStream;
    invoke-virtual {v2}, Lorg/columba/ristretto/message/MimeHeader;->getContentTransferEncoding()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_7c

    .line 267
    new-instance v8, Lorg/columba/ristretto/coder/Base64DecoderInputStream;

    invoke-direct {v8, v7}, Lorg/columba/ristretto/coder/Base64DecoderInputStream;-><init>(Ljava/io/InputStream;)V

    .line 272
    .end local v7           #stream:Ljava/io/InputStream;
    .local v8, stream:Ljava/io/InputStream;
    :goto_58
    const-string v9, "charset"

    invoke-virtual {v2, v9}, Lorg/columba/ristretto/message/MimeHeader;->getContentParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9d

    .line 273
    new-instance v7, Lorg/columba/ristretto/coder/CharsetDecoderInputStream;

    const-string v9, "charset"

    invoke-virtual {v2, v9}, Lorg/columba/ristretto/message/MimeHeader;->getContentParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/columba/ristretto/coder/CharsetDecoderInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 276
    .end local v8           #stream:Ljava/io/InputStream;
    .restart local v7       #stream:Ljava/io/InputStream;
    :goto_6f
    invoke-static {v7}, Lorg/columba/ristretto/io/StreamUtils;->readInString(Ljava/io/InputStream;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 283
    .local v1, emailBody:Ljava/lang/StringBuffer;
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/vlingo/client/safereader/email/Email;->body:Ljava/lang/String;

    goto :goto_1f

    .line 294
    .end local v1           #emailBody:Ljava/lang/StringBuffer;
    .end local v2           #h:Lorg/columba/ristretto/message/MimeHeader;
    .end local v3           #mimeTree:Lorg/columba/ristretto/message/MimeTree;
    .end local v4           #part:Lorg/columba/ristretto/message/MimePart;
    .end local v6           #size:I
    .end local v7           #stream:Ljava/io/InputStream;
    :catch_7a
    move-exception v9

    goto :goto_1f

    .line 268
    .restart local v2       #h:Lorg/columba/ristretto/message/MimeHeader;
    .restart local v3       #mimeTree:Lorg/columba/ristretto/message/MimeTree;
    .restart local v4       #part:Lorg/columba/ristretto/message/MimePart;
    .restart local v6       #size:I
    .restart local v7       #stream:Ljava/io/InputStream;
    :cond_7c
    invoke-virtual {v2}, Lorg/columba/ristretto/message/MimeHeader;->getContentTransferEncoding()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_9f

    .line 269
    new-instance v8, Lorg/columba/ristretto/coder/QuotedPrintableDecoderInputStream;

    invoke-direct {v8, v7}, Lorg/columba/ristretto/coder/QuotedPrintableDecoderInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v7           #stream:Ljava/io/InputStream;
    .restart local v8       #stream:Ljava/io/InputStream;
    goto :goto_58

    .line 286
    .end local v8           #stream:Ljava/io/InputStream;
    :cond_89
    invoke-static {}, Lcom/vlingo/client/VlingoApplication;->getInstance()Lcom/vlingo/client/VlingoApplication;

    move-result-object v9

    invoke-virtual {v9}, Lcom/vlingo/client/VlingoApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f09034c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/vlingo/client/safereader/email/Email;->body:Ljava/lang/String;
    :try_end_9a
    .catch Lorg/columba/ristretto/imap/IMAPException; {:try_start_15 .. :try_end_9a} :catch_7a
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_9a} :catch_9b

    goto :goto_1f

    .line 297
    .end local v2           #h:Lorg/columba/ristretto/message/MimeHeader;
    .end local v3           #mimeTree:Lorg/columba/ristretto/message/MimeTree;
    .end local v4           #part:Lorg/columba/ristretto/message/MimePart;
    .end local v6           #size:I
    :catch_9b
    move-exception v9

    goto :goto_1f

    .restart local v2       #h:Lorg/columba/ristretto/message/MimeHeader;
    .restart local v3       #mimeTree:Lorg/columba/ristretto/message/MimeTree;
    .restart local v4       #part:Lorg/columba/ristretto/message/MimePart;
    .restart local v6       #size:I
    .restart local v8       #stream:Ljava/io/InputStream;
    :cond_9d
    move-object v7, v8

    .end local v8           #stream:Ljava/io/InputStream;
    .restart local v7       #stream:Ljava/io/InputStream;
    goto :goto_6f

    :cond_9f
    move-object v8, v7

    .end local v7           #stream:Ljava/io/InputStream;
    .restart local v8       #stream:Ljava/io/InputStream;
    goto :goto_58
.end method

.method public static getEmailSince(Lcom/vlingo/client/safereader/email/EmailAccount;JZLcom/vlingo/client/util/BackgroundTask;)Ljava/util/ArrayList;
    .registers 31
    .parameter "account"
    .parameter "lastUpdateTime"
    .parameter "onlyCheckForUnreadEmail"
    .parameter "callingTask"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vlingo/client/safereader/email/EmailAccount;",
            "JZ",
            "Lcom/vlingo/client/util/BackgroundTask;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vlingo/client/safereader/email/Email;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v22, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/safereader/email/Email;>;"
    new-instance v2, Lorg/columba/ristretto/imap/IMAPProtocol;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->server:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->port:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-direct {v2, v9, v0}, Lorg/columba/ristretto/imap/IMAPProtocol;-><init>(Ljava/lang/String;I)V

    .line 95
    .local v2, protocol:Lorg/columba/ristretto/imap/IMAPProtocol;
    :try_start_16
    move-object/from16 v0, p0

    iget v9, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->securityType:I

    packed-switch v9, :pswitch_data_11c

    .line 110
    :goto_1d
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->username:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vlingo/client/safereader/email/EmailAccount;->password:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toCharArray()[C

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v2, v9, v0}, Lorg/columba/ristretto/imap/IMAPProtocol;->login(Ljava/lang/String;[C)V

    .line 113
    invoke-virtual/range {p4 .. p4}, Lcom/vlingo/client/util/BackgroundTask;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_5f

    .line 114
    invoke-virtual {v2}, Lorg/columba/ristretto/imap/IMAPProtocol;->logout()V

    .line 115
    const/16 v22, 0x0

    .line 214
    .end local v22           #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/safereader/email/Email;>;"
    :goto_3b
    return-object v22

    .line 97
    .restart local v22       #results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/safereader/email/Email;>;"
    :pswitch_3c
    invoke-virtual {v2}, Lorg/columba/ristretto/imap/IMAPProtocol;->openPort()V
    :try_end_3f
    .catch Lorg/columba/ristretto/imap/IMAPException; {:try_start_16 .. :try_end_3f} :catch_40
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_3f} :catch_56

    goto :goto_1d

    .line 200
    :catch_40
    move-exception v18

    .line 204
    .local v18, iex:Lorg/columba/ristretto/imap/IMAPException;
    :try_start_41
    invoke-virtual {v2}, Lorg/columba/ristretto/imap/IMAPProtocol;->logout()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45
    .catch Lorg/columba/ristretto/imap/IMAPException; {:try_start_41 .. :try_end_44} :catch_10e

    goto :goto_3b

    .line 205
    :catch_45
    move-exception v12

    .line 206
    .local v12, e1:Ljava/io/IOException;
    const-string v9, "VLG_EXCEPTION"

    invoke-static {v12}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 100
    .end local v12           #e1:Ljava/io/IOException;
    .end local v18           #iex:Lorg/columba/ristretto/imap/IMAPException;
    :pswitch_52
    :try_start_52
    invoke-virtual {v2}, Lorg/columba/ristretto/imap/IMAPProtocol;->openSSLPort()V

    goto :goto_1d

    .line 210
    :catch_56
    move-exception v9

    goto :goto_3b

    .line 103
    :pswitch_58
    invoke-virtual {v2}, Lorg/columba/ristretto/imap/IMAPProtocol;->openSSLPort()V

    .line 104
    invoke-virtual {v2}, Lorg/columba/ristretto/imap/IMAPProtocol;->startTLS()V

    goto :goto_1d

    .line 121
    :cond_5f
    const-string v9, "INBOX"

    invoke-virtual {v2, v9}, Lorg/columba/ristretto/imap/IMAPProtocol;->select(Ljava/lang/String;)Lorg/columba/ristretto/message/MailboxInfo;

    move-result-object v19

    .line 123
    .local v19, info:Lorg/columba/ristretto/message/MailboxInfo;
    if-eqz v19, :cond_109

    .line 126
    invoke-virtual/range {p4 .. p4}, Lcom/vlingo/client/util/BackgroundTask;->isCancelled()Z

    move-result v9

    if-eqz v9, :cond_73

    .line 127
    invoke-virtual {v2}, Lorg/columba/ristretto/imap/IMAPProtocol;->logout()V

    .line 128
    const/16 v22, 0x0

    goto :goto_3b

    .line 131
    :cond_73
    new-instance v11, Ljava/util/Date;

    move-wide/from16 v0, p1

    invoke-direct {v11, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 132
    .local v11, dt:Ljava/util/Date;
    new-instance v17, Lorg/columba/ristretto/imap/IMAPDate;

    move-object/from16 v0, v17

    invoke-direct {v0, v11}, Lorg/columba/ristretto/imap/IMAPDate;-><init>(Ljava/util/Date;)V

    .line 137
    .local v17, idt:Lorg/columba/ristretto/imap/IMAPDate;
    new-instance v10, Lorg/columba/ristretto/imap/SearchKey;

    const-string v9, "SINCE"

    move-object/from16 v0, v17

    invoke-direct {v10, v9, v0}, Lorg/columba/ristretto/imap/SearchKey;-><init>(Ljava/lang/String;Lorg/columba/ristretto/imap/IMAPDate;)V

    .line 140
    .local v10, dsk:Lorg/columba/ristretto/imap/SearchKey;
    if-eqz p3, :cond_100

    .line 141
    const/4 v9, 0x2

    new-array v0, v9, [Lorg/columba/ristretto/imap/SearchKey;

    move-object/from16 v23, v0

    const/4 v9, 0x0

    aput-object v10, v23, v9

    const/4 v9, 0x1

    new-instance v24, Lorg/columba/ristretto/imap/SearchKey;

    const-string v25, "UNSEEN"

    invoke-direct/range {v24 .. v25}, Lorg/columba/ristretto/imap/SearchKey;-><init>(Ljava/lang/String;)V

    aput-object v24, v23, v9

    .line 146
    .local v23, searchKeys:[Lorg/columba/ristretto/imap/SearchKey;
    :goto_9e
    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lorg/columba/ristretto/imap/IMAPProtocol;->search([Lorg/columba/ristretto/imap/SearchKey;)[Ljava/lang/Integer;

    move-result-object v20

    .line 148
    .local v20, newEmailsIDs:[Ljava/lang/Integer;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    .line 153
    .local v21, numNewEmails:I
    if-lez v21, :cond_109

    .line 155
    new-instance v9, Lorg/columba/ristretto/imap/SequenceSet;

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Lorg/columba/ristretto/imap/SequenceSet;-><init>([Ljava/lang/Integer;)V

    sget-object v24, Lcom/vlingo/client/safereader/email/IMAPManager;->HEADER:[Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v2, v9, v0}, Lorg/columba/ristretto/imap/IMAPProtocol;->fetchHeaderFields(Lorg/columba/ristretto/imap/SequenceSet;[Ljava/lang/String;)[Lorg/columba/ristretto/imap/IMAPHeader;

    move-result-object v15

    .line 157
    .local v15, emailHeaders:[Lorg/columba/ristretto/imap/IMAPHeader;
    array-length v9, v15

    add-int/lit8 v16, v9, -0x1

    .local v16, i:I
    :goto_bd
    if-ltz v16, :cond_109

    .line 159
    aget-object v9, v20, v16

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 160
    .local v3, emailId:I
    new-instance v14, Lorg/columba/ristretto/message/BasicHeader;

    aget-object v9, v15, v16

    invoke-virtual {v9}, Lorg/columba/ristretto/imap/IMAPHeader;->getHeader()Lorg/columba/ristretto/message/Header;

    move-result-object v9

    invoke-direct {v14, v9}, Lorg/columba/ristretto/message/BasicHeader;-><init>(Lorg/columba/ristretto/message/Header;)V

    .line 162
    .local v14, emailHeader:Lorg/columba/ristretto/message/BasicHeader;
    invoke-virtual {v14}, Lorg/columba/ristretto/message/BasicHeader;->getDate()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 164
    .local v4, emailTime:J
    invoke-virtual {v14}, Lorg/columba/ristretto/message/BasicHeader;->getFrom()Lorg/columba/ristretto/message/Address;

    move-result-object v9

    invoke-virtual {v9}, Lorg/columba/ristretto/message/Address;->getMailAddress()Ljava/lang/String;

    move-result-object v7

    .line 165
    .local v7, addr:Ljava/lang/String;
    invoke-virtual {v14}, Lorg/columba/ristretto/message/BasicHeader;->getFrom()Lorg/columba/ristretto/message/Address;

    move-result-object v9

    invoke-virtual {v9}, Lorg/columba/ristretto/message/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    .line 166
    .local v6, sender:Ljava/lang/String;
    invoke-virtual {v14}, Lorg/columba/ristretto/message/BasicHeader;->getSubject()Ljava/lang/String;

    move-result-object v8

    .line 180
    .local v8, subject:Ljava/lang/String;
    cmp-long v9, v4, p1

    if-lez v9, :cond_fd

    move-object/from16 v9, p4

    .line 182
    invoke-static/range {v2 .. v9}, Lcom/vlingo/client/safereader/email/IMAPManager;->fetchEmail(Lorg/columba/ristretto/imap/IMAPProtocol;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vlingo/client/util/BackgroundTask;)Lcom/vlingo/client/safereader/email/Email;

    move-result-object v13

    .line 183
    .local v13, email:Lcom/vlingo/client/safereader/email/Email;
    if-eqz v13, :cond_fd

    .line 184
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    .end local v13           #email:Lcom/vlingo/client/safereader/email/Email;
    :cond_fd
    add-int/lit8 v16, v16, -0x1

    goto :goto_bd

    .line 143
    .end local v3           #emailId:I
    .end local v4           #emailTime:J
    .end local v6           #sender:Ljava/lang/String;
    .end local v7           #addr:Ljava/lang/String;
    .end local v8           #subject:Ljava/lang/String;
    .end local v14           #emailHeader:Lorg/columba/ristretto/message/BasicHeader;
    .end local v15           #emailHeaders:[Lorg/columba/ristretto/imap/IMAPHeader;
    .end local v16           #i:I
    .end local v20           #newEmailsIDs:[Ljava/lang/Integer;
    .end local v21           #numNewEmails:I
    .end local v23           #searchKeys:[Lorg/columba/ristretto/imap/SearchKey;
    :cond_100
    const/4 v9, 0x1

    new-array v0, v9, [Lorg/columba/ristretto/imap/SearchKey;

    move-object/from16 v23, v0

    const/4 v9, 0x0

    aput-object v10, v23, v9

    .restart local v23       #searchKeys:[Lorg/columba/ristretto/imap/SearchKey;
    goto :goto_9e

    .line 197
    .end local v10           #dsk:Lorg/columba/ristretto/imap/SearchKey;
    .end local v11           #dt:Ljava/util/Date;
    .end local v17           #idt:Lorg/columba/ristretto/imap/IMAPDate;
    .end local v23           #searchKeys:[Lorg/columba/ristretto/imap/SearchKey;
    :cond_109
    invoke-virtual {v2}, Lorg/columba/ristretto/imap/IMAPProtocol;->logout()V
    :try_end_10c
    .catch Lorg/columba/ristretto/imap/IMAPException; {:try_start_52 .. :try_end_10c} :catch_40
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_10c} :catch_56

    goto/16 :goto_3b

    .line 207
    .end local v19           #info:Lorg/columba/ristretto/message/MailboxInfo;
    .restart local v18       #iex:Lorg/columba/ristretto/imap/IMAPException;
    :catch_10e
    move-exception v12

    .line 208
    .local v12, e1:Lorg/columba/ristretto/imap/IMAPException;
    const-string v9, "VLG_EXCEPTION"

    invoke-static {v12}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3b

    .line 95
    :pswitch_data_11c
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_52
        :pswitch_58
    .end packed-switch
.end method

.method public static verify(Lcom/vlingo/client/safereader/email/EmailAccount;)Z
    .registers 6
    .parameter "account"

    .prologue
    .line 45
    new-instance v2, Lorg/columba/ristretto/imap/IMAPProtocol;

    iget-object v3, p0, Lcom/vlingo/client/safereader/email/EmailAccount;->server:Ljava/lang/String;

    iget v4, p0, Lcom/vlingo/client/safereader/email/EmailAccount;->port:I

    invoke-direct {v2, v3, v4}, Lorg/columba/ristretto/imap/IMAPProtocol;-><init>(Ljava/lang/String;I)V

    .line 51
    .local v2, protocol:Lorg/columba/ristretto/imap/IMAPProtocol;
    :try_start_9
    iget v3, p0, Lcom/vlingo/client/safereader/email/EmailAccount;->securityType:I

    packed-switch v3, :pswitch_data_4c

    .line 66
    :goto_e
    iget-object v3, p0, Lcom/vlingo/client/safereader/email/EmailAccount;->username:Ljava/lang/String;

    iget-object v4, p0, Lcom/vlingo/client/safereader/email/EmailAccount;->password:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/columba/ristretto/imap/IMAPProtocol;->login(Ljava/lang/String;[C)V

    .line 68
    invoke-virtual {v2}, Lorg/columba/ristretto/imap/IMAPProtocol;->logout()V

    .line 69
    const/4 v3, 0x1

    .line 84
    :goto_1d
    return v3

    .line 53
    :pswitch_1e
    invoke-virtual {v2}, Lorg/columba/ristretto/imap/IMAPProtocol;->openPort()V
    :try_end_21
    .catch Lorg/columba/ristretto/imap/IMAPException; {:try_start_9 .. :try_end_21} :catch_22
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_21} :catch_2c

    goto :goto_e

    .line 70
    :catch_22
    move-exception v1

    .line 74
    .local v1, iex:Lorg/columba/ristretto/imap/IMAPException;
    :try_start_23
    invoke-virtual {v2}, Lorg/columba/ristretto/imap/IMAPProtocol;->logout()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_35
    .catch Lorg/columba/ristretto/imap/IMAPException; {:try_start_23 .. :try_end_26} :catch_40

    .line 84
    .end local v1           #iex:Lorg/columba/ristretto/imap/IMAPException;
    :goto_26
    const/4 v3, 0x0

    goto :goto_1d

    .line 56
    :pswitch_28
    :try_start_28
    invoke-virtual {v2}, Lorg/columba/ristretto/imap/IMAPProtocol;->openSSLPort()V

    goto :goto_e

    .line 80
    :catch_2c
    move-exception v3

    goto :goto_26

    .line 59
    :pswitch_2e
    invoke-virtual {v2}, Lorg/columba/ristretto/imap/IMAPProtocol;->openSSLPort()V

    .line 60
    invoke-virtual {v2}, Lorg/columba/ristretto/imap/IMAPProtocol;->startTLS()V
    :try_end_34
    .catch Lorg/columba/ristretto/imap/IMAPException; {:try_start_28 .. :try_end_34} :catch_22
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_34} :catch_2c

    goto :goto_e

    .line 75
    .restart local v1       #iex:Lorg/columba/ristretto/imap/IMAPException;
    :catch_35
    move-exception v0

    .line 76
    .local v0, e1:Ljava/io/IOException;
    const-string v3, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 77
    .end local v0           #e1:Ljava/io/IOException;
    :catch_40
    move-exception v0

    .line 78
    .local v0, e1:Lorg/columba/ristretto/imap/IMAPException;
    const-string v3, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 51
    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_28
        :pswitch_2e
    .end packed-switch
.end method
