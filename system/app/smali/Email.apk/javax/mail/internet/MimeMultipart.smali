.class public Ljavax/mail/internet/MimeMultipart;
.super Ljavax/mail/Multipart;
.source "MimeMultipart.java"


# instance fields
.field private complete:Z

.field protected ds:Ljavax/activation/DataSource;

.field private mark:J

.field protected parsed:Z

.field private position:J

.field private preamble:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 96
    const-string v0, "mixed"

    invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    .line 103
    invoke-direct {p0}, Ljavax/mail/Multipart;-><init>()V

    .line 508
    iput-wide v0, p0, Ljavax/mail/internet/MimeMultipart;->position:J

    iput-wide v0, p0, Ljavax/mail/internet/MimeMultipart;->mark:J

    .line 104
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getUniqueBoundaryValue()Ljava/lang/String;

    move-result-object v0

    .line 105
    new-instance v1, Ljavax/mail/internet/ContentType;

    const-string v2, "multipart"

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/mail/internet/ParameterList;)V

    .line 106
    const-string v2, "boundary"

    invoke-virtual {v1, v2, v0}, Ljavax/mail/internet/ContentType;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v1}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/Multipart;->contentType:Ljava/lang/String;

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    .line 109
    return-void
.end method

.method public constructor <init>(Ljavax/activation/DataSource;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .line 117
    invoke-direct {p0}, Ljavax/mail/Multipart;-><init>()V

    .line 508
    iput-wide v0, p0, Ljavax/mail/internet/MimeMultipart;->position:J

    iput-wide v0, p0, Ljavax/mail/internet/MimeMultipart;->mark:J

    .line 118
    instance-of v0, p1, Ljavax/mail/MessageAware;

    if-eqz v0, :cond_1b

    move-object v0, p1

    .line 120
    check-cast v0, Ljavax/mail/MessageAware;

    invoke-interface {v0}, Ljavax/mail/MessageAware;->getMessageContext()Ljavax/mail/MessageContext;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Ljavax/mail/MessageContext;->getPart()Ljavax/mail/Part;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMultipart;->setParent(Ljavax/mail/Part;)V

    .line 123
    :cond_1b
    instance-of v0, p1, Ljavax/mail/MultipartDataSource;

    if-eqz v0, :cond_28

    .line 125
    check-cast p1, Ljavax/mail/MultipartDataSource;

    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeMultipart;->setMultipartDataSource(Ljavax/mail/MultipartDataSource;)V

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    .line 134
    :goto_27
    return-void

    .line 130
    :cond_28
    iput-object p1, p0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    .line 131
    invoke-interface {p1}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/Multipart;->contentType:Ljava/lang/String;

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    goto :goto_27
.end method

.method private setPosition(Ljavax/mail/internet/SharedInputStream;)V
    .registers 4
    .parameter

    .prologue
    .line 510
    invoke-interface {p1}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Ljavax/mail/internet/MimeMultipart;->position:J

    .line 511
    return-void
.end method

.method private static trim(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 572
    if-nez p0, :cond_4

    .line 574
    const/4 v0, 0x0

    .line 582
    :cond_3
    :goto_3
    return-object v0

    .line 576
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 577
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 578
    if-lez v1, :cond_3

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_3

    .line 580
    const/4 v2, 0x0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method protected createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 592
    new-instance v0, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v0, p1}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method protected createMimeBodyPart(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 614
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0, p1}, Ljavax/mail/internet/MimeBodyPart;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method protected createMimeBodyPart(Ljavax/mail/internet/InternetHeaders;[B)Ljavax/mail/internet/MimeBodyPart;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 604
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0, p1, p2}, Ljavax/mail/internet/MimeBodyPart;-><init>(Ljavax/mail/internet/InternetHeaders;[B)V

    return-object v0
.end method

.method public getBodyPart(I)Ljavax/mail/BodyPart;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 169
    monitor-enter p0

    .line 171
    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 172
    invoke-super {p0, p1}, Ljavax/mail/Multipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 173
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public getCount()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 153
    monitor-enter p0

    .line 155
    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 156
    invoke-super {p0}, Ljavax/mail/Multipart;->getCount()I

    move-result v0

    monitor-exit p0

    return v0

    .line 157
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method getPosition()J
    .registers 3

    .prologue
    .line 531
    iget-wide v0, p0, Ljavax/mail/internet/MimeMultipart;->position:J

    return-wide v0
.end method

.method mark(Ljava/io/InputStream;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 523
    iget-wide v0, p0, Ljavax/mail/internet/MimeMultipart;->position:J

    iput-wide v0, p0, Ljavax/mail/internet/MimeMultipart;->mark:J

    .line 524
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->mark(I)V

    .line 525
    return-void
.end method

.method protected parse()V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 270
    move-object/from16 v0, p0

    iget-boolean v1, v0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    if-eqz v1, :cond_7

    .line 507
    :goto_6
    return-void

    .line 274
    :cond_7
    monitor-enter p0

    .line 277
    const/4 v1, 0x0

    .line 280
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    invoke-interface {v2}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 282
    instance-of v3, v2, Ljavax/mail/internet/SharedInputStream;

    if-eqz v3, :cond_276

    .line 284
    move-object v0, v2

    check-cast v0, Ljavax/mail/internet/SharedInputStream;

    move-object v1, v0

    move-object v13, v1

    .line 288
    :goto_1a
    instance-of v1, v2, Ljava/io/ByteArrayInputStream;

    if-nez v1, :cond_273

    instance-of v1, v2, Ljava/io/BufferedInputStream;

    if-nez v1, :cond_273

    .line 291
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v12, v1

    .line 293
    :goto_28
    new-instance v1, Ljavax/mail/internet/ContentType;

    move-object/from16 v0, p0

    iget-object v2, v0, Ljavax/mail/Multipart;->contentType:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 294
    const-string v2, "boundary"

    invoke-virtual {v1, v2}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 295
    if-nez v1, :cond_60

    .line 297
    new-instance v2, Lgnu/inet/util/GetSystemPropertyAction;

    const-string v3, "mail.mime.multipart.ignoremissingboundaryparameter"

    invoke-direct {v2, v3}, Lgnu/inet/util/GetSystemPropertyAction;-><init>(Ljava/lang/String;)V

    .line 300
    const-string v3, "false"

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 301
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Missing boundary parameter"

    invoke-direct {v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_54
    .catchall {:try_start_9 .. :try_end_54} :catchall_5d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_54} :catch_54

    .line 494
    :catch_54
    move-exception v1

    .line 496
    :try_start_55
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "I/O error"

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 506
    :catchall_5d
    move-exception v1

    monitor-exit p0
    :try_end_5f
    .catchall {:try_start_55 .. :try_end_5f} :catchall_5d

    throw v1

    .line 303
    :cond_60
    if-nez v1, :cond_a7

    const/4 v1, 0x0

    .line 305
    :goto_63
    if-eqz v13, :cond_6a

    .line 306
    :try_start_65
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Ljavax/mail/internet/MimeMultipart;->setPosition(Ljavax/mail/internet/SharedInputStream;)V

    .line 307
    :cond_6a
    new-instance v14, Lgnu/inet/util/LineInputStream;

    invoke-direct {v14, v12}, Lgnu/inet/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    .line 309
    const/4 v2, 0x0

    .line 310
    :goto_70
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljavax/mail/internet/MimeMultipart;->readLine(Lgnu/inet/util/LineInputStream;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_92

    .line 312
    invoke-static {v3}, Ljavax/mail/internet/MimeMultipart;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 313
    if-nez v1, :cond_bb

    const-string v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_bb

    const-string v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_bb

    .line 317
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 330
    :cond_92
    if-eqz v2, :cond_9d

    .line 331
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljavax/mail/internet/MimeMultipart;->setPreamble(Ljava/lang/String;)V

    .line 334
    :cond_9d
    if-nez v3, :cond_d1

    .line 336
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "No start boundary"

    invoke-direct {v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 303
    :cond_a7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_63

    .line 321
    :cond_bb
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_92

    .line 325
    if-nez v2, :cond_c8

    .line 326
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 327
    :cond_c8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 328
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_70

    .line 339
    :cond_d1
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    .line 340
    array-length v0, v15

    move/from16 v16, v0

    .line 342
    const-wide/16 v2, 0x0

    const-wide/16 v5, 0x0

    .line 343
    const/4 v7, 0x0

    :goto_dd
    if-nez v7, :cond_239

    .line 345
    const/4 v1, 0x0

    .line 346
    if-eqz v13, :cond_102

    .line 349
    invoke-virtual/range {p0 .. p0}, Ljavax/mail/internet/MimeMultipart;->getPosition()J

    move-result-wide v2

    .line 352
    :cond_e6
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljavax/mail/internet/MimeMultipart;->readLine(Lgnu/inet/util/LineInputStream;)Ljava/lang/String;

    move-result-object v4

    .line 353
    invoke-static {v4}, Ljavax/mail/internet/MimeMultipart;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 355
    if-eqz v4, :cond_f8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_e6

    .line 356
    :cond_f8
    if-nez v4, :cond_26f

    .line 358
    new-instance v1, Ljava/io/IOException;

    const-string v2, "EOF before content body"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 363
    :cond_102
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljavax/mail/internet/MimeMultipart;->createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;

    move-result-object v1

    move-object v9, v1

    move-wide v10, v2

    .line 365
    :goto_10a
    const/4 v1, 0x0

    .line 366
    if-nez v13, :cond_26c

    .line 368
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v8, v1

    .line 374
    :goto_113
    invoke-virtual {v12}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    if-nez v1, :cond_13a

    .line 376
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 377
    new-instance v2, Ljavax/mail/MessagingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FIXME: mark not supported on underlying input stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 382
    :cond_13a
    const/4 v3, 0x1

    .line 383
    const/4 v2, -0x1

    .line 384
    const/4 v1, -0x1

    .line 388
    :goto_13d
    if-eqz v3, :cond_1d7

    .line 390
    move/from16 v0, v16

    add-int/lit16 v3, v0, 0x400

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v3}, Ljavax/mail/internet/MimeMultipart;->mark(Ljava/io/InputStream;I)V

    .line 391
    const/4 v3, 0x0

    .line 392
    :goto_149
    move/from16 v0, v16

    if-ge v3, v0, :cond_159

    .line 394
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljavax/mail/internet/MimeMultipart;->readChar(Ljava/io/InputStream;)I

    move-result v4

    aget-byte v17, v15, v3

    move/from16 v0, v17

    if-eq v4, v0, :cond_18f

    .line 401
    :cond_159
    move/from16 v0, v16

    if-ne v3, v0, :cond_1c2

    .line 403
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljavax/mail/internet/MimeMultipart;->readChar(Ljava/io/InputStream;)I

    move-result v3

    .line 404
    const/16 v4, 0x2d

    if-ne v3, v4, :cond_192

    .line 406
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljavax/mail/internet/MimeMultipart;->readChar(Ljava/io/InputStream;)I

    move-result v4

    const/16 v17, 0x2d

    move/from16 v0, v17

    if-ne v4, v0, :cond_192

    .line 408
    const/4 v1, 0x1

    .line 409
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    move v2, v1

    .line 482
    :goto_17a
    if-eqz v13, :cond_22d

    .line 484
    invoke-interface {v13, v10, v11, v5, v6}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v1

    .line 490
    :goto_186
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    move v7, v2

    move-wide v2, v10

    .line 491
    goto/16 :goto_dd

    .line 398
    :cond_18f
    add-int/lit8 v3, v3, 0x1

    goto :goto_149

    .line 413
    :cond_192
    :goto_192
    const/16 v4, 0x20

    if-eq v3, v4, :cond_19a

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1a1

    .line 415
    :cond_19a
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljavax/mail/internet/MimeMultipart;->readChar(Ljava/io/InputStream;)I

    move-result v3

    goto :goto_192

    .line 417
    :cond_1a1
    const/16 v4, 0xd

    if-ne v3, v4, :cond_1bc

    .line 419
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v1}, Ljavax/mail/internet/MimeMultipart;->mark(Ljava/io/InputStream;I)V

    .line 420
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljavax/mail/internet/MimeMultipart;->readChar(Ljava/io/InputStream;)I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_269

    .line 422
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljavax/mail/internet/MimeMultipart;->reset(Ljava/io/InputStream;)V

    move v2, v7

    goto :goto_17a

    .line 426
    :cond_1bc
    const/16 v4, 0xa

    if-ne v3, v4, :cond_1c2

    move v2, v7

    .line 428
    goto :goto_17a

    .line 431
    :cond_1c2
    if-eqz v8, :cond_1d2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1d2

    .line 433
    invoke-virtual {v8, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 434
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1d0

    .line 436
    invoke-virtual {v8, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 438
    :cond_1d0
    const/4 v1, -0x1

    move v2, v1

    .line 440
    :cond_1d2
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljavax/mail/internet/MimeMultipart;->reset(Ljava/io/InputStream;)V

    .line 442
    :cond_1d7
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljavax/mail/internet/MimeMultipart;->readChar(Ljava/io/InputStream;)I

    move-result v3

    .line 443
    if-gez v3, :cond_1e2

    .line 445
    const/4 v1, 0x1

    move v2, v1

    .line 446
    goto :goto_17a

    .line 448
    :cond_1e2
    const/16 v4, 0xd

    if-eq v3, v4, :cond_1ea

    const/16 v4, 0xa

    if-ne v3, v4, :cond_221

    .line 450
    :cond_1ea
    const/4 v4, 0x1

    .line 451
    if-eqz v13, :cond_1f5

    .line 454
    invoke-virtual/range {p0 .. p0}, Ljavax/mail/internet/MimeMultipart;->getPosition()J

    move-result-wide v5

    const-wide/16 v17, 0x1

    sub-long v5, v5, v17

    .line 457
    :cond_1f5
    const/16 v2, 0xd

    if-ne v3, v2, :cond_262

    .line 459
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v2}, Ljavax/mail/internet/MimeMultipart;->mark(Ljava/io/InputStream;I)V

    .line 460
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljavax/mail/internet/MimeMultipart;->readChar(Ljava/io/InputStream;)I

    move-result v2

    const/16 v17, 0xa

    move/from16 v0, v17

    if-ne v2, v0, :cond_215

    move v1, v2

    move v2, v3

    move v3, v4

    move-wide/from16 v19, v5

    move-wide/from16 v4, v19

    :goto_212
    move-wide v5, v4

    .line 478
    goto/16 :goto_13d

    .line 466
    :cond_215
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljavax/mail/internet/MimeMultipart;->reset(Ljava/io/InputStream;)V

    move v2, v3

    move v3, v4

    move-wide/from16 v19, v5

    move-wide/from16 v4, v19

    goto :goto_212

    .line 472
    :cond_221
    const/4 v4, 0x0

    .line 473
    if-eqz v8, :cond_227

    .line 475
    invoke-virtual {v8, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_227
    move v3, v4

    move-wide/from16 v19, v5

    move-wide/from16 v4, v19

    goto :goto_212

    .line 488
    :cond_22d
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v1}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljavax/mail/internet/InternetHeaders;[B)Ljavax/mail/internet/MimeBodyPart;
    :try_end_236
    .catchall {:try_start_65 .. :try_end_236} :catchall_5d
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_236} :catch_54

    move-result-object v1

    goto/16 :goto_186

    .line 498
    :cond_239
    const/4 v1, 0x1

    :try_start_23a
    move-object/from16 v0, p0

    iput-boolean v1, v0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    .line 499
    move-object/from16 v0, p0

    iget-boolean v1, v0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    if-nez v1, :cond_25f

    .line 501
    new-instance v1, Lgnu/inet/util/GetSystemPropertyAction;

    const-string v2, "mail.mime.multipart.ignoremissingendboundary"

    invoke-direct {v1, v2}, Lgnu/inet/util/GetSystemPropertyAction;-><init>(Ljava/lang/String;)V

    .line 503
    const-string v2, "false"

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25f

    .line 504
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Missing end boundary"

    invoke-direct {v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 506
    :cond_25f
    monitor-exit p0
    :try_end_260
    .catchall {:try_start_23a .. :try_end_260} :catchall_5d

    goto/16 :goto_6

    :cond_262
    move v2, v3

    move v3, v4

    move-wide/from16 v19, v5

    move-wide/from16 v4, v19

    goto :goto_212

    :cond_269
    move v2, v7

    goto/16 :goto_17a

    :cond_26c
    move-object v8, v1

    goto/16 :goto_113

    :cond_26f
    move-object v9, v1

    move-wide v10, v2

    goto/16 :goto_10a

    :cond_273
    move-object v12, v2

    goto/16 :goto_28

    :cond_276
    move-object v13, v1

    goto/16 :goto_1a
.end method

.method readChar(Ljava/io/InputStream;)I
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 519
    iget-wide v0, p0, Ljavax/mail/internet/MimeMultipart;->position:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljavax/mail/internet/MimeMultipart;->position:J

    .line 520
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method readLine(Lgnu/inet/util/LineInputStream;)Ljava/lang/String;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 514
    invoke-virtual {p1}, Lgnu/inet/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 515
    iget-wide v1, p0, Ljavax/mail/internet/MimeMultipart;->position:J

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Ljavax/mail/internet/MimeMultipart;->position:J

    .line 516
    return-object v0
.end method

.method reset(Ljava/io/InputStream;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 527
    iget-wide v0, p0, Ljavax/mail/internet/MimeMultipart;->mark:J

    iput-wide v0, p0, Ljavax/mail/internet/MimeMultipart;->position:J

    .line 528
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 529
    return-void
.end method

.method public setPreamble(Ljava/lang/String;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 564
    iput-object p1, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    .line 565
    return-void
.end method

.method protected updateHeaders()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    if-nez v0, :cond_5

    .line 218
    :goto_4
    return-void

    .line 210
    :cond_5
    iget-object v2, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    monitor-enter v2

    .line 212
    :try_start_8
    iget-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    .line 213
    const/4 v0, 0x0

    move v1, v0

    :goto_10
    if-ge v1, v3, :cond_21

    .line 215
    iget-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {v0}, Ljavax/mail/internet/MimeBodyPart;->updateHeaders()V

    .line 213
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    .line 217
    :cond_21
    monitor-exit v2

    goto :goto_4

    :catchall_23
    move-exception v0

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_23

    throw v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 229
    const/4 v0, 0x2

    new-array v2, v0, [B

    fill-array-data v2, :array_b0

    .line 231
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 232
    new-instance v0, Ljavax/mail/internet/ContentType;

    iget-object v1, p0, Ljavax/mail/Multipart;->contentType:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 233
    const-string v1, "boundary"

    invoke-virtual {v0, v1}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 234
    if-nez v3, :cond_33

    .line 236
    new-instance v0, Lgnu/inet/util/GetSystemPropertyAction;

    const-string v1, "mail.mime.multipart.ignoremissingboundaryparameter"

    invoke-direct {v0, v1}, Lgnu/inet/util/GetSystemPropertyAction;-><init>(Ljava/lang/String;)V

    .line 239
    const-string v1, "false"

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 240
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Missing boundary parameter"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 244
    iget-object v0, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    if-eqz v0, :cond_5b

    .line 245
    iget-object v0, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 247
    :cond_5b
    iget-object v5, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    monitor-enter v5

    .line 249
    :try_start_5e
    iget-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v6

    .line 250
    const/4 v0, 0x0

    move v1, v0

    :goto_66
    if-ge v1, v6, :cond_83

    .line 252
    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 253
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 254
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 255
    iget-object v0, p0, Ljavax/mail/Multipart;->parts:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/MimeBodyPart;->writeTo(Ljava/io/OutputStream;)V

    .line 256
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 250
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_66

    .line 258
    :cond_83
    monitor-exit v5
    :try_end_84
    .catchall {:try_start_5e .. :try_end_84} :catchall_ad

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "US-ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 261
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 262
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 263
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 264
    return-void

    .line 258
    :catchall_ad
    move-exception v0

    :try_start_ae
    monitor-exit v5
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_ad

    throw v0

    .line 229
    :array_b0
    .array-data 0x1
        0xdt
        0xat
    .end array-data
.end method
