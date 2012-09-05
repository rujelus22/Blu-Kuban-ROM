.class public final Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;
.super Ljava/lang/Object;
.source "SSLSessionImpl.java"

# interfaces
.implements Ljavax/net/ssl/SSLSession;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final NULL_SESSION:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;


# instance fields
.field cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

.field clientRandom:[B

.field context:Ljavax/net/ssl/SSLSessionContext;

.field private creationTime:J

.field id:[B

.field final isServer:Z

.field private isValid:Z

.field lastAccessedTime:J

.field localCertificates:[Ljava/security/cert/X509Certificate;

.field master_secret:[B

.field peerCertificates:[Ljava/security/cert/X509Certificate;

.field private peerHost:Ljava/lang/String;

.field private peerPort:I

.field protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

.field serverRandom:[B

.field private final values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 37
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;-><init>(Ljava/security/SecureRandom;)V

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->NULL_SESSION:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    return-void
.end method

.method public constructor <init>(Ljava/security/SecureRandom;)V
    .registers 3
    .parameter "secureRandom"

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;-><init>(Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;Ljava/security/SecureRandom;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;Ljava/security/SecureRandom;)V
    .registers 11
    .parameter "cipher_suite"
    .parameter "secureRandom"

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isValid:Z

    .line 41
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->values:Ljava/util/Map;

    .line 51
    const/4 v2, -0x1

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->peerPort:I

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->creationTime:J

    .line 59
    iget-wide v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->creationTime:J

    iput-wide v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->lastAccessedTime:J

    .line 60
    if-nez p1, :cond_2a

    .line 61
    sget-object v2, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->SSL_NULL_WITH_NULL_NULL:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    .line 62
    sget-object v2, Llibcore/util/EmptyArray;->BYTE:[B

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->id:[B

    .line 63
    iput-boolean v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isServer:Z

    .line 64
    iput-boolean v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isValid:Z

    .line 77
    :goto_29
    return-void

    .line 66
    :cond_2a
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    .line 67
    const/16 v2, 0x20

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->id:[B

    .line 68
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->id:[B

    invoke-virtual {p2, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 69
    iget-wide v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->creationTime:J

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    .line 70
    .local v0, time:J
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->id:[B

    const/16 v3, 0x1c

    const-wide/32 v4, -0x1000000

    and-long/2addr v4, v0

    const/16 v6, 0x18

    ushr-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 71
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->id:[B

    const/16 v3, 0x1d

    const-wide/32 v4, 0xff0000

    and-long/2addr v4, v0

    const/16 v6, 0x10

    ushr-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 72
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->id:[B

    const/16 v3, 0x1e

    const-wide/32 v4, 0xff00

    and-long/2addr v4, v0

    const/16 v6, 0x8

    ushr-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 73
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->id:[B

    const/16 v3, 0x1f

    const-wide/16 v4, 0xff

    and-long/2addr v4, v0

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 74
    iput-boolean v7, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isServer:Z

    goto :goto_29
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 217
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 218
    :catch_5
    move-exception v0

    .line 219
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public getApplicationBufferSize()I
    .registers 2

    .prologue
    .line 84
    const/16 v0, 0x4000

    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->cipherSuite:Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreationTime()J
    .registers 3

    .prologue
    .line 92
    iget-wide v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->creationTime:J

    return-wide v0
.end method

.method public getId()[B
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->id:[B

    return-object v0
.end method

.method public getLastAccessedTime()J
    .registers 3

    .prologue
    .line 100
    iget-wide v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->lastAccessedTime:J

    return-wide v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .registers 3

    .prologue
    .line 108
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    array-length v0, v0

    if-lez v0, :cond_13

    .line 109
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->localCertificates:[Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    .line 111
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getPacketBufferSize()I
    .registers 2

    .prologue
    .line 115
    const/16 v0, 0x4805

    return v0
.end method

.method public getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    if-nez v2, :cond_c

    .line 121
    new-instance v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string v3, "No peer certificate"

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 123
    :cond_c
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    array-length v2, v2

    new-array v0, v2, [Ljavax/security/cert/X509Certificate;

    .line 124
    .local v0, certs:[Ljavax/security/cert/X509Certificate;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_12
    array-length v2, v0

    if-ge v1, v2, :cond_26

    .line 126
    :try_start_15
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Ljavax/security/cert/X509Certificate;->getInstance([B)Ljavax/security/cert/X509Certificate;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_23
    .catch Ljavax/security/cert/CertificateException; {:try_start_15 .. :try_end_23} :catch_29
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_15 .. :try_end_23} :catch_27

    .line 124
    :goto_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 132
    :cond_26
    return-object v0

    .line 129
    :catch_27
    move-exception v2

    goto :goto_23

    .line 128
    :catch_29
    move-exception v2

    goto :goto_23
.end method

.method public getPeerCertificates()[Ljava/security/cert/Certificate;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_c

    .line 137
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string v1, "No peer certificate"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getPeerHost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->peerHost:Ljava/lang/String;

    return-object v0
.end method

.method public getPeerPort()I
    .registers 2

    .prologue
    .line 147
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->peerPort:I

    return v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_c

    .line 152
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string v1, "No peer certificate"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    if-nez v0, :cond_7

    const-string v0, "NONE"

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->protocol:Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;

    iget-object v0, v0, Lorg/apache/harmony/xnet/provider/jsse/ProtocolVersion;->name:Ljava/lang/String;

    goto :goto_6
.end method

.method public getSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->context:Ljavax/net/ssl/SSLSessionContext;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .parameter "name"

    .prologue
    .line 166
    if-nez p1, :cond_a

    .line 167
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_a
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValueNames()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 173
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->values:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public invalidate()V
    .registers 2

    .prologue
    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isValid:Z

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->context:Ljavax/net/ssl/SSLSessionContext;

    .line 179
    return-void
.end method

.method public isValid()Z
    .registers 5

    .prologue
    .line 182
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isValid:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->context:Ljavax/net/ssl/SSLSessionContext;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->context:Ljavax/net/ssl/SSLSessionContext;

    invoke-interface {v0}, Ljavax/net/ssl/SSLSessionContext;->getSessionTimeout()I

    move-result v0

    if-eqz v0, :cond_25

    iget-wide v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->lastAccessedTime:J

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->context:Ljavax/net/ssl/SSLSessionContext;

    invoke-interface {v2}, Ljavax/net/ssl/SSLSessionContext;->getSessionTimeout()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_25

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isValid:Z

    .line 186
    :cond_25
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->isValid:Z

    return v0
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .parameter "name"
    .parameter "value"

    .prologue
    .line 190
    if-eqz p1, :cond_4

    if-nez p2, :cond_c

    .line 191
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "name == null || value == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 193
    :cond_c
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->values:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 194
    .local v0, old:Ljava/lang/Object;
    instance-of v1, p2, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v1, :cond_20

    .line 195
    check-cast p2, Ljavax/net/ssl/SSLSessionBindingListener;

    .end local p2
    new-instance v1, Ljavax/net/ssl/SSLSessionBindingEvent;

    invoke-direct {v1, p0, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    invoke-interface {p2, v1}, Ljavax/net/ssl/SSLSessionBindingListener;->valueBound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    .line 197
    :cond_20
    instance-of v1, v0, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v1, :cond_2e

    .line 198
    check-cast v0, Ljavax/net/ssl/SSLSessionBindingListener;

    .end local v0           #old:Ljava/lang/Object;
    new-instance v1, Ljavax/net/ssl/SSLSessionBindingEvent;

    invoke-direct {v1, p0, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljavax/net/ssl/SSLSessionBindingListener;->valueUnbound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    .line 201
    :cond_2e
    return-void
.end method

.method public removeValue(Ljava/lang/String;)V
    .registers 6
    .parameter "name"

    .prologue
    .line 204
    if-nez p1, :cond_a

    .line 205
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "name == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 207
    :cond_a
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->values:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 208
    .local v1, old:Ljava/lang/Object;
    instance-of v2, v1, Ljavax/net/ssl/SSLSessionBindingListener;

    if-eqz v2, :cond_1f

    move-object v0, v1

    .line 209
    check-cast v0, Ljavax/net/ssl/SSLSessionBindingListener;

    .line 210
    .local v0, listener:Ljavax/net/ssl/SSLSessionBindingListener;
    new-instance v2, Ljavax/net/ssl/SSLSessionBindingEvent;

    invoke-direct {v2, p0, p1}, Ljavax/net/ssl/SSLSessionBindingEvent;-><init>(Ljavax/net/ssl/SSLSession;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljavax/net/ssl/SSLSessionBindingListener;->valueUnbound(Ljavax/net/ssl/SSLSessionBindingEvent;)V

    .line 212
    .end local v0           #listener:Ljavax/net/ssl/SSLSessionBindingListener;
    :cond_1f
    return-void
.end method

.method setPeer(Ljava/lang/String;I)V
    .registers 3
    .parameter "peerHost"
    .parameter "peerPort"

    .prologue
    .line 224
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->peerHost:Ljava/lang/String;

    .line 225
    iput p2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->peerPort:I

    .line 226
    return-void
.end method
