.class public Lcom/android/email/mail/transport/SmtpSender;
.super Lcom/android/email/mail/Sender;
.source "SmtpSender.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mPassword:Ljava/lang/String;

.field private mTransport:Lcom/android/email/mail/Transport;

.field private mUsername:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V
    .registers 13
    .parameter "context"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 63
    invoke-direct {p0}, Lcom/android/email/mail/Sender;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/email/mail/transport/SmtpSender;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual {p2, p1}, Lcom/android/emailcommon/provider/Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v3

    .line 66
    .local v3, sendAuth:Lcom/android/emailcommon/provider/HostAuth;
    if-eqz v3, :cond_17

    const-string v8, "smtp"

    iget-object v9, v3, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1f

    .line 67
    :cond_17
    new-instance v6, Lcom/android/emailcommon/mail/MessagingException;

    const-string v7, "Unsupported protocol"

    invoke-direct {v6, v7}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 70
    :cond_1f
    const/4 v0, 0x0

    .line 71
    .local v0, connectionSecurity:I
    const/16 v1, 0x24b

    .line 74
    .local v1, defaultPort:I
    iget v8, v3, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_63

    .line 75
    const/4 v0, 0x1

    .line 76
    const/16 v1, 0x1d1

    .line 80
    :cond_2b
    :goto_2b
    iget v8, v3, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_6b

    move v4, v6

    .line 81
    .local v4, trustCertificates:Z
    :goto_32
    move v2, v1

    .line 82
    .local v2, port:I
    iget v8, v3, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3a

    .line 83
    iget v2, v3, Lcom/android/emailcommon/provider/HostAuth;->mPort:I

    .line 85
    :cond_3a
    new-instance v8, Lcom/android/email/mail/transport/MailTransport;

    const-string v9, "IMAP"

    invoke-direct {v8, v9}, Lcom/android/email/mail/transport/MailTransport;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    .line 86
    iget-object v8, p0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    iget-object v9, v3, Lcom/android/emailcommon/provider/HostAuth;->mAddress:Ljava/lang/String;

    invoke-interface {v8, v9}, Lcom/android/email/mail/Transport;->setHost(Ljava/lang/String;)V

    .line 87
    iget-object v8, p0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v8, v2}, Lcom/android/email/mail/Transport;->setPort(I)V

    .line 88
    iget-object v8, p0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v8, v0, v4}, Lcom/android/email/mail/Transport;->setSecurity(IZ)V

    .line 90
    invoke-virtual {v3}, Lcom/android/emailcommon/provider/HostAuth;->getLogin()[Ljava/lang/String;

    move-result-object v5

    .line 91
    .local v5, userInfoParts:[Ljava/lang/String;
    if-eqz v5, :cond_62

    .line 92
    aget-object v7, v5, v7

    iput-object v7, p0, Lcom/android/email/mail/transport/SmtpSender;->mUsername:Ljava/lang/String;

    .line 93
    aget-object v6, v5, v6

    iput-object v6, p0, Lcom/android/email/mail/transport/SmtpSender;->mPassword:Ljava/lang/String;

    .line 95
    :cond_62
    return-void

    .line 77
    .end local v2           #port:I
    .end local v4           #trustCertificates:Z
    .end local v5           #userInfoParts:[Ljava/lang/String;
    :cond_63
    iget v8, v3, Lcom/android/emailcommon/provider/HostAuth;->mFlags:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_2b

    .line 78
    const/4 v0, 0x2

    goto :goto_2b

    :cond_6b
    move v4, v7

    .line 80
    goto :goto_32
.end method

.method private executeSensitiveCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "command"
    .parameter "sensitiveReplacement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    .line 260
    if-eqz p1, :cond_8

    .line 261
    iget-object v3, p0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v3, p1, p2}, Lcom/android/email/mail/Transport;->writeLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_8
    iget-object v3, p0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v3}, Lcom/android/email/mail/Transport;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, line:Ljava/lang/String;
    move-object v2, v1

    .line 268
    .local v2, result:Ljava/lang/String;
    :goto_f
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_3a

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_3a

    .line 269
    iget-object v3, p0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v3}, Lcom/android/email/mail/Transport;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 270
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_f

    .line 273
    :cond_3a
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_53

    .line 274
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 275
    .local v0, c:C
    const/16 v3, 0x34

    if-eq v0, v3, :cond_4d

    const/16 v3, 0x35

    if-ne v0, v3, :cond_53

    .line 276
    :cond_4d
    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    invoke-direct {v3, v2}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 280
    .end local v0           #c:C
    :cond_53
    return-object v2
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
    .line 246
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/email/mail/transport/SmtpSender;->executeSensitiveCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/android/email/mail/Sender;
    .registers 3
    .parameter "account"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lcom/android/email/mail/transport/SmtpSender;

    invoke-direct {v0, p1, p0}, Lcom/android/email/mail/transport/SmtpSender;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

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

    .line 304
    :try_start_1
    const-string v1, "AUTH LOGIN"

    invoke-direct {p0, v1}, Lcom/android/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 305
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/username redacted/"

    invoke-direct {p0, v1, v2}, Lcom/android/email/mail/transport/SmtpSender;->executeSensitiveCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 308
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/password redacted/"

    invoke-direct {p0, v1, v2}, Lcom/android/email/mail/transport/SmtpSender;->executeSensitiveCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_22
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_22} :catch_23

    .line 318
    return-void

    .line 312
    :catch_23
    move-exception v0

    .line 313
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

    .line 314
    new-instance v1, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/emailcommon/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 316
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

    .line 322
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

    .line 323
    .local v0, data:[B
    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    .line 325
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

    .line 333
    return-void

    .line 327
    :catch_45
    move-exception v1

    .line 328
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

    .line 329
    new-instance v2, Lcom/android/emailcommon/mail/AuthenticationFailedException;

    invoke-virtual {v1}, Lcom/android/emailcommon/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/emailcommon/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 331
    :cond_66
    throw v1
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v0}, Lcom/android/email/mail/Transport;->close()V

    .line 235
    return-void
.end method

.method public open()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 109
    :try_start_0
    iget-object v8, p0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v8}, Lcom/android/email/mail/Transport;->open()V

    .line 112
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/android/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    const-string v5, "localhost"

    .line 116
    .local v5, localHost:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v8}, Lcom/android/email/mail/Transport;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v4

    .line 117
    .local v4, localAddress:Ljava/net/InetAddress;
    if-eqz v4, :cond_36

    .line 119
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .local v7, sb:Ljava/lang/StringBuilder;
    const/16 v8, 0x5b

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    instance-of v8, v4, Ljava/net/Inet6Address;

    if-eqz v8, :cond_26

    .line 122
    const-string v8, "IPv6:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_26
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 128
    .end local v7           #sb:Ljava/lang/StringBuilder;
    :cond_36
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EHLO "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 138
    .local v6, result:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v8}, Lcom/android/email/mail/Transport;->canTryTlsSecurity()Z

    move-result v8

    if-eqz v8, :cond_7e

    .line 139
    const-string v8, "STARTTLS"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_ac

    .line 140
    const-string v8, "STARTTLS"

    invoke-direct {p0, v8}, Lcom/android/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    iget-object v8, p0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v8}, Lcom/android/email/mail/Transport;->reopenTls()V

    .line 146
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EHLO "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 158
    :cond_7e
    const-string v8, ".*AUTH.*LOGIN.*$"

    invoke-virtual {v6, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    .line 159
    .local v0, authLoginSupported:Z
    const-string v8, ".*AUTH.*PLAIN.*$"

    invoke-virtual {v6, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    .line 161
    .local v1, authPlainSupported:Z
    iget-object v8, p0, Lcom/android/email/mail/transport/SmtpSender;->mUsername:Ljava/lang/String;

    if-eqz v8, :cond_ab

    iget-object v8, p0, Lcom/android/email/mail/transport/SmtpSender;->mUsername:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_ab

    iget-object v8, p0, Lcom/android/email/mail/transport/SmtpSender;->mPassword:Ljava/lang/String;

    if-eqz v8, :cond_ab

    iget-object v8, p0, Lcom/android/email/mail/transport/SmtpSender;->mPassword:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_ab

    .line 163
    if-eqz v1, :cond_d6

    .line 164
    iget-object v8, p0, Lcom/android/email/mail/transport/SmtpSender;->mUsername:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/email/mail/transport/SmtpSender;->mPassword:Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/android/email/mail/transport/SmtpSender;->saslAuthPlain(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_ab
    :goto_ab
    return-void

    .line 148
    .end local v0           #authLoginSupported:Z
    .end local v1           #authPlainSupported:Z
    :cond_ac
    sget-boolean v8, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v8, :cond_b7

    .line 149
    const-string v8, "Email"

    const-string v9, "TLS not supported but required"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_b7
    new-instance v8, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v9, 0x2

    invoke-direct {v8, v9}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v8
    :try_end_be
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_be} :catch_be
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_be} :catch_e0

    .line 176
    .end local v4           #localAddress:Ljava/net/InetAddress;
    .end local v5           #localHost:Ljava/lang/String;
    .end local v6           #result:Ljava/lang/String;
    :catch_be
    move-exception v2

    .line 177
    .local v2, e:Ljavax/net/ssl/SSLException;
    sget-boolean v8, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v8, :cond_cc

    .line 178
    const-string v8, "Email"

    invoke-virtual {v2}, Ljavax/net/ssl/SSLException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_cc
    new-instance v8, Lcom/android/emailcommon/mail/CertificateValidationException;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v2}, Lcom/android/emailcommon/mail/CertificateValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 166
    .end local v2           #e:Ljavax/net/ssl/SSLException;
    .restart local v0       #authLoginSupported:Z
    .restart local v1       #authPlainSupported:Z
    .restart local v4       #localAddress:Ljava/net/InetAddress;
    .restart local v5       #localHost:Ljava/lang/String;
    .restart local v6       #result:Ljava/lang/String;
    :cond_d6
    if-eqz v0, :cond_f9

    .line 167
    :try_start_d8
    iget-object v8, p0, Lcom/android/email/mail/transport/SmtpSender;->mUsername:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/email/mail/transport/SmtpSender;->mPassword:Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/android/email/mail/transport/SmtpSender;->saslAuthLogin(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_df
    .catch Ljavax/net/ssl/SSLException; {:try_start_d8 .. :try_end_df} :catch_be
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_df} :catch_e0

    goto :goto_ab

    .line 181
    .end local v0           #authLoginSupported:Z
    .end local v1           #authPlainSupported:Z
    .end local v4           #localAddress:Ljava/net/InetAddress;
    .end local v5           #localHost:Ljava/lang/String;
    .end local v6           #result:Ljava/lang/String;
    :catch_e0
    move-exception v3

    .line 182
    .local v3, ioe:Ljava/io/IOException;
    sget-boolean v8, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v8, :cond_ee

    .line 183
    const-string v8, "Email"

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_ee
    new-instance v8, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v9, 0x1

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v8

    .line 170
    .end local v3           #ioe:Ljava/io/IOException;
    .restart local v0       #authLoginSupported:Z
    .restart local v1       #authPlainSupported:Z
    .restart local v4       #localAddress:Ljava/net/InetAddress;
    .restart local v5       #localHost:Ljava/lang/String;
    .restart local v6       #result:Ljava/lang/String;
    :cond_f9
    :try_start_f9
    sget-boolean v8, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v8, :cond_104

    .line 171
    const-string v8, "Email"

    const-string v9, "No valid authentication mechanism found."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_104
    new-instance v8, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v9, 0x3

    invoke-direct {v8, v9}, Lcom/android/emailcommon/mail/MessagingException;-><init>(I)V

    throw v8
    :try_end_10b
    .catch Ljavax/net/ssl/SSLException; {:try_start_f9 .. :try_end_10b} :catch_be
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_10b} :catch_e0
.end method

.method public sendMessage(J)V
    .registers 21
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/mail/transport/SmtpSender;->close()V

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/mail/transport/SmtpSender;->open()V

    .line 194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/mail/transport/SmtpSender;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v16

    .line 195
    .local v16, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v16, :cond_2f

    .line 196
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

    .line 199
    :cond_2f
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->unpackFirst(Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;

    move-result-object v12

    .line 200
    .local v12, from:Lcom/android/emailcommon/mail/Address;
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v17

    .line 201
    .local v17, to:[Lcom/android/emailcommon/mail/Address;
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v11

    .line 202
    .local v11, cc:[Lcom/android/emailcommon/mail/Address;
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v10

    .line 205
    .local v10, bcc:[Lcom/android/emailcommon/mail/Address;
    :try_start_4f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MAIL FROM: <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

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

    .line 206
    move-object/from16 v9, v17

    .local v9, arr$:[Lcom/android/emailcommon/mail/Address;
    array-length v15, v9

    .local v15, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_75
    if-ge v13, v15, :cond_9e

    aget-object v8, v9, v13

    .line 207
    .local v8, address:Lcom/android/emailcommon/mail/Address;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RCPT TO: <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

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

    .line 206
    add-int/lit8 v13, v13, 0x1

    goto :goto_75

    .line 209
    .end local v8           #address:Lcom/android/emailcommon/mail/Address;
    :cond_9e
    move-object v9, v11

    array-length v15, v9

    const/4 v13, 0x0

    :goto_a1
    if-ge v13, v15, :cond_ca

    aget-object v8, v9, v13

    .line 210
    .restart local v8       #address:Lcom/android/emailcommon/mail/Address;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RCPT TO: <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

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

    .line 209
    add-int/lit8 v13, v13, 0x1

    goto :goto_a1

    .line 212
    .end local v8           #address:Lcom/android/emailcommon/mail/Address;
    :cond_ca
    move-object v9, v10

    array-length v15, v9

    const/4 v13, 0x0

    :goto_cd
    if-ge v13, v15, :cond_f6

    aget-object v8, v9, v13

    .line 213
    .restart local v8       #address:Lcom/android/emailcommon/mail/Address;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RCPT TO: <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

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

    .line 212
    add-int/lit8 v13, v13, 0x1

    goto :goto_cd

    .line 215
    .end local v8           #address:Lcom/android/emailcommon/mail/Address;
    :cond_f6
    const-string v2, "DATA"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/mail/transport/SmtpSender;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/email/mail/transport/EOLConvertingOutputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    invoke-interface {v3}, Lcom/android/email/mail/Transport;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v5, v3}, Lcom/android/email/mail/transport/EOLConvertingOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide/from16 v3, p1

    invoke-static/range {v2 .. v7}, Lcom/android/emailcommon/internet/Rfc822Output;->writeTo(Landroid/content/Context;JLjava/io/OutputStream;ZZ)V

    .line 221
    const-string v2, "\r\n."

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/email/mail/transport/SmtpSender;->executeSimpleCommand(Ljava/lang/String;)Ljava/lang/String;
    :try_end_11c
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_11c} :catch_11d

    .line 225
    return-void

    .line 222
    .end local v9           #arr$:[Lcom/android/emailcommon/mail/Address;
    .end local v13           #i$:I
    .end local v15           #len$:I
    :catch_11d
    move-exception v14

    .line 223
    .local v14, ioe:Ljava/io/IOException;
    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    const-string v3, "Unable to send message"

    invoke-direct {v2, v3, v14}, Lcom/android/emailcommon/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method setTransport(Lcom/android/email/mail/Transport;)V
    .registers 2
    .parameter "testTransport"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/email/mail/transport/SmtpSender;->mTransport:Lcom/android/email/mail/Transport;

    .line 104
    return-void
.end method
