.class public Lcom/android/email/mail/transport/MailTransport;
.super Ljava/lang/Object;
.source "MailTransport.java"

# interfaces
.implements Lcom/android/email/mail/Transport;


# static fields
.field private static final HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;


# instance fields
.field private mConnectionSecurity:I

.field private mDebugLabel:Ljava/lang/String;

.field private mHost:Ljava/lang/String;

.field private mIn:Ljava/io/InputStream;

.field private mOut:Ljava/io/OutputStream;

.field private mPort:I

.field private mSocket:Ljava/net/Socket;

.field private mTrustCertificates:Z

.field private mUserInfoParts:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    sput-object v0, Lcom/android/email/mail/transport/MailTransport;->HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "debugLabel"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/android/email/mail/transport/MailTransport;->mDebugLabel:Ljava/lang/String;

    .line 88
    return-void
.end method

.method private verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V
    .registers 8
    .parameter "socket"
    .parameter "hostname"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    move-object v1, p1

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    .line 247
    .local v1, ssl:Ljavax/net/ssl/SSLSocket;
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 249
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 250
    .local v0, session:Ljavax/net/ssl/SSLSession;
    if-nez v0, :cond_14

    .line 251
    new-instance v2, Ljavax/net/ssl/SSLException;

    const-string v3, "Cannot verify SSL socket without session"

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 257
    :cond_14
    sget-object v2, Lcom/android/email/mail/transport/MailTransport;->HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    invoke-interface {v2, p2, v0}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v2

    if-nez v2, :cond_35

    .line 258
    new-instance v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Certificate hostname not useable for server: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 261
    :cond_35
    return-void
.end method


# virtual methods
.method public canTrustAllCertificates()Z
    .registers 2

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/android/email/mail/transport/MailTransport;->mTrustCertificates:Z

    return v0
.end method

.method public canTrySslSecurity()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 143
    iget v1, p0, Lcom/android/email/mail/transport/MailTransport;->mConnectionSecurity:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public canTryTlsSecurity()Z
    .registers 3

    .prologue
    .line 148
    iget v0, p0, Lcom/android/email/mail/transport/MailTransport;->mConnectionSecurity:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public clone()Lcom/android/email/mail/Transport;
    .registers 3

    .prologue
    .line 97
    new-instance v0, Lcom/android/email/mail/transport/MailTransport;

    iget-object v1, p0, Lcom/android/email/mail/transport/MailTransport;->mDebugLabel:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/email/mail/transport/MailTransport;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, newObject:Lcom/android/email/mail/transport/MailTransport;
    iget-object v1, p0, Lcom/android/email/mail/transport/MailTransport;->mDebugLabel:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/email/mail/transport/MailTransport;->mDebugLabel:Ljava/lang/String;

    .line 100
    iget-object v1, p0, Lcom/android/email/mail/transport/MailTransport;->mHost:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/email/mail/transport/MailTransport;->mHost:Ljava/lang/String;

    .line 101
    iget v1, p0, Lcom/android/email/mail/transport/MailTransport;->mPort:I

    iput v1, v0, Lcom/android/email/mail/transport/MailTransport;->mPort:I

    .line 102
    iget-object v1, p0, Lcom/android/email/mail/transport/MailTransport;->mUserInfoParts:[Ljava/lang/String;

    if-eqz v1, :cond_21

    .line 103
    iget-object v1, p0, Lcom/android/email/mail/transport/MailTransport;->mUserInfoParts:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/android/email/mail/transport/MailTransport;->mUserInfoParts:[Ljava/lang/String;

    .line 105
    :cond_21
    iget v1, p0, Lcom/android/email/mail/transport/MailTransport;->mConnectionSecurity:I

    iput v1, v0, Lcom/android/email/mail/transport/MailTransport;->mConnectionSecurity:I

    .line 106
    iget-boolean v1, p0, Lcom/android/email/mail/transport/MailTransport;->mTrustCertificates:Z

    iput-boolean v1, v0, Lcom/android/email/mail/transport/MailTransport;->mTrustCertificates:Z

    .line 107
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->clone()Lcom/android/email/mail/Transport;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 285
    :try_start_1
    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_1b

    .line 290
    :goto_6
    :try_start_6
    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_19

    .line 295
    :goto_b
    :try_start_b
    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_17

    .line 299
    :goto_10
    iput-object v1, p0, Lcom/android/email/mail/transport/MailTransport;->mIn:Ljava/io/InputStream;

    .line 300
    iput-object v1, p0, Lcom/android/email/mail/transport/MailTransport;->mOut:Ljava/io/OutputStream;

    .line 301
    iput-object v1, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    .line 302
    return-void

    .line 296
    :catch_17
    move-exception v0

    goto :goto_10

    .line 291
    :catch_19
    move-exception v0

    goto :goto_b

    .line 286
    :catch_1b
    move-exception v0

    goto :goto_6
.end method

.method public getHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mIn:Ljava/io/InputStream;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 365
    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 367
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mOut:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getPort()I
    .registers 2

    .prologue
    .line 127
    iget v0, p0, Lcom/android/email/mail/transport/MailTransport;->mPort:I

    return v0
.end method

.method public isOpen()Z
    .registers 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mIn:Ljava/io/InputStream;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mOut:Ljava/io/OutputStream;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public open()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Lcom/android/emailcommon/mail/CertificateValidationException;
        }
    .end annotation

    .prologue
    .line 162
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_3e

    .line 163
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*** "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/mail/transport/MailTransport;->mDebugLabel:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " open "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getPort()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_3e
    :try_start_3e
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getPort()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 169
    .local v2, socketAddress:Ljava/net/SocketAddress;
    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->canTrySslSecurity()Z

    move-result v3

    if-eqz v3, :cond_9a

    .line 170
    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->canTrustAllCertificates()Z

    move-result v3

    invoke-static {v3}, Lcom/android/emailcommon/utility/SSLUtils;->getSSLSocketFactory(Z)Landroid/net/SSLCertificateSocketFactory;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/SSLCertificateSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v3

    iput-object v3, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    .line 174
    :goto_5f
    iget-object v3, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    const/16 v4, 0x2710

    invoke-virtual {v3, v2, v4}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 176
    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->canTrySslSecurity()Z

    move-result v3

    if-eqz v3, :cond_7b

    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->canTrustAllCertificates()Z

    move-result v3

    if-nez v3, :cond_7b

    .line 177
    iget-object v3, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/email/mail/transport/MailTransport;->verifyHostname(Ljava/net/Socket;Ljava/lang/String;)V

    .line 179
    :cond_7b
    new-instance v3, Ljava/io/BufferedInputStream;

    iget-object v4, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const/16 v5, 0x400

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v3, p0, Lcom/android/email/mail/transport/MailTransport;->mIn:Ljava/io/InputStream;

    .line 180
    new-instance v3, Ljava/io/BufferedOutputStream;

    iget-object v4, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    const/16 v5, 0x200

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v3, p0, Lcom/android/email/mail/transport/MailTransport;->mOut:Ljava/io/OutputStream;

    .line 193
    return-void

    .line 172
    :cond_9a
    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V

    iput-object v3, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;
    :try_end_a1
    .catch Ljavax/net/ssl/SSLException; {:try_start_3e .. :try_end_a1} :catch_a2
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_a1} :catch_ba

    goto :goto_5f

    .line 182
    .end local v2           #socketAddress:Ljava/net/SocketAddress;
    :catch_a2
    move-exception v0

    .line 183
    .local v0, e:Ljavax/net/ssl/SSLException;
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_b0

    .line 184
    const-string v3, "Email"

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_b0
    new-instance v3, Lcom/android/emailcommon/mail/CertificateValidationException;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/android/emailcommon/mail/CertificateValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 187
    .end local v0           #e:Ljavax/net/ssl/SSLException;
    :catch_ba
    move-exception v1

    .line 188
    .local v1, ioe:Ljava/io/IOException;
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_c8

    .line 189
    const-string v3, "Email"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_c8
    new-instance v3, Lcom/android/emailcommon/mail/MessagingException;

    const/4 v4, 0x1

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public readLine()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 340
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 341
    .local v3, sb:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 343
    .local v1, in:Ljava/io/InputStream;
    :cond_a
    :goto_a
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, d:I
    if-eq v0, v6, :cond_1a

    .line 344
    int-to-char v4, v0

    const/16 v5, 0xd

    if-eq v4, v5, :cond_a

    .line 346
    int-to-char v4, v0

    const/16 v5, 0xa

    if-ne v4, v5, :cond_48

    .line 352
    :cond_1a
    if-ne v0, v6, :cond_27

    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_27

    .line 353
    const-string v4, "Email"

    const-string v5, "End of stream reached while trying to read line."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_27
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 356
    .local v2, ret:Ljava/lang/String;
    sget-boolean v4, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v4, :cond_47

    .line 357
    const-string v4, "Email"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<<< "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_47
    return-object v2

    .line 349
    .end local v2           #ret:Ljava/lang/String;
    :cond_48
    int-to-char v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_a
.end method

.method public reopenTls()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 206
    :try_start_1
    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->canTrustAllCertificates()Z

    move-result v2

    invoke-static {v2}, Lcom/android/emailcommon/utility/SSLUtils;->getSSLSocketFactory(Z)Landroid/net/SSLCertificateSocketFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getPort()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/net/SSLCertificateSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    .line 208
    iget-object v2, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    const v3, 0xea60

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 209
    new-instance v2, Ljava/io/BufferedInputStream;

    iget-object v3, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    const/16 v4, 0x400

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v2, p0, Lcom/android/email/mail/transport/MailTransport;->mIn:Ljava/io/InputStream;

    .line 210
    new-instance v2, Ljava/io/BufferedOutputStream;

    iget-object v3, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    const/16 v4, 0x200

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v2, p0, Lcom/android/email/mail/transport/MailTransport;->mOut:Ljava/io/OutputStream;
    :try_end_40
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_40} :catch_41
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_40} :catch_59

    .line 223
    return-void

    .line 212
    :catch_41
    move-exception v0

    .line 213
    .local v0, e:Ljavax/net/ssl/SSLException;
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_4f

    .line 214
    const-string v2, "Email"

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_4f
    new-instance v2, Lcom/android/emailcommon/mail/CertificateValidationException;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/android/emailcommon/mail/CertificateValidationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 217
    .end local v0           #e:Ljavax/net/ssl/SSLException;
    :catch_59
    move-exception v1

    .line 218
    .local v1, ioe:Ljava/io/IOException;
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_67

    .line 219
    const-string v2, "Email"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_67
    new-instance v2, Lcom/android/emailcommon/mail/MessagingException;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v7, v3}, Lcom/android/emailcommon/mail/MessagingException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method public setHost(Ljava/lang/String;)V
    .registers 2
    .parameter "host"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/email/mail/transport/MailTransport;->mHost:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setPort(I)V
    .registers 2
    .parameter "port"

    .prologue
    .line 117
    iput p1, p0, Lcom/android/email/mail/transport/MailTransport;->mPort:I

    .line 118
    return-void
.end method

.method public setSecurity(IZ)V
    .registers 3
    .parameter "connectionSecurity"
    .parameter "trustAllCertificates"

    .prologue
    .line 132
    iput p1, p0, Lcom/android/email/mail/transport/MailTransport;->mConnectionSecurity:I

    .line 133
    iput-boolean p2, p0, Lcom/android/email/mail/transport/MailTransport;->mTrustCertificates:Z

    .line 134
    return-void
.end method

.method public setSoTimeout(I)V
    .registers 3
    .parameter "timeoutMilliseconds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/email/mail/transport/MailTransport;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 271
    return-void
.end method

.method public writeLine(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "s"
    .parameter "sensitiveReplacement"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 319
    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_22

    .line 320
    if-eqz p2, :cond_3b

    sget-boolean v1, Lcom/android/emailcommon/Logging;->DEBUG_SENSITIVE:Z

    if-nez v1, :cond_3b

    .line 321
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_22
    :goto_22
    invoke-virtual {p0}, Lcom/android/email/mail/transport/MailTransport;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 328
    .local v0, out:Ljava/io/OutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 329
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 330
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 331
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 332
    return-void

    .line 323
    .end local v0           #out:Ljava/io/OutputStream;
    :cond_3b
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method
