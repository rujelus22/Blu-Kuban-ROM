.class abstract Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;
.super Ljava/lang/Object;
.source "AbstractSessionContext.java"

# interfaces
.implements Ljavax/net/ssl/SSLSessionContext;


# static fields
.field static final OPEN_SSL:I = 0x1


# instance fields
.field volatile maximumSize:I

.field private final sessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/harmony/xnet/provider/jsse/ByteArray;",
            "Ljavax/net/ssl/SSLSession;",
            ">;"
        }
    .end annotation
.end field

.field final sslCtxNativePointer:I

.field volatile timeout:I


# direct methods
.method constructor <init>(II)V
    .registers 4
    .parameter "maximumSize"
    .parameter "timeout"

    .prologue
    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_CTX_new()I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sslCtxNativePointer:I

    .line 49
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$1;

    invoke-direct {v0, p0}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$1;-><init>(Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sessions:Ljava/util/Map;

    .line 65
    iput p1, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->maximumSize:I

    .line 66
    iput p2, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->timeout:I

    .line 67
    return-void
.end method

.method static log(Ljava/lang/Throwable;)V
    .registers 2
    .parameter "t"

    .prologue
    .line 283
    const-string v0, "Error converting session."

    invoke-static {v0, p0}, Ljava/lang/System;->logW(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 284
    return-void
.end method

.method private sessionIterator()Ljava/util/Iterator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljavax/net/ssl/SSLSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v2

    .line 74
    :try_start_3
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Ljavax/net/ssl/SSLSession;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/net/ssl/SSLSession;

    .line 76
    .local v0, array:[Ljavax/net/ssl/SSLSession;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 77
    .end local v0           #array:[Ljavax/net/ssl/SSLSession;
    :catchall_21
    move-exception v1

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 288
    :try_start_0
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sslCtxNativePointer:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_CTX_free(I)V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_9

    .line 290
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 292
    return-void

    .line 290
    :catchall_9
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final getIds()Ljava/util/Enumeration;
    .registers 3

    .prologue
    .line 81
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sessionIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 82
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljavax/net/ssl/SSLSession;>;"
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$2;

    invoke-direct {v1, p0, v0}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext$2;-><init>(Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public getSession([B)Ljavax/net/ssl/SSLSession;
    .registers 6
    .parameter "sessionId"

    .prologue
    .line 257
    if-nez p1, :cond_a

    .line 258
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "sessionId == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 260
    :cond_a
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/ByteArray;

    invoke-direct {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/ByteArray;-><init>([B)V

    .line 262
    .local v0, key:Lorg/apache/harmony/xnet/provider/jsse/ByteArray;
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v3

    .line 263
    :try_start_12
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSession;

    .line 264
    .local v1, session:Ljavax/net/ssl/SSLSession;
    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_24

    .line 265
    if-eqz v1, :cond_27

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->isValid()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 268
    .end local v1           #session:Ljavax/net/ssl/SSLSession;
    :goto_23
    return-object v1

    .line 264
    :catchall_24
    move-exception v2

    :try_start_25
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v2

    .line 268
    .restart local v1       #session:Ljavax/net/ssl/SSLSession;
    :cond_27
    const/4 v1, 0x0

    goto :goto_23
.end method

.method public final getSessionCacheSize()I
    .registers 2

    .prologue
    .line 110
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->maximumSize:I

    return v0
.end method

.method public final getSessionTimeout()I
    .registers 2

    .prologue
    .line 114
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->timeout:I

    return v0
.end method

.method putSession(Ljavax/net/ssl/SSLSession;)V
    .registers 6
    .parameter "session"

    .prologue
    .line 272
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getId()[B

    move-result-object v0

    .line 273
    .local v0, id:[B
    array-length v2, v0

    if-nez v2, :cond_8

    .line 280
    :goto_7
    return-void

    .line 276
    :cond_8
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/ByteArray;

    invoke-direct {v1, v0}, Lorg/apache/harmony/xnet/provider/jsse/ByteArray;-><init>([B)V

    .line 277
    .local v1, key:Lorg/apache/harmony/xnet/provider/jsse/ByteArray;
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v3

    .line 278
    :try_start_10
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    monitor-exit v3

    goto :goto_7

    :catchall_17
    move-exception v2

    monitor-exit v3
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_17

    throw v2
.end method

.method protected abstract sessionRemoved(Ljavax/net/ssl/SSLSession;)V
.end method

.method public final setSessionCacheSize(I)V
    .registers 5
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 164
    if-gez p1, :cond_a

    .line 165
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "size < 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    :cond_a
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->maximumSize:I

    .line 169
    .local v0, oldMaximum:I
    iput p1, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->maximumSize:I

    .line 172
    if-ge p1, v0, :cond_13

    .line 173
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->trimToSize()V

    .line 175
    :cond_13
    return-void
.end method

.method public setSessionTimeout(I)V
    .registers 6
    .parameter "seconds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 137
    if-gez p1, :cond_a

    .line 138
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "seconds < 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 140
    :cond_a
    iput p1, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->timeout:I

    .line 142
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v3

    .line 143
    :try_start_f
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 144
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljavax/net/ssl/SSLSession;>;"
    :cond_19
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 145
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSession;

    .line 148
    .local v1, session:Ljavax/net/ssl/SSLSession;
    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->isValid()Z

    move-result v2

    if-nez v2, :cond_19

    .line 149
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 150
    invoke-virtual {p0, v1}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sessionRemoved(Ljavax/net/ssl/SSLSession;)V

    goto :goto_19

    .line 153
    .end local v0           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljavax/net/ssl/SSLSession;>;"
    .end local v1           #session:Ljavax/net/ssl/SSLSession;
    :catchall_32
    move-exception v2

    monitor-exit v3
    :try_end_34
    .catchall {:try_start_f .. :try_end_34} :catchall_32

    throw v2

    .restart local v0       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljavax/net/ssl/SSLSession;>;"
    :cond_35
    :try_start_35
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_32

    .line 154
    return-void
.end method

.method toBytes(Ljavax/net/ssl/SSLSession;)[B
    .registers 14
    .parameter "session"

    .prologue
    const/4 v10, 0x0

    .line 184
    instance-of v11, p1, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    if-nez v11, :cond_6

    .line 217
    :goto_5
    return-object v10

    :cond_6
    move-object v9, p1

    .line 188
    check-cast v9, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    .line 190
    .local v9, sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;
    :try_start_9
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 191
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 193
    .local v4, daos:Ljava/io/DataOutputStream;
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 196
    invoke-virtual {v9}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->getEncoded()[B

    move-result-object v5

    .line 197
    .local v5, data:[B
    array-length v11, v5

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 198
    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 201
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v3

    .line 202
    .local v3, certs:[Ljava/security/cert/Certificate;
    array-length v11, v3

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 204
    move-object v0, v3

    .local v0, arr$:[Ljava/security/cert/Certificate;
    array-length v8, v0

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_2d
    if-ge v7, v8, :cond_3f

    aget-object v2, v0, v7

    .line 205
    .local v2, cert:Ljava/security/cert/Certificate;
    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v5

    .line 206
    array-length v11, v5

    invoke-virtual {v4, v11}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 207
    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 204
    add-int/lit8 v7, v7, 0x1

    goto :goto_2d

    .line 211
    .end local v2           #cert:Ljava/security/cert/Certificate;
    :cond_3f
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_42} :catch_44
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_9 .. :try_end_42} :catch_49

    move-result-object v10

    goto :goto_5

    .line 212
    .end local v0           #arr$:[Ljava/security/cert/Certificate;
    .end local v1           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v3           #certs:[Ljava/security/cert/Certificate;
    .end local v4           #daos:Ljava/io/DataOutputStream;
    .end local v5           #data:[B
    .end local v7           #i$:I
    .end local v8           #len$:I
    :catch_44
    move-exception v6

    .line 213
    .local v6, e:Ljava/io/IOException;
    invoke-static {v6}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->log(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 215
    .end local v6           #e:Ljava/io/IOException;
    :catch_49
    move-exception v6

    .line 216
    .local v6, e:Ljava/security/cert/CertificateEncodingException;
    invoke-static {v6}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->log(Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method toSession([BLjava/lang/String;I)Ljavax/net/ssl/SSLSession;
    .registers 18
    .parameter "data"
    .parameter "host"
    .parameter "port"

    .prologue
    .line 227
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 228
    .local v6, bais:Ljava/io/ByteArrayInputStream;
    new-instance v9, Ljava/io/DataInputStream;

    invoke-direct {v9, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 230
    .local v9, dais:Ljava/io/DataInputStream;
    :try_start_a
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    .line 231
    .local v13, type:I
    const/4 v0, 0x1

    if-eq v13, v0, :cond_2e

    .line 232
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->log(Ljava/lang/Throwable;)V

    .line 233
    const/4 v0, 0x0

    .line 252
    .end local v13           #type:I
    :goto_2d
    return-object v0

    .line 236
    .restart local v13       #type:I
    :cond_2e
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 237
    .local v12, length:I
    new-array v1, v12, [B

    .line 238
    .local v1, sessionData:[B
    invoke-virtual {v9, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 240
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 241
    .local v8, count:I
    new-array v4, v8, [Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    .line 242
    .local v4, certs:[Lorg/apache/harmony/security/provider/cert/X509CertImpl;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_3e
    if-ge v11, v8, :cond_53

    .line 243
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 244
    new-array v7, v12, [B

    .line 245
    .local v7, certData:[B
    invoke-virtual {v9, v7}, Ljava/io/DataInputStream;->readFully([B)V

    .line 246
    new-instance v0, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    invoke-direct {v0, v7}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>([B)V

    aput-object v0, v4, v11

    .line 242
    add-int/lit8 v11, v11, 0x1

    goto :goto_3e

    .line 249
    .end local v7           #certData:[B
    :cond_53
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;-><init>([BLjava/lang/String;I[Ljava/security/cert/X509Certificate;Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;)V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_5d} :catch_5e

    goto :goto_2d

    .line 250
    .end local v1           #sessionData:[B
    .end local v4           #certs:[Lorg/apache/harmony/security/provider/cert/X509CertImpl;
    .end local v8           #count:I
    .end local v11           #i:I
    .end local v12           #length:I
    .end local v13           #type:I
    :catch_5e
    move-exception v10

    .line 251
    .local v10, e:Ljava/io/IOException;
    invoke-static {v10}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->log(Ljava/lang/Throwable;)V

    .line 252
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method protected trimToSize()V
    .registers 7

    .prologue
    .line 121
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sessions:Ljava/util/Map;

    monitor-enter v5

    .line 122
    :try_start_3
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v3

    .line 123
    .local v3, size:I
    iget v4, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->maximumSize:I

    if-le v3, v4, :cond_2b

    .line 124
    iget v4, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->maximumSize:I

    sub-int v1, v3, v4

    .line 125
    .local v1, removals:I
    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sessions:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 127
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljavax/net/ssl/SSLSession;>;"
    :cond_1b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/SSLSession;

    .line 128
    .local v2, session:Ljavax/net/ssl/SSLSession;
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 129
    invoke-virtual {p0, v2}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sessionRemoved(Ljavax/net/ssl/SSLSession;)V

    .line 130
    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_1b

    .line 132
    .end local v0           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljavax/net/ssl/SSLSession;>;"
    .end local v1           #removals:I
    .end local v2           #session:Ljavax/net/ssl/SSLSession;
    :cond_2b
    monitor-exit v5

    .line 133
    return-void

    .line 132
    .end local v3           #size:I
    :catchall_2d
    move-exception v4

    monitor-exit v5
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v4
.end method
