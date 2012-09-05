.class public Ljavax/crypto/SealedObject;
.super Ljava/lang/Object;
.source "SealedObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3e363da6c3b75470L


# instance fields
.field protected encodedParams:[B

.field private encryptedContent:[B

.field private paramsAlg:Ljava/lang/String;

.field private sealAlg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/Serializable;Ljavax/crypto/Cipher;)V
    .registers 9
    .parameter "object"
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 84
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 85
    if-nez p2, :cond_e

    .line 86
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "c == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 89
    :cond_e
    :try_start_e
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 90
    .local v1, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 91
    .local v3, oos:Ljava/io/ObjectOutputStream;
    invoke-virtual {v3, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 92
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V

    .line 93
    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v0

    .line 94
    .local v0, ap:Ljava/security/AlgorithmParameters;
    if-nez v0, :cond_3c

    move-object v5, v4

    :goto_25
    iput-object v5, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    .line 95
    if-nez v0, :cond_41

    :goto_29
    iput-object v4, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    .line 96
    invoke-virtual {p2}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    .line 97
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p2, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    iput-object v4, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    .line 103
    return-void

    .line 94
    :cond_3c
    invoke-virtual {v0}, Ljava/security/AlgorithmParameters;->getEncoded()[B

    move-result-object v5

    goto :goto_25

    .line 95
    :cond_41
    invoke-virtual {v0}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;
    :try_end_44
    .catch Ljavax/crypto/BadPaddingException; {:try_start_e .. :try_end_44} :catch_46

    move-result-object v4

    goto :goto_29

    .line 98
    .end local v0           #ap:Ljava/security/AlgorithmParameters;
    .end local v1           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v3           #oos:Ljava/io/ObjectOutputStream;
    :catch_46
    move-exception v2

    .line 101
    .local v2, e:Ljavax/crypto/BadPaddingException;
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v2}, Ljavax/crypto/BadPaddingException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected constructor <init>(Ljavax/crypto/SealedObject;)V
    .registers 4
    .parameter "so"

    .prologue
    .line 112
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 113
    if-nez p1, :cond_d

    .line 114
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "so == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_d
    iget-object v0, p1, Ljavax/crypto/SealedObject;->encryptedContent:[B

    iput-object v0, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    .line 117
    iget-object v0, p1, Ljavax/crypto/SealedObject;->encodedParams:[B

    iput-object v0, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    .line 118
    iget-object v0, p1, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    iput-object v0, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    .line 119
    iget-object v0, p1, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    iput-object v0, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    .line 120
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUnshared()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    iput-object v0, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    .line 59
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUnshared()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    iput-object v0, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    .line 60
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUnshared()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUnshared()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public final getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    return-object v0
.end method

.method public final getObject(Ljava/security/Key;)Ljava/lang/Object;
    .registers 9
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 149
    if-nez p1, :cond_a

    .line 150
    new-instance v5, Ljava/security/InvalidKeyException;

    const-string v6, "key == null"

    invoke-direct {v5, v6}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 153
    :cond_a
    :try_start_a
    iget-object v5, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 154
    .local v0, cipher:Ljavax/crypto/Cipher;
    iget-object v5, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    if-eqz v5, :cond_40

    iget-object v5, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_40

    .line 155
    iget-object v5, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    invoke-static {v5}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v3

    .line 157
    .local v3, params:Ljava/security/AlgorithmParameters;
    iget-object v5, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    invoke-virtual {v3, v5}, Ljava/security/AlgorithmParameters;->init([B)V

    .line 158
    const/4 v5, 0x2

    invoke-virtual {v0, v5, p1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    .line 162
    .end local v3           #params:Ljava/security/AlgorithmParameters;
    :goto_2b
    iget-object v5, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    invoke-virtual {v0, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    .line 163
    .local v4, serialized:[B
    new-instance v2, Ljava/io/ObjectInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 166
    .local v2, ois:Ljava/io/ObjectInputStream;
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    return-object v5

    .line 160
    .end local v2           #ois:Ljava/io/ObjectInputStream;
    .end local v4           #serialized:[B
    :cond_40
    const/4 v5, 0x2

    invoke-virtual {v0, v5, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_44
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_a .. :try_end_44} :catch_45
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_a .. :try_end_44} :catch_50
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_a .. :try_end_44} :catch_5b
    .catch Ljavax/crypto/BadPaddingException; {:try_start_a .. :try_end_44} :catch_66
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_44} :catch_71

    goto :goto_2b

    .line 167
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    :catch_45
    move-exception v1

    .line 170
    .local v1, e:Ljavax/crypto/NoSuchPaddingException;
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 171
    .end local v1           #e:Ljavax/crypto/NoSuchPaddingException;
    :catch_50
    move-exception v1

    .line 174
    .local v1, e:Ljava/security/InvalidAlgorithmParameterException;
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v1}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 175
    .end local v1           #e:Ljava/security/InvalidAlgorithmParameterException;
    :catch_5b
    move-exception v1

    .line 178
    .local v1, e:Ljavax/crypto/IllegalBlockSizeException;
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 179
    .end local v1           #e:Ljavax/crypto/IllegalBlockSizeException;
    :catch_66
    move-exception v1

    .line 182
    .local v1, e:Ljavax/crypto/BadPaddingException;
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 183
    .end local v1           #e:Ljavax/crypto/BadPaddingException;
    :catch_71
    move-exception v1

    .line 185
    .local v1, e:Ljava/lang/IllegalStateException;
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public final getObject(Ljava/security/Key;Ljava/lang/String;)Ljava/lang/Object;
    .registers 10
    .parameter "key"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 244
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 245
    :cond_8
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "provider name empty or null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 248
    :cond_10
    :try_start_10
    iget-object v5, p0, Ljavax/crypto/SealedObject;->sealAlg:Ljava/lang/String;

    invoke-static {v5, p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 249
    .local v0, cipher:Ljavax/crypto/Cipher;
    iget-object v5, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    if-eqz v5, :cond_46

    iget-object v5, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_46

    .line 250
    iget-object v5, p0, Ljavax/crypto/SealedObject;->paramsAlg:Ljava/lang/String;

    invoke-static {v5}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v3

    .line 252
    .local v3, params:Ljava/security/AlgorithmParameters;
    iget-object v5, p0, Ljavax/crypto/SealedObject;->encodedParams:[B

    invoke-virtual {v3, v5}, Ljava/security/AlgorithmParameters;->init([B)V

    .line 253
    const/4 v5, 0x2

    invoke-virtual {v0, v5, p1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V

    .line 257
    .end local v3           #params:Ljava/security/AlgorithmParameters;
    :goto_31
    iget-object v5, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    invoke-virtual {v0, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    .line 258
    .local v4, serialized:[B
    new-instance v2, Ljava/io/ObjectInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 261
    .local v2, ois:Ljava/io/ObjectInputStream;
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    return-object v5

    .line 255
    .end local v2           #ois:Ljava/io/ObjectInputStream;
    .end local v4           #serialized:[B
    :cond_46
    const/4 v5, 0x2

    invoke-virtual {v0, v5, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_4a
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_10 .. :try_end_4a} :catch_4b
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_10 .. :try_end_4a} :catch_56
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_10 .. :try_end_4a} :catch_61
    .catch Ljavax/crypto/BadPaddingException; {:try_start_10 .. :try_end_4a} :catch_6c
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_4a} :catch_77

    goto :goto_31

    .line 262
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    :catch_4b
    move-exception v1

    .line 265
    .local v1, e:Ljavax/crypto/NoSuchPaddingException;
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 266
    .end local v1           #e:Ljavax/crypto/NoSuchPaddingException;
    :catch_56
    move-exception v1

    .line 269
    .local v1, e:Ljava/security/InvalidAlgorithmParameterException;
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v1}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 270
    .end local v1           #e:Ljava/security/InvalidAlgorithmParameterException;
    :catch_61
    move-exception v1

    .line 273
    .local v1, e:Ljavax/crypto/IllegalBlockSizeException;
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 274
    .end local v1           #e:Ljavax/crypto/IllegalBlockSizeException;
    :catch_6c
    move-exception v1

    .line 277
    .local v1, e:Ljavax/crypto/BadPaddingException;
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 278
    .end local v1           #e:Ljavax/crypto/BadPaddingException;
    :catch_77
    move-exception v1

    .line 280
    .local v1, e:Ljava/lang/IllegalStateException;
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public final getObject(Ljavax/crypto/Cipher;)Ljava/lang/Object;
    .registers 6
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 210
    if-nez p1, :cond_a

    .line 211
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "c == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 213
    :cond_a
    iget-object v2, p0, Ljavax/crypto/SealedObject;->encryptedContent:[B

    invoke-virtual {p1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 214
    .local v1, serialized:[B
    new-instance v0, Ljava/io/ObjectInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 217
    .local v0, ois:Ljava/io/ObjectInputStream;
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method
