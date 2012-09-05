.class public Lorg/columba/ristretto/pop3/POP3Protocol;
.super Ljava/lang/Object;
.source "POP3Protocol.java"

# interfaces
.implements Lorg/columba/ristretto/auth/AuthenticationServer;


# static fields
.field public static final AUTHORIZATION:I = 0x1

.field public static final CONNECTION_CLOSED:I = 0x0

.field public static final DEFAULT_PORT:I = 0x6e

.field public static final DEFAULT_SSL_PORT:I = 0x3e3

.field private static final LOG:Ljava/util/logging/Logger; = null

.field public static final NOT_CONNECTED:I = 0x0

.field public static final TRANSACTION:I = 0x2

.field private static final linePattern:Ljava/util/regex/Pattern;

.field private static final statPattern:Ljava/util/regex/Pattern;

.field private static final timestampPattern:Ljava/util/regex/Pattern;


# instance fields
.field private in:Lorg/columba/ristretto/pop3/POP3InputStream;

.field private mutex:Lorg/columba/ristretto/concurrency/Mutex;

.field private out:Ljava/io/OutputStream;

.field private port:I

.field private servername:Ljava/lang/String;

.field private socket:Ljava/net/Socket;

.field private state:I

.field private timestamp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 78
    const-string v0, "org.columba.ristretto.pop3.protocol"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/pop3/POP3Protocol;->LOG:Ljava/util/logging/Logger;

    .line 108
    const-string v0, "(<[^>]*>)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/pop3/POP3Protocol;->timestampPattern:Ljava/util/regex/Pattern;

    .line 111
    const-string v0, "(([^\r\n]+)\r?\n?)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/pop3/POP3Protocol;->linePattern:Ljava/util/regex/Pattern;

    .line 113
    const-string v0, "(\\d+) (\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/pop3/POP3Protocol;->statPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "servername"

    .prologue
    .line 149
    const/16 v0, 0x6e

    invoke-direct {p0, p1, v0}, Lorg/columba/ristretto/pop3/POP3Protocol;-><init>(Ljava/lang/String;I)V

    .line 150
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .parameter "servername"
    .parameter "port"

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput p2, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->port:I

    .line 136
    iput-object p1, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->servername:Ljava/lang/String;

    .line 138
    new-instance v0, Lorg/columba/ristretto/concurrency/Mutex;

    invoke-direct {v0}, Lorg/columba/ristretto/concurrency/Mutex;-><init>()V

    iput-object v0, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->state:I

    .line 141
    return-void
.end method

.method private checkState(I)V
    .registers 5
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/columba/ristretto/pop3/POP3Exception;
        }
    .end annotation

    .prologue
    .line 278
    iget v0, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->state:I

    if-eq v0, p1, :cond_29

    .line 279
    new-instance v0, Lorg/columba/ristretto/pop3/POP3Exception;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Wrong state: Should be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "but is in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/columba/ristretto/pop3/POP3Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_29
    return-void
.end method

.method private createStreams()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 855
    sget-object v0, Lorg/columba/ristretto/log/RistrettoLogger;->logStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_28

    .line 856
    new-instance v0, Lorg/columba/ristretto/pop3/POP3InputStream;

    new-instance v1, Lorg/columba/ristretto/log/LogInputStream;

    iget-object v2, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    sget-object v3, Lorg/columba/ristretto/log/RistrettoLogger;->logStream:Ljava/io/OutputStream;

    invoke-direct {v1, v2, v3}, Lorg/columba/ristretto/log/LogInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lorg/columba/ristretto/pop3/POP3InputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->in:Lorg/columba/ristretto/pop3/POP3InputStream;

    .line 859
    new-instance v0, Lorg/columba/ristretto/log/LogOutputStream;

    iget-object v1, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    sget-object v2, Lorg/columba/ristretto/log/RistrettoLogger;->logStream:Ljava/io/OutputStream;

    invoke-direct {v0, v1, v2}, Lorg/columba/ristretto/log/LogOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->out:Ljava/io/OutputStream;

    .line 867
    :goto_27
    return-void

    .line 861
    :cond_28
    new-instance v0, Lorg/columba/ristretto/pop3/POP3InputStream;

    iget-object v1, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/columba/ristretto/pop3/POP3InputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->in:Lorg/columba/ristretto/pop3/POP3InputStream;

    .line 864
    iget-object v0, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->out:Ljava/io/OutputStream;

    goto :goto_27
.end method

.method private digestToString([B)Ljava/lang/String;
    .registers 6
    .parameter "digest"

    .prologue
    const/16 v3, 0x10

    .line 377
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 378
    .local v1, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    if-ge v0, v3, :cond_23

    .line 379
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    if-ge v2, v3, :cond_15

    .line 380
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 382
    :cond_15
    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 378
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 384
    :cond_23
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public apop(Ljava/lang/String;[C)V
    .registers 11
    .parameter "user"
    .parameter "secret"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/pop3/POP3Exception;
        }
    .end annotation

    .prologue
    .line 308
    iget-object v4, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->timestamp:Ljava/lang/String;

    if-nez v4, :cond_c

    .line 309
    new-instance v4, Lorg/columba/ristretto/pop3/CommandNotSupportedException;

    const-string v5, "No timestamp from server - APOP not possible"

    invoke-direct {v4, v5}, Lorg/columba/ristretto/pop3/CommandNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 312
    :cond_c
    :try_start_c
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 313
    .local v2, md:Ljava/security/MessageDigest;
    iget-object v4, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->timestamp:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 314
    if-nez p2, :cond_20

    .line 315
    const/4 v4, 0x0

    new-array p2, v4, [C

    .line 316
    :cond_20
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p2}, Ljava/lang/String;-><init>([C)V

    const-string v5, "ISO-8859-1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 318
    .local v0, digest:[B
    iget-object v4, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v4}, Lorg/columba/ristretto/concurrency/Mutex;->lock()V

    .line 319
    const-string v4, "APOP"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    invoke-direct {p0, v0}, Lorg/columba/ristretto/pop3/POP3Protocol;->digestToString([B)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lorg/columba/ristretto/pop3/POP3Protocol;->sendCommand(Ljava/lang/String;[Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0}, Lorg/columba/ristretto/pop3/POP3Protocol;->readSingleLineResponse()Lorg/columba/ristretto/pop3/POP3Response;

    move-result-object v3

    .line 322
    .local v3, response:Lorg/columba/ristretto/pop3/POP3Response;
    invoke-virtual {v3}, Lorg/columba/ristretto/pop3/POP3Response;->isOK()Z

    move-result v4

    if-nez v4, :cond_66

    .line 323
    new-instance v4, Lorg/columba/ristretto/pop3/POP3Exception;

    invoke-direct {v4, v3}, Lorg/columba/ristretto/pop3/POP3Exception;-><init>(Lorg/columba/ristretto/pop3/POP3Response;)V

    throw v4
    :try_end_56
    .catchall {:try_start_c .. :try_end_56} :catchall_5f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_56} :catch_56

    .line 326
    .end local v0           #digest:[B
    .end local v2           #md:Ljava/security/MessageDigest;
    .end local v3           #response:Lorg/columba/ristretto/pop3/POP3Response;
    :catch_56
    move-exception v1

    .line 327
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    :try_start_57
    new-instance v4, Lorg/columba/ristretto/pop3/POP3Exception;

    const-string v5, "Installed JRE doesn\'t support MD5 - APOP not possible"

    invoke-direct {v4, v5}, Lorg/columba/ristretto/pop3/POP3Exception;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_5f
    .catchall {:try_start_57 .. :try_end_5f} :catchall_5f

    .line 329
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catchall_5f
    move-exception v4

    iget-object v5, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v5}, Lorg/columba/ristretto/concurrency/Mutex;->release()V

    throw v4

    .line 325
    .restart local v0       #digest:[B
    .restart local v2       #md:Ljava/security/MessageDigest;
    .restart local v3       #response:Lorg/columba/ristretto/pop3/POP3Response;
    :cond_66
    const/4 v4, 0x2

    :try_start_67
    iput v4, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->state:I
    :try_end_69
    .catchall {:try_start_67 .. :try_end_69} :catchall_5f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_67 .. :try_end_69} :catch_56

    .line 329
    iget-object v4, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v4}, Lorg/columba/ristretto/concurrency/Mutex;->release()V

    .line 331
    return-void
.end method

.method public auth(Ljava/lang/String;Ljava/lang/String;[C)V
    .registers 10
    .parameter "algorithm"
    .parameter "user"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/pop3/POP3Exception;,
            Lorg/columba/ristretto/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 347
    iget-object v3, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v3}, Lorg/columba/ristretto/concurrency/Mutex;->lock()V

    .line 349
    :try_start_5
    invoke-static {}, Lorg/columba/ristretto/auth/AuthenticationFactory;->getInstance()Lorg/columba/ristretto/auth/AuthenticationFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/columba/ristretto/auth/AuthenticationFactory;->getAuthentication(Ljava/lang/String;)Lorg/columba/ristretto/auth/AuthenticationMechanism;

    move-result-object v0

    .line 350
    .local v0, auth:Lorg/columba/ristretto/auth/AuthenticationMechanism;
    const-string v3, "AUTH"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {p0, v3, v4}, Lorg/columba/ristretto/pop3/POP3Protocol;->sendCommand(Ljava/lang/String;[Ljava/lang/String;)V

    .line 352
    invoke-interface {v0, p0, p2, p3}, Lorg/columba/ristretto/auth/AuthenticationMechanism;->authenticate(Lorg/columba/ristretto/auth/AuthenticationServer;Ljava/lang/String;[C)V
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_3c
    .catch Lorg/columba/ristretto/auth/NoSuchAuthenticationException; {:try_start_5 .. :try_end_1b} :catch_35
    .catch Lorg/columba/ristretto/auth/AuthenticationException; {:try_start_5 .. :try_end_1b} :catch_43

    .line 358
    iget-object v3, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v3}, Lorg/columba/ristretto/concurrency/Mutex;->release()V

    .line 361
    invoke-virtual {p0}, Lorg/columba/ristretto/pop3/POP3Protocol;->readSingleLineResponse()Lorg/columba/ristretto/pop3/POP3Response;

    move-result-object v2

    .line 362
    .local v2, response:Lorg/columba/ristretto/pop3/POP3Response;
    iget-object v3, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v3}, Lorg/columba/ristretto/concurrency/Mutex;->release()V

    .line 364
    invoke-virtual {v2}, Lorg/columba/ristretto/pop3/POP3Response;->isOK()Z

    move-result v3

    if-nez v3, :cond_45

    .line 365
    new-instance v3, Lorg/columba/ristretto/pop3/POP3Exception;

    invoke-direct {v3, v2}, Lorg/columba/ristretto/pop3/POP3Exception;-><init>(Lorg/columba/ristretto/pop3/POP3Response;)V

    throw v3

    .line 353
    .end local v0           #auth:Lorg/columba/ristretto/auth/AuthenticationMechanism;
    .end local v2           #response:Lorg/columba/ristretto/pop3/POP3Response;
    :catch_35
    move-exception v1

    .line 354
    .local v1, e:Lorg/columba/ristretto/auth/NoSuchAuthenticationException;
    :try_start_36
    new-instance v3, Lorg/columba/ristretto/pop3/POP3Exception;

    invoke-direct {v3, v1}, Lorg/columba/ristretto/pop3/POP3Exception;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_3c

    .line 358
    .end local v1           #e:Lorg/columba/ristretto/auth/NoSuchAuthenticationException;
    :catchall_3c
    move-exception v3

    iget-object v4, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v4}, Lorg/columba/ristretto/concurrency/Mutex;->release()V

    throw v3

    .line 355
    :catch_43
    move-exception v1

    .line 356
    .local v1, e:Lorg/columba/ristretto/auth/AuthenticationException;
    :try_start_44
    throw v1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_3c

    .line 367
    .end local v1           #e:Lorg/columba/ristretto/auth/AuthenticationException;
    .restart local v0       #auth:Lorg/columba/ristretto/auth/AuthenticationMechanism;
    .restart local v2       #response:Lorg/columba/ristretto/pop3/POP3Response;
    :cond_45
    const/4 v3, 0x2

    iput v3, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->state:I

    .line 368
    return-void
.end method

.method public authReceive()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/columba/ristretto/auth/AuthenticationException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 833
    :try_start_0
    iget-object v2, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->in:Lorg/columba/ristretto/pop3/POP3InputStream;

    invoke-virtual {v2}, Lorg/columba/ristretto/pop3/POP3InputStream;->readSingleLineResponse()Lorg/columba/ristretto/pop3/POP3Response;

    move-result-object v1

    .line 834
    .local v1, response:Lorg/columba/ristretto/pop3/POP3Response;
    invoke-virtual {v1}, Lorg/columba/ristretto/pop3/POP3Response;->isOK()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 835
    invoke-virtual {v1}, Lorg/columba/ristretto/pop3/POP3Response;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 836
    invoke-virtual {v1}, Lorg/columba/ristretto/pop3/POP3Response;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/columba/ristretto/coder/Base64;->decodeToArray(Ljava/lang/CharSequence;)[B

    move-result-object v2

    .line 838
    :goto_1a
    return-object v2

    :cond_1b
    const/4 v2, 0x0

    new-array v2, v2, [B

    goto :goto_1a

    .line 841
    :cond_1f
    new-instance v2, Lorg/columba/ristretto/auth/AuthenticationException;

    new-instance v3, Lorg/columba/ristretto/pop3/POP3Exception;

    invoke-direct {v3, v1}, Lorg/columba/ristretto/pop3/POP3Exception;-><init>(Lorg/columba/ristretto/pop3/POP3Response;)V

    invoke-direct {v2, v3}, Lorg/columba/ristretto/auth/AuthenticationException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2a
    .catch Lorg/columba/ristretto/pop3/POP3Exception; {:try_start_0 .. :try_end_2a} :catch_2a

    .line 842
    .end local v1           #response:Lorg/columba/ristretto/pop3/POP3Response;
    :catch_2a
    move-exception v0

    .line 843
    .local v0, e:Lorg/columba/ristretto/pop3/POP3Exception;
    new-instance v2, Lorg/columba/ristretto/auth/AuthenticationException;

    invoke-direct {v2, v0}, Lorg/columba/ristretto/auth/AuthenticationException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public authSend([B)V
    .registers 5
    .parameter "call"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 821
    iget-object v0, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->out:Ljava/io/OutputStream;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/columba/ristretto/coder/Base64;->encode(Ljava/nio/ByteBuffer;Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Us-ASCII"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 823
    iget-object v0, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->out:Ljava/io/OutputStream;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 824
    iget-object v0, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->out:Ljava/io/OutputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 825
    iget-object v0, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 826
    return-void
.end method

.method public capa()[Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/pop3/POP3Exception;
        }
    .end annotation

    .prologue
    .line 790
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 793
    .local v0, list:Ljava/util/LinkedList;
    :try_start_5
    iget-object v4, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v4}, Lorg/columba/ristretto/concurrency/Mutex;->lock()V

    .line 794
    const-string v4, "CAPA"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lorg/columba/ristretto/pop3/POP3Protocol;->sendCommand(Ljava/lang/String;[Ljava/lang/String;)V

    .line 795
    invoke-virtual {p0}, Lorg/columba/ristretto/pop3/POP3Protocol;->readMultiLineResponse()Lorg/columba/ristretto/pop3/POP3Response;
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_38

    move-result-object v2

    .line 797
    .local v2, response:Lorg/columba/ristretto/pop3/POP3Response;
    iget-object v4, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v4}, Lorg/columba/ristretto/concurrency/Mutex;->release()V

    .line 800
    invoke-virtual {v2}, Lorg/columba/ristretto/pop3/POP3Response;->isOK()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 801
    invoke-virtual {v2}, Lorg/columba/ristretto/pop3/POP3Response;->getData()Lorg/columba/ristretto/io/Source;

    move-result-object v3

    .line 802
    .local v3, source:Lorg/columba/ristretto/io/Source;
    sget-object v4, Lorg/columba/ristretto/pop3/POP3Protocol;->linePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 804
    .local v1, matcher:Ljava/util/regex/Matcher;
    :goto_29
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_47

    .line 805
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_29

    .line 797
    .end local v1           #matcher:Ljava/util/regex/Matcher;
    .end local v2           #response:Lorg/columba/ristretto/pop3/POP3Response;
    .end local v3           #source:Lorg/columba/ristretto/io/Source;
    :catchall_38
    move-exception v4

    iget-object v5, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v5}, Lorg/columba/ristretto/concurrency/Mutex;->release()V

    throw v4

    .line 809
    .restart local v2       #response:Lorg/columba/ristretto/pop3/POP3Response;
    :cond_3f
    new-instance v4, Lorg/columba/ristretto/pop3/CommandNotSupportedException;

    const-string v5, "CAPA"

    invoke-direct {v4, v5}, Lorg/columba/ristretto/pop3/CommandNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 812
    .restart local v1       #matcher:Ljava/util/regex/Matcher;
    .restart local v3       #source:Lorg/columba/ristretto/io/Source;
    :cond_47
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method public dele(I)Z
    .registers 7
    .parameter "messageindex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/pop3/POP3Exception;
        }
    .end annotation

    .prologue
    .line 601
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lorg/columba/ristretto/pop3/POP3Protocol;->checkState(I)V

    .line 605
    :try_start_4
    iget-object v1, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v1}, Lorg/columba/ristretto/concurrency/Mutex;->lock()V

    .line 607
    const-string v1, "DELE"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/columba/ristretto/pop3/POP3Protocol;->sendCommand(Ljava/lang/String;[Ljava/lang/String;)V

    .line 608
    invoke-virtual {p0}, Lorg/columba/ristretto/pop3/POP3Protocol;->readSingleLineResponse()Lorg/columba/ristretto/pop3/POP3Response;
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_26

    move-result-object v0

    .line 610
    .local v0, response:Lorg/columba/ristretto/pop3/POP3Response;
    iget-object v1, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v1}, Lorg/columba/ristretto/concurrency/Mutex;->release()V

    .line 613
    invoke-virtual {v0}, Lorg/columba/ristretto/pop3/POP3Response;->isOK()Z

    move-result v1

    return v1

    .line 610
    .end local v0           #response:Lorg/columba/ristretto/pop3/POP3Response;
    :catchall_26
    move-exception v1

    iget-object v2, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v2}, Lorg/columba/ristretto/concurrency/Mutex;->release()V

    throw v1
.end method

.method public dropConnection()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 889
    iget v0, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->state:I

    if-eqz v0, :cond_18

    .line 890
    const/4 v0, 0x0

    iput v0, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->state:I

    .line 892
    iget-object v0, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 893
    iput-object v1, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->in:Lorg/columba/ristretto/pop3/POP3InputStream;

    .line 894
    iput-object v1, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->out:Ljava/io/OutputStream;

    .line 895
    iput-object v1, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->socket:Ljava/net/Socket;

    .line 897
    iget-object v0, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v0}, Lorg/columba/ristretto/concurrency/Mutex;->release()V

    .line 899
    :cond_18
    return-void
.end method

.method public getHostName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 872
    iget-object v0, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->servername:Ljava/lang/String;

    return-object v0
.end method

.method public getService()Ljava/lang/String;
    .registers 2

    .prologue
    .line 879
    const-string v0, "pop3"

    return-object v0
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 851
    iget v0, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->state:I

    return v0
.end method

.method public isApopSupported()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/columba/ristretto/pop3/POP3Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 293
    invoke-direct {p0, v0}, Lorg/columba/ristretto/pop3/POP3Protocol;->checkState(I)V

    .line 295
    iget-object v1, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->timestamp:Ljava/lang/String;

    if-eqz v1, :cond_9

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public list(I)Lorg/columba/ristretto/pop3/ScanListEntry;
    .registers 8
    .parameter "messageindex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/pop3/POP3Exception;
        }
    .end annotation

    .prologue
    .line 500
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lorg/columba/ristretto/pop3/POP3Protocol;->checkState(I)V

    .line 503
    const-string v2, "LIST"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lorg/columba/ristretto/pop3/POP3Protocol;->sendCommand(Ljava/lang/String;[Ljava/lang/String;)V

    .line 504
    invoke-virtual {p0}, Lorg/columba/ristretto/pop3/POP3Protocol;->readSingleLineResponse()Lorg/columba/ristretto/pop3/POP3Response;

    move-result-object v1

    .line 505
    .local v1, response:Lorg/columba/ristretto/pop3/POP3Response;
    invoke-virtual {v1}, Lorg/columba/ristretto/pop3/POP3Response;->isOK()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 507
    :try_start_1d
    invoke-virtual {v1}, Lorg/columba/ristretto/pop3/POP3Response;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/columba/ristretto/pop3/parser/ScanListParser;->parse(Ljava/lang/CharSequence;)Lorg/columba/ristretto/pop3/ScanListEntry;
    :try_end_24
    .catch Lorg/columba/ristretto/parser/ParserException; {:try_start_1d .. :try_end_24} :catch_26

    move-result-object v2

    return-object v2

    .line 508
    :catch_26
    move-exception v0

    .line 509
    .local v0, e:Lorg/columba/ristretto/parser/ParserException;
    new-instance v2, Lorg/columba/ristretto/pop3/POP3Exception;

    invoke-virtual {v0}, Lorg/columba/ristretto/parser/ParserException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/columba/ristretto/pop3/POP3Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 513
    .end local v0           #e:Lorg/columba/ristretto/parser/ParserException;
    :cond_31
    new-instance v2, Lorg/columba/ristretto/pop3/POP3Exception;

    invoke-direct {v2, v1}, Lorg/columba/ristretto/pop3/POP3Exception;-><init>(Lorg/columba/ristretto/pop3/POP3Response;)V

    throw v2
.end method

.method public list()[Lorg/columba/ristretto/pop3/ScanListEntry;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/pop3/POP3Exception;
        }
    .end annotation

    .prologue
    .line 459
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lorg/columba/ristretto/pop3/POP3Protocol;->checkState(I)V

    .line 461
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 463
    .local v1, list:Ljava/util/LinkedList;
    iget-object v5, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v5}, Lorg/columba/ristretto/concurrency/Mutex;->lock()V

    .line 464
    const-string v5, "LIST"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lorg/columba/ristretto/pop3/POP3Protocol;->sendCommand(Ljava/lang/String;[Ljava/lang/String;)V

    .line 466
    :try_start_14
    invoke-virtual {p0}, Lorg/columba/ristretto/pop3/POP3Protocol;->readMultiLineResponse()Lorg/columba/ristretto/pop3/POP3Response;
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_4b

    move-result-object v3

    .line 468
    .local v3, response:Lorg/columba/ristretto/pop3/POP3Response;
    iget-object v5, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v5}, Lorg/columba/ristretto/concurrency/Mutex;->release()V

    .line 471
    invoke-virtual {v3}, Lorg/columba/ristretto/pop3/POP3Response;->isOK()Z

    move-result v5

    if-eqz v5, :cond_52

    .line 472
    invoke-virtual {v3}, Lorg/columba/ristretto/pop3/POP3Response;->getData()Lorg/columba/ristretto/io/Source;

    move-result-object v4

    .line 473
    .local v4, source:Lorg/columba/ristretto/io/Source;
    sget-object v5, Lorg/columba/ristretto/pop3/POP3Protocol;->linePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 475
    .local v2, matcher:Ljava/util/regex/Matcher;
    :goto_2d
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_52

    .line 477
    const/4 v5, 0x1

    :try_start_34
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/columba/ristretto/pop3/parser/ScanListParser;->parse(Ljava/lang/CharSequence;)Lorg/columba/ristretto/pop3/ScanListEntry;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_3f
    .catch Lorg/columba/ristretto/parser/ParserException; {:try_start_34 .. :try_end_3f} :catch_40

    goto :goto_2d

    .line 478
    :catch_40
    move-exception v0

    .line 481
    .local v0, e:Lorg/columba/ristretto/parser/ParserException;
    sget-object v5, Lorg/columba/ristretto/pop3/POP3Protocol;->LOG:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Lorg/columba/ristretto/parser/ParserException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_2d

    .line 468
    .end local v0           #e:Lorg/columba/ristretto/parser/ParserException;
    .end local v2           #matcher:Ljava/util/regex/Matcher;
    .end local v3           #response:Lorg/columba/ristretto/pop3/POP3Response;
    .end local v4           #source:Lorg/columba/ristretto/io/Source;
    :catchall_4b
    move-exception v5

    iget-object v6, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v6}, Lorg/columba/ristretto/concurrency/Mutex;->release()V

    throw v5

    .line 487
    .restart local v3       #response:Lorg/columba/ristretto/pop3/POP3Response;
    :cond_52
    const/4 v5, 0x0

    new-array v5, v5, [Lorg/columba/ristretto/pop3/ScanListEntry;

    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/columba/ristretto/pop3/ScanListEntry;

    check-cast v5, [Lorg/columba/ristretto/pop3/ScanListEntry;

    return-object v5
.end method

.method public noop()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/pop3/POP3Exception;
        }
    .end annotation

    .prologue
    .line 623
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lorg/columba/ristretto/pop3/POP3Protocol;->checkState(I)V

    .line 627
    :try_start_4
    iget-object v1, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v1}, Lorg/columba/ristretto/concurrency/Mutex;->lock()V

    .line 629
    const-string v1, "NOOP"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/columba/ristretto/pop3/POP3Protocol;->sendCommand(Ljava/lang/String;[Ljava/lang/String;)V

    .line 630
    invoke-virtual {p0}, Lorg/columba/ristretto/pop3/POP3Protocol;->readSingleLineResponse()Lorg/columba/ristretto/pop3/POP3Response;
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_24

    move-result-object v0

    .line 632
    .local v0, response:Lorg/columba/ristretto/pop3/POP3Response;
    iget-object v1, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v1}, Lorg/columba/ristretto/concurrency/Mutex;->release()V

    .line 636
    invoke-virtual {v0}, Lorg/columba/ristretto/pop3/POP3Response;->isOK()Z

    move-result v1

    if-nez v1, :cond_2b

    new-instance v1, Lorg/columba/ristretto/pop3/POP3Exception;

    invoke-direct {v1, v0}, Lorg/columba/ristretto/pop3/POP3Exception;-><init>(Lorg/columba/ristretto/pop3/POP3Response;)V

    throw v1

    .line 632
    .end local v0           #response:Lorg/columba/ristretto/pop3/POP3Response;
    :catchall_24
    move-exception v1

    iget-object v2, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v2}, Lorg/columba/ristretto/concurrency/Mutex;->release()V

    throw v1

    .line 637
    .restart local v0       #response:Lorg/columba/ristretto/pop3/POP3Response;
    :cond_2b
    return-void
.end method

.method public openPort()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/pop3/POP3Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 159
    new-instance v2, Ljava/net/Socket;

    iget-object v3, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->servername:Ljava/lang/String;

    iget v4, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->port:I

    invoke-direct {v2, v3, v4}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->socket:Ljava/net/Socket;

    .line 161
    iget-object v2, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->socket:Ljava/net/Socket;

    invoke-static {}, Lorg/columba/ristretto/config/RistrettoConfig;->getInstance()Lorg/columba/ristretto/config/RistrettoConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/columba/ristretto/config/RistrettoConfig;->getTimeout()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 163
    invoke-direct {p0}, Lorg/columba/ristretto/pop3/POP3Protocol;->createStreams()V

    .line 165
    iget-object v2, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->in:Lorg/columba/ristretto/pop3/POP3InputStream;

    invoke-virtual {v2}, Lorg/columba/ristretto/pop3/POP3InputStream;->readSingleLineResponse()Lorg/columba/ristretto/pop3/POP3Response;

    move-result-object v1

    .line 168
    .local v1, response:Lorg/columba/ristretto/pop3/POP3Response;
    sget-object v2, Lorg/columba/ristretto/pop3/POP3Protocol;->timestampPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Lorg/columba/ristretto/pop3/POP3Response;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 169
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 170
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->timestamp:Ljava/lang/String;

    .line 173
    :cond_38
    invoke-virtual {v1}, Lorg/columba/ristretto/pop3/POP3Response;->isOK()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 174
    iput v5, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->state:I

    .line 176
    :cond_40
    return-void
.end method

.method public openSSLPort()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/net/ssl/SSLException;,
            Lorg/columba/ristretto/pop3/POP3Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 187
    invoke-static {}, Lorg/columba/ristretto/ssl/RistrettoSSLSocketFactory;->getInstance()Lorg/columba/ristretto/ssl/RistrettoSSLSocketFactory;

    move-result-object v2

    iget-object v3, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->servername:Ljava/lang/String;

    iget v4, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->port:I

    invoke-virtual {v2, v3, v4}, Lorg/columba/ristretto/ssl/RistrettoSSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v2

    iput-object v2, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->socket:Ljava/net/Socket;

    .line 189
    iget-object v2, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->socket:Ljava/net/Socket;

    invoke-static {}, Lorg/columba/ristretto/config/RistrettoConfig;->getInstance()Lorg/columba/ristretto/config/RistrettoConfig;

    move-result-object v3

    invoke-virtual {v3}, Lorg/columba/ristretto/config/RistrettoConfig;->getTimeout()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 192
    iget-object v2, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->socket:Ljava/net/Socket;

    check-cast v2, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 194
    invoke-direct {p0}, Lorg/columba/ristretto/pop3/POP3Protocol;->createStreams()V

    .line 196
    iget-object v2, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->in:Lorg/columba/ristretto/pop3/POP3InputStream;

    invoke-virtual {v2}, Lorg/columba/ristretto/pop3/POP3InputStream;->readSingleLineResponse()Lorg/columba/ristretto/pop3/POP3Response;

    move-result-object v1

    .line 199
    .local v1, response:Lorg/columba/ristretto/pop3/POP3Response;
    sget-object v2, Lorg/columba/ristretto/pop3/POP3Protocol;->timestampPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Lorg/columba/ristretto/pop3/POP3Response;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 200
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 201
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->timestamp:Ljava/lang/String;

    .line 204
    :cond_42
    invoke-virtual {v1}, Lorg/columba/ristretto/pop3/POP3Response;->isOK()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 205
    iput v5, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->state:I

    .line 207
    :cond_4a
    return-void
.end method

.method public quit()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/pop3/POP3Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 670
    :try_start_2
    iget-object v0, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v0}, Lorg/columba/ristretto/concurrency/Mutex;->lock()V

    .line 671
    const-string v0, "QUIT"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/columba/ristretto/pop3/POP3Protocol;->sendCommand(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_20

    .line 673
    iget-object v0, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v0}, Lorg/columba/ristretto/concurrency/Mutex;->release()V

    .line 674
    iget-object v0, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 676
    iput-object v2, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->in:Lorg/columba/ristretto/pop3/POP3InputStream;

    .line 677
    iput-object v2, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->out:Ljava/io/OutputStream;

    .line 678
    iput-object v2, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->socket:Ljava/net/Socket;

    .line 680
    iput v3, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->state:I

    .line 683
    return-void

    .line 673
    :catchall_20
    move-exception v0

    iget-object v1, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v1}, Lorg/columba/ristretto/concurrency/Mutex;->release()V

    .line 674
    iget-object v1, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 676
    iput-object v2, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->in:Lorg/columba/ristretto/pop3/POP3InputStream;

    .line 677
    iput-object v2, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->out:Ljava/io/OutputStream;

    .line 678
    iput-object v2, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->socket:Ljava/net/Socket;

    .line 680
    iput v3, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->state:I

    throw v0
.end method

.method protected readMultiLineResponse()Lorg/columba/ristretto/pop3/POP3Response;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/pop3/POP3Exception;
        }
    .end annotation

    .prologue
    .line 268
    :try_start_0
    iget-object v1, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->in:Lorg/columba/ristretto/pop3/POP3InputStream;

    invoke-virtual {v1}, Lorg/columba/ristretto/pop3/POP3InputStream;->readMultiLineResponse()Lorg/columba/ristretto/pop3/POP3Response;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 269
    :catch_7
    move-exception v0

    .line 271
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    iput v1, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->state:I

    .line 272
    throw v0
.end method

.method protected readSingleLineResponse()Lorg/columba/ristretto/pop3/POP3Response;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/pop3/POP3Exception;
        }
    .end annotation

    .prologue
    .line 258
    :try_start_0
    iget-object v1, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->in:Lorg/columba/ristretto/pop3/POP3InputStream;

    invoke-virtual {v1}, Lorg/columba/ristretto/pop3/POP3InputStream;->readSingleLineResponse()Lorg/columba/ristretto/pop3/POP3Response;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 259
    :catch_7
    move-exception v0

    .line 261
    .local v0, e:Ljava/io/IOException;
    const/4 v1, 0x0

    iput v1, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->state:I

    .line 262
    throw v0
.end method

.method public retr(I)Ljava/io/InputStream;
    .registers 4
    .parameter "messageindex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/pop3/POP3Exception;
        }
    .end annotation

    .prologue
    .line 528
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lorg/columba/ristretto/pop3/POP3Protocol;->checkState(I)V

    .line 530
    invoke-virtual {p0, p1}, Lorg/columba/ristretto/pop3/POP3Protocol;->list(I)Lorg/columba/ristretto/pop3/ScanListEntry;

    move-result-object v0

    .line 532
    .local v0, info:Lorg/columba/ristretto/pop3/ScanListEntry;
    invoke-virtual {v0}, Lorg/columba/ristretto/pop3/ScanListEntry;->getSize()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lorg/columba/ristretto/pop3/POP3Protocol;->retr(II)Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method public retr(II)Ljava/io/InputStream;
    .registers 8
    .parameter "messageindex"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/pop3/POP3Exception;
        }
    .end annotation

    .prologue
    .line 550
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lorg/columba/ristretto/pop3/POP3Protocol;->checkState(I)V

    .line 553
    iget-object v1, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v1}, Lorg/columba/ristretto/concurrency/Mutex;->lock()V

    .line 554
    const-string v1, "RETR"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/columba/ristretto/pop3/POP3Protocol;->sendCommand(Ljava/lang/String;[Ljava/lang/String;)V

    .line 555
    invoke-virtual {p0}, Lorg/columba/ristretto/pop3/POP3Protocol;->readSingleLineResponse()Lorg/columba/ristretto/pop3/POP3Response;

    move-result-object v0

    .line 556
    .local v0, response:Lorg/columba/ristretto/pop3/POP3Response;
    invoke-virtual {v0}, Lorg/columba/ristretto/pop3/POP3Response;->isERR()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 557
    new-instance v1, Lorg/columba/ristretto/pop3/POP3Exception;

    invoke-direct {v1, v0}, Lorg/columba/ristretto/pop3/POP3Exception;-><init>(Lorg/columba/ristretto/pop3/POP3Response;)V

    throw v1

    .line 560
    :cond_28
    iget-object v1, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->in:Lorg/columba/ristretto/pop3/POP3InputStream;

    iget-object v2, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v1, p2, v2}, Lorg/columba/ristretto/pop3/POP3InputStream;->asyncDownload(ILorg/columba/ristretto/concurrency/Mutex;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method public rset()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/pop3/POP3Exception;
        }
    .end annotation

    .prologue
    .line 646
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lorg/columba/ristretto/pop3/POP3Protocol;->checkState(I)V

    .line 650
    :try_start_4
    iget-object v1, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v1}, Lorg/columba/ristretto/concurrency/Mutex;->lock()V

    .line 652
    const-string v1, "RSET"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/columba/ristretto/pop3/POP3Protocol;->sendCommand(Ljava/lang/String;[Ljava/lang/String;)V

    .line 653
    invoke-virtual {p0}, Lorg/columba/ristretto/pop3/POP3Protocol;->readSingleLineResponse()Lorg/columba/ristretto/pop3/POP3Response;
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_24

    move-result-object v0

    .line 655
    .local v0, response:Lorg/columba/ristretto/pop3/POP3Response;
    iget-object v1, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v1}, Lorg/columba/ristretto/concurrency/Mutex;->release()V

    .line 659
    invoke-virtual {v0}, Lorg/columba/ristretto/pop3/POP3Response;->isOK()Z

    move-result v1

    if-nez v1, :cond_2b

    new-instance v1, Lorg/columba/ristretto/pop3/POP3Exception;

    invoke-direct {v1, v0}, Lorg/columba/ristretto/pop3/POP3Exception;-><init>(Lorg/columba/ristretto/pop3/POP3Response;)V

    throw v1

    .line 655
    .end local v0           #response:Lorg/columba/ristretto/pop3/POP3Response;
    :catchall_24
    move-exception v1

    iget-object v2, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v2}, Lorg/columba/ristretto/concurrency/Mutex;->release()V

    throw v1

    .line 660
    .restart local v0       #response:Lorg/columba/ristretto/pop3/POP3Response;
    :cond_2b
    return-void
.end method

.method protected sendCommand(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 7
    .parameter "command"
    .parameter "parameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    :try_start_0
    iget-object v2, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->out:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 237
    if-eqz p2, :cond_24

    .line 238
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    array-length v2, p2

    if-ge v1, v2, :cond_24

    .line 239
    iget-object v2, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->out:Ljava/io/OutputStream;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 240
    iget-object v2, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->out:Ljava/io/OutputStream;

    aget-object v3, p2, v1

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 238
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 245
    .end local v1           #i:I
    :cond_24
    iget-object v2, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->out:Ljava/io/OutputStream;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 246
    iget-object v2, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->out:Ljava/io/OutputStream;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 249
    iget-object v2, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_37} :catch_38

    .line 254
    return-void

    .line 250
    :catch_38
    move-exception v0

    .line 251
    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x0

    iput v2, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->state:I

    .line 252
    throw v0
.end method

.method public sretr(II)Ljava/io/InputStream;
    .registers 8
    .parameter "messageindex"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/pop3/POP3Exception;
        }
    .end annotation

    .prologue
    .line 577
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lorg/columba/ristretto/pop3/POP3Protocol;->checkState(I)V

    .line 581
    const-string v1, "RETR"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/columba/ristretto/pop3/POP3Protocol;->sendCommand(Ljava/lang/String;[Ljava/lang/String;)V

    .line 582
    invoke-virtual {p0}, Lorg/columba/ristretto/pop3/POP3Protocol;->readSingleLineResponse()Lorg/columba/ristretto/pop3/POP3Response;

    move-result-object v0

    .line 583
    .local v0, response:Lorg/columba/ristretto/pop3/POP3Response;
    invoke-virtual {v0}, Lorg/columba/ristretto/pop3/POP3Response;->isERR()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 584
    new-instance v1, Lorg/columba/ristretto/pop3/POP3Exception;

    invoke-direct {v1, v0}, Lorg/columba/ristretto/pop3/POP3Exception;-><init>(Lorg/columba/ristretto/pop3/POP3Response;)V

    throw v1

    .line 587
    :cond_23
    iget-object v1, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->in:Lorg/columba/ristretto/pop3/POP3InputStream;

    invoke-virtual {v1, p2}, Lorg/columba/ristretto/pop3/POP3InputStream;->syncDownload(I)Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method public startTLS()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/net/ssl/SSLException;,
            Lorg/columba/ristretto/pop3/POP3Exception;
        }
    .end annotation

    .prologue
    .line 217
    const-string v1, "STLS"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/columba/ristretto/pop3/POP3Protocol;->sendCommand(Ljava/lang/String;[Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lorg/columba/ristretto/pop3/POP3Protocol;->readSingleLineResponse()Lorg/columba/ristretto/pop3/POP3Response;

    move-result-object v0

    .line 220
    .local v0, response:Lorg/columba/ristretto/pop3/POP3Response;
    invoke-virtual {v0}, Lorg/columba/ristretto/pop3/POP3Response;->isERR()Z

    move-result v1

    if-eqz v1, :cond_18

    new-instance v1, Lorg/columba/ristretto/pop3/CommandNotSupportedException;

    const-string v2, "STLS"

    invoke-direct {v1, v2}, Lorg/columba/ristretto/pop3/CommandNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 222
    :cond_18
    invoke-static {}, Lorg/columba/ristretto/ssl/RistrettoSSLSocketFactory;->getInstance()Lorg/columba/ristretto/ssl/RistrettoSSLSocketFactory;

    move-result-object v1

    iget-object v2, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->socket:Ljava/net/Socket;

    iget-object v3, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->servername:Ljava/lang/String;

    iget v4, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->port:I

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/columba/ristretto/ssl/RistrettoSSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->socket:Ljava/net/Socket;

    .line 225
    iget-object v1, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->socket:Ljava/net/Socket;

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 227
    invoke-direct {p0}, Lorg/columba/ristretto/pop3/POP3Protocol;->createStreams()V

    .line 228
    return-void
.end method

.method public stat()[I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/pop3/POP3Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 430
    invoke-direct {p0, v5}, Lorg/columba/ristretto/pop3/POP3Protocol;->checkState(I)V

    .line 433
    iget-object v2, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v2}, Lorg/columba/ristretto/concurrency/Mutex;->lock()V

    .line 434
    const-string v2, "STAT"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/columba/ristretto/pop3/POP3Protocol;->sendCommand(Ljava/lang/String;[Ljava/lang/String;)V

    .line 436
    :try_start_10
    invoke-virtual {p0}, Lorg/columba/ristretto/pop3/POP3Protocol;->readSingleLineResponse()Lorg/columba/ristretto/pop3/POP3Response;
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_47

    move-result-object v1

    .line 438
    .local v1, response:Lorg/columba/ristretto/pop3/POP3Response;
    iget-object v2, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v2}, Lorg/columba/ristretto/concurrency/Mutex;->release()V

    .line 441
    invoke-virtual {v1}, Lorg/columba/ristretto/pop3/POP3Response;->isOK()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 442
    sget-object v2, Lorg/columba/ristretto/pop3/POP3Protocol;->statPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Lorg/columba/ristretto/pop3/POP3Response;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 443
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 444
    new-array v2, v5, [I

    const/4 v3, 0x0

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v3

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v6

    return-object v2

    .line 438
    .end local v0           #matcher:Ljava/util/regex/Matcher;
    .end local v1           #response:Lorg/columba/ristretto/pop3/POP3Response;
    :catchall_47
    move-exception v2

    iget-object v3, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v3}, Lorg/columba/ristretto/concurrency/Mutex;->release()V

    throw v2

    .line 448
    .restart local v1       #response:Lorg/columba/ristretto/pop3/POP3Response;
    :cond_4e
    new-instance v2, Lorg/columba/ristretto/pop3/POP3Exception;

    invoke-direct {v2, v1}, Lorg/columba/ristretto/pop3/POP3Exception;-><init>(Lorg/columba/ristretto/pop3/POP3Response;)V

    throw v2
.end method

.method public top(II)Lorg/columba/ristretto/io/Source;
    .registers 8
    .parameter "messageindex"
    .parameter "numberOfLines"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/pop3/POP3Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x2

    .line 697
    invoke-direct {p0, v1}, Lorg/columba/ristretto/pop3/POP3Protocol;->checkState(I)V

    .line 700
    :try_start_4
    iget-object v1, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v1}, Lorg/columba/ristretto/concurrency/Mutex;->lock()V

    .line 701
    const-string v1, "TOP"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/columba/ristretto/pop3/POP3Protocol;->sendCommand(Ljava/lang/String;[Ljava/lang/String;)V

    .line 702
    invoke-virtual {p0}, Lorg/columba/ristretto/pop3/POP3Protocol;->readMultiLineResponse()Lorg/columba/ristretto/pop3/POP3Response;
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_2d

    move-result-object v0

    .line 705
    .local v0, response:Lorg/columba/ristretto/pop3/POP3Response;
    iget-object v1, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v1}, Lorg/columba/ristretto/concurrency/Mutex;->release()V

    .line 708
    invoke-virtual {v0}, Lorg/columba/ristretto/pop3/POP3Response;->getData()Lorg/columba/ristretto/io/Source;

    move-result-object v1

    return-object v1

    .line 705
    .end local v0           #response:Lorg/columba/ristretto/pop3/POP3Response;
    :catchall_2d
    move-exception v1

    iget-object v2, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v2}, Lorg/columba/ristretto/concurrency/Mutex;->release()V

    throw v1
.end method

.method public uidl(I)Lorg/columba/ristretto/pop3/UidListEntry;
    .registers 8
    .parameter "messageindex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/pop3/POP3Exception;
        }
    .end annotation

    .prologue
    .line 720
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lorg/columba/ristretto/pop3/POP3Protocol;->checkState(I)V

    .line 724
    :try_start_4
    iget-object v2, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v2}, Lorg/columba/ristretto/concurrency/Mutex;->lock()V

    .line 725
    const-string v2, "UIDL"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lorg/columba/ristretto/pop3/POP3Protocol;->sendCommand(Ljava/lang/String;[Ljava/lang/String;)V

    .line 726
    invoke-virtual {p0}, Lorg/columba/ristretto/pop3/POP3Protocol;->readSingleLineResponse()Lorg/columba/ristretto/pop3/POP3Response;
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_30

    move-result-object v1

    .line 728
    .local v1, response:Lorg/columba/ristretto/pop3/POP3Response;
    iget-object v2, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v2}, Lorg/columba/ristretto/concurrency/Mutex;->release()V

    .line 732
    invoke-virtual {v1}, Lorg/columba/ristretto/pop3/POP3Response;->isOK()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 734
    :try_start_27
    invoke-virtual {v1}, Lorg/columba/ristretto/pop3/POP3Response;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/columba/ristretto/pop3/parser/UIDListParser;->parse(Ljava/lang/CharSequence;)Lorg/columba/ristretto/pop3/UidListEntry;
    :try_end_2e
    .catch Lorg/columba/ristretto/parser/ParserException; {:try_start_27 .. :try_end_2e} :catch_37

    move-result-object v2

    return-object v2

    .line 728
    .end local v1           #response:Lorg/columba/ristretto/pop3/POP3Response;
    :catchall_30
    move-exception v2

    iget-object v3, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v3}, Lorg/columba/ristretto/concurrency/Mutex;->release()V

    throw v2

    .line 735
    .restart local v1       #response:Lorg/columba/ristretto/pop3/POP3Response;
    :catch_37
    move-exception v0

    .line 736
    .local v0, e:Lorg/columba/ristretto/parser/ParserException;
    new-instance v2, Lorg/columba/ristretto/pop3/POP3Exception;

    invoke-virtual {v0}, Lorg/columba/ristretto/parser/ParserException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/columba/ristretto/pop3/POP3Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 740
    .end local v0           #e:Lorg/columba/ristretto/parser/ParserException;
    :cond_42
    new-instance v2, Lorg/columba/ristretto/pop3/POP3Exception;

    invoke-direct {v2, v1}, Lorg/columba/ristretto/pop3/POP3Exception;-><init>(Lorg/columba/ristretto/pop3/POP3Response;)V

    throw v2
.end method

.method public uidl()[Lorg/columba/ristretto/pop3/UidListEntry;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/pop3/POP3Exception;
        }
    .end annotation

    .prologue
    .line 751
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lorg/columba/ristretto/pop3/POP3Protocol;->checkState(I)V

    .line 753
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 756
    .local v1, list:Ljava/util/LinkedList;
    :try_start_9
    iget-object v5, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v5}, Lorg/columba/ristretto/concurrency/Mutex;->lock()V

    .line 757
    const-string v5, "UIDL"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lorg/columba/ristretto/pop3/POP3Protocol;->sendCommand(Ljava/lang/String;[Ljava/lang/String;)V

    .line 758
    invoke-virtual {p0}, Lorg/columba/ristretto/pop3/POP3Protocol;->readMultiLineResponse()Lorg/columba/ristretto/pop3/POP3Response;
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_4b

    move-result-object v3

    .line 760
    .local v3, response:Lorg/columba/ristretto/pop3/POP3Response;
    iget-object v5, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v5}, Lorg/columba/ristretto/concurrency/Mutex;->release()V

    .line 763
    invoke-virtual {v3}, Lorg/columba/ristretto/pop3/POP3Response;->isOK()Z

    move-result v5

    if-eqz v5, :cond_52

    .line 764
    invoke-virtual {v3}, Lorg/columba/ristretto/pop3/POP3Response;->getData()Lorg/columba/ristretto/io/Source;

    move-result-object v4

    .line 765
    .local v4, source:Lorg/columba/ristretto/io/Source;
    sget-object v5, Lorg/columba/ristretto/pop3/POP3Protocol;->linePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 767
    .local v2, matcher:Ljava/util/regex/Matcher;
    :goto_2d
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 769
    const/4 v5, 0x1

    :try_start_34
    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/columba/ristretto/pop3/parser/UIDListParser;->parse(Ljava/lang/CharSequence;)Lorg/columba/ristretto/pop3/UidListEntry;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_3f
    .catch Lorg/columba/ristretto/parser/ParserException; {:try_start_34 .. :try_end_3f} :catch_40

    goto :goto_2d

    .line 770
    :catch_40
    move-exception v0

    .line 772
    .local v0, e:Lorg/columba/ristretto/parser/ParserException;
    sget-object v5, Lorg/columba/ristretto/pop3/POP3Protocol;->LOG:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Lorg/columba/ristretto/parser/ParserException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_2d

    .line 760
    .end local v0           #e:Lorg/columba/ristretto/parser/ParserException;
    .end local v2           #matcher:Ljava/util/regex/Matcher;
    .end local v3           #response:Lorg/columba/ristretto/pop3/POP3Response;
    .end local v4           #source:Lorg/columba/ristretto/io/Source;
    :catchall_4b
    move-exception v5

    iget-object v6, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v6}, Lorg/columba/ristretto/concurrency/Mutex;->release()V

    throw v5

    .line 776
    .restart local v3       #response:Lorg/columba/ristretto/pop3/POP3Response;
    :cond_52
    new-instance v5, Lorg/columba/ristretto/pop3/CommandNotSupportedException;

    const-string v6, "UIDL"

    invoke-direct {v5, v6}, Lorg/columba/ristretto/pop3/CommandNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 778
    .restart local v2       #matcher:Ljava/util/regex/Matcher;
    .restart local v4       #source:Lorg/columba/ristretto/io/Source;
    :cond_5a
    const/4 v5, 0x0

    new-array v5, v5, [Lorg/columba/ristretto/pop3/UidListEntry;

    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/columba/ristretto/pop3/UidListEntry;

    check-cast v5, [Lorg/columba/ristretto/pop3/UidListEntry;

    return-object v5
.end method

.method public userPass(Ljava/lang/String;[C)V
    .registers 8
    .parameter "usr"
    .parameter "pass"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/pop3/POP3Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 398
    iget-object v1, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v1}, Lorg/columba/ristretto/concurrency/Mutex;->lock()V

    .line 399
    const-string v1, "USER"

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/columba/ristretto/pop3/POP3Protocol;->sendCommand(Ljava/lang/String;[Ljava/lang/String;)V

    .line 401
    :try_start_10
    invoke-virtual {p0}, Lorg/columba/ristretto/pop3/POP3Protocol;->readSingleLineResponse()Lorg/columba/ristretto/pop3/POP3Response;

    move-result-object v0

    .line 403
    .local v0, response:Lorg/columba/ristretto/pop3/POP3Response;
    invoke-virtual {v0}, Lorg/columba/ristretto/pop3/POP3Response;->isOK()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 404
    const-string v1, "PASS"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p2}, Ljava/lang/String;-><init>([C)V

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/columba/ristretto/pop3/POP3Protocol;->sendCommand(Ljava/lang/String;[Ljava/lang/String;)V

    .line 406
    invoke-virtual {p0}, Lorg/columba/ristretto/pop3/POP3Protocol;->readSingleLineResponse()Lorg/columba/ristretto/pop3/POP3Response;
    :try_end_2d
    .catchall {:try_start_10 .. :try_end_2d} :catchall_3f

    move-result-object v0

    .line 412
    :cond_2e
    iget-object v1, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v1}, Lorg/columba/ristretto/concurrency/Mutex;->release()V

    .line 415
    invoke-virtual {v0}, Lorg/columba/ristretto/pop3/POP3Response;->isOK()Z

    move-result v1

    if-nez v1, :cond_46

    .line 416
    new-instance v1, Lorg/columba/ristretto/pop3/POP3Exception;

    invoke-direct {v1, v0}, Lorg/columba/ristretto/pop3/POP3Exception;-><init>(Lorg/columba/ristretto/pop3/POP3Response;)V

    throw v1

    .line 412
    .end local v0           #response:Lorg/columba/ristretto/pop3/POP3Response;
    :catchall_3f
    move-exception v1

    iget-object v2, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->mutex:Lorg/columba/ristretto/concurrency/Mutex;

    invoke-virtual {v2}, Lorg/columba/ristretto/concurrency/Mutex;->release()V

    throw v1

    .line 419
    .restart local v0       #response:Lorg/columba/ristretto/pop3/POP3Response;
    :cond_46
    const/4 v1, 0x2

    iput v1, p0, Lorg/columba/ristretto/pop3/POP3Protocol;->state:I

    .line 420
    return-void
.end method
