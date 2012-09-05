.class public Lcom/android/email/mail/transport/SmtpSender;
.super Lcom/android/email/mail/Sender;
.source "SmtpSender.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mPassword:Ljava/lang/String;

.field mServerLimit:J

.field private mTransport:Lcom/android/email/mail/Transport;

.field private mUsername:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 13
    .parameter "context"
    .parameter "uriString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 84
    invoke-direct {p0}, Lcom/android/email/mail/Sender;-><init>()V

    .line 66
    const-wide/32 v7, 0x3200000

    iput-wide v7, p0, Lcom/android/email/mail/transport/SmtpSender;->mServerLimit:J

    .line 85
    iput-object p1, p0, Lcom/android/email/mail/transport/SmtpSender;->mContext:Landroid/content/Context;

    .line 88
    :try_start_b
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/net/URISyntaxException; {:try_start_b .. :try_end_10} :catch_26

    .line 93
    .local v4, uri:Ljava/net/URI;
    invoke-virtual {v4}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, scheme:Ljava/lang/String;
    if-eqz v2, :cond_1e

    const-string v7, "smtp"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2f

    .line 95
    :cond_1e
    new-instance v7, Lcom/android/emailcommon/mail/MessagingException;

    const-string v8, "Unsupported protocol"

    invoke-direct {v7, v8}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 89
    .end local v2           #scheme:Ljava/lang/String;
    .end local v4           #uri:Ljava/net/URI;
    :catch_26
    move-exception v5

    .line 90
    .local v5, use:Ljava/net/URISyntaxException;
    new-instance v7, Lcom/android/emailcommon/mail/MessagingException;

    const-string v8, "Invalid SmtpTransport URI"

    invoke-direct {v7, v8, v5}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 98
    .end local v5           #use:Ljava/net/URISyntaxException;
    .restart local v2       #scheme:Ljava/lang/String;
    .restart local v4       #uri:Ljava/net/URI;
    :cond_2f
    const/4 v0, 0x0

    .line 99
    .local v0, connectionSecurity:I
    const/16 v1, 0x24b

    .line 101
    .local v1, defaultPort:I
    const-string v7, "+ssl"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6b

    .line 102
    const/4 v0, 0x1

    .line 103
    const/16 v1, 0x1d1

    .line 107
    :cond_3d
    :goto_3d
    const-string v7, "+trustallcerts"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 109
    .local v3, trustCertificates:Z
    new-instance v7, Lcom/android/email/mail/transport/MailTransport;

    const-string v8, "SMTP"

    invoke-direct {v7, v8}, Lcom/android/email/mail/transport/MailTransport;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    .line 110
    iget-object v7, p0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v7, v4, v1}, Lcom/android/email/mail/Transport;->setUri(Ljava/net/URI;I)V

    .line 111
    iget-object v7, p0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v7, v0, v3}, Lcom/android/email/mail/Transport;->setSecurity(IZ)V

    .line 113
    iget-object v7, p0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v7}, Lcom/android/email/mail/Transport;->getUserInfoParts()[Ljava/lang/String;

    move-result-object v6

    .line 114
    .local v6, userInfoParts:[Ljava/lang/String;
    if-eqz v6, :cond_6a

    .line 115
    const/4 v7, 0x0

    aget-object v7, v6, v7

    iput-object v7, p0, Lcom/android/email/mail/transport/SmtpSender;->mUsername:Ljava/lang/String;

    .line 116
    array-length v7, v6

    if-le v7, v9, :cond_6a

    .line 117
    aget-object v7, v6, v9

    iput-object v7, p0, Lcom/android/email/mail/transport/SmtpSender;->mPassword:Ljava/lang/String;

    .line 120
    :cond_6a
    return-void

    .line 104
    .end local v3           #trustCertificates:Z
    .end local v6           #userInfoParts:[Ljava/lang/String;
    :cond_6b
    const-string v7, "+tls"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 105
    const/4 v0, 0x2

    goto :goto_3d
.end method

.method private executeBURL(Landroid/content/Context;Ljava/io/OutputStream;Ljava/util/List;Ljava/lang/String;)V
    .registers 16
    .parameter "mContext"
    .parameter "out"
    .parameter
    .parameter "boundary"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/OutputStream;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .local p3, urlAuthList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 595
    new-instance v3, Ljava/io/BufferedOutputStream;

    const/16 v7, 0x400

    invoke-direct {v3, p2, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 596
    .local v3, stream:Ljava/io/OutputStream;
    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 598
    .local v6, writer:Ljava/io/Writer;
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3b

    .line 599
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 600
    .local v5, urlAuth:Ljava/lang/String;
    const-string v7, "BURL %s"

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v5, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 602
    .local v4, url:Ljava/lang/String;
    sget-boolean v7, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v7, :cond_37

    .line 603
    const-string v7, "Email"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_37
    invoke-direct {p0, v4}, Lcom/android/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_18

    .line 609
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #url:Ljava/lang/String;
    .end local v5           #urlAuth:Ljava/lang/String;
    :cond_3b
    const-string v7, "NOOP"

    invoke-direct {p0, v7}, Lcom/android/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 611
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\r\n--"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "--\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 612
    .local v0, endBoundary:Ljava/lang/String;
    const-string v7, "BDAT %d LAST\r\n"

    new-array v8, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 614
    .local v1, endLine:Ljava/lang/String;
    sget-boolean v7, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v7, :cond_74

    .line 615
    const-string v7, "Email"

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_74
    invoke-virtual {v6, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 619
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->flush()V

    .line 621
    sget-boolean v7, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v7, :cond_83

    .line 622
    const-string v7, "Email"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_83
    invoke-virtual {v6, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 626
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->flush()V

    .line 628
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 629
    const-string v7, "NOOP"

    invoke-direct {p0, v7}, Lcom/android/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 630
    const-string v7, "NOOP"

    invoke-direct {p0, v7}, Lcom/android/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 631
    return-void
.end method

.method private executeSensitiveCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .parameter "command"
    .parameter "sensitiveReplacement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x35

    const/4 v9, 0x3

    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 410
    if-eqz p1, :cond_c

    .line 411
    iget-object v5, p0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v5, p1, p2}, Lcom/android/email/mail/Transport;->writeLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :cond_c
    iget-object v5, p0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v5}, Lcom/android/email/mail/Transport;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 416
    .local v3, line:Ljava/lang/String;
    move-object v4, v3

    .line 418
    .local v4, result:Ljava/lang/String;
    if-eqz v3, :cond_cb

    .line 420
    :goto_15
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v8, :cond_3f

    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_3f

    .line 421
    iget-object v5, p0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v5}, Lcom/android/email/mail/Transport;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 422
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_15

    .line 427
    :cond_3f
    if-eqz p1, :cond_cb

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_cb

    .line 428
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 429
    .local v0, c0:C
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 430
    .local v1, c1:C
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 433
    .local v2, c2:C
    :try_start_55
    const-string v5, "Email"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Email] SMTP "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_93} :catch_cc

    .line 440
    :goto_93
    const/16 v5, 0x34

    if-eq v0, v5, :cond_99

    if-ne v0, v10, :cond_cb

    .line 441
    :cond_99
    if-ne v1, v10, :cond_c5

    const/16 v5, 0x32

    if-ne v2, v5, :cond_c5

    .line 442
    const-string v5, "Email"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Email] executeSensitiveCommand Error code ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    new-instance v5, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v6, 0x11

    invoke-direct {v5, v6}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v5

    .line 447
    :cond_c5
    new-instance v5, Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {v5, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 454
    .end local v0           #c0:C
    .end local v1           #c1:C
    .end local v2           #c2:C
    :cond_cb
    return-object v4

    .line 436
    .restart local v0       #c0:C
    .restart local v1       #c1:C
    .restart local v2       #c2:C
    :catch_cc
    move-exception v5

    goto :goto_93
.end method

.method private executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 394
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/email/mail/transport/SmtpSender;->executeSensitiveCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/mail/Sender;
    .registers 3
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Lcom/android/email/mail/transport/SmtpSender;

    invoke-direct {v0, p0, p1}, Lcom/android/email/mail/transport/SmtpSender;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method private saslAuthLogin(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "username"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Lcom/android/emailcommon/mail/AuthenticationFailedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 478
    :try_start_1
    const-string v1, "AUTH LOGIN"

    invoke-direct {p0, v1}, Lcom/android/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 479
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/username redacted/"

    invoke-direct {p0, v1, v2}, Lcom/android/email/mail/transport/SmtpSender;->executeSensitiveCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 481
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/password redacted/"

    invoke-direct {p0, v1, v2}, Lcom/android/email/mail/transport/SmtpSender;->executeSensitiveCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_22
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_22} :catch_23

    .line 489
    return-void

    .line 483
    :catch_23
    move-exception v0

    .line 484
    .local v0, me:Lcom/android/emailcommon/mail/MessagingException;
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_44

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x33

    if-ne v1, v2, :cond_44

    .line 485
    new-instance v1, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 487
    :cond_44
    throw v0
.end method

.method private saslAuthPlain(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "username"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Lcom/android/emailcommon/mail/AuthenticationFailedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 493
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u0000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 494
    .local v0, data:[B
    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    .line 496
    :try_start_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AUTH PLAIN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AUTH PLAIN /redacted/"

    invoke-direct {p0, v2, v3}, Lcom/android/email/mail/transport/SmtpSender;->executeSensitiveCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_44
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_27 .. :try_end_44} :catch_45

    .line 503
    return-void

    .line 497
    :catch_45
    move-exception v1

    .line 498
    .local v1, me:Lcom/android/emailcommon/mail/MessagingException;
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_66

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x33

    if-ne v2, v3, :cond_66

    .line 499
    new-instance v2, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/emailcommon/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 501
    :cond_66
    throw v1
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v0}, Lcom/android/email/mail/Transport;->close()V

    .line 382
    return-void
.end method

.method public forwardMessage(JLjava/util/List;)V
    .registers 28
    .parameter "messageId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 509
    .local p3, urlAuthList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_1e

    .line 510
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Into forwardMessage() method with MessageId :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/mail/transport/SmtpSender;->close()V

    .line 514
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/mail/transport/SmtpSender;->open()V

    .line 516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/mail/transport/SmtpSender;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v20

    .line 517
    .local v20, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v20, :cond_4d

    .line 518
    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to forward non-existent message id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 522
    :cond_4d
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->unpackFirst(Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;

    move-result-object v16

    .line 523
    .local v16, from:Lcom/android/emailcommon/mail/Address;
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v22

    .line 524
    .local v22, to:[Lcom/android/emailcommon/mail/Address;
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v14

    .line 525
    .local v14, cc:[Lcom/android/emailcommon/mail/Address;
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v11

    .line 526
    .local v11, bcc:[Lcom/android/emailcommon/mail/Address;
    new-instance v23, Ljava/lang/StringBuffer;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuffer;-><init>()V

    .line 527
    .local v23, toTemp:Ljava/lang/StringBuffer;
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 528
    .local v15, ccTemp:Ljava/lang/StringBuffer;
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 531
    .local v12, bccTemp:Ljava/lang/StringBuffer;
    if-eqz v16, :cond_a0

    .line 532
    :try_start_7e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MAIL FROM: <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 533
    :cond_a0
    move-object/from16 v10, v22

    .local v10, arr$:[Lcom/android/emailcommon/mail/Address;
    array-length v0, v10

    move/from16 v19, v0

    .local v19, len$:I
    const/16 v17, 0x0

    .local v17, i$:I
    :goto_a7
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_e0

    aget-object v9, v10, v17

    .line 534
    .local v9, address:Lcom/android/emailcommon/mail/Address;
    const-string v2, "RCPT TO: "

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v9}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 538
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 540
    const/4 v2, 0x0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 533
    add-int/lit8 v17, v17, 0x1

    goto :goto_a7

    .line 542
    .end local v9           #address:Lcom/android/emailcommon/mail/Address;
    :cond_e0
    move-object v10, v14

    array-length v0, v10

    move/from16 v19, v0

    const/16 v17, 0x0

    :goto_e6
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_11b

    aget-object v9, v10, v17

    .line 543
    .restart local v9       #address:Lcom/android/emailcommon/mail/Address;
    const-string v2, "RCPT TO: "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v9}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 547
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 549
    const/4 v2, 0x0

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 542
    add-int/lit8 v17, v17, 0x1

    goto :goto_e6

    .line 551
    .end local v9           #address:Lcom/android/emailcommon/mail/Address;
    :cond_11b
    move-object v10, v11

    array-length v0, v10

    move/from16 v19, v0

    const/16 v17, 0x0

    :goto_121
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_156

    aget-object v9, v10, v17

    .line 552
    .restart local v9       #address:Lcom/android/emailcommon/mail/Address;
    const-string v2, "RCPT TO: "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x3c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v9}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 556
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 558
    const/4 v2, 0x0

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 551
    add-int/lit8 v17, v17, 0x1

    goto :goto_121

    .line 562
    .end local v9           #address:Lcom/android/emailcommon/mail/Address;
    :cond_156
    new-instance v21, Lcom/android/email/mail/transport/CountingOutputStream;

    invoke-direct/range {v21 .. v21}, Lcom/android/email/mail/transport/CountingOutputStream;-><init>()V

    .line 563
    .local v21, out:Lcom/android/email/mail/transport/CountingOutputStream;
    new-instance v5, Lcom/android/email/mail/transport/EOLConvertingOutputStream;

    move-object/from16 v0, v21

    invoke-direct {v5, v0}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 564
    .local v5, eolOut:Lcom/android/email/mail/transport/EOLConvertingOutputStream;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/mail/transport/SmtpSender;->mContext:Landroid/content/Context;

    const-wide/16 v6, -0x1

    move-wide/from16 v3, p1

    move-object/from16 v8, p3

    invoke-static/range {v2 .. v8}, Lcom/android/emailcommon/internet/Rfc822Output;->writeToSnC(Landroid/content/Context;JLjava/io/OutputStream;JLjava/util/List;)Ljava/lang/String;

    .line 565
    invoke-virtual {v5}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;->flush()V

    .line 566
    invoke-virtual/range {v21 .. v21}, Lcom/android/email/mail/transport/CountingOutputStream;->close()V

    .line 567
    invoke-virtual {v5}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;->close()V

    .line 569
    new-instance v5, Lcom/android/email/mail/transport/EOLConvertingOutputStream;

    .end local v5           #eolOut:Lcom/android/email/mail/transport/EOLConvertingOutputStream;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v2}, Lcom/android/email/mail/Transport;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 570
    .restart local v5       #eolOut:Lcom/android/email/mail/transport/EOLConvertingOutputStream;
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/emailcommon/internet/Rfc822Output;->setIsExchangeAccount(Z)V

    .line 572
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_1a9

    .line 573
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Count :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/email/mail/transport/CountingOutputStream;->getCount()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_1a9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/mail/transport/SmtpSender;->mContext:Landroid/content/Context;

    invoke-virtual/range {v21 .. v21}, Lcom/android/email/mail/transport/CountingOutputStream;->getCount()J

    move-result-wide v6

    move-wide/from16 v3, p1

    move-object/from16 v8, p3

    invoke-static/range {v2 .. v8}, Lcom/android/emailcommon/internet/Rfc822Output;->writeToSnC(Landroid/content/Context;JLjava/io/OutputStream;JLjava/util/List;)Ljava/lang/String;

    move-result-object v13

    .line 578
    .local v13, boundary:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;->flush()V

    .line 579
    const-string v2, "NOOP"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 581
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/mail/transport/SmtpSender;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v2, v5, v1, v13}, Lcom/android/email/mail/transport/SmtpSender;->executeBURL(Landroid/content/Context;Ljava/io/OutputStream;Ljava/util/List;Ljava/lang/String;)V

    .line 583
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_1ec

    .line 584
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "open :: smtp Forward OK !!!! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ec
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_1ec} :catch_1ed

    .line 591
    :cond_1ec
    return-void

    .line 587
    .end local v5           #eolOut:Lcom/android/email/mail/transport/EOLConvertingOutputStream;
    .end local v10           #arr$:[Lcom/android/emailcommon/mail/Address;
    .end local v13           #boundary:Ljava/lang/String;
    .end local v17           #i$:I
    .end local v19           #len$:I
    .end local v21           #out:Lcom/android/email/mail/transport/CountingOutputStream;
    :catch_1ed
    move-exception v18

    .line 588
    .local v18, ioe:Ljava/io/IOException;
    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    invoke-static/range {v18 .. v18}, Lcom/android/emailcommon/mail/MessagingException;->decodeIOException(Ljava/io/IOException;)I

    move-result v3

    const-string v4, "Unable to send message"

    invoke-direct {v2, v3, v4}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method public open()V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 136
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v13}, Lcom/android/email/mail/Transport;->open()V

    .line 139
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    const-string v7, "localhost"

    .line 167
    .local v7, localHost:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v13}, Lcom/android/email/mail/Transport;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v6

    .line 168
    .local v6, localAddress:Ljava/net/InetAddress;
    if-eqz v6, :cond_44

    .line 170
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .local v10, sb:Ljava/lang/StringBuilder;
    const/16 v13, 0x5b

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    instance-of v13, v6, Ljava/net/Inet6Address;

    if-eqz v13, :cond_2c

    .line 173
    const-string v13, "IPv6:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :cond_2c
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const/16 v13, 0x5d

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 179
    const/4 v13, 0x0

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 182
    .end local v10           #sb:Ljava/lang/StringBuilder;
    :cond_44
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "EHLO "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 184
    .local v8, result:Ljava/lang/String;
    if-eqz v8, :cond_88

    .line 185
    const-string v13, "Email"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[Email] SMTP open() "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v17

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_88
    if-nez v8, :cond_a9

    .line 189
    new-instance v13, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v14, 0x3

    invoke-direct {v13, v14}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v13
    :try_end_91
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_91} :catch_91
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_91} :catch_16c

    .line 259
    .end local v6           #localAddress:Ljava/net/InetAddress;
    .end local v7           #localHost:Ljava/lang/String;
    .end local v8           #result:Ljava/lang/String;
    :catch_91
    move-exception v3

    .line 260
    .local v3, e:Ljavax/net/ssl/SSLException;
    sget-boolean v13, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v13, :cond_9f

    .line 261
    const-string v13, "Email"

    invoke-virtual {v3}, Ljavax/net/ssl/SSLException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_9f
    new-instance v13, Lcom/android/emailcommon/mail/CertificateValidationException;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14, v3}, Lcom/android/emailcommon/mail/CertificateValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 199
    .end local v3           #e:Ljavax/net/ssl/SSLException;
    .restart local v6       #localAddress:Ljava/net/InetAddress;
    .restart local v7       #localHost:Ljava/lang/String;
    .restart local v8       #result:Ljava/lang/String;
    :cond_a9
    :try_start_a9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v13}, Lcom/android/email/mail/Transport;->canTryTlsSecurity()Z

    move-result v13

    if-eqz v13, :cond_e2

    .line 200
    const-string v13, "-STARTTLS"

    invoke-virtual {v8, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_15a

    .line 201
    const-string v13, "STARTTLS"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 202
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v13}, Lcom/android/email/mail/Transport;->reopenTls()V

    .line 207
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "EHLO "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 219
    :cond_e2
    const-string v13, ".*AUTH.*LOGIN.*$"

    invoke-virtual {v8, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    .line 220
    .local v1, authLoginSupported:Z
    const-string v13, ".*AUTH.*PLAIN.*$"

    invoke-virtual {v8, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    .line 226
    .local v2, authPlainSupported:Z
    const-wide/32 v13, 0x3200000

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/email/mail/transport/SmtpSender;->mServerLimit:J

    .line 227
    const-string v13, "-"

    invoke-virtual {v8, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 229
    .local v9, resultList:[Ljava/lang/String;
    new-instance v12, Ljava/lang/String;

    const-string v13, "SIZE"

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_102
    .catch Ljavax/net/ssl/SSLException; {:try_start_a9 .. :try_end_102} :catch_91
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_102} :catch_16c

    .line 230
    .local v12, sizeString:Ljava/lang/String;
    if-eqz v9, :cond_12a

    .line 232
    const/4 v4, 0x0

    .local v4, i:I
    :goto_105
    :try_start_105
    array-length v13, v9

    if-ge v4, v13, :cond_12a

    .line 233
    aget-object v13, v9, v4

    invoke-virtual {v13, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_185

    .line 234
    aget-object v13, v9, v4

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 235
    .local v11, size:Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/email/mail/transport/SmtpSender;->mServerLimit:J
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_105 .. :try_end_12a} :catch_189
    .catch Ljavax/net/ssl/SSLException; {:try_start_105 .. :try_end_12a} :catch_91
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_12a} :catch_16c

    .line 246
    .end local v4           #i:I
    .end local v11           #size:Ljava/lang/String;
    :cond_12a
    :goto_12a
    :try_start_12a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/mail/transport/SmtpSender;->mUsername:Ljava/lang/String;

    if-eqz v13, :cond_159

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/mail/transport/SmtpSender;->mUsername:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_159

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/mail/transport/SmtpSender;->mPassword:Ljava/lang/String;

    if-eqz v13, :cond_159

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/mail/transport/SmtpSender;->mPassword:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_159

    .line 248
    if-eqz v2, :cond_196

    .line 249
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/mail/transport/SmtpSender;->mUsername:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/mail/transport/SmtpSender;->mPassword:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/email/mail/transport/SmtpSender;->saslAuthPlain(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_159
    :goto_159
    return-void

    .line 209
    .end local v1           #authLoginSupported:Z
    .end local v2           #authPlainSupported:Z
    .end local v9           #resultList:[Ljava/lang/String;
    .end local v12           #sizeString:Ljava/lang/String;
    :cond_15a
    sget-boolean v13, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v13, :cond_165

    .line 210
    const-string v13, "Email"

    const-string v14, "TLS not supported but required"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_165
    new-instance v13, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v14, 0x2

    invoke-direct {v13, v14}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v13
    :try_end_16c
    .catch Ljavax/net/ssl/SSLException; {:try_start_12a .. :try_end_16c} :catch_91
    .catch Ljava/io/IOException; {:try_start_12a .. :try_end_16c} :catch_16c

    .line 264
    .end local v6           #localAddress:Ljava/net/InetAddress;
    .end local v7           #localHost:Ljava/lang/String;
    .end local v8           #result:Ljava/lang/String;
    :catch_16c
    move-exception v5

    .line 265
    .local v5, ioe:Ljava/io/IOException;
    sget-boolean v13, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v13, :cond_17a

    .line 266
    const-string v13, "Email"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_17a
    new-instance v13, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v14, 0x1

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v13

    .line 232
    .end local v5           #ioe:Ljava/io/IOException;
    .restart local v1       #authLoginSupported:Z
    .restart local v2       #authPlainSupported:Z
    .restart local v4       #i:I
    .restart local v6       #localAddress:Ljava/net/InetAddress;
    .restart local v7       #localHost:Ljava/lang/String;
    .restart local v8       #result:Ljava/lang/String;
    .restart local v9       #resultList:[Ljava/lang/String;
    .restart local v12       #sizeString:Ljava/lang/String;
    :cond_185
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_105

    .line 239
    :catch_189
    move-exception v3

    .line 240
    .local v3, e:Ljava/lang/Exception;
    :try_start_18a
    sget-boolean v13, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v13, :cond_12a

    .line 241
    const-string v13, "Email"

    const-string v14, "Server limit size parsing failed."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12a

    .line 250
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #i:I
    :cond_196
    if-eqz v1, :cond_1a6

    .line 251
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/mail/transport/SmtpSender;->mUsername:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/mail/transport/SmtpSender;->mPassword:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/email/mail/transport/SmtpSender;->saslAuthLogin(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_159

    .line 253
    :cond_1a6
    sget-boolean v13, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v13, :cond_1b1

    .line 254
    const-string v13, "Email"

    const-string v14, "No valid authentication mechanism found."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_1b1
    new-instance v13, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v14, 0x3

    invoke-direct {v13, v14}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v13
    :try_end_1b8
    .catch Ljavax/net/ssl/SSLException; {:try_start_18a .. :try_end_1b8} :catch_91
    .catch Ljava/io/IOException; {:try_start_18a .. :try_end_1b8} :catch_16c
.end method

.method public sendMessage(J)V
    .registers 28
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 275
    const-string v2, "SmtpSender"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PERFORMANCE s sendMessage START "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/mail/transport/SmtpSender;->close()V

    .line 278
    const-string v2, "SmtpSender"

    const-string v3, "PERFORMANCE s sendMessage CLOSE Complete"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/mail/transport/SmtpSender;->open()V

    .line 280
    const-string v2, "SmtpSender"

    const-string v3, "PERFORMANCE s sendMessage REOPEN Complete"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/mail/transport/SmtpSender;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v23

    .line 283
    .local v23, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v23, :cond_57

    .line 284
    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to send non-existent message id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 292
    :cond_57
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/mail/transport/SmtpSender;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v11

    .line 293
    .local v11, attachments:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-eqz v11, :cond_b0

    .line 294
    const/4 v9, 0x0

    .line 295
    .local v9, allAttachSize:I
    const/16 v18, 0x0

    .local v18, i:I
    :goto_66
    array-length v2, v11

    move/from16 v0, v18

    if-ge v0, v2, :cond_75

    .line 296
    int-to-long v2, v9

    aget-object v4, v11, v18

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    add-long/2addr v2, v4

    long-to-int v9, v2

    .line 295
    add-int/lit8 v18, v18, 0x1

    goto :goto_66

    .line 300
    :cond_75
    mul-int/lit8 v2, v9, 0x4

    div-int/lit8 v2, v2, 0x3

    int-to-long v15, v2

    .line 301
    .local v15, encodedSize:J
    const-string v2, "Email.LOG_TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allAttachSize :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mServerLimit :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/email/mail/transport/SmtpSender;->mServerLimit:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/Email;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-wide/16 v2, 0x0

    cmp-long v2, v15, v2

    if-eqz v2, :cond_b0

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/email/mail/transport/SmtpSender;->mServerLimit:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_12e

    .line 317
    .end local v9           #allAttachSize:I
    .end local v15           #encodedSize:J
    .end local v18           #i:I
    :cond_b0
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->unpackFirst(Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;

    move-result-object v17

    .line 318
    .local v17, from:Lcom/android/emailcommon/mail/Address;
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v24

    .line 319
    .local v24, to:[Lcom/android/emailcommon/mail/Address;
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v13

    .line 320
    .local v13, cc:[Lcom/android/emailcommon/mail/Address;
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v12

    .line 323
    .local v12, bcc:[Lcom/android/emailcommon/mail/Address;
    :try_start_d0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MAIL FROM: <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 324
    move-object/from16 v10, v24

    .local v10, arr$:[Lcom/android/emailcommon/mail/Address;
    array-length v0, v10

    move/from16 v21, v0

    .local v21, len$:I
    const/16 v19, 0x0

    .local v19, i$:I
    :goto_fd
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_13e

    aget-object v8, v10, v19

    .line 325
    .local v8, address:Lcom/android/emailcommon/mail/Address;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RCPT TO: <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;
    :try_end_12b
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_12b} :catch_1e1

    .line 324
    add-int/lit8 v19, v19, 0x1

    goto :goto_fd

    .line 310
    .end local v8           #address:Lcom/android/emailcommon/mail/Address;
    .end local v10           #arr$:[Lcom/android/emailcommon/mail/Address;
    .end local v12           #bcc:[Lcom/android/emailcommon/mail/Address;
    .end local v13           #cc:[Lcom/android/emailcommon/mail/Address;
    .end local v17           #from:Lcom/android/emailcommon/mail/Address;
    .end local v19           #i$:I
    .end local v21           #len$:I
    .end local v24           #to:[Lcom/android/emailcommon/mail/Address;
    .restart local v9       #allAttachSize:I
    .restart local v15       #encodedSize:J
    .restart local v18       #i:I
    :cond_12e
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/email/mail/transport/SmtpSender;->mServerLimit:J

    cmp-long v2, v15, v2

    if-ltz v2, :cond_b0

    .line 311
    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    const-string v3, "Unable to attach"

    invoke-direct {v2, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 327
    .end local v9           #allAttachSize:I
    .end local v15           #encodedSize:J
    .end local v18           #i:I
    .restart local v10       #arr$:[Lcom/android/emailcommon/mail/Address;
    .restart local v12       #bcc:[Lcom/android/emailcommon/mail/Address;
    .restart local v13       #cc:[Lcom/android/emailcommon/mail/Address;
    .restart local v17       #from:Lcom/android/emailcommon/mail/Address;
    .restart local v19       #i$:I
    .restart local v21       #len$:I
    .restart local v24       #to:[Lcom/android/emailcommon/mail/Address;
    :cond_13e
    move-object v10, v13

    :try_start_13f
    array-length v0, v10

    move/from16 v21, v0

    const/16 v19, 0x0

    :goto_144
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_175

    aget-object v8, v10, v19

    .line 328
    .restart local v8       #address:Lcom/android/emailcommon/mail/Address;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RCPT TO: <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 327
    add-int/lit8 v19, v19, 0x1

    goto :goto_144

    .line 330
    .end local v8           #address:Lcom/android/emailcommon/mail/Address;
    :cond_175
    move-object v10, v12

    array-length v0, v10

    move/from16 v21, v0

    const/16 v19, 0x0

    :goto_17b
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_1ac

    aget-object v8, v10, v19

    .line 331
    .restart local v8       #address:Lcom/android/emailcommon/mail/Address;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RCPT TO: <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 330
    add-int/lit8 v19, v19, 0x1

    goto :goto_17b

    .line 334
    .end local v8           #address:Lcom/android/emailcommon/mail/Address;
    :cond_1ac
    const-string v2, "SmtpSender"

    const-string v3, "PERFORMANCE s sendMessage DATA start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const-string v2, "DATA"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/mail/transport/SmtpSender;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/email/mail/transport/EOLConvertingOutputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v3}, Lcom/android/email/mail/Transport;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v5, v3}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-wide/from16 v3, p1

    invoke-static/range {v2 .. v7}, Lcom/android/emailcommon/internet/Rfc822Output;->writeTo(Landroid/content/Context;JLjava/io/OutputStream;ZZ)V

    .line 348
    const-string v2, "\r\n."

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 350
    const-string v2, "SmtpSender"

    const-string v3, "PERFORMANCE s sendMessage DATA Complete"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e0
    .catch Ljava/lang/Exception; {:try_start_13f .. :try_end_1e0} :catch_1e1

    .line 373
    return-void

    .line 352
    .end local v10           #arr$:[Lcom/android/emailcommon/mail/Address;
    .end local v19           #i$:I
    .end local v21           #len$:I
    :catch_1e1
    move-exception v20

    .line 354
    .local v20, ioe:Ljava/lang/Exception;
    const/16 v22, 0x0

    .line 356
    .local v22, line:Ljava/lang/String;
    :try_start_1e4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v2}, Lcom/android/email/mail/Transport;->readLine()Ljava/lang/String;
    :try_end_1eb
    .catch Ljava/io/IOException; {:try_start_1e4 .. :try_end_1eb} :catch_21b

    move-result-object v22

    .line 361
    :goto_1ec
    const-string v2, "552"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "552 Exception ==>  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    if-eqz v22, :cond_220

    const-string v2, "552"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_220

    .line 363
    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    const/16 v3, 0x11

    invoke-direct {v2, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v2

    .line 357
    :catch_21b
    move-exception v14

    .line 359
    .local v14, e:Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1ec

    .line 364
    .end local v14           #e:Ljava/io/IOException;
    :cond_220
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_243

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Smtp auth address"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_243

    .line 366
    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-direct {v2, v3, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 368
    :cond_243
    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    const-string v3, "Unable to send message"

    move-object/from16 v0, v20

    invoke-direct {v2, v3, v0}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method setTransport(Lcom/android/email/mail/Transport;)V
    .registers 2
    .parameter "testTransport"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    .line 131
    return-void
.end method
