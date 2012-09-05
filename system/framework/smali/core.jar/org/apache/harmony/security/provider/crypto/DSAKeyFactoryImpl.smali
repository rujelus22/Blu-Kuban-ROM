.class public Lorg/apache/harmony/security/provider/crypto/DSAKeyFactoryImpl;
.super Ljava/security/KeyFactorySpi;
.source "DSAKeyFactoryImpl.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/security/KeyFactorySpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .registers 4
    .parameter "keySpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 53
    if-eqz p1, :cond_1a

    .line 54
    instance-of v0, p1, Ljava/security/spec/DSAPrivateKeySpec;

    if-eqz v0, :cond_e

    .line 56
    new-instance v0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;

    check-cast p1, Ljava/security/spec/DSAPrivateKeySpec;

    .end local p1
    invoke-direct {v0, p1}, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;-><init>(Ljava/security/spec/DSAPrivateKeySpec;)V

    .line 60
    :goto_d
    return-object v0

    .line 58
    .restart local p1
    :cond_e
    instance-of v0, p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    if-eqz v0, :cond_1a

    .line 60
    new-instance v0, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;

    check-cast p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    .end local p1
    invoke-direct {v0, p1}, Lorg/apache/harmony/security/provider/crypto/DSAPrivateKeyImpl;-><init>(Ljava/security/spec/PKCS8EncodedKeySpec;)V

    goto :goto_d

    .line 63
    .restart local p1
    :cond_1a
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "\'keySpec\' is neither DSAPrivateKeySpec nor PKCS8EncodedKeySpec"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .registers 4
    .parameter "keySpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 81
    if-eqz p1, :cond_1a

    .line 82
    instance-of v0, p1, Ljava/security/spec/DSAPublicKeySpec;

    if-eqz v0, :cond_e

    .line 84
    new-instance v0, Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;

    check-cast p1, Ljava/security/spec/DSAPublicKeySpec;

    .end local p1
    invoke-direct {v0, p1}, Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;-><init>(Ljava/security/spec/DSAPublicKeySpec;)V

    .line 88
    :goto_d
    return-object v0

    .line 86
    .restart local p1
    :cond_e
    instance-of v0, p1, Ljava/security/spec/X509EncodedKeySpec;

    if-eqz v0, :cond_1a

    .line 88
    new-instance v0, Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;

    check-cast p1, Ljava/security/spec/X509EncodedKeySpec;

    .end local p1
    invoke-direct {v0, p1}, Lorg/apache/harmony/security/provider/crypto/DSAPublicKeyImpl;-><init>(Ljava/security/spec/X509EncodedKeySpec;)V

    goto :goto_d

    .line 91
    .restart local p1
    :cond_1a
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "\'keySpec\' is neither DSAPublicKeySpec nor X509EncodedKeySpec"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .registers 13
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/spec/KeySpec;",
            ">(",
            "Ljava/security/Key;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 116
    .local p2, keySpec:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    if-eqz p1, :cond_92

    .line 117
    if-nez p2, :cond_c

    .line 118
    new-instance v8, Ljava/lang/NullPointerException;

    const-string v9, "keySpec == null"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 120
    :cond_c
    instance-of v8, p1, Ljava/security/interfaces/DSAPrivateKey;

    if-eqz v8, :cond_4f

    move-object v3, p1

    .line 121
    check-cast v3, Ljava/security/interfaces/DSAPrivateKey;

    .line 123
    .local v3, privateKey:Ljava/security/interfaces/DSAPrivateKey;
    const-class v8, Ljava/security/spec/DSAPrivateKeySpec;

    invoke-virtual {p2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    .line 125
    invoke-interface {v3}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v6

    .line 127
    .local v6, x:Ljava/math/BigInteger;
    invoke-interface {v3}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v2

    .line 129
    .local v2, params:Ljava/security/interfaces/DSAParams;
    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v1

    .line 130
    .local v1, p:Ljava/math/BigInteger;
    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v5

    .line 131
    .local v5, q:Ljava/math/BigInteger;
    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v0

    .line 133
    .local v0, g:Ljava/math/BigInteger;
    new-instance v8, Ljava/security/spec/DSAPrivateKeySpec;

    invoke-direct {v8, v6, v1, v5, v0}, Ljava/security/spec/DSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 160
    .end local v0           #g:Ljava/math/BigInteger;
    .end local v1           #p:Ljava/math/BigInteger;
    .end local v2           #params:Ljava/security/interfaces/DSAParams;
    .end local v3           #privateKey:Ljava/security/interfaces/DSAPrivateKey;
    .end local v5           #q:Ljava/math/BigInteger;
    .end local v6           #x:Ljava/math/BigInteger;
    :goto_34
    return-object v8

    .line 136
    .restart local v3       #privateKey:Ljava/security/interfaces/DSAPrivateKey;
    :cond_35
    const-class v8, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {p2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_47

    .line 137
    new-instance v8, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    goto :goto_34

    .line 140
    :cond_47
    new-instance v8, Ljava/security/spec/InvalidKeySpecException;

    const-string v9, "\'keySpec\' is neither DSAPrivateKeySpec nor PKCS8EncodedKeySpec"

    invoke-direct {v8, v9}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 143
    .end local v3           #privateKey:Ljava/security/interfaces/DSAPrivateKey;
    :cond_4f
    instance-of v8, p1, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v8, :cond_92

    move-object v4, p1

    .line 144
    check-cast v4, Ljava/security/interfaces/DSAPublicKey;

    .line 146
    .local v4, publicKey:Ljava/security/interfaces/DSAPublicKey;
    const-class v8, Ljava/security/spec/DSAPublicKeySpec;

    invoke-virtual {p2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_78

    .line 148
    invoke-interface {v4}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v7

    .line 150
    .local v7, y:Ljava/math/BigInteger;
    invoke-interface {v4}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v2

    .line 152
    .restart local v2       #params:Ljava/security/interfaces/DSAParams;
    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v1

    .line 153
    .restart local v1       #p:Ljava/math/BigInteger;
    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v5

    .line 154
    .restart local v5       #q:Ljava/math/BigInteger;
    invoke-interface {v2}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v0

    .line 156
    .restart local v0       #g:Ljava/math/BigInteger;
    new-instance v8, Ljava/security/spec/DSAPublicKeySpec;

    invoke-direct {v8, v7, v1, v5, v0}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    goto :goto_34

    .line 159
    .end local v0           #g:Ljava/math/BigInteger;
    .end local v1           #p:Ljava/math/BigInteger;
    .end local v2           #params:Ljava/security/interfaces/DSAParams;
    .end local v5           #q:Ljava/math/BigInteger;
    .end local v7           #y:Ljava/math/BigInteger;
    :cond_78
    const-class v8, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {p2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8a

    .line 160
    new-instance v8, Ljava/security/spec/X509EncodedKeySpec;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    goto :goto_34

    .line 163
    :cond_8a
    new-instance v8, Ljava/security/spec/InvalidKeySpecException;

    const-string v9, "\'keySpec\' is neither DSAPublicKeySpec nor X509EncodedKeySpec"

    invoke-direct {v8, v9}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 166
    .end local v4           #publicKey:Ljava/security/interfaces/DSAPublicKey;
    :cond_92
    new-instance v8, Ljava/security/spec/InvalidKeySpecException;

    const-string v9, "\'key\' is neither DSAPublicKey nor DSAPrivateKey"

    invoke-direct {v8, v9}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method protected engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .registers 11
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 183
    if-eqz p1, :cond_80

    .line 184
    instance-of v4, p1, Ljava/security/interfaces/DSAPrivateKey;

    if-eqz v4, :cond_41

    move-object v2, p1

    .line 186
    check-cast v2, Ljava/security/interfaces/DSAPrivateKey;

    .line 187
    .local v2, privateKey:Ljava/security/interfaces/DSAPrivateKey;
    invoke-interface {v2}, Ljava/security/interfaces/DSAPrivateKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v1

    .line 190
    .local v1, params:Ljava/security/interfaces/DSAParams;
    :try_start_d
    new-instance v4, Ljava/security/spec/DSAPrivateKeySpec;

    invoke-interface {v2}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v6

    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/security/spec/DSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p0, v4}, Lorg/apache/harmony/security/provider/crypto/DSAKeyFactoryImpl;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_25
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_d .. :try_end_25} :catch_27

    move-result-object v4

    .line 205
    .end local v2           #privateKey:Ljava/security/interfaces/DSAPrivateKey;
    :goto_26
    return-object v4

    .line 193
    .restart local v2       #privateKey:Ljava/security/interfaces/DSAPrivateKey;
    :catch_27
    move-exception v0

    .line 195
    .local v0, e:Ljava/security/spec/InvalidKeySpecException;
    new-instance v4, Ljava/security/InvalidKeyException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ATTENTION: InvalidKeySpecException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 199
    .end local v0           #e:Ljava/security/spec/InvalidKeySpecException;
    .end local v1           #params:Ljava/security/interfaces/DSAParams;
    .end local v2           #privateKey:Ljava/security/interfaces/DSAPrivateKey;
    :cond_41
    instance-of v4, p1, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v4, :cond_80

    move-object v3, p1

    .line 201
    check-cast v3, Ljava/security/interfaces/DSAPublicKey;

    .line 202
    .local v3, publicKey:Ljava/security/interfaces/DSAPublicKey;
    invoke-interface {v3}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v1

    .line 205
    .restart local v1       #params:Ljava/security/interfaces/DSAParams;
    :try_start_4c
    new-instance v4, Ljava/security/spec/DSAPublicKeySpec;

    invoke-interface {v3}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v6

    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-interface {v1}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p0, v4}, Lorg/apache/harmony/security/provider/crypto/DSAKeyFactoryImpl;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_64
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_4c .. :try_end_64} :catch_66

    move-result-object v4

    goto :goto_26

    .line 208
    :catch_66
    move-exception v0

    .line 210
    .restart local v0       #e:Ljava/security/spec/InvalidKeySpecException;
    new-instance v4, Ljava/security/InvalidKeyException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ATTENTION: InvalidKeySpecException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 214
    .end local v0           #e:Ljava/security/spec/InvalidKeySpecException;
    .end local v1           #params:Ljava/security/interfaces/DSAParams;
    .end local v3           #publicKey:Ljava/security/interfaces/DSAPublicKey;
    :cond_80
    new-instance v4, Ljava/security/InvalidKeyException;

    const-string v5, "\'key\' is neither DSAPublicKey nor DSAPrivateKey"

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
