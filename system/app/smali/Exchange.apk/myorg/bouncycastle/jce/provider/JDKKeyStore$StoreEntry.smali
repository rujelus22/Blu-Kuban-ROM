.class Lmyorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;
.super Ljava/lang/Object;
.source "JDKKeyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmyorg/bouncycastle/jce/provider/JDKKeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoreEntry"
.end annotation


# instance fields
.field alias:Ljava/lang/String;

.field certChain:[Ljava/security/cert/Certificate;

.field date:Ljava/util/Date;

.field obj:Ljava/lang/Object;

.field final synthetic this$0:Lmyorg/bouncycastle/jce/provider/JDKKeyStore;

.field type:I


# direct methods
.method constructor <init>(Lmyorg/bouncycastle/jce/provider/JDKKeyStore;Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .registers 16
    .parameter
    .parameter "alias"
    .parameter "key"
    .parameter "password"
    .parameter "certChain"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 110
    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->this$0:Lmyorg/bouncycastle/jce/provider/JDKKeyStore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->date:Ljava/util/Date;

    .line 111
    const/4 v0, 0x4

    iput v0, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->type:I

    .line 112
    iput-object p2, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->alias:Ljava/lang/String;

    .line 113
    iput-object p5, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    .line 115
    const/16 v0, 0x14

    new-array v4, v0, [B

    .line 117
    .local v4, salt:[B
    iget-object v0, p1, Lmyorg/bouncycastle/jce/provider/JDKKeyStore;->random:Ljava/security/SecureRandom;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/security/SecureRandom;->setSeed(J)V

    .line 118
    iget-object v0, p1, Lmyorg/bouncycastle/jce/provider/JDKKeyStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 120
    iget-object v0, p1, Lmyorg/bouncycastle/jce/provider/JDKKeyStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    and-int/lit16 v0, v0, 0x3ff

    add-int/lit16 v5, v0, 0x400

    .line 122
    .local v5, iterationCount:I
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 123
    .local v6, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v9, Ljava/io/DataOutputStream;

    invoke-direct {v9, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 125
    .local v9, dOut:Ljava/io/DataOutputStream;
    array-length v0, v4

    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 126
    invoke-virtual {v9, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 127
    invoke-virtual {v9, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 129
    const-string v1, "PBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v2, 0x1

    move-object v0, p1

    move-object v3, p4

    invoke-virtual/range {v0 .. v5}, Lmyorg/bouncycastle/jce/provider/JDKKeyStore;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v8

    .line 131
    .local v8, cipher:Ljavax/crypto/Cipher;
    new-instance v7, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v7, v9, v8}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 133
    .local v7, cOut:Ljavax/crypto/CipherOutputStream;
    new-instance v9, Ljava/io/DataOutputStream;

    .end local v9           #dOut:Ljava/io/DataOutputStream;
    invoke-direct {v9, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 135
    .restart local v9       #dOut:Ljava/io/DataOutputStream;
    #calls: Lmyorg/bouncycastle/jce/provider/JDKKeyStore;->encodeKey(Ljava/security/Key;Ljava/io/DataOutputStream;)V
    invoke-static {p1, p3, v9}, Lmyorg/bouncycastle/jce/provider/JDKKeyStore;->access$000(Lmyorg/bouncycastle/jce/provider/JDKKeyStore;Ljava/security/Key;Ljava/io/DataOutputStream;)V

    .line 137
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V

    .line 139
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->obj:Ljava/lang/Object;

    .line 140
    return-void
.end method

.method constructor <init>(Lmyorg/bouncycastle/jce/provider/JDKKeyStore;Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .registers 5
    .parameter
    .parameter "alias"
    .parameter "obj"

    .prologue
    .line 95
    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->this$0:Lmyorg/bouncycastle/jce/provider/JDKKeyStore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->date:Ljava/util/Date;

    .line 96
    const/4 v0, 0x1

    iput v0, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->type:I

    .line 97
    iput-object p2, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->alias:Ljava/lang/String;

    .line 98
    iput-object p3, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->obj:Ljava/lang/Object;

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    .line 100
    return-void
.end method

.method constructor <init>(Lmyorg/bouncycastle/jce/provider/JDKKeyStore;Ljava/lang/String;Ljava/util/Date;ILjava/lang/Object;)V
    .registers 7
    .parameter
    .parameter "alias"
    .parameter "date"
    .parameter "type"
    .parameter "obj"

    .prologue
    .line 142
    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->this$0:Lmyorg/bouncycastle/jce/provider/JDKKeyStore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->date:Ljava/util/Date;

    .line 143
    iput-object p2, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->alias:Ljava/lang/String;

    .line 144
    iput-object p3, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->date:Ljava/util/Date;

    .line 145
    iput p4, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->type:I

    .line 146
    iput-object p5, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->obj:Ljava/lang/Object;

    .line 147
    return-void
.end method

.method constructor <init>(Lmyorg/bouncycastle/jce/provider/JDKKeyStore;Ljava/lang/String;Ljava/util/Date;ILjava/lang/Object;[Ljava/security/cert/Certificate;)V
    .registers 8
    .parameter
    .parameter "alias"
    .parameter "date"
    .parameter "type"
    .parameter "obj"
    .parameter "certChain"

    .prologue
    .line 149
    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->this$0:Lmyorg/bouncycastle/jce/provider/JDKKeyStore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->date:Ljava/util/Date;

    .line 150
    iput-object p2, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->alias:Ljava/lang/String;

    .line 151
    iput-object p3, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->date:Ljava/util/Date;

    .line 152
    iput p4, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->type:I

    .line 153
    iput-object p5, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->obj:Ljava/lang/Object;

    .line 154
    iput-object p6, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    .line 155
    return-void
.end method

.method constructor <init>(Lmyorg/bouncycastle/jce/provider/JDKKeyStore;Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .registers 6
    .parameter
    .parameter "alias"
    .parameter "obj"
    .parameter "certChain"

    .prologue
    .line 102
    iput-object p1, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->this$0:Lmyorg/bouncycastle/jce/provider/JDKKeyStore;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->date:Ljava/util/Date;

    .line 103
    const/4 v0, 0x3

    iput v0, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->type:I

    .line 104
    iput-object p2, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->alias:Ljava/lang/String;

    .line 105
    iput-object p3, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->obj:Ljava/lang/Object;

    .line 106
    iput-object p4, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    .line 107
    return-void
.end method


# virtual methods
.method getAlias()Ljava/lang/String;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->alias:Ljava/lang/String;

    return-object v0
.end method

.method getCertificateChain()[Ljava/security/cert/Certificate;
    .registers 2

    .prologue
    .line 274
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->certChain:[Ljava/security/cert/Certificate;

    return-object v0
.end method

.method getDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 278
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->date:Ljava/util/Date;

    return-object v0
.end method

.method getObject()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method getObject([C)Ljava/lang/Object;
    .registers 23
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    .line 171
    if-eqz p1, :cond_7

    move-object/from16 v0, p1

    array-length v1, v0

    if-nez v1, :cond_16

    .line 172
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/security/Key;

    if-eqz v1, :cond_16

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    .line 255
    :goto_15
    return-object v17

    .line 177
    :cond_16
    move-object/from16 v0, p0

    iget v1, v0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_136

    .line 178
    new-instance v7, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    invoke-direct {v7, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 179
    .local v7, bIn:Ljava/io/ByteArrayInputStream;
    new-instance v13, Ljava/io/DataInputStream;

    invoke-direct {v13, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 182
    .local v13, dIn:Ljava/io/DataInputStream;
    :try_start_2f
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-array v5, v1, [B

    .line 184
    .local v5, salt:[B
    invoke-virtual {v13, v5}, Ljava/io/DataInputStream;->readFully([B)V

    .line 186
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 188
    .local v6, iterationCount:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->this$0:Lmyorg/bouncycastle/jce/provider/JDKKeyStore;

    const-string v2, "PBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v3, 0x2

    move-object/from16 v4, p1

    invoke-virtual/range {v1 .. v6}, Lmyorg/bouncycastle/jce/provider/JDKKeyStore;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v12

    .line 191
    .local v12, cipher:Ljavax/crypto/Cipher;
    new-instance v10, Ljavax/crypto/CipherInputStream;

    invoke-direct {v10, v13, v12}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_4e} :catch_e4

    .line 194
    .local v10, cIn:Ljavax/crypto/CipherInputStream;
    :try_start_4e
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->this$0:Lmyorg/bouncycastle/jce/provider/JDKKeyStore;

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #calls: Lmyorg/bouncycastle/jce/provider/JDKKeyStore;->decodeKey(Ljava/io/DataInputStream;)Ljava/security/Key;
    invoke-static {v1, v2}, Lmyorg/bouncycastle/jce/provider/JDKKeyStore;->access$100(Lmyorg/bouncycastle/jce/provider/JDKKeyStore;Ljava/io/DataInputStream;)Ljava/security/Key;
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_5a} :catch_5c

    move-result-object v17

    goto :goto_15

    .line 195
    :catch_5c
    move-exception v19

    .line 196
    .local v19, x:Ljava/lang/Exception;
    :try_start_5d
    new-instance v8, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    invoke-direct {v8, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_6a} :catch_e4

    .line 197
    .end local v7           #bIn:Ljava/io/ByteArrayInputStream;
    .local v8, bIn:Ljava/io/ByteArrayInputStream;
    :try_start_6a
    new-instance v14, Ljava/io/DataInputStream;

    invoke-direct {v14, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6f} :catch_13e

    .line 199
    .end local v13           #dIn:Ljava/io/DataInputStream;
    .local v14, dIn:Ljava/io/DataInputStream;
    :try_start_6f
    invoke-virtual {v14}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-array v5, v1, [B

    .line 201
    invoke-virtual {v14, v5}, Ljava/io/DataInputStream;->readFully([B)V

    .line 203
    invoke-virtual {v14}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 205
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->this$0:Lmyorg/bouncycastle/jce/provider/JDKKeyStore;

    const-string v2, "BrokenPBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v3, 0x2

    move-object/from16 v4, p1

    invoke-virtual/range {v1 .. v6}, Lmyorg/bouncycastle/jce/provider/JDKKeyStore;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v12

    .line 208
    new-instance v10, Ljavax/crypto/CipherInputStream;

    .end local v10           #cIn:Ljavax/crypto/CipherInputStream;
    invoke-direct {v10, v14, v12}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_8e} :catch_141

    .line 210
    .restart local v10       #cIn:Ljavax/crypto/CipherInputStream;
    const/16 v17, 0x0

    .line 213
    .local v17, k:Ljava/security/Key;
    :try_start_90
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->this$0:Lmyorg/bouncycastle/jce/provider/JDKKeyStore;

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #calls: Lmyorg/bouncycastle/jce/provider/JDKKeyStore;->decodeKey(Ljava/io/DataInputStream;)Ljava/security/Key;
    invoke-static {v1, v2}, Lmyorg/bouncycastle/jce/provider/JDKKeyStore;->access$100(Lmyorg/bouncycastle/jce/provider/JDKKeyStore;Ljava/io/DataInputStream;)Ljava/security/Key;
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_9c} :catch_ed

    move-result-object v17

    move-object v13, v14

    .end local v14           #dIn:Ljava/io/DataInputStream;
    .restart local v13       #dIn:Ljava/io/DataInputStream;
    move-object v7, v8

    .line 235
    .end local v8           #bIn:Ljava/io/ByteArrayInputStream;
    .restart local v7       #bIn:Ljava/io/ByteArrayInputStream;
    :goto_9f
    if-eqz v17, :cond_12e

    .line 236
    :try_start_a1
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 237
    .local v9, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v15, Ljava/io/DataOutputStream;

    invoke-direct {v15, v9}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 239
    .local v15, dOut:Ljava/io/DataOutputStream;
    array-length v1, v5

    invoke-virtual {v15, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 240
    invoke-virtual {v15, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 241
    invoke-virtual {v15, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 243
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->this$0:Lmyorg/bouncycastle/jce/provider/JDKKeyStore;

    const-string v2, "PBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v3, 0x1

    move-object/from16 v4, p1

    invoke-virtual/range {v1 .. v6}, Lmyorg/bouncycastle/jce/provider/JDKKeyStore;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v18

    .line 245
    .local v18, out:Ljavax/crypto/Cipher;
    new-instance v11, Ljavax/crypto/CipherOutputStream;

    move-object/from16 v0, v18

    invoke-direct {v11, v15, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 247
    .local v11, cOut:Ljavax/crypto/CipherOutputStream;
    new-instance v15, Ljava/io/DataOutputStream;

    .end local v15           #dOut:Ljava/io/DataOutputStream;
    invoke-direct {v15, v11}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 249
    .restart local v15       #dOut:Ljava/io/DataOutputStream;
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->this$0:Lmyorg/bouncycastle/jce/provider/JDKKeyStore;

    move-object/from16 v0, v17

    #calls: Lmyorg/bouncycastle/jce/provider/JDKKeyStore;->encodeKey(Ljava/security/Key;Ljava/io/DataOutputStream;)V
    invoke-static {v1, v0, v15}, Lmyorg/bouncycastle/jce/provider/JDKKeyStore;->access$000(Lmyorg/bouncycastle/jce/provider/JDKKeyStore;Ljava/security/Key;Ljava/io/DataOutputStream;)V

    .line 251
    invoke-virtual {v15}, Ljava/io/DataOutputStream;->close()V

    .line 253
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->obj:Ljava/lang/Object;
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_e2} :catch_e4

    goto/16 :goto_15

    .line 260
    .end local v5           #salt:[B
    .end local v6           #iterationCount:I
    .end local v9           #bOut:Ljava/io/ByteArrayOutputStream;
    .end local v10           #cIn:Ljavax/crypto/CipherInputStream;
    .end local v11           #cOut:Ljavax/crypto/CipherOutputStream;
    .end local v12           #cipher:Ljavax/crypto/Cipher;
    .end local v15           #dOut:Ljava/io/DataOutputStream;
    .end local v17           #k:Ljava/security/Key;
    .end local v18           #out:Ljavax/crypto/Cipher;
    .end local v19           #x:Ljava/lang/Exception;
    :catch_e4
    move-exception v16

    .line 261
    .local v16, e:Ljava/lang/Exception;
    :goto_e5
    new-instance v1, Ljava/security/UnrecoverableKeyException;

    const-string v2, "no match"

    invoke-direct {v1, v2}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 214
    .end local v7           #bIn:Ljava/io/ByteArrayInputStream;
    .end local v13           #dIn:Ljava/io/DataInputStream;
    .end local v16           #e:Ljava/lang/Exception;
    .restart local v5       #salt:[B
    .restart local v6       #iterationCount:I
    .restart local v8       #bIn:Ljava/io/ByteArrayInputStream;
    .restart local v10       #cIn:Ljavax/crypto/CipherInputStream;
    .restart local v12       #cipher:Ljavax/crypto/Cipher;
    .restart local v14       #dIn:Ljava/io/DataInputStream;
    .restart local v17       #k:Ljava/security/Key;
    .restart local v19       #x:Ljava/lang/Exception;
    :catch_ed
    move-exception v20

    .line 215
    .local v20, y:Ljava/lang/Exception;
    :try_start_ee
    new-instance v7, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->obj:Ljava/lang/Object;

    check-cast v1, [B

    check-cast v1, [B

    invoke-direct {v7, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_fb} :catch_141

    .line 216
    .end local v8           #bIn:Ljava/io/ByteArrayInputStream;
    .restart local v7       #bIn:Ljava/io/ByteArrayInputStream;
    :try_start_fb
    new-instance v13, Ljava/io/DataInputStream;

    invoke-direct {v13, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_fb .. :try_end_100} :catch_145

    .line 218
    .end local v14           #dIn:Ljava/io/DataInputStream;
    .restart local v13       #dIn:Ljava/io/DataInputStream;
    :try_start_100
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-array v5, v1, [B

    .line 220
    invoke-virtual {v13, v5}, Ljava/io/DataInputStream;->readFully([B)V

    .line 222
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 224
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->this$0:Lmyorg/bouncycastle/jce/provider/JDKKeyStore;

    const-string v2, "OldPBEWithSHAAnd3-KeyTripleDES-CBC"

    const/4 v3, 0x2

    move-object/from16 v4, p1

    invoke-virtual/range {v1 .. v6}, Lmyorg/bouncycastle/jce/provider/JDKKeyStore;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v12

    .line 227
    new-instance v10, Ljavax/crypto/CipherInputStream;

    .end local v10           #cIn:Ljavax/crypto/CipherInputStream;
    invoke-direct {v10, v13, v12}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 229
    .restart local v10       #cIn:Ljavax/crypto/CipherInputStream;
    move-object/from16 v0, p0

    iget-object v1, v0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->this$0:Lmyorg/bouncycastle/jce/provider/JDKKeyStore;

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #calls: Lmyorg/bouncycastle/jce/provider/JDKKeyStore;->decodeKey(Ljava/io/DataInputStream;)Ljava/security/Key;
    invoke-static {v1, v2}, Lmyorg/bouncycastle/jce/provider/JDKKeyStore;->access$100(Lmyorg/bouncycastle/jce/provider/JDKKeyStore;Ljava/io/DataInputStream;)Ljava/security/Key;

    move-result-object v17

    goto/16 :goto_9f

    .line 257
    .end local v20           #y:Ljava/lang/Exception;
    :cond_12e
    new-instance v1, Ljava/security/UnrecoverableKeyException;

    const-string v2, "no match"

    invoke-direct {v1, v2}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_136
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_136} :catch_e4

    .line 264
    .end local v5           #salt:[B
    .end local v6           #iterationCount:I
    .end local v7           #bIn:Ljava/io/ByteArrayInputStream;
    .end local v10           #cIn:Ljavax/crypto/CipherInputStream;
    .end local v12           #cipher:Ljavax/crypto/Cipher;
    .end local v13           #dIn:Ljava/io/DataInputStream;
    .end local v17           #k:Ljava/security/Key;
    .end local v19           #x:Ljava/lang/Exception;
    :cond_136
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "forget something!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 260
    .restart local v5       #salt:[B
    .restart local v6       #iterationCount:I
    .restart local v8       #bIn:Ljava/io/ByteArrayInputStream;
    .restart local v10       #cIn:Ljavax/crypto/CipherInputStream;
    .restart local v12       #cipher:Ljavax/crypto/Cipher;
    .restart local v13       #dIn:Ljava/io/DataInputStream;
    .restart local v19       #x:Ljava/lang/Exception;
    :catch_13e
    move-exception v16

    move-object v7, v8

    .end local v8           #bIn:Ljava/io/ByteArrayInputStream;
    .restart local v7       #bIn:Ljava/io/ByteArrayInputStream;
    goto :goto_e5

    .end local v7           #bIn:Ljava/io/ByteArrayInputStream;
    .end local v10           #cIn:Ljavax/crypto/CipherInputStream;
    .end local v13           #dIn:Ljava/io/DataInputStream;
    .restart local v8       #bIn:Ljava/io/ByteArrayInputStream;
    .restart local v14       #dIn:Ljava/io/DataInputStream;
    :catch_141
    move-exception v16

    move-object v13, v14

    .end local v14           #dIn:Ljava/io/DataInputStream;
    .restart local v13       #dIn:Ljava/io/DataInputStream;
    move-object v7, v8

    .end local v8           #bIn:Ljava/io/ByteArrayInputStream;
    .restart local v7       #bIn:Ljava/io/ByteArrayInputStream;
    goto :goto_e5

    .end local v13           #dIn:Ljava/io/DataInputStream;
    .restart local v10       #cIn:Ljavax/crypto/CipherInputStream;
    .restart local v14       #dIn:Ljava/io/DataInputStream;
    .restart local v17       #k:Ljava/security/Key;
    .restart local v20       #y:Ljava/lang/Exception;
    :catch_145
    move-exception v16

    move-object v13, v14

    .end local v14           #dIn:Ljava/io/DataInputStream;
    .restart local v13       #dIn:Ljava/io/DataInputStream;
    goto :goto_e5
.end method

.method getType()I
    .registers 2

    .prologue
    .line 158
    iget v0, p0, Lmyorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->type:I

    return v0
.end method
