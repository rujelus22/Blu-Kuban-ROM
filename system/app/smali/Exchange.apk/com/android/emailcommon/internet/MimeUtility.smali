.class public Lcom/android/emailcommon/internet/MimeUtility;
.super Ljava/lang/Object;
.source "MimeUtility.java"


# static fields
.field private static final PATTERN_CR_OR_LF:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    const-string v0, "\r|\n"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/internet/MimeUtility;->PATTERN_CR_OR_LF:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 19
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
    .line 408
    .local p1, viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    .local p2, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    invoke-interface/range {p0 .. p0}, Lcom/android/emailcommon/mail/Part;->getDisposition()Ljava/lang/String;

    move-result-object v6

    .line 409
    .local v6, disposition:Ljava/lang/String;
    const/4 v8, 0x0

    .line 410
    .local v8, dispositionType:Ljava/lang/String;
    const/4 v7, 0x0

    .line 411
    .local v7, dispositionFilename:Ljava/lang/String;
    if-eqz v6, :cond_13

    .line 412
    const/4 v14, 0x0

    invoke-static {v6, v14}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 413
    const-string v14, "filename"

    invoke-static {v6, v14}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 418
    :cond_13
    if-nez v7, :cond_1f

    .line 419
    invoke-interface/range {p0 .. p0}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v5

    .line 420
    .local v5, contentType:Ljava/lang/String;
    const-string v14, "name"

    invoke-static {v5, v14}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 422
    .end local v5           #contentType:Ljava/lang/String;
    :cond_1f
    const-string v14, "attachment"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 424
    .local v3, attachmentDisposition:Z
    if-eqz v8, :cond_2f

    const-string v14, "inline"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_64

    :cond_2f
    const/4 v11, 0x1

    .line 428
    .local v11, inlineDisposition:Z
    :goto_30
    if-nez v3, :cond_36

    if-eqz v7, :cond_66

    if-nez v11, :cond_66

    :cond_36
    const/4 v2, 0x1

    .line 432
    .local v2, attachment:Z
    :goto_37
    if-eqz v11, :cond_68

    if-eqz v7, :cond_68

    const/4 v10, 0x1

    .line 435
    .local v10, inline:Z
    :goto_3c
    if-nez v2, :cond_40

    if-eqz v10, :cond_6a

    :cond_40
    const/4 v4, 0x1

    .line 437
    .local v4, attachmentOrInline:Z
    :goto_41
    invoke-interface/range {p0 .. p0}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v14

    instance-of v14, v14, Lcom/android/emailcommon/mail/Multipart;

    if-eqz v14, :cond_6c

    .line 441
    invoke-interface/range {p0 .. p0}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v13

    check-cast v13, Lcom/android/emailcommon/mail/Multipart;

    .line 442
    .local v13, mp:Lcom/android/emailcommon/mail/Multipart;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_50
    invoke-virtual {v13}, Lcom/android/emailcommon/mail/Multipart;->getCount()I

    move-result v14

    if-ge v9, v14, :cond_81

    .line 443
    invoke-virtual {v13, v9}, Lcom/android/emailcommon/mail/Multipart;->getBodyPart(I)Lcom/android/emailcommon/mail/BodyPart;

    move-result-object v14

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v14, v0, v1}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 442
    add-int/lit8 v9, v9, 0x1

    goto :goto_50

    .line 424
    .end local v2           #attachment:Z
    .end local v4           #attachmentOrInline:Z
    .end local v9           #i:I
    .end local v10           #inline:Z
    .end local v11           #inlineDisposition:Z
    .end local v13           #mp:Lcom/android/emailcommon/mail/Multipart;
    :cond_64
    const/4 v11, 0x0

    goto :goto_30

    .line 428
    .restart local v11       #inlineDisposition:Z
    :cond_66
    const/4 v2, 0x0

    goto :goto_37

    .line 432
    .restart local v2       #attachment:Z
    :cond_68
    const/4 v10, 0x0

    goto :goto_3c

    .line 435
    .restart local v10       #inline:Z
    :cond_6a
    const/4 v4, 0x0

    goto :goto_41

    .line 445
    .restart local v4       #attachmentOrInline:Z
    :cond_6c
    invoke-interface/range {p0 .. p0}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v14

    instance-of v14, v14, Lcom/android/emailcommon/mail/Message;

    if-eqz v14, :cond_82

    .line 448
    invoke-interface/range {p0 .. p0}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v12

    check-cast v12, Lcom/android/emailcommon/mail/Message;

    .line 449
    .local v12, message:Lcom/android/emailcommon/mail/Message;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v12, v0, v1}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 460
    .end local v12           #message:Lcom/android/emailcommon/mail/Message;
    :cond_81
    :goto_81
    return-void

    .line 450
    :cond_82
    if-nez v4, :cond_98

    const-string v14, "text/html"

    invoke-interface/range {p0 .. p0}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_98

    .line 452
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_81

    .line 453
    :cond_98
    if-nez v4, :cond_ae

    const-string v14, "text/plain"

    invoke-interface/range {p0 .. p0}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_ae

    .line 455
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_81

    .line 456
    :cond_ae
    if-eqz v4, :cond_81

    .line 458
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_81
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "s"

    .prologue
    .line 68
    if-nez p0, :cond_4

    .line 69
    const/4 v0, 0x0

    .line 71
    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0}, Lorg/apache/james/mime4j/decoder/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

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
    .line 380
    invoke-static {p0, p1}, Lcom/android/emailcommon/internet/MimeUtility;->getInputStreamForContentTransferEncoding(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 381
    new-instance v1, Lcom/android/emailcommon/internet/BinaryTempFileBody;

    invoke-direct {v1}, Lcom/android/emailcommon/internet/BinaryTempFileBody;-><init>()V

    .line 382
    .local v1, tempBody:Lcom/android/emailcommon/internet/BinaryTempFileBody;
    invoke-virtual {v1}, Lcom/android/emailcommon/internet/BinaryTempFileBody;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 384
    .local v0, out:Ljava/io/OutputStream;
    :try_start_d
    invoke-static {p0, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_19
    .catch Landroid/util/Base64DataException; {:try_start_d .. :try_end_10} :catch_14

    .line 390
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 392
    :goto_13
    return-object v1

    .line 385
    :catch_14
    move-exception v2

    .line 390
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    goto :goto_13

    :catchall_19
    move-exception v2

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    throw v2
.end method

.method public static fold(Ljava/lang/String;I)Ljava/lang/String;
    .registers 11
    .parameter "s"
    .parameter "usedCharacters"

    .prologue
    const/16 v8, 0x4c

    const/4 v7, 0x0

    .line 129
    const/16 v2, 0x4c

    .line 131
    .local v2, maxCharacters:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 132
    .local v1, length:I
    add-int v6, p1, v1

    if-gt v6, v8, :cond_e

    .line 142
    .end local p0
    :goto_d
    return-object p0

    .line 135
    .restart local p0
    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .local v4, sb:Ljava/lang/StringBuilder;
    neg-int v0, p1

    .line 138
    .local v0, lastLineBreak:I
    invoke-static {p0, v7}, Lcom/android/emailcommon/internet/MimeUtility;->indexOfWsp(Ljava/lang/String;I)I

    move-result v5

    .line 140
    .local v5, wspIdx:I
    :goto_18
    if-ne v5, v1, :cond_2a

    .line 141
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_d

    .line 145
    :cond_2a
    add-int/lit8 v6, v5, 0x1

    invoke-static {p0, v6}, Lcom/android/emailcommon/internet/MimeUtility;->indexOfWsp(Ljava/lang/String;I)I

    move-result v3

    .line 147
    .local v3, nextWspIdx:I
    sub-int v6, v3, v0

    if-le v6, v8, :cond_45

    .line 148
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const-string v6, "\r\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    move v0, v5

    .line 153
    :cond_45
    move v5, v3

    .line 154
    goto :goto_18
.end method

.method public static foldAndEncode2(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .parameter "s"
    .parameter "usedCharacters"

    .prologue
    .line 103
    sget-object v1, Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;->TEXT_TOKEN:Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;

    invoke-static {p0, v1, p1}, Lorg/apache/james/mime4j/codec/EncoderUtil;->encodeIfNecessary(Ljava/lang/String;Lorg/apache/james/mime4j/codec/EncoderUtil$Usage;I)Ljava/lang/String;

    move-result-object v0

    .line 106
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

    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 192
    if-nez p0, :cond_6

    .line 214
    :cond_5
    :goto_5
    return-object v4

    .line 195
    :cond_6
    invoke-static {p0}, Lcom/android/emailcommon/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 196
    .local v7, parts:[Ljava/lang/String;
    if-nez p1, :cond_1a

    .line 197
    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    .line 199
    :cond_1a
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 200
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

    .line 201
    .local v6, part:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5d

    .line 202
    const-string v8, "="

    invoke-virtual {v6, v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 203
    .local v5, parameterParts:[Ljava/lang/String;
    array-length v8, v5

    if-lt v8, v11, :cond_5

    .line 206
    aget-object v8, v5, v10

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 207
    .local v4, parameter:Ljava/lang/String;
    const-string v8, "\""

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "\""

    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 208
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v4, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    .line 200
    .end local v4           #parameter:Ljava/lang/String;
    .end local v5           #parameterParts:[Ljava/lang/String;
    :cond_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_21
.end method

.method public static getInputStreamForContentTransferEncoding(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4
    .parameter "in"
    .parameter "contentTransferEncoding"

    .prologue
    .line 359
    if-eqz p1, :cond_15

    .line 360
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 362
    const-string v1, "quoted-printable"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 363
    new-instance v0, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;

    invoke-direct {v0, p0}, Lorg/apache/james/mime4j/decoder/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p0
    .local v0, in:Ljava/io/InputStream;
    move-object p0, v0

    .line 369
    .end local v0           #in:Ljava/io/InputStream;
    .restart local p0
    :cond_15
    :goto_15
    return-object p0

    .line 365
    :cond_16
    const-string v1, "base64"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 366
    new-instance v0, Landroid/util/Base64InputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/util/Base64InputStream;-><init>(Ljava/io/InputStream;I)V

    .end local p0
    .restart local v0       #in:Ljava/io/InputStream;
    move-object p0, v0

    .end local v0           #in:Ljava/io/InputStream;
    .restart local p0
    goto :goto_15
.end method

.method public static getTextFromPart(Lcom/android/emailcommon/mail/Part;)Ljava/lang/String;
    .registers 11
    .parameter "part"

    .prologue
    .line 262
    if-eqz p0, :cond_63

    :try_start_2
    invoke-interface {p0}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v7

    if-eqz v7, :cond_63

    .line 263
    invoke-interface {p0}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/emailcommon/mail/Body;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 264
    .local v2, in:Ljava/io/InputStream;
    invoke-interface {p0}, Lcom/android/emailcommon/mail/Part;->getMimeType()Ljava/lang/String;

    move-result-object v3

    .line 265
    .local v3, mimeType:Ljava/lang/String;
    if-eqz v3, :cond_63

    const-string v7, "text/*"

    invoke-static {v3, v7}, Lcom/android/emailcommon/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_63

    .line 270
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 271
    .local v5, out:Ljava/io/ByteArrayOutputStream;
    invoke-static {v2, v5}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 272
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 273
    const/4 v2, 0x0

    .line 278
    invoke-interface {p0}, Lcom/android/emailcommon/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "charset"

    invoke-static {v7, v8}, Lcom/android/emailcommon/internet/MimeUtility;->getHeaderParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, charset:Ljava/lang/String;
    if-eqz v0, :cond_3a

    .line 283
    invoke-static {v0}, Lorg/apache/james/mime4j/util/CharsetUtil;->toJavaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    :cond_3a
    if-nez v0, :cond_3e

    .line 289
    const-string v0, "ASCII"

    .line 294
    :cond_3e
    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 295
    .local v6, result:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_45
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_45} :catch_46
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_45} :catch_65

    .line 315
    .end local v0           #charset:Ljava/lang/String;
    .end local v2           #in:Ljava/io/InputStream;
    .end local v3           #mimeType:Ljava/lang/String;
    .end local v5           #out:Ljava/io/ByteArrayOutputStream;
    .end local v6           #result:Ljava/lang/String;
    :goto_45
    return-object v6

    .line 301
    :catch_46
    move-exception v4

    .line 306
    .local v4, oom:Ljava/lang/OutOfMemoryError;
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

    .line 315
    .end local v4           #oom:Ljava/lang/OutOfMemoryError;
    :cond_63
    :goto_63
    const/4 v6, 0x0

    goto :goto_45

    .line 308
    :catch_65
    move-exception v1

    .line 313
    .local v1, e:Ljava/lang/Exception;
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

    goto :goto_63
.end method

.method private static indexOfWsp(Ljava/lang/String;I)I
    .registers 6
    .parameter "s"
    .parameter "fromIndex"

    .prologue
    .line 164
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 165
    .local v2, len:I
    move v1, p1

    .local v1, index:I
    :goto_5
    if-ge v1, v2, :cond_17

    .line 166
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 167
    .local v0, c:C
    const/16 v3, 0x20

    if-eq v0, v3, :cond_13

    const/16 v3, 0x9

    if-ne v0, v3, :cond_14

    .line 170
    .end local v0           #c:C
    .end local v1           #index:I
    :cond_13
    :goto_13
    return v1

    .line 165
    .restart local v0       #c:C
    .restart local v1       #index:I
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .end local v0           #c:C
    :cond_17
    move v1, v2

    .line 170
    goto :goto_13
.end method

.method public static mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter "mimeType"
    .parameter "matchAgainst"

    .prologue
    .line 327
    const-string v1, "\\*"

    const-string v2, "\\.\\*"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 329
    .local v0, p:Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method public static unfold(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "s"

    .prologue
    .line 56
    if-nez p0, :cond_4

    .line 57
    const/4 p0, 0x0

    .line 64
    .local v0, patternMatcher:Ljava/util/regex/Matcher;
    :cond_3
    :goto_3
    return-object p0

    .line 59
    .end local v0           #patternMatcher:Ljava/util/regex/Matcher;
    :cond_4
    sget-object v1, Lcom/android/emailcommon/internet/MimeUtility;->PATTERN_CR_OR_LF:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 60
    .restart local v0       #patternMatcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 61
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->reset()Ljava/util/regex/Matcher;

    .line 62
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3
.end method

.method public static unfoldAndDecode(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "s"

    .prologue
    .line 75
    invoke-static {p0}, Lcom/android/emailcommon/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/internet/MimeUtility;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
