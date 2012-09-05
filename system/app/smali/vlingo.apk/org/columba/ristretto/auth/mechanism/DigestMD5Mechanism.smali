.class public Lorg/columba/ristretto/auth/mechanism/DigestMD5Mechanism;
.super Ljava/lang/Object;
.source "DigestMD5Mechanism.java"

# interfaces
.implements Lorg/columba/ristretto/auth/AuthenticationMechanism;
.implements Ljavax/security/auth/callback/CallbackHandler;


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private password:[C

.field sasl:Lorg/columba/ristretto/auth/mechanism/SaslWrapper;

.field private username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 67
    const-string v0, "org.columba.ristretto.auth.mechanism"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/columba/ristretto/auth/mechanism/DigestMD5Mechanism;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticate(Lorg/columba/ristretto/auth/AuthenticationServer;Ljava/lang/String;[C)V
    .registers 14
    .parameter "server"
    .parameter "user"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/columba/ristretto/auth/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 81
    iput-object p2, p0, Lorg/columba/ristretto/auth/mechanism/DigestMD5Mechanism;->username:Ljava/lang/String;

    .line 82
    iput-object p3, p0, Lorg/columba/ristretto/auth/mechanism/DigestMD5Mechanism;->password:[C

    .line 84
    :try_start_4
    new-instance v0, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;

    invoke-direct {v0}, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;-><init>()V

    iput-object v0, p0, Lorg/columba/ristretto/auth/mechanism/DigestMD5Mechanism;->sasl:Lorg/columba/ristretto/auth/mechanism/SaslWrapper;

    .line 85
    iget-object v0, p0, Lorg/columba/ristretto/auth/mechanism/DigestMD5Mechanism;->sasl:Lorg/columba/ristretto/auth/mechanism/SaslWrapper;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "DIGEST-MD5"

    aput-object v3, v1, v2

    invoke-interface {p1}, Lorg/columba/ristretto/auth/AuthenticationServer;->getService()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lorg/columba/ristretto/auth/AuthenticationServer;->getHostName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    move-object v2, p2

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->createClient([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljavax/security/auth/callback/CallbackHandler;)V

    .line 88
    invoke-interface {p1}, Lorg/columba/ristretto/auth/AuthenticationServer;->authReceive()[B

    move-result-object v9

    .line 89
    .local v9, serverChallenge:[B
    sget-object v0, Lorg/columba/ristretto/auth/mechanism/DigestMD5Mechanism;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v9}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lorg/columba/ristretto/auth/mechanism/DigestMD5Mechanism;->sasl:Lorg/columba/ristretto/auth/mechanism/SaslWrapper;

    invoke-virtual {v0, v9}, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->evaluateChallenge([B)[B

    move-result-object v8

    .line 92
    .local v8, response:[B
    sget-object v0, Lorg/columba/ristretto/auth/mechanism/DigestMD5Mechanism;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 93
    invoke-interface {p1, v8}, Lorg/columba/ristretto/auth/AuthenticationServer;->authSend([B)V

    .line 95
    invoke-interface {p1}, Lorg/columba/ristretto/auth/AuthenticationServer;->authReceive()[B

    move-result-object v9

    .line 96
    sget-object v0, Lorg/columba/ristretto/auth/mechanism/DigestMD5Mechanism;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v9}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lorg/columba/ristretto/auth/mechanism/DigestMD5Mechanism;->sasl:Lorg/columba/ristretto/auth/mechanism/SaslWrapper;

    invoke-virtual {v0, v9}, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->evaluateChallenge([B)[B

    move-result-object v8

    .line 98
    iget-object v0, p0, Lorg/columba/ristretto/auth/mechanism/DigestMD5Mechanism;->sasl:Lorg/columba/ristretto/auth/mechanism/SaslWrapper;

    invoke-virtual {v0}, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->isComplete()Z

    move-result v0

    if-nez v0, :cond_7c

    .line 99
    new-instance v0, Lorg/columba/ristretto/auth/AuthenticationException;

    const-string v1, "Authentication failed"

    invoke-direct {v0, v1}, Lorg/columba/ristretto/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_6c} :catch_6c

    .line 102
    .end local v8           #response:[B
    .end local v9           #serverChallenge:[B
    :catch_6c
    move-exception v7

    .line 103
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_83

    invoke-virtual {v7}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 101
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v8       #response:[B
    .restart local v9       #serverChallenge:[B
    :cond_7c
    const/4 v0, 0x0

    :try_start_7d
    new-array v0, v0, [B

    invoke-interface {p1, v0}, Lorg/columba/ristretto/auth/AuthenticationServer;->authSend([B)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_82} :catch_6c

    .line 106
    return-void

    .line 104
    .end local v8           #response:[B
    .end local v9           #serverChallenge:[B
    .restart local v7       #e:Ljava/lang/Exception;
    :cond_83
    new-instance v0, Lorg/columba/ristretto/auth/AuthenticationException;

    invoke-virtual {v7}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/columba/ristretto/auth/AuthenticationException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public handle([Ljavax/security/auth/callback/Callback;)V
    .registers 9
    .parameter "callbacks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/security/auth/callback/UnsupportedCallbackException;
        }
    .end annotation

    .prologue
    .line 112
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, p1

    if-ge v0, v4, :cond_73

    .line 113
    aget-object v4, p1, v0

    instance-of v4, v4, Ljavax/security/auth/callback/TextOutputCallback;

    if-eqz v4, :cond_3f

    .line 115
    aget-object v3, p1, v0

    check-cast v3, Ljavax/security/auth/callback/TextOutputCallback;

    .line 116
    .local v3, toc:Ljavax/security/auth/callback/TextOutputCallback;
    invoke-virtual {v3}, Ljavax/security/auth/callback/TextOutputCallback;->getMessageType()I

    move-result v4

    packed-switch v4, :pswitch_data_74

    .line 127
    sget-object v4, Lorg/columba/ristretto/auth/mechanism/DigestMD5Mechanism;->LOG:Ljava/util/logging/Logger;

    invoke-virtual {v3}, Ljavax/security/auth/callback/TextOutputCallback;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 112
    .end local v3           #toc:Ljavax/security/auth/callback/TextOutputCallback;
    :cond_1e
    :goto_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 118
    .restart local v3       #toc:Ljavax/security/auth/callback/TextOutputCallback;
    :pswitch_21
    sget-object v4, Lorg/columba/ristretto/auth/mechanism/DigestMD5Mechanism;->LOG:Ljava/util/logging/Logger;

    invoke-virtual {v3}, Ljavax/security/auth/callback/TextOutputCallback;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_1e

    .line 121
    :pswitch_2b
    sget-object v4, Lorg/columba/ristretto/auth/mechanism/DigestMD5Mechanism;->LOG:Ljava/util/logging/Logger;

    invoke-virtual {v3}, Ljavax/security/auth/callback/TextOutputCallback;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_1e

    .line 124
    :pswitch_35
    sget-object v4, Lorg/columba/ristretto/auth/mechanism/DigestMD5Mechanism;->LOG:Ljava/util/logging/Logger;

    invoke-virtual {v3}, Ljavax/security/auth/callback/TextOutputCallback;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1e

    .line 129
    .end local v3           #toc:Ljavax/security/auth/callback/TextOutputCallback;
    :cond_3f
    aget-object v4, p1, v0

    instance-of v4, v4, Ljavax/security/auth/callback/NameCallback;

    if-eqz v4, :cond_4f

    .line 130
    aget-object v1, p1, v0

    check-cast v1, Ljavax/security/auth/callback/NameCallback;

    .line 131
    .local v1, nc:Ljavax/security/auth/callback/NameCallback;
    iget-object v4, p0, Lorg/columba/ristretto/auth/mechanism/DigestMD5Mechanism;->username:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljavax/security/auth/callback/NameCallback;->setName(Ljava/lang/String;)V

    goto :goto_1e

    .line 132
    .end local v1           #nc:Ljavax/security/auth/callback/NameCallback;
    :cond_4f
    aget-object v4, p1, v0

    instance-of v4, v4, Ljavax/security/auth/callback/PasswordCallback;

    if-eqz v4, :cond_5f

    .line 133
    aget-object v2, p1, v0

    check-cast v2, Ljavax/security/auth/callback/PasswordCallback;

    .line 134
    .local v2, pc:Ljavax/security/auth/callback/PasswordCallback;
    iget-object v4, p0, Lorg/columba/ristretto/auth/mechanism/DigestMD5Mechanism;->password:[C

    invoke-virtual {v2, v4}, Ljavax/security/auth/callback/PasswordCallback;->setPassword([C)V

    goto :goto_1e

    .line 135
    .end local v2           #pc:Ljavax/security/auth/callback/PasswordCallback;
    :cond_5f
    iget-object v4, p0, Lorg/columba/ristretto/auth/mechanism/DigestMD5Mechanism;->sasl:Lorg/columba/ristretto/auth/mechanism/SaslWrapper;

    aget-object v5, p1, v0

    invoke-virtual {v4, v5}, Lorg/columba/ristretto/auth/mechanism/SaslWrapper;->handle(Ljavax/security/auth/callback/Callback;)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 137
    new-instance v4, Ljavax/security/auth/callback/UnsupportedCallbackException;

    aget-object v5, p1, v0

    const-string v6, "Unrecognized Callback"

    invoke-direct {v4, v5, v6}, Ljavax/security/auth/callback/UnsupportedCallbackException;-><init>(Ljavax/security/auth/callback/Callback;Ljava/lang/String;)V

    throw v4

    .line 141
    :cond_73
    return-void

    .line 116
    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_21
        :pswitch_35
        :pswitch_2b
    .end packed-switch
.end method
