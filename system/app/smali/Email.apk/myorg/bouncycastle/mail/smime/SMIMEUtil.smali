.class public Lmyorg/bouncycastle/mail/smime/SMIMEUtil;
.super Ljava/lang/Object;
.source "SMIMEUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmyorg/bouncycastle/mail/smime/SMIMEUtil$Base64CRLFOutputStream;,
        Lmyorg/bouncycastle/mail/smime/SMIMEUtil$WriteOnceFileBackedMimeBodyPart;,
        Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 451
    return-void
.end method

.method public static getProvider(Ljava/lang/String;)Ljava/security/Provider;
    .registers 5
    .parameter "providerName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 47
    if-eqz p0, :cond_28

    .line 48
    invoke-static {p0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 50
    .local v0, prov:Ljava/security/Provider;
    if-eqz v0, :cond_9

    .line 57
    .end local v0           #prov:Ljava/security/Provider;
    :goto_8
    return-object v0

    .line 54
    .restart local v0       #prov:Ljava/security/Provider;
    :cond_9
    new-instance v1, Ljava/security/NoSuchProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    .end local v0           #prov:Ljava/security/Provider;
    :cond_28
    const/4 v0, 0x0

    goto :goto_8
.end method

.method static isCanonicalisationRequired(Ljavax/mail/internet/MimeBodyPart;Ljava/lang/String;)Z
    .registers 6
    .parameter "bodyPart"
    .parameter "defaultContentTransferEncoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 34
    const-string v3, "Content-Transfer-Encoding"

    invoke-virtual {p0, v3}, Ljavax/mail/internet/MimeBodyPart;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, cte:[Ljava/lang/String;
    if-nez v1, :cond_14

    .line 38
    move-object v0, p1

    .line 43
    .local v0, contentTransferEncoding:Ljava/lang/String;
    :goto_a
    const-string v3, "binary"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13

    const/4 v2, 0x1

    :cond_13
    return v2

    .line 40
    .end local v0           #contentTransferEncoding:Ljava/lang/String;
    :cond_14
    aget-object v0, v1, v2

    .restart local v0       #contentTransferEncoding:Ljava/lang/String;
    goto :goto_a
.end method

.method static outputBodyPart(Ljava/io/OutputStream;Ljavax/mail/BodyPart;Ljava/lang/String;)V
    .registers 27
    .parameter "out"
    .parameter "bodyPart"
    .parameter "defaultContentTransferEncoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/mail/internet/MimeBodyPart;

    move/from16 v22, v0

    if-eqz v22, :cond_19a

    move-object/from16 v16, p1

    .line 229
    check-cast v16, Ljavax/mail/internet/MimeBodyPart;

    .line 230
    .local v16, mimePart:Ljavax/mail/internet/MimeBodyPart;
    const-string v22, "Content-Transfer-Encoding"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeBodyPart;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 234
    .local v8, cte:[Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljavax/mail/internet/MimeBodyPart;->getContentType()Ljava/lang/String;

    move-result-object v22

    const-string v23, "multipart"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_dc

    invoke-virtual/range {v16 .. v16}, Ljavax/mail/internet/MimeBodyPart;->getContentType()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v23, "multipart/related"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_dc

    .line 238
    invoke-virtual/range {p1 .. p1}, Ljavax/mail/BodyPart;->getContent()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljavax/mail/internet/MimeMultipart;

    .line 239
    .local v17, mp:Ljavax/mail/internet/MimeMultipart;
    new-instance v7, Ljavax/mail/internet/ContentType;

    invoke-virtual/range {v17 .. v17}, Ljavax/mail/internet/MimeMultipart;->getContentType()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v7, v0}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 240
    .local v7, contentType:Ljavax/mail/internet/ContentType;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "--"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "boundary"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 242
    .local v4, boundary:Ljava/lang/String;
    new-instance v14, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 244
    .local v14, lOut:Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;
    invoke-virtual/range {v16 .. v16}, Ljavax/mail/internet/MimeBodyPart;->getAllHeaderLines()Ljava/util/Enumeration;

    move-result-object v11

    .line 245
    .local v11, headers:Ljava/util/Enumeration;
    :goto_69
    invoke-interface {v11}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v22

    if-eqz v22, :cond_79

    .line 246
    invoke-interface {v11}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 247
    .local v10, header:Ljava/lang/String;
    invoke-virtual {v14, v10}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;->writeln(Ljava/lang/String;)V

    goto :goto_69

    .line 250
    .end local v10           #header:Ljava/lang/String;
    :cond_79
    invoke-virtual {v14}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;->writeln()V

    .line 252
    move-object/from16 v0, v16

    invoke-static {v14, v0, v4}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil;->outputPreamble(Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;Ljavax/mail/internet/MimeBodyPart;Ljava/lang/String;)V

    .line 254
    const/4 v12, 0x0

    .local v12, i:I
    :goto_82
    invoke-virtual/range {v17 .. v17}, Ljavax/mail/internet/MimeMultipart;->getCount()I

    move-result v22

    move/from16 v0, v22

    if-ge v12, v0, :cond_b6

    .line 255
    invoke-virtual {v14, v4}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;->writeln(Ljava/lang/String;)V

    .line 256
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljavax/mail/internet/MimeMultipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v21

    .line 257
    .local v21, part:Ljavax/mail/BodyPart;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil;->outputBodyPart(Ljava/io/OutputStream;Ljavax/mail/BodyPart;Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {v21 .. v21}, Ljavax/mail/BodyPart;->getContentType()Ljava/lang/String;

    move-result-object v22

    const-string v23, "multipart"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_ae

    .line 268
    invoke-virtual {v14}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;->writeln()V

    .line 254
    :goto_ab
    add-int/lit8 v12, v12, 0x1

    goto :goto_82

    .line 270
    :cond_ae
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-static {v14, v0, v4, v1}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil;->outputPostamble(Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;Ljavax/mail/BodyPart;Ljava/lang/String;Ljavax/mail/BodyPart;)V

    goto :goto_ab

    .line 274
    .end local v21           #part:Ljavax/mail/BodyPart;
    :cond_b6
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "--"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;->writeln(Ljava/lang/String;)V

    .line 276
    invoke-virtual/range {v17 .. v17}, Ljavax/mail/internet/MimeMultipart;->getCount()I

    move-result v22

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-static {v14, v0, v1, v4}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil;->outputPostamble(Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;Ljavax/mail/internet/MimeBodyPart;ILjava/lang/String;)V

    .line 355
    .end local v4           #boundary:Ljava/lang/String;
    .end local v7           #contentType:Ljavax/mail/internet/ContentType;
    .end local v8           #cte:[Ljava/lang/String;
    .end local v11           #headers:Ljava/util/Enumeration;
    .end local v12           #i:I
    .end local v14           #lOut:Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;
    .end local v16           #mimePart:Ljavax/mail/internet/MimeBodyPart;
    .end local v17           #mp:Ljavax/mail/internet/MimeMultipart;
    :goto_db
    return-void

    .line 281
    .restart local v8       #cte:[Ljava/lang/String;
    .restart local v16       #mimePart:Ljavax/mail/internet/MimeBodyPart;
    :cond_dc
    if-nez v8, :cond_114

    .line 282
    move-object/from16 v6, p2

    .line 287
    .local v6, contentTransferEncoding:Ljava/lang/String;
    :goto_e0
    const-string v22, "base64"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_119

    const-string v22, "quoted-printable"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_119

    .line 289
    const-string v22, "binary"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_109

    .line 290
    new-instance v18, Lmyorg/bouncycastle/mail/smime/util/CRLFOutputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/mail/smime/util/CRLFOutputStream;-><init>(Ljava/io/OutputStream;)V

    .end local p0
    .local v18, out:Ljava/io/OutputStream;
    move-object/from16 p0, v18

    .line 292
    .end local v18           #out:Ljava/io/OutputStream;
    .restart local p0
    :cond_109
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljavax/mail/BodyPart;->writeTo(Ljava/io/OutputStream;)V

    .line 293
    invoke-virtual/range {p0 .. p0}, Ljava/io/OutputStream;->flush()V

    goto :goto_db

    .line 284
    .end local v6           #contentTransferEncoding:Ljava/lang/String;
    :cond_114
    const/16 v22, 0x0

    aget-object v6, v8, v22

    .restart local v6       #contentTransferEncoding:Ljava/lang/String;
    goto :goto_e0

    .line 297
    :cond_119
    const-string v22, "base64"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 305
    .local v3, base64:Z
    :try_start_121
    invoke-virtual/range {v16 .. v16}, Ljavax/mail/internet/MimeBodyPart;->getRawInputStream()Ljava/io/InputStream;
    :try_end_124
    .catch Ljavax/mail/MessagingException; {:try_start_121 .. :try_end_124} :catch_144

    move-result-object v13

    .line 319
    .local v13, inRaw:Ljava/io/InputStream;
    new-instance v20, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 320
    .local v20, outLine:Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;
    invoke-virtual/range {v16 .. v16}, Ljavax/mail/internet/MimeBodyPart;->getAllHeaderLines()Ljava/util/Enumeration;

    move-result-object v9

    .local v9, e:Ljava/util/Enumeration;
    :goto_132
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v22

    if-eqz v22, :cond_15b

    .line 321
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 323
    .restart local v10       #header:Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;->writeln(Ljava/lang/String;)V

    goto :goto_132

    .line 306
    .end local v9           #e:Ljava/util/Enumeration;
    .end local v10           #header:Ljava/lang/String;
    .end local v13           #inRaw:Ljava/io/InputStream;
    .end local v20           #outLine:Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;
    :catch_144
    move-exception v9

    .line 310
    .local v9, e:Ljavax/mail/MessagingException;
    new-instance v18, Lmyorg/bouncycastle/mail/smime/util/CRLFOutputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/mail/smime/util/CRLFOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 311
    .end local p0
    .restart local v18       #out:Ljava/io/OutputStream;
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljavax/mail/BodyPart;->writeTo(Ljava/io/OutputStream;)V

    .line 312
    invoke-virtual/range {v18 .. v18}, Ljava/io/FilterOutputStream;->flush()V

    move-object/from16 p0, v18

    .line 313
    .end local v18           #out:Ljava/io/OutputStream;
    .restart local p0
    goto :goto_db

    .line 326
    .local v9, e:Ljava/util/Enumeration;
    .restart local v13       #inRaw:Ljava/io/InputStream;
    .restart local v20       #outLine:Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;
    :cond_15b
    invoke-virtual/range {v20 .. v20}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;->writeln()V

    .line 327
    invoke-virtual/range {v20 .. v20}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;->flush()V

    .line 331
    if-eqz v3, :cond_18b

    .line 332
    new-instance v19, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$Base64CRLFOutputStream;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$Base64CRLFOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 337
    .local v19, outCRLF:Ljava/io/OutputStream;
    :goto_16c
    const/16 v22, 0x7ff8

    move/from16 v0, v22

    new-array v5, v0, [B

    .line 340
    .local v5, buf:[B
    :goto_172
    const/16 v22, 0x0

    array-length v0, v5

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v13, v5, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v15

    .local v15, len:I
    if-lez v15, :cond_195

    .line 342
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v5, v1, v15}, Ljava/io/FilterOutputStream;->write([BII)V

    goto :goto_172

    .line 334
    .end local v5           #buf:[B
    .end local v15           #len:I
    .end local v19           #outCRLF:Ljava/io/OutputStream;
    :cond_18b
    new-instance v19, Lmyorg/bouncycastle/mail/smime/util/CRLFOutputStream;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/mail/smime/util/CRLFOutputStream;-><init>(Ljava/io/OutputStream;)V

    .restart local v19       #outCRLF:Ljava/io/OutputStream;
    goto :goto_16c

    .line 345
    .restart local v5       #buf:[B
    .restart local v15       #len:I
    :cond_195
    invoke-virtual/range {v19 .. v19}, Ljava/io/FilterOutputStream;->flush()V

    goto/16 :goto_db

    .line 347
    .end local v3           #base64:Z
    .end local v5           #buf:[B
    .end local v6           #contentTransferEncoding:Ljava/lang/String;
    .end local v8           #cte:[Ljava/lang/String;
    .end local v9           #e:Ljava/util/Enumeration;
    .end local v13           #inRaw:Ljava/io/InputStream;
    .end local v15           #len:I
    .end local v16           #mimePart:Ljavax/mail/internet/MimeBodyPart;
    .end local v19           #outCRLF:Ljava/io/OutputStream;
    .end local v20           #outLine:Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;
    :cond_19a
    const-string v22, "binary"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_1b1

    .line 348
    new-instance v18, Lmyorg/bouncycastle/mail/smime/util/CRLFOutputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/mail/smime/util/CRLFOutputStream;-><init>(Ljava/io/OutputStream;)V

    .end local p0
    .restart local v18       #out:Ljava/io/OutputStream;
    move-object/from16 p0, v18

    .line 351
    .end local v18           #out:Ljava/io/OutputStream;
    .restart local p0
    :cond_1b1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljavax/mail/BodyPart;->writeTo(Ljava/io/OutputStream;)V

    .line 353
    invoke-virtual/range {p0 .. p0}, Ljava/io/OutputStream;->flush()V

    goto/16 :goto_db
.end method

.method static outputPostamble(Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;Ljavax/mail/BodyPart;Ljava/lang/String;Ljavax/mail/BodyPart;)V
    .registers 13
    .parameter "lOut"
    .parameter "parent"
    .parameter "parentBoundary"
    .parameter "part"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    :try_start_0
    check-cast p1, Ljavax/mail/internet/MimeBodyPart;

    .end local p1
    invoke-virtual {p1}, Ljavax/mail/internet/MimeBodyPart;->getRawInputStream()Ljava/io/InputStream;
    :try_end_5
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_5} :catch_45

    move-result-object v4

    .line 185
    .local v4, in:Ljava/io/InputStream;
    invoke-virtual {p3}, Ljavax/mail/BodyPart;->getContent()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/mail/internet/MimeMultipart;

    .line 186
    .local v6, multipart:Ljavax/mail/internet/MimeMultipart;
    new-instance v1, Ljavax/mail/internet/ContentType;

    invoke-virtual {v6}, Ljavax/mail/internet/MimeMultipart;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 187
    .local v1, contentType:Ljavax/mail/internet/ContentType;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "boundary"

    invoke-virtual {v1, v8}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, boundary:Ljava/lang/String;
    invoke-virtual {v6}, Ljavax/mail/internet/MimeMultipart;->getCount()I

    move-result v7

    add-int/lit8 v2, v7, 0x1

    .line 190
    .local v2, count:I
    :cond_34
    :goto_34
    if-eqz v2, :cond_4a

    invoke-static {v4}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .local v5, line:Ljava/lang/String;
    if-eqz v5, :cond_4a

    .line 191
    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_34

    .line 192
    add-int/lit8 v2, v2, -0x1

    goto :goto_34

    .line 181
    .end local v0           #boundary:Ljava/lang/String;
    .end local v1           #contentType:Ljavax/mail/internet/ContentType;
    .end local v2           #count:I
    .end local v4           #in:Ljava/io/InputStream;
    .end local v5           #line:Ljava/lang/String;
    .end local v6           #multipart:Ljavax/mail/internet/MimeMultipart;
    :catch_45
    move-exception v3

    .line 204
    :goto_46
    return-void

    .line 200
    .restart local v0       #boundary:Ljava/lang/String;
    .restart local v1       #contentType:Ljavax/mail/internet/ContentType;
    .restart local v2       #count:I
    .restart local v4       #in:Ljava/io/InputStream;
    .restart local v5       #line:Ljava/lang/String;
    .restart local v6       #multipart:Ljavax/mail/internet/MimeMultipart;
    :cond_47
    invoke-virtual {p0, v5}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;->writeln(Ljava/lang/String;)V

    .line 196
    .end local v5           #line:Ljava/lang/String;
    :cond_4a
    invoke-static {v4}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #line:Ljava/lang/String;
    if-eqz v5, :cond_56

    .line 197
    invoke-virtual {v5, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_47

    .line 203
    :cond_56
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_46
.end method

.method static outputPostamble(Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;Ljavax/mail/internet/MimeBodyPart;ILjava/lang/String;)V
    .registers 11
    .parameter "lOut"
    .parameter "part"
    .parameter "count"
    .parameter "boundary"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    :try_start_0
    invoke-virtual {p1}, Ljavax/mail/internet/MimeBodyPart;->getRawInputStream()Ljava/io/InputStream;
    :try_end_3
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_3} :catch_20

    move-result-object v2

    .line 152
    .local v2, in:Ljava/io/InputStream;
    add-int/lit8 v0, p2, 0x1

    .line 154
    .local v0, boundaries:I
    :cond_6
    invoke-static {v2}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .local v3, line:Ljava/lang/String;
    if-eqz v3, :cond_16

    .line 155
    invoke-virtual {v3, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 156
    add-int/lit8 v0, v0, -0x1

    .line 158
    if-nez v0, :cond_6

    .line 164
    :cond_16
    :goto_16
    invoke-static {v2}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_22

    .line 165
    invoke-virtual {p0, v3}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;->writeln(Ljava/lang/String;)V

    goto :goto_16

    .line 147
    .end local v0           #boundaries:I
    .end local v2           #in:Ljava/io/InputStream;
    .end local v3           #line:Ljava/lang/String;
    :catch_20
    move-exception v1

    .line 173
    :cond_21
    return-void

    .line 168
    .restart local v0       #boundaries:I
    .restart local v2       #in:Ljava/io/InputStream;
    .restart local v3       #line:Ljava/lang/String;
    :cond_22
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 170
    if-eqz v0, :cond_21

    .line 171
    new-instance v4, Ljavax/mail/MessagingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "all boundaries not found for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method static outputPreamble(Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;Ljavax/mail/internet/MimeBodyPart;Ljava/lang/String;)V
    .registers 8
    .parameter "lOut"
    .parameter "part"
    .parameter "boundary"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    :try_start_0
    invoke-virtual {p1}, Ljavax/mail/internet/MimeBodyPart;->getRawInputStream()Ljava/io/InputStream;
    :try_end_3
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_3} :catch_1d

    move-result-object v1

    .line 121
    .local v1, in:Ljava/io/InputStream;
    :goto_4
    invoke-static {v1}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .local v2, line:Ljava/lang/String;
    if-eqz v2, :cond_10

    .line 122
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 129
    :cond_10
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 131
    if-nez v2, :cond_1e

    .line 132
    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "no boundary found"

    invoke-direct {v3, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 115
    .end local v1           #in:Ljava/io/InputStream;
    .end local v2           #line:Ljava/lang/String;
    :catch_1d
    move-exception v0

    .line 134
    :cond_1e
    return-void

    .line 126
    .restart local v1       #in:Ljava/io/InputStream;
    .restart local v2       #line:Ljava/lang/String;
    :cond_1f
    invoke-virtual {p0, v2}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil$LineOutputStream;->writeln(Ljava/lang/String;)V

    goto :goto_4
.end method

.method private static readLine(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 213
    .local v0, b:Ljava/lang/StringBuffer;
    :cond_5
    :goto_5
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .local v1, ch:I
    if-ltz v1, :cond_18

    const/16 v2, 0xa

    if-eq v1, v2, :cond_18

    .line 214
    const/16 v2, 0xd

    if-eq v1, v2, :cond_5

    .line 215
    int-to-char v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 219
    :cond_18
    if-gez v1, :cond_22

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-nez v2, :cond_22

    .line 220
    const/4 v2, 0x0

    .line 223
    :goto_21
    return-object v2

    :cond_22
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_21
.end method

.method public static toMimeBodyPart(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;
    .registers 4
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/mail/smime/SMIMEException;
        }
    .end annotation

    .prologue
    .line 369
    :try_start_0
    new-instance v1, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v1, p0}, Ljavax/mail/internet/MimeBodyPart;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v1

    .line 370
    :catch_6
    move-exception v0

    .line 371
    .local v0, e:Ljavax/mail/MessagingException;
    new-instance v1, Lmyorg/bouncycastle/mail/smime/SMIMEException;

    const-string v2, "exception creating body part."

    invoke-direct {v1, v2, v0}, Lmyorg/bouncycastle/mail/smime/SMIMEException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public static toMimeBodyPart([B)Ljavax/mail/internet/MimeBodyPart;
    .registers 2
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/mail/smime/SMIMEException;
        }
    .end annotation

    .prologue
    .line 361
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil;->toMimeBodyPart(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v0

    return-object v0
.end method

.method public static toMimeBodyPart(Lmyorg/bouncycastle/cms/CMSTypedStream;)Lmyorg/bouncycastle/mail/smime/util/FileBackedMimeBodyPart;
    .registers 5
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/mail/smime/SMIMEException;
        }
    .end annotation

    .prologue
    .line 393
    :try_start_0
    const-string v1, "bcMail"

    const-string v2, ".mime"

    invoke-static {v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {p0, v1}, Lmyorg/bouncycastle/mail/smime/SMIMEUtil;->toMimeBodyPart(Lmyorg/bouncycastle/cms/CMSTypedStream;Ljava/io/File;)Lmyorg/bouncycastle/mail/smime/util/FileBackedMimeBodyPart;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v1

    return-object v1

    .line 394
    :catch_d
    move-exception v0

    .line 395
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lmyorg/bouncycastle/mail/smime/SMIMEException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException creating tmp file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lmyorg/bouncycastle/mail/smime/SMIMEException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public static toMimeBodyPart(Lmyorg/bouncycastle/cms/CMSTypedStream;Ljava/io/File;)Lmyorg/bouncycastle/mail/smime/util/FileBackedMimeBodyPart;
    .registers 6
    .parameter "content"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmyorg/bouncycastle/mail/smime/SMIMEException;
        }
    .end annotation

    .prologue
    .line 411
    :try_start_0
    new-instance v1, Lmyorg/bouncycastle/mail/smime/util/FileBackedMimeBodyPart;

    invoke-virtual {p0}, Lmyorg/bouncycastle/cms/CMSTypedStream;->getContentStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lmyorg/bouncycastle/mail/smime/util/FileBackedMimeBodyPart;-><init>(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_9} :catch_24

    return-object v1

    .line 412
    :catch_a
    move-exception v0

    .line 413
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lmyorg/bouncycastle/mail/smime/SMIMEException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t save content to file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lmyorg/bouncycastle/mail/smime/SMIMEException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 414
    .end local v0           #e:Ljava/io/IOException;
    :catch_24
    move-exception v0

    .line 415
    .local v0, e:Ljavax/mail/MessagingException;
    new-instance v1, Lmyorg/bouncycastle/mail/smime/SMIMEException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t create part: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lmyorg/bouncycastle/mail/smime/SMIMEException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method
