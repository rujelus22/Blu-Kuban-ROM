.class public Lcom/android/emailcommon/internet/MimeUtility;
.super Ljava/lang/Object;
.source "MimeUtility.java"


# static fields
.field private static final PATTERN_CR_OR_LF:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const-string v0, "\r|\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/internet/MimeUtility;->PATTERN_CR_OR_LF:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 26
    .parameter "part"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/mail/Part;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Part;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Part;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 542
    .local p1, viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    .local p2, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    invoke-interface/range {p0 .. p0}, Lcom/android/emailcommon/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v9

    .line 543
    .local v9, disposition:Ljava/lang/String;
    const/4 v11, 0x0

    .line 544
    .local v11, dispositionType:Ljava/lang/String;
    const/4 v10, 0x0

    .line 545
    .local v10, dispositionFilename:Ljava/lang/String;
    if-eqz v9, :cond_18

    .line 546
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-static {v9, v0}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 547
    const-string v21, "filename"

    move-object/from16 v0, v21

    invoke-static {v9, v0}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 554
    :cond_18
    if-nez v10, :cond_26

    .line 555
    invoke-interface/range {p0 .. p0}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v8

    .line 556
    .local v8, contentType:Ljava/lang/String;
    const-string v21, "name"

    move-object/from16 v0, v21

    invoke-static {v8, v0}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 558
    .end local v8           #contentType:Ljava/lang/String;
    :cond_26
    const-string v21, "attachment"

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 560
    .local v5, attachmentDisposition:Z
    if-eqz v11, :cond_3a

    const-string v21, "inline"

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_79

    :cond_3a
    const/4 v15, 0x1

    .line 564
    .local v15, inlineDisposition:Z
    :goto_3b
    if-nez v5, :cond_41

    if-eqz v10, :cond_7b

    if-nez v15, :cond_7b

    :cond_41
    const/4 v4, 0x1

    .line 568
    .local v4, attachment:Z
    :goto_42
    if-eqz v15, :cond_7d

    if-eqz v10, :cond_7d

    const/4 v14, 0x1

    .line 571
    .local v14, inline:Z
    :goto_47
    if-nez v4, :cond_4b

    if-eqz v14, :cond_7f

    :cond_4b
    const/4 v6, 0x1

    .line 573
    .local v6, attachmentOrInline:Z
    :goto_4c
    invoke-interface/range {p0 .. p0}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v21

    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/android/emailcommon/mail/Multipart;

    move/from16 v21, v0

    if-eqz v21, :cond_81

    .line 577
    invoke-interface/range {p0 .. p0}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v18

    check-cast v18, Lcom/android/emailcommon/mail/Multipart;

    .line 578
    .local v18, mp:Lcom/android/emailcommon/mail/Multipart;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_5f
    invoke-virtual/range {v18 .. v18}, Lcom/android/emailcommon/mail/Multipart;->getCount()I

    move-result v21

    move/from16 v0, v21

    if-ge v12, v0, :cond_9c

    .line 579
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/android/emailcommon/mail/Multipart;->getBodyPart(I)Lcom/android/emailcommon/mail/BodyPart;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 578
    add-int/lit8 v12, v12, 0x1

    goto :goto_5f

    .line 560
    .end local v4           #attachment:Z
    .end local v6           #attachmentOrInline:Z
    .end local v12           #i:I
    .end local v14           #inline:Z
    .end local v15           #inlineDisposition:Z
    .end local v18           #mp:Lcom/android/emailcommon/mail/Multipart;
    :cond_79
    const/4 v15, 0x0

    goto :goto_3b

    .line 564
    .restart local v15       #inlineDisposition:Z
    :cond_7b
    const/4 v4, 0x0

    goto :goto_42

    .line 568
    .restart local v4       #attachment:Z
    :cond_7d
    const/4 v14, 0x0

    goto :goto_47

    .line 571
    .restart local v14       #inline:Z
    :cond_7f
    const/4 v6, 0x0

    goto :goto_4c

    .line 581
    .restart local v6       #attachmentOrInline:Z
    :cond_81
    invoke-interface/range {p0 .. p0}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v21

    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/android/emailcommon/mail/Message;

    move/from16 v21, v0

    if-eqz v21, :cond_9d

    .line 584
    invoke-interface/range {p0 .. p0}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v17

    check-cast v17, Lcom/android/emailcommon/mail/Message;

    .line 585
    .local v17, message:Lcom/android/emailcommon/mail/Message;
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 619
    .end local v17           #message:Lcom/android/emailcommon/mail/Message;
    :cond_9c
    :goto_9c
    return-void

    .line 586
    :cond_9d
    if-nez v6, :cond_b3

    const-string v21, "text/html"

    invoke-interface/range {p0 .. p0}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_b3

    .line 589
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9c

    .line 590
    :cond_b3
    if-nez v6, :cond_c9

    const-string v21, "text/plain"

    invoke-interface/range {p0 .. p0}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_c9

    .line 593
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9c

    .line 594
    :cond_c9
    if-nez v6, :cond_108

    invoke-interface/range {p0 .. p0}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v21

    const-string v22, "text/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_108

    .line 595
    const-string v21, "Content-Type"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcom/android/emailcommon/mail/Part;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    .line 596
    .local v19, strMime:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 598
    .local v7, bAtt:Z
    move-object/from16 v3, v19

    .local v3, arr$:[Ljava/lang/String;
    :try_start_e4
    array-length v0, v3

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_e8
    move/from16 v0, v16

    if-ge v13, v0, :cond_fb

    aget-object v20, v3, v13

    .line 599
    .local v20, tempMime:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v21

    const-string v22, "name"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_f7} :catch_110

    move-result v21

    if-eqz v21, :cond_105

    .line 600
    const/4 v7, 0x1

    .line 606
    .end local v13           #i$:I
    .end local v16           #len$:I
    .end local v20           #tempMime:Ljava/lang/String;
    :cond_fb
    :goto_fb
    if-eqz v7, :cond_9c

    .line 607
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9c

    .line 598
    .restart local v13       #i$:I
    .restart local v16       #len$:I
    .restart local v20       #tempMime:Ljava/lang/String;
    :cond_105
    add-int/lit8 v13, v13, 0x1

    goto :goto_e8

    .line 617
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v7           #bAtt:Z
    .end local v13           #i$:I
    .end local v16           #len$:I
    .end local v19           #strMime:[Ljava/lang/String;
    .end local v20           #tempMime:Ljava/lang/String;
    :cond_108
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9c

    .line 604
    .restart local v3       #arr$:[Ljava/lang/String;
    .restart local v7       #bAtt:Z
    .restart local v19       #strMime:[Ljava/lang/String;
    :catch_110
    move-exception v21

    goto :goto_fb
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "s"

    .prologue
    .line 71
    if-nez p0, :cond_4

    .line 72
    const/4 v0, 0x0

    .line 78
    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeGeneric(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static decodeBody(Ljava/io/InputStream;Ljava/lang/String;)Lcom/android/emailcommon/mail/Body;
    .registers 5
    .parameter "in"
    .parameter "contentTransferEncoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 511
    invoke-static {p0, p1}, Lcom/android/emailcommon/internet/MimeUtility;->getInputStreamForContentTransferEncoding(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 512
    new-instance v1, Lcom/android/emailcommon/internet/BinaryTempFileBody;

    invoke-direct {v1}, Lcom/android/emailcommon/internet/BinaryTempFileBody;-><init>()V

    .line 513
    .local v1, tempBody:Lcom/android/emailcommon/internet/BinaryTempFileBody;
    invoke-virtual {v1}, Lcom/android/emailcommon/internet/BinaryTempFileBody;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 515
    .local v0, out:Ljava/io/OutputStream;
    :try_start_d
    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_1d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_16

    .line 523
    if-eqz v0, :cond_15

    .line 524
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 526
    :cond_15
    :goto_15
    return-object v1

    .line 518
    :catch_16
    move-exception v2

    .line 523
    if-eqz v0, :cond_15

    .line 524
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    goto :goto_15

    .line 523
    :catchall_1d
    move-exception v2

    if-eqz v0, :cond_23

    .line 524
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_23
    throw v2
.end method

.method public static fold(Ljava/lang/String;I)Ljava/lang/String;
    .registers 11
    .parameter "s"
    .parameter "usedCharacters"

    .prologue
    const/16 v8, 0x4c

    const/4 v7, 0x0

    .line 144
    const/16 v2, 0x4c

    .line 146
    .local v2, maxCharacters:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 147
    .local v1, length:I
    add-int v6, p1, v1

    if-gt v6, v8, :cond_e

    .line 157
    .end local p0
    :goto_d
    return-object p0

    .line 150
    .restart local p0
    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .local v4, sb:Ljava/lang/StringBuilder;
    neg-int v0, p1

    .line 153
    .local v0, lastLineBreak:I
    invoke-static {p0, v7}, Lcom/android/emailcommon/internet/MimeUtility;->indexOfWsp(Ljava/lang/String;I)I

    move-result v5

    .line 155
    .local v5, wspIdx:I
    :goto_18
    if-ne v5, v1, :cond_2a

    .line 156
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_d

    .line 160
    :cond_2a
    add-int/lit8 v6, v5, 0x1

    invoke-static {p0, v6}, Lcom/android/emailcommon/internet/MimeUtility;->indexOfWsp(Ljava/lang/String;I)I

    move-result v3

    .line 162
    .local v3, nextWspIdx:I
    sub-int v6, v3, v0

    if-le v6, v8, :cond_45

    .line 163
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string v6, "\r\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    move v0, v5

    .line 168
    :cond_45
    move v5, v3

    .line 169
    goto :goto_18
.end method

.method public static foldAndEncode2(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .parameter "s"
    .parameter "usedCharacters"

    .prologue
    .line 121
    sget-object v1, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;->TEXT_TOKEN:Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    invoke-static {p0, v1, p1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeIfNecessary(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;I)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, encoded:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/emailcommon/internet/MimeUtility;->fold(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .parameter "header"
    .parameter "name"

    .prologue
    const/4 v11, 0x2

    const/4 v4, 0x0

    const/4 v10, 0x1

    .line 204
    if-nez p0, :cond_6

    .line 227
    :cond_5
    :goto_5
    return-object v4

    .line 207
    :cond_6
    invoke-static {p0}, Lcom/android/emailcommon/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 208
    .local v7, parts:[Ljava/lang/String;
    if-nez p1, :cond_1a

    .line 209
    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    .line 211
    :cond_1a
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, lowerCaseName:Ljava/lang/String;
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_21
    if-ge v1, v2, :cond_5

    aget-object v6, v0, v1

    .line 213
    .local v6, part:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_63

    .line 214
    const-string v8, "="

    invoke-virtual {v6, v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 215
    .local v5, parameterParts:[Ljava/lang/String;
    array-length v8, v5

    if-lt v8, v11, :cond_5

    .line 218
    aget-object v8, v5, v10

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 219
    .local v4, parameter:Ljava/lang/String;
    const-string v8, "\""

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "\""

    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v10, :cond_5

    .line 221
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v4, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    .line 212
    .end local v4           #parameter:Ljava/lang/String;
    .end local v5           #parameterParts:[Ljava/lang/String;
    :cond_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_21
.end method

.method public static getInputStreamForContentTransferEncoding(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4
    .parameter "in"
    .parameter "contentTransferEncoding"

    .prologue
    .line 490
    if-eqz p1, :cond_15

    .line 491
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 492
    const-string v1, "quoted-printable"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 493
    new-instance v0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;

    invoke-direct {v0, p0}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p0
    .local v0, in:Ljava/io/InputStream;
    move-object p0, v0

    .line 500
    .end local v0           #in:Ljava/io/InputStream;
    .restart local p0
    :cond_15
    :goto_15
    return-object p0

    .line 494
    :cond_16
    const-string v1, "base64"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 497
    new-instance v0, Lorg/apache/james/mime4j/decoder/Base64InputStream;

    invoke-direct {v0, p0}, Lorg/apache/james/mime4j/decoder/Base64InputStream;-><init>(Ljava/io/InputStream;)V

    .end local p0
    .restart local v0       #in:Ljava/io/InputStream;
    move-object p0, v0

    .end local v0           #in:Ljava/io/InputStream;
    .restart local p0
    goto :goto_15
.end method

.method public static getPart(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/emailcommon/mail/Part;
    .registers 6
    .parameter
    .parameter "ctype"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Part;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/emailcommon/mail/Part;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 623
    .local p0, viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/mail/Part;

    .line 624
    .local v1, part:Lcom/android/emailcommon/mail/Part;
    invoke-interface {v1}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c

    invoke-interface {v1}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 629
    .end local v1           #part:Lcom/android/emailcommon/mail/Part;
    :cond_2c
    :goto_2c
    return-object v1

    :cond_2d
    const/4 v1, 0x0

    goto :goto_2c
.end method

.method public static getTextFromPart(Lcom/android/emailcommon/mail/Part;)Ljava/lang/String;
    .registers 11
    .parameter "part"

    .prologue
    .line 274
    const/4 v2, 0x0

    .line 276
    .local v2, in:Ljava/io/InputStream;
    if-eqz p0, :cond_64

    :try_start_3
    invoke-interface {p0}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v7

    if-eqz v7, :cond_64

    .line 277
    invoke-interface {p0}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/emailcommon/mail/Body;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 278
    invoke-interface {p0}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v3

    .line 279
    .local v3, mimeType:Ljava/lang/String;
    if-eqz v3, :cond_64

    const-string v7, "text/*"

    invoke-static {v3, v7}, Lcom/android/emailcommon/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_64

    .line 285
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 286
    .local v5, out:Ljava/io/ByteArrayOutputStream;
    if-eqz v2, :cond_2c

    .line 288
    invoke-static {v2, v5}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 289
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 291
    :cond_2c
    const/4 v2, 0x0

    .line 298
    invoke-interface {p0}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "charset"

    invoke-static {v7, v8}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, charset:Ljava/lang/String;
    if-eqz v0, :cond_47

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_47

    const-string v7, ""

    if-eq v0, v7, :cond_47

    .line 304
    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil;->toJavaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    :cond_47
    if-eqz v0, :cond_53

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_53

    const-string v7, ""

    if-ne v0, v7, :cond_57

    .line 311
    :cond_53
    invoke-static {}, Lorg/apache/james/mime4j/util/CharsetUtil;->getLocalCharset()Ljava/lang/String;

    move-result-object v0

    .line 316
    :cond_57
    if-nez v0, :cond_5b

    .line 317
    const-string v0, "ASCII"

    .line 322
    :cond_5b
    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 323
    .local v6, result:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_62
    .catchall {:try_start_3 .. :try_end_62} :catchall_af
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_62} :catch_69
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_62} :catch_8c

    .line 345
    :try_start_62
    throw v2
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_63} :catch_b4

    .line 349
    .end local v0           #charset:Ljava/lang/String;
    .end local v3           #mimeType:Ljava/lang/String;
    .end local v5           #out:Ljava/io/ByteArrayOutputStream;
    .end local v6           #result:Ljava/lang/String;
    :goto_63
    return-object v6

    .line 345
    :cond_64
    :try_start_64
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_67} :catch_b6

    .line 349
    :goto_67
    const/4 v6, 0x0

    goto :goto_63

    .line 328
    :catch_69
    move-exception v4

    .line 334
    .local v4, oom:Ljava/lang/OutOfMemoryError;
    :try_start_6a
    const-string v7, "Email"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to getTextFromPart "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catchall {:try_start_6a .. :try_end_86} :catchall_af

    .line 345
    :try_start_86
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_89} :catch_8a

    goto :goto_67

    .line 346
    :catch_8a
    move-exception v7

    goto :goto_67

    .line 335
    .end local v4           #oom:Ljava/lang/OutOfMemoryError;
    :catch_8c
    move-exception v1

    .line 341
    .local v1, e:Ljava/lang/Exception;
    :try_start_8d
    const-string v7, "Email"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to getTextFromPart "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a9
    .catchall {:try_start_8d .. :try_end_a9} :catchall_af

    .line 345
    :try_start_a9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_ac} :catch_ad

    goto :goto_67

    .line 346
    :catch_ad
    move-exception v7

    goto :goto_67

    .line 344
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_af
    move-exception v7

    .line 345
    :try_start_b0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_b3} :catch_b8

    .line 347
    :goto_b3
    throw v7

    .line 346
    .restart local v0       #charset:Ljava/lang/String;
    .restart local v3       #mimeType:Ljava/lang/String;
    .restart local v5       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #result:Ljava/lang/String;
    :catch_b4
    move-exception v7

    goto :goto_63

    .end local v0           #charset:Ljava/lang/String;
    .end local v3           #mimeType:Ljava/lang/String;
    .end local v5           #out:Ljava/io/ByteArrayOutputStream;
    .end local v6           #result:Ljava/lang/String;
    :catch_b6
    move-exception v7

    goto :goto_67

    :catch_b8
    move-exception v8

    goto :goto_b3
.end method

.method private static indexOfWsp(Ljava/lang/String;I)I
    .registers 6
    .parameter "s"
    .parameter "fromIndex"

    .prologue
    .line 177
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 178
    .local v2, len:I
    move v1, p1

    .local v1, index:I
    :goto_5
    if-ge v1, v2, :cond_17

    .line 179
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 180
    .local v0, c:C
    const/16 v3, 0x20

    if-eq v0, v3, :cond_13

    const/16 v3, 0x9

    if-ne v0, v3, :cond_14

    .line 183
    .end local v0           #c:C
    .end local v1           #index:I
    :cond_13
    :goto_13
    return v1

    .line 178
    .restart local v0       #c:C
    .restart local v1       #index:I
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .end local v0           #c:C
    :cond_17
    move v1, v2

    .line 183
    goto :goto_13
.end method

.method public static mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter "mimeType"
    .parameter "matchAgainst"

    .prologue
    .line 456
    const-string v1, "\\*"

    const-string v2, "\\.\\*"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 458
    .local v0, p:Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method public static mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 7
    .parameter "mimeType"
    .parameter "matchAgainst"

    .prologue
    .line 472
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_3
    if-ge v1, v2, :cond_12

    aget-object v3, v0, v1

    .line 473
    .local v3, matchType:Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/android/emailcommon/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 474
    const/4 v4, 0x1

    .line 477
    .end local v3           #matchType:Ljava/lang/String;
    :goto_e
    return v4

    .line 472
    .restart local v3       #matchType:Ljava/lang/String;
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 477
    .end local v3           #matchType:Ljava/lang/String;
    :cond_12
    const/4 v4, 0x0

    goto :goto_e
.end method

.method public static unfold(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "s"

    .prologue
    .line 59
    if-nez p0, :cond_4

    .line 60
    const/4 p0, 0x0

    .line 67
    .local v0, patternMatcher:Ljava/util/regex/Matcher;
    :cond_3
    :goto_3
    return-object p0

    .line 62
    .end local v0           #patternMatcher:Ljava/util/regex/Matcher;
    :cond_4
    sget-object v1, Lcom/android/emailcommon/internet/MimeUtility;->PATTERN_CR_OR_LF:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 63
    .restart local v0       #patternMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 64
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    .line 65
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3
.end method

.method public static unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "s"

    .prologue
    .line 83
    invoke-static {p0}, Lcom/android/emailcommon/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/internet/MimeUtility;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unfoldAndDecode2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "s"
    .parameter "charset"

    .prologue
    .line 87
    invoke-static {p0}, Lcom/android/emailcommon/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, s2:Ljava/lang/String;
    if-nez v0, :cond_8

    .line 89
    const/4 v1, 0x0

    .line 94
    :goto_7
    return-object v1

    .line 91
    :cond_8
    const-string v1, "=?"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_18

    if-eqz p1, :cond_18

    .line 92
    invoke-static {p0, p1}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->justDecode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    .line 94
    :cond_18
    invoke-static {p0}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeGeneric(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method
